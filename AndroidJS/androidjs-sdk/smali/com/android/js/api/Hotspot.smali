.class public Lcom/android/js/api/Hotspot;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "Hotspot.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private local_reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private wifi_manager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/react/bridge/ReactApplicationContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 29
    iput-object p1, p0, Lcom/android/js/api/Hotspot;->activity:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/android/js/api/Hotspot;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/js/api/Hotspot;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/js/api/Hotspot;->activity:Landroid/app/Activity;

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/android/js/api/Hotspot;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/js/api/Hotspot;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    :goto_0
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/js/api/Hotspot;->wifi_manager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/js/api/Hotspot;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/js/api/Hotspot;->local_reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/js/api/Hotspot;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/android/js/api/Hotspot;->local_reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    return-object p1
.end method


# virtual methods
.method public disableHotspot()V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/js/api/Hotspot;->local_reservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->close()V

    goto :goto_0

    .line 77
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/js/api/Hotspot;->wifi_manager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/net/wifi/WifiConfiguration;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "setWifiApEnabled"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/android/js/api/Hotspot;->wifi_manager:Landroid/net/wifi/WifiManager;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v1, v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public enableHotspot(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/android/js/api/Hotspot;->wifi_manager:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/android/js/api/Hotspot$1;

    invoke-direct {v0, p0}, Lcom/android/js/api/Hotspot$1;-><init>(Lcom/android/js/api/Hotspot;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->startLocalOnlyHotspot(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 62
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    .line 63
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "trying to start hotspot"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 65
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lcom/android/js/api/Hotspot;->wifi_manager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/net/wifi/WifiConfiguration;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "setWifiApEnabled"

    invoke-virtual {p1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 67
    iget-object v2, p0, Lcom/android/js/api/Hotspot;->wifi_manager:Landroid/net/wifi/WifiManager;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p1, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "HotSpot"

    return-object v0
.end method

.method public isHotspotEnabled()Z
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    const/4 v0, 0x0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/android/js/api/Hotspot;->wifi_manager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isWifiApEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 90
    iget-object v2, p0, Lcom/android/js/api/Hotspot;->wifi_manager:Landroid/net/wifi/WifiManager;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method
