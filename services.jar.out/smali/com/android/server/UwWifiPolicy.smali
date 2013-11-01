.class public Lcom/android/server/UwWifiPolicy;
.super Ljava/lang/Object;
.source "UwWifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UwWifiPolicy$1;,
        Lcom/android/server/UwWifiPolicy$WifiReceiver;,
        Lcom/android/server/UwWifiPolicy$UwReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NOTIFICATION_ID:I = 0x10

.field private static final TAG:Ljava/lang/String; = "UwWifiPolicy"


# instance fields
.field private mChinaNetAps:[Ljava/lang/String;

.field public mConnectSSID:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDefSSID1:Ljava/lang/String;

.field private mDefSSID2:Ljava/lang/String;

.field private mDefSSID3:Ljava/lang/String;

.field private mLastIpAddress:I

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPriSSID:Ljava/lang/String;

.field private mUwIntentFilter:Landroid/content/IntentFilter;

.field private mUwManager:Landroid/net/wifi/UwManager;

.field private mUwReceiver:Lcom/android/server/UwWifiPolicy$UwReceiver;

.field private mWifiIntentFilter:Landroid/content/IntentFilter;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiReceiver:Lcom/android/server/UwWifiPolicy$WifiReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-string v4, "UwWifiPolicy"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/UwWifiPolicy;->mConnectSSID:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/UwWifiPolicy;->mChinaNetAps:[Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/UwWifiPolicy;->mLastIpAddress:I

    iput-object p1, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/UwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    const-string v1, "UwWifiPolicy"

    const-string v1, "Wifi Service is not started"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/UwWifiPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "UwWifiPolicy"

    const-string v1, "WIFI receiver regist\n"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/server/UwWifiPolicy;->mWifiIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mWifiIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mWifiIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/UwWifiPolicy$WifiReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/UwWifiPolicy$WifiReceiver;-><init>(Lcom/android/server/UwWifiPolicy;)V

    iput-object v1, p0, Lcom/android/server/UwWifiPolicy;->mWifiReceiver:Lcom/android/server/UwWifiPolicy$WifiReceiver;

    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/UwWifiPolicy;->mWifiReceiver:Lcom/android/server/UwWifiPolicy$WifiReceiver;

    iget-object v3, p0, Lcom/android/server/UwWifiPolicy;->mWifiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "uw_wifi"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    new-instance v1, Landroid/net/wifi/UwManager;

    invoke-static {v0}, Landroid/net/wifi/IUwManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IUwManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/UwManager;-><init>(Landroid/net/wifi/IUwManager;)V

    iput-object v1, p0, Lcom/android/server/UwWifiPolicy;->mUwManager:Landroid/net/wifi/UwManager;

    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mUwManager:Landroid/net/wifi/UwManager;

    if-nez v1, :cond_1

    const-string v1, "UwWifiPolicy"

    const-string v1, "mUwManager can not be used"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "Uw receiver regist\n"

    invoke-direct {p0, v1}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/server/UwWifiPolicy;->mUwIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mUwIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.UW_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/UwWifiPolicy$UwReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/UwWifiPolicy$UwReceiver;-><init>(Lcom/android/server/UwWifiPolicy;)V

    iput-object v1, p0, Lcom/android/server/UwWifiPolicy;->mUwReceiver:Lcom/android/server/UwWifiPolicy$UwReceiver;

    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/UwWifiPolicy;->mUwReceiver:Lcom/android/server/UwWifiPolicy$UwReceiver;

    iget-object v3, p0, Lcom/android/server/UwWifiPolicy;->mUwIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "wifi_default_primary_ssid"

    invoke-direct {p0, v1}, Lcom/android/server/UwWifiPolicy;->getSettingsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UwWifiPolicy;->mPriSSID:Ljava/lang/String;

    const-string v1, "wifi_default_accesspoint_ssid1"

    invoke-direct {p0, v1}, Lcom/android/server/UwWifiPolicy;->getSettingsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UwWifiPolicy;->mDefSSID1:Ljava/lang/String;

    const-string v1, "wifi_default_accesspoint_ssid2"

    invoke-direct {p0, v1}, Lcom/android/server/UwWifiPolicy;->getSettingsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UwWifiPolicy;->mDefSSID2:Ljava/lang/String;

    const-string v1, "wifi_default_accesspoint_ssid3"

    invoke-direct {p0, v1}, Lcom/android/server/UwWifiPolicy;->getSettingsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UwWifiPolicy;->mDefSSID3:Ljava/lang/String;

    return-void
.end method

.method private ShowNotifyInfo()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-string v9, "UwWifiPolicy"

    const-string v5, "UwWifiPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ShowNotifyInfo() mNotificationManager = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/UwWifiPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/UwWifiPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/android/server/UwWifiPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v5, p0, Lcom/android/server/UwWifiPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v5, :cond_1

    const-string v5, "UwWifiPolicy"

    const-string v5, "start show uw notify..."

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, r:Landroid/content/res/Resources;
    const v5, 0x10403db

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, title:Ljava/lang/CharSequence;
    const v5, 0x10403dc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, message:Ljava/lang/CharSequence;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, mIntent:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.wifi.WifiSettings"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v5, Landroid/app/Notification;

    const v6, 0x1080162

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v5, v6, v4, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v5, p0, Lcom/android/server/UwWifiPolicy;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/UwWifiPolicy;->mNotification:Landroid/app/Notification;

    const/4 v6, 0x1

    iput v6, v5, Landroid/app/Notification;->defaults:I

    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5, v10, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .local v0, mContentIntent:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/server/UwWifiPolicy;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v5, p0, Lcom/android/server/UwWifiPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v6, 0x10

    iget-object v7, p0, Lcom/android/server/UwWifiPolicy;->mNotification:Landroid/app/Notification;

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string v5, "UwWifiPolicy"

    const-string v5, "start show uw notify...end"

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #mContentIntent:Landroid/app/PendingIntent;
    .end local v1           #mIntent:Landroid/content/Intent;
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #title:Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/UwWifiPolicy;Landroid/content/Intent;Landroid/net/wifi/UwState;Landroid/net/wifi/UwState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UwWifiPolicy;->handleUwStateChanged(Landroid/content/Intent;Landroid/net/wifi/UwState;Landroid/net/wifi/UwState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/UwWifiPolicy;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/UwWifiPolicy;Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/UwWifiPolicy;->handleNetworkStateChanged(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/UwWifiPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/UwWifiPolicy;->handleWifiStateChanged(I)V

    return-void
.end method

.method private controlChinaNetDisconnect()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "UwWifiPolicy"

    iget-object v3, p0, Lcom/android/server/UwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    iget-object v3, p0, Lcom/android/server/UwWifiPolicy;->mUwManager:Landroid/net/wifi/UwManager;

    invoke-virtual {v3}, Landroid/net/wifi/UwManager;->getWifiDelayType()I

    move-result v1

    .local v1, type:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controlChinaNetDisconnect  TYPE IS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/wifi/UwManager;->isChinaNetAp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne v1, v7, :cond_1

    iget-object v3, p0, Lcom/android/server/UwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (network ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/UwWifiPolicy;->mUwManager:Landroid/net/wifi/UwManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v6, v4}, Landroid/net/wifi/UwManager;->setWifiDelayWorkType(II)V

    return-void

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable the delayed Network  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/UwWifiPolicy;->mUwManager:Landroid/net/wifi/UwManager;

    invoke-virtual {v4}, Landroid/net/wifi/UwManager;->getDelayNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/UwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    iget-object v3, p0, Lcom/android/server/UwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/server/UwWifiPolicy;->mUwManager:Landroid/net/wifi/UwManager;

    invoke-virtual {v4}, Landroid/net/wifi/UwManager;->getDelayNetworkId()I

    move-result v4

    invoke-virtual {v3, v4, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    const-string v3, "Delay work Disable Wifi "

    invoke-direct {p0, v3}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/UwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    const-string v3, "connect next chinanet ap "

    invoke-direct {p0, v3}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    if-ne v1, v3, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.UW_AIRPLANE_DISCONNECTED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "UwWifiPolicy"

    const-string v3, "uwlog controlChinaNetDisconnect send intent UW_AIRPLANE_DISCONNECTED_ACTION to wifiservice"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    const/4 v3, 0x6

    if-ne v1, v3, :cond_6

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.UW_SHUTDOWN_DISCONNECTED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "UwWifiPolicy"

    const-string v3, "uwlog controlChinaNetDisconnect send intent UW_SHUTDOWN_DISCONNECTED_ACTION to shutdownthread"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    const/4 v3, 0x7

    if-ne v1, v3, :cond_7

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.UW_SWITCH_CHINANET_AP_DISCONNECTED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "UwWifiPolicy"

    const-string v3, "uwlog controlChinaNetDisconnect send intent UW_SWITCH_CHINANET_AP_DISCONNECTED_ACTION to wifisettig"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableNetwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const-string v4, "\""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, lastPos:I
    if-ltz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    :cond_1
    move-object v1, p0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private findNextAvaliableAp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "current"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findNextAp current ap is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    move-object v1, v4

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "wifi_default_primary_ssid"

    invoke-direct {p0, v1}, Lcom/android/server/UwWifiPolicy;->getSettingsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, priSSID:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "primary ap is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/UwWifiPolicy;->getNextAvaliableChinaNetByPriority(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mDefSSID1:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v3}, Lcom/android/server/UwWifiPolicy;->getNextAvaliableChinaNetByPriority(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mDefSSID2:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/UwWifiPolicy;->getNextAvaliableChinaNetByPriority(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v4

    goto :goto_0
.end method

.method private getNextAvaliableChinaNetByPriority(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    const-string v3, "get mChinaNetAps i: "

    move v0, p1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mChinaNetAps:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mChinaNetAps:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get mChinaNetAps i: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mChinaNetAps:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get mChinaNetAps i: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Connect to ap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UwWifiPolicy;->mChinaNetAps:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mChinaNetAps:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_1
    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getSettingsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handUwWifiDisconnectNotify()V
    .locals 1

    .prologue
    const-string v0, "handUwWifiDisconnectNotify"

    invoke-direct {p0, v0}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/UwWifiPolicy;->isUwWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/UwWifiPolicy;->mUwManager:Landroid/net/wifi/UwManager;

    invoke-virtual {v0}, Landroid/net/wifi/UwManager;->wifiDisconnectNotify()V

    :cond_0
    return-void
.end method

.method private handleNetworkStateChanged(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 9
    .parameter "info"
    .parameter "bssid"

    .prologue
    iget-object v6, p0, Lcom/android/server/UwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .local v5, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    invoke-static {v6}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    .local v1, localIp:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, updateState:Z
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "try to set next high priority ap"

    invoke-direct {p0, v6}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/UwWifiPolicy;->mConnectSSID:Ljava/lang/String;

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleNetworkStateChanged bssid is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Connected state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/UwWifiPolicy;->mUwManager:Landroid/net/wifi/UwManager;

    invoke-virtual {v6}, Landroid/net/wifi/UwManager;->getState()Landroid/net/wifi/UwState;

    move-result-object v3

    .local v3, state:Landroid/net/wifi/UwState;
    invoke-static {v3}, Landroid/net/wifi/UwState;->shouldLogout(Landroid/net/wifi/UwState;)Z

    move-result v0

    .local v0, isUwConnectedOrConnecting:Z
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/wifi/UwManager;->isChinaNetAp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/UwWifiPolicy;->mUwManager:Landroid/net/wifi/UwManager;

    invoke-virtual {v6, v1}, Landroid/net/wifi/UwManager;->updateConfig(Ljava/lang/String;)Z

    move-result v4

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleNetworkStateChanged local ip is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " updateConfig state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUwManager.login ssid is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bssid is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    if-eqz v4, :cond_5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    iput v6, p0, Lcom/android/server/UwWifiPolicy;->mLastIpAddress:I

    iget-object v6, p0, Lcom/android/server/UwWifiPolicy;->mUwManager:Landroid/net/wifi/UwManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Landroid/net/wifi/UwManager;->login(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    iget v6, p0, Lcom/android/server/UwWifiPolicy;->mLastIpAddress:I

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v7

    if-eq v6, v7, :cond_3

    const-string v6, "local ip is changed when uw is connected"

    invoke-direct {p0, v6}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/UwWifiPolicy;->mUwManager:Landroid/net/wifi/UwManager;

    invoke-virtual {v6, v1}, Landroid/net/wifi/UwManager;->updateConfig(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    iput v6, p0, Lcom/android/server/UwWifiPolicy;->mLastIpAddress:I

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiInfo ssid is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Network connected state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "last connecting stored mConnectSSID is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/UwWifiPolicy;->mConnectSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_6

    const-string v6, "Store the ssid of connection"

    invoke-direct {p0, v6}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/UwWifiPolicy;->mConnectSSID:Ljava/lang/String;

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/server/UwWifiPolicy;->controlChinaNetDisconnect()V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/server/UwWifiPolicy;->mConnectSSID:Ljava/lang/String;

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mConnectSSID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/UwWifiPolicy;->mConnectSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/UwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/server/UwWifiPolicy;->mConnectSSID:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/UwWifiPolicy;->loadConfigurationNetworkId(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    iget-object v6, p0, Lcom/android/server/UwWifiPolicy;->mConnectSSID:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/UwWifiPolicy;->findNextAvaliableAp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, nextAp:Ljava/lang/String;
    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/android/server/UwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0, v2}, Lcom/android/server/UwWifiPolicy;->loadConfigurationNetworkId(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_1
.end method

.method private handleUwStateChanged(Landroid/content/Intent;Landroid/net/wifi/UwState;Landroid/net/wifi/UwState;)V
    .locals 8
    .parameter "intent"
    .parameter "uwState"
    .parameter "preUwState"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v7, "uw_ppp_failed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUwStateChanged UwState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPreUwState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    sget-object v2, Landroid/net/wifi/UwState;->TURN_SETUP:Landroid/net/wifi/UwState;

    if-ne p3, v2, :cond_0

    sget-object v2, Landroid/net/wifi/UwState;->TURN_SETUP:Landroid/net/wifi/UwState;

    if-eq p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/UwWifiPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/UwWifiPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/server/UwWifiPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/UwWifiPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    sget-object v2, Lcom/android/server/UwWifiPolicy$1;->$SwitchMap$android$net$wifi$UwState:[I

    invoke-virtual {p2}, Landroid/net/wifi/UwState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .local v1, networkinfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/UwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_0

    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    .end local v1           #networkinfo:Landroid/net/NetworkInfo;
    :pswitch_2
    invoke-direct {p0, v6}, Lcom/android/server/UwWifiPolicy;->notifyChinaNetConnectResult(I)V

    const-string v2, "UwManager.EXTRA_ICON_STATE_CONNECTED"

    invoke-direct {p0, v2}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "uw_ppp_failed"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const-string v2, "UwWifiPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUwStateChanged top up a toast uw_ppp_failed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "uw_ppp_failed"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    const v3, 0x10403dd

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/UwWifiPolicy;->mUwManager:Landroid/net/wifi/UwManager;

    const/4 v3, 0x4

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/UwManager;->setWifiDelayWorkType(II)V

    invoke-direct {p0}, Lcom/android/server/UwWifiPolicy;->controlChinaNetDisconnect()V

    iget-object v2, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    const v3, 0x10403de

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/UwWifiPolicy;->notifyChinaNetConnectResult(I)V

    const-string v2, "UwManager.EXTRA_ICON_STATE_CONNECT_FAILED"

    invoke-direct {p0, v2}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/android/server/UwWifiPolicy;->notifyChinaNetConnectResult(I)V

    const-string v2, "UwManager.EXTRA_ICON_STATE_TURN_SETUP"

    invoke-direct {p0, v2}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/UwWifiPolicy;->ShowNotifyInfo()V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0, v6}, Lcom/android/server/UwWifiPolicy;->notifyChinaNetConnectResult(I)V

    const-string v2, "UwManager.TURN_SETUP_FAILED,keep uw connected."

    invoke-direct {p0, v2}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/server/UwWifiPolicy;->notifyChinaNetConnectResult(I)V

    invoke-direct {p0}, Lcom/android/server/UwWifiPolicy;->controlChinaNetDisconnect()V

    const-string v2, "UwManager.DISCONNECTED"

    invoke-direct {p0, v2}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 2
    .parameter "wifiState"

    .prologue
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v0, "wifi is disable ,close uw"

    invoke-direct {p0, v0}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/UwWifiPolicy;->mUwManager:Landroid/net/wifi/UwManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/UwManager;->setEnabled(Z)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "wifi is enable, set first connect flag"

    invoke-direct {p0, v0}, Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/UwWifiPolicy;->mConnectSSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/UwWifiPolicy;->mUwManager:Landroid/net/wifi/UwManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/UwManager;->setEnabled(Z)Z

    goto :goto_0
.end method

.method private isUwWorking()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mUwManager:Landroid/net/wifi/UwManager;

    invoke-virtual {v1}, Landroid/net/wifi/UwManager;->getState()Landroid/net/wifi/UwState;

    move-result-object v0

    .local v0, state:Landroid/net/wifi/UwState;
    invoke-static {v0}, Landroid/net/wifi/UwState;->shouldLogout(Landroid/net/wifi/UwState;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/net/wifi/UwState;->DISCONNECTING:Landroid/net/wifi/UwState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadConfigurationNetworkId(Ljava/lang/String;)I
    .locals 5
    .parameter "defaultSSID"

    .prologue
    iget-object v3, p0, Lcom/android/server/UwWifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .local v2, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/UwWifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .end local v1           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :goto_1
    return v3

    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "UwWifiPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMC][UwWifiPolicy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyChinaNetConnectResult(I)V
    .locals 2
    .parameter "result"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.UW_UP_LAYER_ICON_STATE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "up_icon_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/UwWifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method
