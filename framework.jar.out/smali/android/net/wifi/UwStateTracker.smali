.class public Landroid/net/wifi/UwStateTracker;
.super Ljava/lang/Object;
.source "UwStateTracker.java"

# interfaces
.implements Landroid/net/wifi/UwNative$UWCallBackInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/UwStateTracker$DatabaseHelper;,
        Landroid/net/wifi/UwStateTracker$ApnDataConnObserver;,
        Landroid/net/wifi/UwStateTracker$SipSettingsObserver;,
        Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;,
        Landroid/net/wifi/UwStateTracker$UwWatchdogThread;,
        Landroid/net/wifi/UwStateTracker$WagConfig;
    }
.end annotation


# static fields
.field private static final ACTION_KEEP_ALIVE:Ljava/lang/String; = "com.android.wifi.UwStateTracker.action.keep_alive"

.field private static final DNS_WAIT_SLEEP_MSEC:I = 0x3e8

.field private static final KEEP_ALIVE_REQUEST:I = 0x0

.field private static final KEY_CPLUSW_STATE:Ljava/lang/String; = "CWState"

.field private static final MAX_NUM_WAIT_DNS:I = 0x28

.field private static final TAG:Ljava/lang/String; = "UwStateTracker"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mApnDataConnObserver:Landroid/net/wifi/UwStateTracker$ApnDataConnObserver;

.field private mContext:Landroid/content/Context;

.field private mDataConnection:Z

.field private mDelayKeepAliveFlag:Z

.field private mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

.field private mKeepAliveIntent:Landroid/app/PendingIntent;

.field private mPreUwState:Landroid/net/wifi/UwState;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSipSettingsObserver:Landroid/net/wifi/UwStateTracker$SipSettingsObserver;

.field private mThread:Landroid/net/wifi/UwStateTracker$UwWatchdogThread;

.field private mUwServiceState:I

.field private mUwState:Landroid/net/wifi/UwState;

.field private mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

