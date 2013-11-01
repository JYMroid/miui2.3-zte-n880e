.class public Lcom/android/server/UwService;
.super Landroid/net/wifi/IUwManager$Stub;
.source "UwService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UwService$UwHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MESSAGE_ENABLE:I = 0x2

.field private static final MESSAGE_LOGIN:I = 0x0

.field private static final MESSAGE_LOGOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UwService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelayNetworkId:I

.field private mDisableWifiType:I

.field private mLastBssid:Ljava/lang/String;

.field private mLastSsid:Ljava/lang/String;

.field private final mUwHandler:Lcom/android/server/UwService$UwHandler;

.field private final mUwStateTracker:Landroid/net/wifi/UwStateTracker;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/UwStateTracker;)V
    .locals 3
    .parameter "context"
    .parameter "tracker"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/IUwManager$Stub;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/UwService;->mDisableWifiType:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/UwService;->mDelayNetworkId:I

    iput-object p1, p0, Lcom/android/server/UwService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UwService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v0, mUwThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/UwService$UwHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/UwService$UwHandler;-><init>(Lcom/android/server/UwService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/UwService;->mUwHandler:Lcom/android/server/UwService$UwHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/UwService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/UwService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/UwService;->handleLogin()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/UwService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/UwService;->handleLogout()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/UwService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/UwService;->handleSetEnabledBloking()V

    return-void
.end method

.method private handleLogin()Z
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    sget-object v2, Landroid/net/wifi/UwState;->CONNECTING:Landroid/net/wifi/UwState;

    invoke-virtual {v1, v2}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLogin ssid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UwService;->mLastSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bSsid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UwService;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UwService;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UwService;->mLastBssid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/UwService;->mLastBssid:Ljava/lang/String;

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UwService;->mLastBssid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/UwService;->mLastSsid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/UwService;->mLastBssid:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/wifi/UwNative;->UwLogin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleLogout()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    sget-object v2, Landroid/net/wifi/UwState;->DISCONNECTING:Landroid/net/wifi/UwState;

    invoke-virtual {v1, v2}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V

    const-string v1, "handleLogout"

    invoke-direct {p0, v1}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/net/wifi/UwNative;->UwLogout()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized handleSetEnabledBloking()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    invoke-virtual {v2}, Landroid/net/wifi/UwStateTracker;->getUwServiceState()I

    move-result v1

    .local v1, serviceState:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnableBloking serviceState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v2, "handleSetEnabledBloking UwNative.UwStart()"

    invoke-direct {p0, v2}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/net/wifi/UwNative;->UwStart()I

    move-result v0

    .local v0, ret:I
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/net/wifi/UwStateTracker;->setUwServiceState(I)V

    iget-object v2, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    invoke-virtual {v2}, Landroid/net/wifi/UwStateTracker;->setPPPflag()V

    .end local v0           #ret:I
    :cond_0
    :goto_0
    const-string v2, "setEnableBloking late"

    invoke-direct {p0, v2}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .restart local v0       #ret:I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/UwStateTracker;->setUwServiceState(I)V

    iget-object v2, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    sget-object v3, Landroid/net/wifi/UwState;->INACTIVE:Landroid/net/wifi/UwState;

    invoke-virtual {v2, v3}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #ret:I
    .end local v1           #serviceState:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1       #serviceState:I
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :try_start_2
    const-string v2, "handleSetEnabledBloking UwNative.UwStop()"

    invoke-direct {p0, v2}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/net/wifi/UwNative;->UwStop()I

    const-string v2, "UwNative.UwStop() late"

    invoke-direct {p0, v2}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/UwStateTracker;->setUwServiceState(I)V

    iget-object v2, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/UwStateTracker;->setUwServiceState(I)V

    const-string v2, "set uw service state disabled"

    invoke-direct {p0, v2}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    sget-object v3, Landroid/net/wifi/UwState;->INACTIVE:Landroid/net/wifi/UwState;

    invoke-virtual {v2, v3}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "UwService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMC][UwService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public PPPSetting(I)Z
    .locals 6
    .parameter "pppFlag"

    .prologue
    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PPPSetting flag before is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    if-gez p1, :cond_0

    move v2, v5

    :goto_0
    return v2

    :cond_0
    if-lez p1, :cond_1

    const/4 v0, 0x1

    .local v0, flag:I
    :goto_1
    iget-object v2, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PPPSetting flag later is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/wifi/UwNative;->UwPPPSetting(I)I

    move-result v1

    .local v1, ret:I
    if-nez v1, :cond_2

    const/4 v3, 0x1

    monitor-exit v2

    move v2, v3

    goto :goto_0

    .end local v0           #flag:I
    .end local v1           #ret:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #flag:I
    goto :goto_1

    .restart local v1       #ret:I
    :cond_2
    monitor-exit v2

    move v2, v5

    goto :goto_0

    .end local v1           #ret:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getDelayNetworkId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/UwService;->mDelayNetworkId:I

    return v0
.end method

.method public getEnabled()I
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEnabled is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/UwStateTracker;->getUwServiceState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/UwStateTracker;->getUwServiceState()I

    move-result v0

    return v0
.end method

.method public getState()Landroid/net/wifi/UwState;
    .locals 1

    .prologue
    const-string v0, "getState"

    invoke-direct {p0, v0}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/UwStateTracker;->getUwState()Landroid/net/wifi/UwState;

    move-result-object v0

    return-object v0
.end method

.method public getWifiDelayType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/UwService;->mDisableWifiType:I

    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "apSsid"
    .parameter "apBssid"

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/UwService;->mUwHandler:Lcom/android/server/UwService$UwHandler;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iput-object p1, p0, Lcom/android/server/UwService;->mLastSsid:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/UwService;->mLastBssid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/UwStateTracker;->getWagUpdated()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/UwStateTracker;->getUwState()Landroid/net/wifi/UwState;

    move-result-object v0

    .local v0, state:Landroid/net/wifi/UwState;
    sget-object v1, Landroid/net/wifi/UwState;->CONNECTING:Landroid/net/wifi/UwState;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/wifi/UwState;->CONNECTED:Landroid/net/wifi/UwState;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/wifi/UwState;->ALIVE:Landroid/net/wifi/UwState;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/wifi/UwState;->TURN_SETUP:Landroid/net/wifi/UwState;

    if-ne v0, v1, :cond_3

    :cond_2
    const-string v1, "Just connecting or connected, No need connect"

    invoke-direct {p0, v1}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/UwService;->mUwHandler:Lcom/android/server/UwService$UwHandler;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/UwService;->mUwHandler:Lcom/android/server/UwService$UwHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/UwService$UwHandler;->sendEmptyMessage(I)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login ssid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bSsid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public logout()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/UwService;->mUwHandler:Lcom/android/server/UwService$UwHandler;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/UwStateTracker;->getWagUpdated()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/UwStateTracker;->getUwState()Landroid/net/wifi/UwState;

    move-result-object v0

    .local v0, state:Landroid/net/wifi/UwState;
    sget-object v1, Landroid/net/wifi/UwState;->DISCONNECTING:Landroid/net/wifi/UwState;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/wifi/UwState;->DISCONNECTED:Landroid/net/wifi/UwState;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/wifi/UwState;->IDLE:Landroid/net/wifi/UwState;

    if-ne v0, v1, :cond_3

    :cond_2
    const-string v1, "Just disconnected or disconnecting, No need disconnect"

    invoke-direct {p0, v1}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/UwService;->mUwHandler:Lcom/android/server/UwService$UwHandler;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/UwService;->mUwHandler:Lcom/android/server/UwService$UwHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/UwService$UwHandler;->sendEmptyMessage(I)Z

    monitor-exit v1

    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setEnabled(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/UwService;->mUwHandler:Lcom/android/server/UwService$UwHandler;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/UwStateTracker;->getUwServiceState()I

    move-result v0

    .local v0, serviceState:I
    if-eq v0, v3, :cond_1

    if-ne v0, v4, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    :goto_1
    iget-object v1, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    invoke-virtual {v1, v0}, Landroid/net/wifi/UwStateTracker;->setUwServiceState(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set uw enable before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UwService;->mUwHandler:Lcom/android/server/UwService$UwHandler;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/UwService;->mUwHandler:Lcom/android/server/UwService$UwHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/UwService$UwHandler;->sendEmptyMessage(I)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set uw enable is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    move v1, v4

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setWifiDelayWorkType(II)V
    .locals 1
    .parameter "type"
    .parameter "networkId"

    .prologue
    const-string v0, "setWifiDelayWorkType"

    invoke-direct {p0, v0}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/UwService;->mDisableWifiType:I

    iput p2, p0, Lcom/android/server/UwService;->mDelayNetworkId:I

    return-void
.end method

.method public updateConfig(Ljava/lang/String;)Z
    .locals 2
    .parameter "localIp"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UwService updateConfig ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/UwStateTracker;->updateConfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public wifiDisconnectNotify()V
    .locals 2

    .prologue
    const-string v0, "wifiDisconnectNotify"

    invoke-direct {p0, v0}, Lcom/android/server/UwService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    sget-object v1, Landroid/net/wifi/UwState;->INACTIVE:Landroid/net/wifi/UwState;

    invoke-virtual {v0, v1}, Landroid/net/wifi/UwStateTracker;->setUwState(Landroid/net/wifi/UwState;)V

    iget-object v0, p0, Lcom/android/server/UwService;->mUwStateTracker:Landroid/net/wifi/UwStateTracker;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/UwNative;->UwDisconnectNotify()I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
