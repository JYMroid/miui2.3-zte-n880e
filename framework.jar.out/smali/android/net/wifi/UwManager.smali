.class public Landroid/net/wifi/UwManager;
.super Ljava/lang/Object;
.source "UwManager.java"


# static fields
.field public static final DELAY_WORK_TYPE_CONNECT_NEXT_CHINANET_AP:I = 0x4

.field public static final DELAY_WORK_TYPE_CONNECT_OTHER_NETWORK:I = 0x2

.field public static final DELAY_WORK_TYPE_DEFAULT:I = 0x0

.field public static final DELAY_WORK_TYPE_DISABLE_WIFI:I = 0x3

.field public static final DELAY_WORK_TYPE_DISABLE_WIFI_AIRPLANE:I = 0x5

.field public static final DELAY_WORK_TYPE_DISCONNECT_NETWORK:I = 0x0

.field public static final DELAY_WORK_TYPE_FORGET_NETWORK:I = 0x1

.field public static final DELAY_WORK_TYPE_SHUTDOWN:I = 0x6

.field public static final DELAY_WORK_TYPE_SWITCH_CHINANET_AP:I = 0x7

.field public static final EXTRA_ICON_STATE_CONNECTED:I = 0x2

.field public static final EXTRA_ICON_STATE_CONNECTING:I = 0x1

.field public static final EXTRA_ICON_STATE_CONNECT_FAILED:I = 0x3

.field public static final EXTRA_ICON_STATE_DISCONNECTED:I = 0x6

.field public static final EXTRA_ICON_STATE_DISCONNECTING:I = 0x4

.field public static final EXTRA_ICON_STATE_DISCONNECT_FAILED:I = 0x5

.field public static final EXTRA_ICON_STATE_NOCONNECT:I = 0x0

.field public static final EXTRA_ICON_STATE_TURN_SETUP:I = 0x7

.field public static final EXTRA_PREVIOUS_UW_STATE:Ljava/lang/String; = "previous_uw_state"

.field public static final EXTRA_UP_ICON_STATE:Ljava/lang/String; = "up_icon_state"

.field public static final EXTRA_UW_PPP_FAILED:Ljava/lang/String; = "uw_ppp_failed"

.field public static final EXTRA_UW_STATE:Ljava/lang/String; = "uw_state"

.field public static final UW_AIRPLANE_DISCONNECTED_ACTION:Ljava/lang/String; = "android.net.wifi.UW_AIRPLANE_DISCONNECTED_ACTION"

.field public static final UW_SERVICE_STATE_DISABLED:I = 0x0

.field public static final UW_SERVICE_STATE_DISABLING:I = 0x1

.field public static final UW_SERVICE_STATE_ENABLED:I = 0x3

.field public static final UW_SERVICE_STATE_ENABLING:I = 0x2

.field public static final UW_SHUTDOWN_DISCONNECTED_ACTION:Ljava/lang/String; = "android.net.wifi.UW_SHUTDOWN_DISCONNECTED_ACTION"

.field public static final UW_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.UW_STATE_CHANGED"

.field public static final UW_SWITCH_CHINANET_AP_DISCONNECTED_ACTION:Ljava/lang/String; = "android.net.wifi.UW_SWITCH_CHINANET_AP_DISCONNECTED_ACTION"

.field public static final UW_UP_LAYER_ICON_STATE_ACTION:Ljava/lang/String; = "android.net.wifi.UW_UP_LAYER_ICON_STATE_ACTION"

.field public static final WIFI_CTCW_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.WIFI_CTCW_STATE_CHANGED"


# instance fields
.field mService:Landroid/net/wifi/IUwManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/IUwManager;)V
    .locals 0
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/UwManager;->mService:Landroid/net/wifi/IUwManager;

    return-void
.end method

.method private static getSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isChinaNetAp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "Ssid"

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v0, "wifi_default_accesspoint_ssid1"

    invoke-static {p0, v0}, Landroid/net/wifi/UwManager;->getSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "wifi_default_accesspoint_ssid2"

    invoke-static {p0, v0}, Landroid/net/wifi/UwManager;->getSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "wifi_default_accesspoint_ssid3"

    invoke-static {p0, v0}, Landroid/net/wifi/UwManager;->getSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public PPPSetting(I)Z
    .locals 2
    .parameter "pppFlag"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/UwManager;->mService:Landroid/net/wifi/IUwManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IUwManager;->PPPSetting(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDelayNetworkId()I
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/UwManager;->mService:Landroid/net/wifi/IUwManager;

    invoke-interface {v1}, Landroid/net/wifi/IUwManager;->getDelayNetworkId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getEnabled()I
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/UwManager;->mService:Landroid/net/wifi/IUwManager;

    invoke-interface {v1}, Landroid/net/wifi/IUwManager;->getEnabled()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState()Landroid/net/wifi/UwState;
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/UwManager;->mService:Landroid/net/wifi/IUwManager;

    invoke-interface {v1}, Landroid/net/wifi/IUwManager;->getState()Landroid/net/wifi/UwState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/net/wifi/UwState;->INACTIVE:Landroid/net/wifi/UwState;

    goto :goto_0
.end method

.method public getWifiDelayType()I
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/UwManager;->mService:Landroid/net/wifi/IUwManager;

    invoke-interface {v1}, Landroid/net/wifi/IUwManager;->getWifiDelayType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "apSSid"
    .parameter "apBssid"

    .prologue
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/UwManager;->mService:Landroid/net/wifi/IUwManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IUwManager;->login(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v2

    goto :goto_0
.end method

.method public logout()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/UwManager;->mService:Landroid/net/wifi/IUwManager;

    invoke-interface {v1}, Landroid/net/wifi/IUwManager;->logout()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/UwManager;->mService:Landroid/net/wifi/IUwManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IUwManager;->setEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiDelayWorkType(II)V
    .locals 1
    .parameter "type"
    .parameter "networkId"

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/UwManager;->mService:Landroid/net/wifi/IUwManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IUwManager;->setWifiDelayWorkType(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateConfig(Ljava/lang/String;)Z
    .locals 3
    .parameter "localIp"

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/UwManager;->mService:Landroid/net/wifi/IUwManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IUwManager;->updateConfig(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v2

    goto :goto_0
.end method

.method public wifiDisconnectNotify()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/UwManager;->mService:Landroid/net/wifi/IUwManager;

    invoke-interface {v0}, Landroid/net/wifi/IUwManager;->wifiDisconnectNotify()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
