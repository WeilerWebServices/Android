package com.android.js.webview;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.support.v7.app.AppCompatActivity;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;


import com.android.js.other.Utils;

import java.io.File;


public class AndroidJSActivity extends AppCompatActivity {

    // Used to load the 'native-lib' library on application startup.
    static {
        System.loadLibrary("native-lib");
        System.loadLibrary("node");
    }

    public WebView myWebView ;

    // override back button to webview back button

    @Override
    public void onBackPressed() {
        if (this.myWebView.canGoBack()) {
            this.myWebView.goBack();
        } else {
            super.onBackPressed();
        }
    }


    //We just want one instance of node running in the background.
    public static boolean _startedNodeAlready=false;


    public void start_node(final Activity activity){
        if( !_startedNodeAlready ) {
            _startedNodeAlready=true;
            new Thread(new Runnable() {
                @Override
                public void run() {
                    //The path where we expect the node project to be at runtime.
                    String nodeDir=activity.getApplicationContext().getFilesDir().getAbsolutePath()+"/myapp";
                    if (Utils.wasAPKUpdated(activity.getApplicationContext())) {
                        //Recursively delete any existing nodejs-project.
                        File nodeDirReference=new File(nodeDir);
                        if (nodeDirReference.exists()) {
                            Utils.deleteFolderRecursively(new File(nodeDir));
                        }
                        //Copy the node project from assets into the application's data path.
                        Utils.copyAssetFolder(activity.getApplicationContext().getAssets(), "myapp", nodeDir);

                        Utils.saveLastUpdateTime(activity.getApplicationContext());
                    }
                    startNodeWithArguments(new String[]{"node",
                            nodeDir+"/main.js"
                    });
                }
            }).start();
        }
    }

    public void configureWebview(int iconId){
        this.myWebView.addJavascriptInterface(new JavaWebviewBridge(this,null ,this.myWebView, iconId), "android");


        this.myWebView.getSettings().setJavaScriptEnabled(true);
        this.myWebView.getSettings().setDomStorageEnabled(true);
        this.myWebView.getSettings().setAllowFileAccess(true);
        this.myWebView.setWebContentsDebuggingEnabled(true);
        this.myWebView.setWebViewClient(new WebViewClient());
        this.myWebView.getSettings().setAllowFileAccessFromFileURLs(true);
        this.myWebView.getSettings().setAllowUniversalAccessFromFileURLs(true);
        this.myWebView.getSettings().setPluginState(WebSettings.PluginState.ON);
        this.myWebView.getSettings().setSupportMultipleWindows(true);

        this.myWebView.loadUrl("file:///android_asset/myapp/views/index.html");



        // entertain webview camera request

        this.myWebView.setWebChromeClient(new WebChromeClient() {

            @TargetApi(Build.VERSION_CODES.LOLLIPOP)
            @Override
            public void onPermissionRequest(final android.webkit.PermissionRequest request) {
                request.grant(request.getResources());
            }

            @Override
            public boolean onCreateWindow(WebView view, boolean dialog, boolean userGesture, android.os.Message resultMsg)
            {
                WebView.HitTestResult result = view.getHitTestResult();
                String data = result.getExtra();
                Context context = view.getContext();
                System.out.println("req:");
                System.out.println(result.toString());
                System.out.println(data.toString());
                Intent browserIntent = new Intent(Intent.ACTION_VIEW, Uri.parse(data));
                context.startActivity(browserIntent);
                return false;
            }
        });
    }


//    @Override
//    protected void onCreate(Bundle savedInstanceState) {
//
//
//        super.onCreate(savedInstanceState);
//        setContentView(R.layout.activity_main);
//
//        // check and request for required permission
//        System.out.println(Environment.getRootDirectory());
//        PermissionRequest.checkAndAskForPermissions(this, this);
//
//
//
//
//        // webview
//
//        myWebView = (WebView) findViewById(R.id.webview);
//
//        // adding javascript interface for creating javascript to java IPC
//
//
//        // hardware acceleration
//
////        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
////            // chromium, enable hardware acceleration
////            myWebView.setLayerType(View.LAYER_TYPE_HARDWARE, null);
////        } else {
////            // older android version, disable hardware acceleration
////            myWebView.setLayerType(View.LAYER_TYPE_SOFTWARE, null);
////        }
//
//    }

    /**
     * A native method that is implemented by the 'native-lib' native library,
     * which is packaged with this application.
     */
    public native Integer startNodeWithArguments(String[] arguments);
}
