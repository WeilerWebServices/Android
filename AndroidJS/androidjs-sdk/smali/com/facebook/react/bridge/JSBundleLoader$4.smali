.class final Lcom/facebook/react/bridge/JSBundleLoader$4;
.super Lcom/facebook/react/bridge/JSBundleLoader;
.source "JSBundleLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/bridge/JSBundleLoader;->createDeltaFromNetworkLoader(Ljava/lang/String;Lcom/facebook/react/bridge/NativeDeltaClient;)Lcom/facebook/react/bridge/JSBundleLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nativeDeltaClient:Lcom/facebook/react/bridge/NativeDeltaClient;

.field final synthetic val$sourceURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/react/bridge/NativeDeltaClient;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/facebook/react/bridge/JSBundleLoader$4;->val$sourceURL:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/react/bridge/JSBundleLoader$4;->val$nativeDeltaClient:Lcom/facebook/react/bridge/NativeDeltaClient;

    invoke-direct {p0}, Lcom/facebook/react/bridge/JSBundleLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public loadScript(Lcom/facebook/react/bridge/JSBundleLoaderDelegate;)Ljava/lang/String;
    .locals 3

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/bridge/JSBundleLoader$4;->val$sourceURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/react/bridge/JSBundleLoader$4;->val$nativeDeltaClient:Lcom/facebook/react/bridge/NativeDeltaClient;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/bridge/JSBundleLoaderDelegate;->loadScriptFromDeltaBundle(Ljava/lang/String;Lcom/facebook/react/bridge/NativeDeltaClient;Z)V

    .line 95
    iget-object p1, p0, Lcom/facebook/react/bridge/JSBundleLoader$4;->val$sourceURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/react/common/DebugServerException;->makeGeneric(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/react/common/DebugServerException;

    move-result-object p1

    throw p1
.end method