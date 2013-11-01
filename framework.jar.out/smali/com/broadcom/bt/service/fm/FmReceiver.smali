.class public final Lcom/broadcom/bt/service/fm/FmReceiver;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmReceiver$1;,
        Lcom/broadcom/bt/service/fm/FmReceiver$FmBroadcastReceiver;,
        Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ON_AUDIO_MODE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_AUDIO_MODE"

.field public static final ACTION_ON_AUDIO_PATH:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_AUDIO_PATH"

.field public static final ACTION_ON_AUDIO_QUAL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_AUDIO_QUAL"

.field public static final ACTION_ON_EST_NFL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_EST_NFL"

.field public static final ACTION_ON_RDS_DATA:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_RDS_DATA"

.field public static final ACTION_ON_RDS_MODE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_RDS_MODE"

.field public static final ACTION_ON_SEEK_CMPL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_SEEK_CMPL"

.field public static final ACTION_ON_STATUS:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_STATUS"

.field public static final ACTION_ON_VOL:Ljava/lang/String; = "ON_VOL"

.field public static final ACTION_ON_WRLD_RGN:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_WRLD_RGN"

.field private static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.fm.action."

#the value of this static final field might be set in the static constructor
.field private static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final AF_MODE_DEFAULT:I = 0x0

.field public static final AF_MODE_OFF:I = 0x0

.field public static final AF_MODE_ON:I = 0x1

.field public static final AUDIO_MODE_AUTO:I = 0x0

.field public static final AUDIO_MODE_BLEND:I = 0x3

.field public static final AUDIO_MODE_MONO:I = 0x2

.field public static final AUDIO_MODE_STEREO:I = 0x1

.field public static final AUDIO_MODE_SWITCH:I = 0x3

.field public static final AUDIO_PATH_DIGITAL:I = 0x3

.field public static final AUDIO_PATH_NONE:I = 0x0

.field public static final AUDIO_PATH_SPEAKER:I = 0x1

.field public static final AUDIO_PATH_WIRE_HEADSET:I = 0x2

.field public static final AUDIO_QUALITY_BLEND:I = 0x4

.field public static final AUDIO_QUALITY_MONO:I = 0x2

.field public static final AUDIO_QUALITY_STEREO:I = 0x1

.field public static final DEEMPHASIS_50U:I = 0x0

.field public static final DEEMPHASIS_75U:I = 0x40

.field public static final DEEMPHASIS_TIME_DEFAULT:I = 0x40

.field public static final EXTRA_ALT_FREQ_MODE:Ljava/lang/String; = "ALT_FREQ_MODE"

.field public static final EXTRA_AUDIO_MODE:Ljava/lang/String; = "AUDIO_MODE"

.field public static final EXTRA_AUDIO_PATH:Ljava/lang/String; = "AUDIO_PATH"

.field public static final EXTRA_FREQ:Ljava/lang/String; = "FREQ"

.field public static final EXTRA_MUTED:Ljava/lang/String; = "MUTED"

.field public static final EXTRA_NFL:Ljava/lang/String; = "NFL"

.field public static final EXTRA_RADIO_ON:Ljava/lang/String; = "RADIO_ON"

.field public static final EXTRA_RDS_DATA_TYPE:Ljava/lang/String; = "RDS_DATA_TYPE"

.field public static final EXTRA_RDS_IDX:Ljava/lang/String; = "RDS_IDX"

.field public static final EXTRA_RDS_MODE:Ljava/lang/String; = "RDS_MODE"

.field public static final EXTRA_RDS_PRGM_SVC:Ljava/lang/String; = "RDS_PRGM_SVC"

.field public static final EXTRA_RDS_PRGM_TYPE:Ljava/lang/String; = "RDS_PRGM_TYPE"

.field public static final EXTRA_RDS_PRGM_TYPE_NAME:Ljava/lang/String; = "RDS_PRGM_TYPE_NAME"

.field public static final EXTRA_RDS_TXT:Ljava/lang/String; = "RDS_TXT"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "RSSI"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final EXTRA_SUCCESS:Ljava/lang/String; = "RDS_SUCCESS"