.field private mWagUpdated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const-string v5, "com.android.wifi.UwStateTracker.action.keep_alive"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Landroid/net/wifi/UwStateTracker;->mUwServiceState:I

    sget-object v2, Landroid/net/wifi/UwState;->INACTIVE:Landroid/net/wifi/UwState;

    iput-object v2, p0, Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;

    sget-object v2, Landroid/net/wifi/UwState;->INACTIVE:Landroid/net/wifi/UwState;

    iput-object v2, p0, Landroid/net/wifi/UwStateTracker;->mPreUwState:Landroid/net/wifi/UwState;

    new-instance v2, Landroid/net/wifi/UwStateTracker$WagConfig;

    invoke-direct {v2, p0}, Landroid/net/wifi/UwStateTracker$WagConfig;-><init>(Landroid/net/wifi/UwStateTracker;)V

    iput-object v2, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    iput-boolean v4, p0, Landroid/net/wifi/UwStateTracker;->mWagUpdated:Z

    iput-boolean v4, p0, Landroid/net/wifi/UwStateTracker;->mDelayKeepAliveFlag:Z

    new-instance v2, Landroid/net/wifi/UwStateTracker$1;

    invoke-direct {v2, p0}, Landroid/net/wifi/UwStateTracker$1;-><init>(Landroid/net/wifi/UwStateTracker;)V

    iput-object v2, p0, Landroid/net/wifi/UwStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "UwStateTracker(Context context)"

    invoke-direct {p0, v2}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/net/wifi/UwStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/net/wifi/UwStateTracker;->addSipsettings(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/net/wifi/UwNative;->UwRegCallback(Ljava/lang/Object;)I

    new-instance v2, Landroid/net/wifi/UwStateTracker$SipSettingsObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Landroid/net/wifi/UwStateTracker$SipSettingsObserver;-><init>(Landroid/net/wifi/UwStateTracker;Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/net/wifi/UwStateTracker;->mSipSettingsObserver:Landroid/net/wifi/UwStateTracker$SipSettingsObserver;

    new-instance v2, Landroid/net/wifi/UwStateTracker$ApnDataConnObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Landroid/net/wifi/UwStateTracker$ApnDataConnObserver;-><init>(Landroid/net/wifi/UwStateTracker;Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/net/wifi/UwStateTracker;->mApnDataConnObserver:Landroid/net/wifi/UwStateTracker$ApnDataConnObserver;

    invoke-direct {p0}, Landroid/net/wifi/UwStateTracker;->createThread()V

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Landroid/net/wifi/UwStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.wifi.UwStateTracker.action.keep_alive"

    const/4 v2, 0x0

    invoke-direct {v1, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, keepIntent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/net/wifi/UwStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/UwStateTracker;->mKeepAliveIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.wifi.UwStateTracker.action.keep_alive"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/UwStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/UwStateTracker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/wifi/UwStateTracker;)Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/UwStateTracker;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mKeepAliveIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/wifi/UwStateTracker;Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;)Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/UwStateTracker;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/wifi/UwStateTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/UwStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/UwStateTracker;->mDelayKeepAliveFlag:Z

    return v0
.end method

.method static synthetic access$302(Landroid/net/wifi/UwStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/UwStateTracker;->mDelayKeepAliveFlag:Z

    return p1
.end method

.method static synthetic access$400(Landroid/net/wifi/UwStateTracker;)Landroid/net/wifi/UwState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/wifi/UwStateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/UwStateTracker;->getBackgroundCheckDelayMs()I

    move-result v0

    return v0
.end method

.method private addSipsettings(Landroid/content/Context;)V
    .locals 10
    .parameter "mcontext"

    .prologue
    const-string v7, "addSipsettings enter"

    invoke-direct {p0, v7}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    const-string v6, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

    .local v6, s:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addSipsettings1 s = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    new-instance v2, Landroid/net/wifi/UwStateTracker$DatabaseHelper;

    invoke-direct {v2, p0, p1}, Landroid/net/wifi/UwStateTracker$DatabaseHelper;-><init>(Landroid/net/wifi/UwStateTracker;Landroid/content/Context;)V

    .local v2, dbHelper:Landroid/net/wifi/UwStateTracker$DatabaseHelper;
    const-string v7, "addSipsettings2"

    invoke-direct {p0, v7}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/wifi/UwStateTracker$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "addSipsettings3"

    invoke-direct {p0, v7}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    :try_start_0
    const-string v7, "start SQL"

    invoke-direct {p0, v7}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    const-string v0, "create table sipsettings (_id INTEGER PRIMARY KEY AUTOINCREMENT, setting_name TEXT, sip_service_addr TEXT, service_field TEXT, service_port_id TEXT, use_the_setting_enable TEXT);"

    .local v0, DATABASE_CREATE:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v7, "create table success!"

    invoke-direct {p0, v7}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    const-string v5, "INSERT INTO sipsettings  (setting_name, sip_service_addr, service_field, service_port_id, use_the_setting_enable)  VALUES  "

    .local v5, insertMe:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ( \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', \'115.168.42.248\', \'chinanetcw.chinatelecom.cn\', \'5060\', \'1\');"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, insertClause:Ljava/lang/String;
    invoke-direct {p0, v4}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #DATABASE_CREATE:Ljava/lang/String;
    .end local v4           #insertClause:Ljava/lang/String;
    .end local v5           #insertMe:Ljava/lang/String;
    :goto_0
    const-string v7, "addSipsettings leave"

    invoke-direct {p0, v7}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v7

    move-object v3, v7

    .local v3, e:Landroid/database/SQLException;
    const-string v7, "UwStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SQLException e!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createThread()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/UwStateTracker$UwWatchdogThread;

    invoke-direct {v0, p0}, Landroid/net/wifi/UwStateTracker$UwWatchdogThread;-><init>(Landroid/net/wifi/UwStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/UwStateTracker;->mThread:Landroid/net/wifi/UwStateTracker$UwWatchdogThread;

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mThread:Landroid/net/wifi/UwStateTracker$UwWatchdogThread;

    invoke-virtual {v0}, Landroid/net/wifi/UwStateTracker$UwWatchdogThread;->start()V

    invoke-direct {p0}, Landroid/net/wifi/UwStateTracker;->waitForHandlerCreation()V

    const-string v0, "createThread"

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getBackgroundCheckDelayMs()I
    .locals 1

    .prologue
    const v0, 0xea60

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "UwStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMC][UwStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyCtcwStateChange()V
    .locals 4

    .prologue
    const-string v3, "CWState"

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;

    sget-object v2, Landroid/net/wifi/UwState;->CONNECTING:Landroid/net/wifi/UwState;

    if-ne v1, v2, :cond_1

    const-string v1, "notifyCtcwStateChange wState.CONNECTING"

    invoke-direct {p0, v1}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    const-string v1, "CWState"

    const/16 v1, 0xa

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;

    sget-object v2, Landroid/net/wifi/UwState;->CONNECT_FAILED:Landroid/net/wifi/UwState;

    if-ne v1, v2, :cond_2

    const-string v1, "notifyCtcwStateChange wState.CONNECT_FAILED"

    invoke-direct {p0, v1}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    const-string v1, "CWState"

    const/16 v1, 0xb

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;

    sget-object v2, Landroid/net/wifi/UwState;->CONNECTED:Landroid/net/wifi/UwState;

    if-ne v1, v2, :cond_3

    const-string v1, "notifyCtcwStateChange wState.CONNECTED"

    invoke-direct {p0, v1}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    const-string v1, "CWState"

    const/16 v1, 0xc

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;

    sget-object v2, Landroid/net/wifi/UwState;->TURN_SETUPING:Landroid/net/wifi/UwState;

    if-ne v1, v2, :cond_4

    const-string v1, "notifyCtcwStateChange wState.TURN_SETUPING"

    invoke-direct {p0, v1}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    const-string v1, "CWState"

    const/16 v1, 0xd

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;

    sget-object v2, Landroid/net/wifi/UwState;->TURN_SETUP:Landroid/net/wifi/UwState;

    if-ne v1, v2, :cond_0

    const-string v1, "notifyCtcwStateChange wState.TURN_SETUP"

    invoke-direct {p0, v1}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    const-string v1, "CWState"

    const/16 v1, 0xe

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private notifyUwStateChange(Z)V
    .locals 3
    .parameter "isFailed"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.UW_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "uw_ppp_failed"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "uw_state"

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "previous_uw_state"

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker;->mPreUwState:Landroid/net/wifi/UwState;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "notifyUwStateChange"

    invoke-direct {p0, v1}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private waitForHandlerCreation()V
    .locals 3

    .prologue
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "UwStateTracker"

    const-string v2, "Interrupted while waiting on handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method


# virtual methods
.method public debugUwLogin()V
    .locals 4

    .prologue
    const-string v0, "debugUwLogin"

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public debugUwLogout()V
    .locals 4

    .prologue
    const-string v0, "debugUwLogout"

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    const/4 v2, 0x2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public funcCallBack_StateChangeNotify(I)V
    .locals 2
    .parameter "state"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "funcCallBack_StateChangeNotify state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    sget-object v0, Landroid/net/wifi/UwState;->CONNECTED:Landroid/net/wifi/UwState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    sget-object v0, Landroid/net/wifi/UwState;->TURN_SETUP:Landroid/net/wifi/UwState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    sget-object v0, Landroid/net/wifi/UwState;->TURN_SETUPING:Landroid/net/wifi/UwState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V

    goto :goto_0
.end method

.method public funcCallBack_login(II)V
    .locals 3
    .parameter "errCode"
    .parameter "natFlag"

    .prologue
    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "funcCallBack_login errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " natFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    sget-object v0, Landroid/net/wifi/UwState;->CONNECTED:Landroid/net/wifi/UwState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    invoke-virtual {v0}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->startWatchdog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    :cond_2
    sget-object v0, Landroid/net/wifi/UwState;->CONNECTED:Landroid/net/wifi/UwState;

    invoke-virtual {p0, v0, v2}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;Z)V

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    invoke-virtual {v0}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->startWatchdog()V

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/net/wifi/UwState;->CONNECT_FAILED:Landroid/net/wifi/UwState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    invoke-virtual {v0}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->stopWatchdog()V

    goto :goto_0
.end method

.method public funcCallBack_logout(I)V
    .locals 2
    .parameter "errCode"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "funcCallBack_logout errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object v0, Landroid/net/wifi/UwState;->DISCONNECTED:Landroid/net/wifi/UwState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V

    :goto_0
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mHandler:Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;

    invoke-virtual {v0}, Landroid/net/wifi/UwStateTracker$UwWatchdogHandler;->stopWatchdog()V

    return-void

    :cond_0
    sget-object v0, Landroid/net/wifi/UwState;->DISCONNECT_FAILED:Landroid/net/wifi/UwState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V

    goto :goto_0
.end method

.method public getUwServiceState()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/UwStateTracker;->mUwServiceState:I

    return v0
.end method

.method public getUwState()Landroid/net/wifi/UwState;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;

    return-object v0
.end method

.method public getWagUpdated()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/UwStateTracker;->mWagUpdated:Z

    return v0
.end method

.method public setPPPflag()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v1, p0, Landroid/net/wifi/UwStateTracker;->mUwServiceState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    move v0, v3

    .local v0, enableData:Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set PPPflag enable is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    monitor-enter p0

    if-eqz v0, :cond_2

    move v1, v4

    :goto_1
    :try_start_0
    invoke-static {v1}, Landroid/net/wifi/UwNative;->UwPPPSetting(I)I

    monitor-exit p0

    .end local v0           #enableData:Z
    :cond_0
    return-void

    :cond_1
    move v0, v4

    goto :goto_0

    .restart local v0       #enableData:Z
    :cond_2
    move v1, v3

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized setUwServiceState(I)V
    .locals 2
    .parameter "serviceState"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUwServiceState state before is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/UwStateTracker;->mUwServiceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput p1, p0, Landroid/net/wifi/UwStateTracker;->mUwServiceState:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUwServiceState state later is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/UwStateTracker;->mUwServiceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUwState(Landroid/net/wifi/UwState;)V
    .locals 2
    .parameter "state"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUwState state before is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUwState state late is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;

    iput-object v0, p0, Landroid/net/wifi/UwStateTracker;->mPreUwState:Landroid/net/wifi/UwState;

    iput-object p1, p0, Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->notifyUwStateChange(Z)V

    invoke-direct {p0}, Landroid/net/wifi/UwStateTracker;->notifyCtcwStateChange()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUwState(Landroid/net/wifi/UwState;Z)V
    .locals 2
    .parameter "state"
    .parameter "isFailed"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUwState state before is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUwState state late is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;

    iput-object v0, p0, Landroid/net/wifi/UwStateTracker;->mPreUwState:Landroid/net/wifi/UwState;

    iput-object p1, p0, Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;

    invoke-direct {p0, p2}, Landroid/net/wifi/UwStateTracker;->notifyUwStateChange(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateConfig(Ljava/lang/String;)Z
    .locals 4
    .parameter "localIp"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/UwStateTracker;->updateWagConfig()Z

    const/4 v0, -0x1

    .local v0, ret:I
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    #getter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagDomain:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$600(Landroid/net/wifi/UwStateTracker$WagConfig;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    #getter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$500(Landroid/net/wifi/UwStateTracker$WagConfig;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    #getter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagPort:I
    invoke-static {v3}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$700(Landroid/net/wifi/UwStateTracker$WagConfig;)I

    move-result v3

    invoke-static {v1, v2, v3, p1}, Landroid/net/wifi/UwNative;->UwWlanUpdateSettings(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Landroid/net/wifi/UwStateTracker;->mWagUpdated:Z

    :goto_0
    iget-boolean v1, p0, Landroid/net/wifi/UwStateTracker;->mWagUpdated:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mUwState:Landroid/net/wifi/UwState;

    sget-object v2, Landroid/net/wifi/UwState;->INACTIVE:Landroid/net/wifi/UwState;

    if-ne v1, v2, :cond_0

    const-string v1, "state change to idle, and could do work"

    invoke-direct {p0, v1}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    sget-object v1, Landroid/net/wifi/UwState;->IDLE:Landroid/net/wifi/UwState;

    invoke-virtual {p0, v1}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V

    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateSetting is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/UwStateTracker;->mWagUpdated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/net/wifi/UwStateTracker;->mWagUpdated:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v0           #ret:I
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0       #ret:I
    :cond_1
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Landroid/net/wifi/UwStateTracker;->mWagUpdated:Z

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/net/wifi/UwState;->INACTIVE:Landroid/net/wifi/UwState;

    invoke-virtual {p0, v1}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method public updateWagConfig()Z
    .locals 15

    .prologue
    const/4 v2, 0x0

    const/4 v14, 0x1

    const-string v0, "updateWagConfig"

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    new-instance v6, Landroid/net/wifi/UwStateTracker$WagConfig;

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    invoke-direct {v6, p0, v0}, Landroid/net/wifi/UwStateTracker$WagConfig;-><init>(Landroid/net/wifi/UwStateTracker;Landroid/net/wifi/UwStateTracker$WagConfig;)V

    .local v6, backConfig:Landroid/net/wifi/UwStateTracker$WagConfig;
    const-string v3, "use_the_setting_enable = 1"

    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$UwSipSettings;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$502(Landroid/net/wifi/UwStateTracker$WagConfig;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagDomain:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$602(Landroid/net/wifi/UwStateTracker$WagConfig;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagPort:I
    invoke-static {v0, v1}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$702(Landroid/net/wifi/UwStateTracker$WagConfig;I)I

    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v14, :cond_2

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .local v8, connManager:Landroid/net/ConnectivityManager;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v12

    .local v12, networkinfo:Landroid/net/NetworkInfo;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    const/16 v0, 0x28

    if-ge v10, v0, :cond_1

    const-string v0, "net.dns1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, netDns1:Ljava/lang/String;
    const-string v0, "dhcp.wlan0.dns1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, wlan0Dns1:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "net.dns1 =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; dhcp.wlan0.dns1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    if-eqz v11, :cond_4

    if-eqz v13, :cond_4

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    #getter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagDomain:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$600(Landroid/net/wifi/UwStateTracker$WagConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$502(Landroid/net/wifi/UwStateTracker$WagConfig;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>>netDns1 equals to wlan0Dns1 Ip Address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    #getter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$500(Landroid/net/wifi/UwStateTracker$WagConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    const-string v0, "67.215.65.132"

    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    #getter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$500(Landroid/net/wifi/UwStateTracker$WagConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    #getter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$500(Landroid/net/wifi/UwStateTracker$WagConfig;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    #getter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$500(Landroid/net/wifi/UwStateTracker$WagConfig;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "67.215"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    const-string v1, "114.81.255.177"

    #setter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$502(Landroid/net/wifi/UwStateTracker$WagConfig;Ljava/lang/String;)Ljava/lang/String;

    .end local v10           #i:I
    .end local v11           #netDns1:Ljava/lang/String;
    .end local v13           #wlan0Dns1:Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>>Ip Address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    #getter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$500(Landroid/net/wifi/UwStateTracker$WagConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #connManager:Landroid/net/ConnectivityManager;
    .end local v12           #networkinfo:Landroid/net/NetworkInfo;
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wagIp is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    #getter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$500(Landroid/net/wifi/UwStateTracker$WagConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domain is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    #getter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagDomain:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$600(Landroid/net/wifi/UwStateTracker$WagConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Port is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    #getter for: Landroid/net/wifi/UwStateTracker$WagConfig;->wagPort:I
    invoke-static {v1}, Landroid/net/wifi/UwStateTracker$WagConfig;->access$700(Landroid/net/wifi/UwStateTracker$WagConfig;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker;->mWagConfig:Landroid/net/wifi/UwStateTracker$WagConfig;

    invoke-virtual {v6, v0}, Landroid/net/wifi/UwStateTracker$WagConfig;->equals(Landroid/net/wifi/UwStateTracker$WagConfig;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    return v0

    .restart local v8       #connManager:Landroid/net/ConnectivityManager;
    .restart local v10       #i:I
    .restart local v11       #netDns1:Ljava/lang/String;
    .restart local v12       #networkinfo:Landroid/net/NetworkInfo;
    .restart local v13       #wlan0Dns1:Ljava/lang/String;
    :cond_4
    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .end local v8           #connManager:Landroid/net/ConnectivityManager;
    .end local v10           #i:I
    .end local v11           #netDns1:Ljava/lang/String;
    .end local v12           #networkinfo:Landroid/net/NetworkInfo;
    .end local v13           #wlan0Dns1:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v9, v0

    .local v9, e:Ljava/net/UnknownHostException;
    const-string v0, "UwStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>Ip Address UnknownHostException e =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v9           #e:Ljava/net/UnknownHostException;
    :cond_5
    move v0, v14

    goto :goto_2
.end method
