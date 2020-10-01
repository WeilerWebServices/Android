package com.androidjs_core_react_native;

import android.os.Bundle;

import com.android.js.other.PermissionRequest;
import com.android.js.react_native.AndroidJSActivity;


public class MainActivity extends AndroidJSActivity {

    /**
     * Returns the name of the main component registered from JavaScript.
     * This is used to schedule rendering of the component.
     */

    @Override
    public void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);

        PermissionRequest.checkAndAskForPermissions(this, this.getApplicationContext());

        start_node(this);
    }
    @Override
    protected String getMainComponentName() {
        return "androidjs_core_react_native";
    }
    
}