.field public static final EXTRA_VOL:Ljava/lang/String; = "VOL"

.field public static final EXTRA_WRLD_RGN:Ljava/lang/String; = "WRLD_RGN"

.field public static final FM_RECEIVER_PERM:Ljava/lang/String; = "android.permission.ACCESS_FM_RECEIVER"

.field public static final FM_VOLUME_MAX:I = 0x100

.field public static final FREQ_STEP_100KHZ:I = 0x0

.field public static final FREQ_STEP_50KHZ:I = 0x10

.field public static final FREQ_STEP_DEFAULT:I = 0x0

.field public static final FUNCTIONALITY_DEFAULT:I = 0x0

.field public static final FUNC_AF:I = 0x40

.field public static final FUNC_RBDS:I = 0x20

.field public static final FUNC_RDS:I = 0x10

.field public static final FUNC_REGION_CN:I = 0x3

.field public static final FUNC_REGION_DEFAULT:I = 0x0

.field public static final FUNC_REGION_EUR:I = 0x1

.field public static final FUNC_REGION_JP:I = 0x2

.field public static final FUNC_REGION_NA:I = 0x0

.field public static final LIVE_AUDIO_QUALITY_DEFAULT:Z = false

.field public static final MIN_SIGNAL_STRENGTH_DEFAULT:I = 0x69

.field public static final NFL_DEFAULT:I = 0x1

.field public static final NFL_FINE:I = 0x2

.field public static final NFL_LOW:I = 0x0

.field public static final NFL_MED:I = 0x1

.field public static final RDS_COND_NONE:I = 0x0

.field public static final RDS_COND_PTY:I = 0x1

.field public static final RDS_COND_TP:I = 0x2

.field public static final RDS_FEATURE_PS:I = 0x4

.field public static final RDS_FEATURE_PTY:I = 0x8

.field public static final RDS_FEATURE_PTYN:I = 0x20

.field public static final RDS_FEATURE_RT:I = 0x40

.field public static final RDS_FEATURE_TP:I = 0x10

.field public static final RDS_MODE_DEFAULT_ON:I = 0x1

.field public static final RDS_MODE_OFF:I = 0x0

.field public static final RDS_MODE_RBDS_ON:I = 0x3

.field public static final RDS_MODE_RDS_ON:I = 0x2

.field public static final SCAN_MODE_DOWN:I = 0x0

.field public static final SCAN_MODE_FAST:I = 0x81

.field public static final SCAN_MODE_FULL:I = 0x82

.field public static final SCAN_MODE_NORMAL:I = 0x0

.field public static final SCAN_MODE_UP:I = 0x80

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_fm_receiver_service"

.field public static final SIGNAL_POLL_INTERVAL_DEFAULT:I = 0x64

.field public static final STATUS_FAIL:I = 0x1

.field public static final STATUS_ILLEGAL_COMMAND:I = 0x3

.field public static final STATUS_ILLEGAL_PARAMETERS:I = 0x4

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_SERVER_FAIL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FmReceiver"


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

.field private mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "com.broadcom.bt.app.fm.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiver;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiver;->ACTION_PREFIX_LENGTH:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    if-nez p0, :cond_0

    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .restart local p0
    :cond_0
    const-string v0, "com.broadcom.bt.app.fm.action.ON_AUDIO_MODE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.broadcom.bt.app.fm.action.ON_AUDIO_PATH"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.broadcom.bt.app.fm.action.ON_AUDIO_QUAL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.broadcom.bt.app.fm.action.ON_EST_NFL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.broadcom.bt.app.fm.action.ON_RDS_DATA"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.broadcom.bt.app.fm.action.ON_RDS_MODE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.broadcom.bt.app.fm.action.ON_SEEK_CMPL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.broadcom.bt.app.fm.action.ON_STATUS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "ON_VOL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.broadcom.bt.app.fm.action.ON_WRLD_RGN"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"

    .prologue
    const-string v1, "bluetooth_fm_receiver_service"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FmReceiver"

    const-string v2, "Unable to get FMReceiver proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-direct {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;-><init>()V

    .local v0, p:Lcom/broadcom/bt/service/fm/FmReceiver;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.FmService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .locals 4
    .parameter "nflLevel"

    .prologue
    monitor-enter p0

    const/4 v1, 0x2

    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->estimateNoiseFloorLevel(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "estimateNoiseFloorLevel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    :cond_1
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "FmReceiver"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getRadioIsOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, returnStatus:Z
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->getRadioIsOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "getRadioIsOn() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized getStatus()I
    .locals 4

    .prologue
    monitor-enter p0

    const/4 v1, 0x2

    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->getStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "getStatus() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "FmReceiver"

    const-string v2, "Unable to initialize BluetoothFM proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized muteAudio(Z)I
    .locals 4
    .parameter "mute"

    .prologue
    monitor-enter p0

    const/4 v1, 0x2

    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->muteAudio(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "muteAudio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiver"

    const-string v1, "registerEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 3
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    if-nez v1, :cond_0

    new-instance v1, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;-><init>(Lcom/broadcom/bt/service/fm/FmReceiver;Lcom/broadcom/bt/service/fm/FmReceiver$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "FmReceiver"

    const-string v2, "Error registering callback handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 2
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/broadcom/bt/service/fm/FmReceiver;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public seekRdsStation(III)I
    .locals 1
    .parameter "scanMode"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    const/16 v0, 0x69

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekRdsStation(IIII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .locals 4
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    monitor-enter p0

    const/4 v1, 0x2

    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekRdsStation(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "seekRdsStation() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public seekStation(I)I
    .locals 1
    .parameter "scanMode"

    .prologue
    const/16 v0, 0x69

    invoke-virtual {p0, p1, v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    return v0
.end method

.method public declared-synchronized seekStation(II)I
    .locals 4
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    monitor-enter p0

    const/4 v1, 0x2

    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekStation(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "seekStation() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized seekStationAbort()I
    .locals 4

    .prologue
    monitor-enter p0

    const/4 v1, 0x2

    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekStationAbort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "seekStationAbort() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 4
    .parameter "audioMode"

    .prologue
    monitor-enter p0

    const/4 v1, 0x2

    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setAudioMode(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setAudioMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 4
    .parameter "audioPath"

    .prologue
    monitor-enter p0

    const/4 v1, 0x2

    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setAudioPath(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setAudioPath() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setFMVolume(I)I
    .locals 4
    .parameter "volume"

    .prologue
    monitor-enter p0

    const/4 v1, 0x2

    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setFMVolume(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setFMVolume() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .locals 4
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"

    .prologue
    monitor-enter p0

    const/4 v1, 0x2

    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setLiveAudioPolling(ZI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setLiveAudioPolling() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .locals 4
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    monitor-enter p0

    const/4 v1, 0x2

    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setRdsMode(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setRdsMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setStepSize(I)I
    .locals 4
    .parameter "stepSize"

    .prologue
    monitor-enter p0

    const/4 v1, 0x2

    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setStepSize(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setStepSize() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setWorldRegion(II)I
    .locals 4
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    monitor-enter p0

    const/4 v1, 0x2

    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setWorldRegion(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setWorldRegion() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized tuneRadio(I)I
    .locals 4
    .parameter "freq"

    .prologue
    monitor-enter p0

    const/4 v1, 0x2

    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->tuneRadio(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "tuneRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized turnOffRadio()I
    .locals 4

    .prologue
    monitor-enter p0

    const/4 v1, 0x2

    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->turnOffRadio()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "turnOffRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public turnOnRadio()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOnRadio(I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized turnOnRadio(I)I
    .locals 4
    .parameter "functionalityMask"

    .prologue
    monitor-enter p0

    const/4 v1, 0x2

    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->turnOnRadio(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "turnOnRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unregisterEventHandler()V
    .locals 3

    .prologue
    const-string v1, "FmReceiver"

    monitor-enter p0

    :try_start_0
    const-string v1, "FmReceiver"

    const-string v2, "unregisterEventHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "FmReceiver"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
