.class public final Lcom/broadcom/bt/service/fm/FmReceiverService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmReceiverService$2;,
        Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;,
        Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;,
        Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;,
        Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;
    }
.end annotation


# static fields
.field private static FMQueue:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FmReceiverService"

.field private static final V:Z = true


# instance fields
.field private current_CMD:I

.field private final m_callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/fm/IFmReceiverCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected operationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiverService;->classFmInitNative()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/FmReceiverService$1;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->logTimeOut(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initializeStateMachine()V

    return-void
.end method

.method static synthetic access$1600(Lcom/broadcom/bt/service/fm/FmReceiverService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallback(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/broadcom/bt/service/fm/FmReceiverService;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallback(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallback(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallback(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/fm/FmReceiverService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallback(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallback(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallback(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/broadcom/bt/service/fm/FmReceiverService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendVolumeEventCallback(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallback(IIZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    invoke-direct/range {p0 .. p9}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method private static native classFmInitNative()V
.end method

.method private cleanQueue(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    .locals 9
    .parameter "job"

    .prologue
    const-wide/16 v7, 0x0

    const-string v6, "FmReceiverService"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, now:J
    sget-object v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;>;"
    if-eqz p1, :cond_3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    .local v0, existingJob:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    iget-object v4, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_OFF:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    if-ne v4, v5, :cond_1

    iget-wide v4, v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_2

    const-string v4, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed because of a FM off request. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_STATION_ABORT:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    if-ne v4, v5, :cond_2

    const-string v4, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed because of an abort request. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-wide v4, v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_0

    const-string v4, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "****** ***** Sent. So remove Job:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto/16 :goto_0

    .end local v0           #existingJob:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    :cond_3
    return-void
.end method

.method private native cleanupLoopNative()V
.end method

.method private native configureDeemphasisNative(I)Z
.end method

.method private native configureSignalNotificationNative(I)Z
.end method

.method private native disableNative(Z)Z
.end method

.method private native enableNative(I)Z
.end method

.method private native estimateNoiseFloorNative(I)Z
.end method

.method private fetchNextJob()V
    .locals 5

    .prologue
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    .local v0, job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******* ******* Processing job:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->cleanQueue(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V

    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->processCommands()V

    monitor-exit v1

    goto :goto_0

    .end local v0           #job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private native getAudioQualityNative(Z)Z
.end method

.method private native initLoopNative()V
.end method

.method private native initNativeDataNative()V
.end method

.method private initializeStateMachine()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    const/16 v0, 0x7f

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAlternateFreqHopThreshold:I

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mStepSize:I

    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mLiveAudioQuality:Z

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    const/16 v0, 0x64

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSignalPollInterval:I

    const/16 v0, 0x40

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mDeemphasisTime:I

    return-void
.end method

.method private logTimeOut(I)V
    .locals 3
    .parameter "what"

    .prologue
    const-string v2, "FmReceiverService"

    packed-switch p1, :pswitch_data_0

    const-string v0, "FmReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BTAPP TIMEOUT (1, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_ENABLE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_DISABLE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_SEARCH"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_TUNE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_MUTE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_SEEK_ABORT"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_6
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_SET_RDS_MODE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_7
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_SET_AUDIO_MODE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_8
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_SET_AUDIO_PATH"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_9
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_SET_STEP_SIZE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_a
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_SET_FM_VOLUME"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_b
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_SET_WORLD_REGION"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_c
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_NFL"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_d
    const-string v0, "FmReceiverService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_GENERIC"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private native muteNative(Z)Z
.end method

.method private processCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)Z
    .locals 7
    .parameter "job"

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    .local v1, successful:I
    const/4 v2, -0x1

    iput v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    iget-wide v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** ***** processCommand:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmReceiverService$FMCommand:[I

    iget-object v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :pswitch_0
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_turnOnRadio(I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_turnOffRadio()I

    move-result v1

    goto :goto_0

    :pswitch_2
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_tuneRadio(I)I

    move-result v1

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_getStatus()I

    move-result v1

    goto :goto_0

    :pswitch_4
    iget-boolean v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->b_arg1:Z

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_muteAudio(Z)I

    move-result v1

    goto :goto_0

    :pswitch_5
    iput v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_seekStation(II)I

    move-result v1

    goto :goto_0

    :pswitch_6
    iput v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    iget v4, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg3:I

    iget v5, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg4:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_seekRdsStation(IIII)I

    move-result v1

    goto :goto_0

    :pswitch_7
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    iget v4, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg3:I

    iget v5, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg4:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setRdsMode(IIII)I

    move-result v1

    goto :goto_0

    :pswitch_8
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setAudioMode(I)I

    move-result v1

    goto :goto_0

    :pswitch_9
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setAudioPath(I)I

    move-result v1

    goto :goto_0

    :pswitch_a
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setStepSize(I)I

    move-result v1

    goto :goto_0

    :pswitch_b
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setWorldRegion(II)I

    move-result v1

    goto :goto_0

    :pswitch_c
    :try_start_0
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_estimateNoiseFloorLevel(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_d
    :try_start_1
    iget-boolean v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->b_arg1:Z

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setLiveAudioPolling(ZI)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v2

    .restart local v0       #e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_e
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setFMVolume(I)I

    move-result v1

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private processCommands()V
    .locals 5

    .prologue
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** ***** processCommands:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    .local v1, job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->processCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)Z

    move-result v2

    if-eqz v2, :cond_1

    .end local v1           #job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    :cond_0
    return-void

    .restart local v1       #job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private process_estimateNoiseFloorLevel(I)I
    .locals 8
    .parameter "nflLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "estimateNoiseFloorLevel()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, returnStatus:I
    if-eq p1, v4, :cond_1

    if-eq p1, v6, :cond_1

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v4, v3, :cond_2

    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xe

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->estimateNoiseFloorNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "FmReceiverService"

    const-string v3, "estimateNoiseFloorNative failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_getStatus()I
    .locals 4

    .prologue
    const-string v3, "FmReceiverService"

    const-string v1, "FmReceiverService"

    const-string v1, "getStatus()"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, returnStatus:I
    const/4 v1, 0x2

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v1, v2, :cond_0

    const-string v1, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    goto :goto_0
.end method

.method private process_muteAudio(Z)I
    .locals 8
    .parameter "mute"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "muteAudio()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_1

    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->muteNative(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "FmReceiverService"

    const-string v3, "muteAudio failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_seekRdsStation(IIII)I
    .locals 9
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    const/16 v8, 0xff

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "seekRdsStation():1"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, returnStatus:I
    if-ltz p2, :cond_0

    if-le p2, v8, :cond_2

    :cond_0
    const/4 v2, 0x4

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-ltz p4, :cond_3

    if-le p4, v8, :cond_4

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    if-eq p3, v6, :cond_5

    if-eq p3, v4, :cond_5

    const/4 v2, 0x4

    goto :goto_0

    :cond_5
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v4, v3, :cond_6

    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_0

    :cond_6
    sput v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    iput v5, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    and-int/lit16 p1, p1, 0x83

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "FmReceiverService"

    const-string v3, "searchNative failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_seekStation(II)I
    .locals 8
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x1

    const-string v6, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "seekStation():1"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, returnStatus:I
    if-ltz p2, :cond_0

    const/16 v3, 0xff

    if-le p2, v3, :cond_2

    :cond_0
    const/4 v2, 0x4

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-eqz p1, :cond_3

    const/16 v3, 0x80

    if-eq p1, v3, :cond_3

    const/16 v3, 0x81

    if-eq p1, v3, :cond_3

    const/16 v3, 0x82

    if-eq p1, v3, :cond_3

    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seekStation failed, scanMode too high (0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_4

    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_0

    :cond_4
    sput v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    iput v5, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    and-int/lit16 p1, p1, 0x83

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "FmReceiverService"

    const-string v3, "searchNative failed"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setAudioMode(I)I
    .locals 8
    .parameter "audioMode"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    const/4 v2, 0x0

    .local v2, returnStatus:I
    const-string v3, "FmReceiverService"

    const-string v3, "setAudioMode()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_1

    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x9

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    and-int/lit8 p1, p1, 0x3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioModeNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "FmReceiverService"

    const-string v3, "setAudioModeNative failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setAudioPath(I)I
    .locals 9
    .parameter "audioPath"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    const/4 v2, 0x0

    .local v2, returnStatus:I
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAudioPath("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v8, v3, :cond_2

    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-nez p1, :cond_4

    const-string v3, "fm_route=disabled"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v2

    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    and-int/lit8 p1, p1, 0x3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioPathNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "FmReceiverService"

    const-string v3, "setAudioPathNative failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Landroid/os/Message;
    :cond_4
    if-ne p1, v6, :cond_5

    const-string v3, "fm_route=fm_speaker"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-ne p1, v8, :cond_1

    const-string v3, "fm_route=fm_headset"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1
.end method

.method private process_setFMVolume(I)I
    .locals 8
    .parameter "volume"

    .prologue
    const/4 v7, 0x1

    const-string v6, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "setFMVolume()"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, returnStatus:I
    if-ltz p1, :cond_0

    const/16 v3, 0x100

    if-le p1, v3, :cond_2

    :cond_0
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume is illegal ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3

    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xc

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFMVolume ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setFMVolumeNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "FmReceiverService"

    const-string v3, "setFMVolumeNative failed"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setLiveAudioPolling(ZI)I
    .locals 6
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const-string v5, "STATE = "

    const-string v4, "FmReceiverService"

    const/4 v1, 0x0

    .local v1, returnStatus:I
    const-string v2, "FmReceiverService"

    const-string v2, "setLiveAudioPolling()"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/16 v2, 0xa

    if-lt p2, v2, :cond_0

    const v2, 0x186a0

    if-le p2, v2, :cond_1

    :cond_0
    const/4 v1, 0x4

    :goto_0
    const-string v2, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    return v1

    :cond_1
    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v2, :cond_2

    const-string v2, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getAudioQualityNative(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureSignalNotificationNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :goto_1
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x2

    const-string v2, "FmReceiverService"

    const-string v2, "setLiveAudioPolling failed"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setRdsMode(IIII)I
    .locals 9
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    const/4 v5, 0x0

    .local v5, returnStatus:I
    const-string v6, "FmReceiverService"

    const-string v7, "setRdsMode()"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p4, :cond_0

    const/16 v6, 0xff

    if-le p4, v6, :cond_2

    :cond_0
    const/4 v5, 0x4

    :cond_1
    :goto_0
    return v5

    :cond_2
    const/4 v6, 0x2

    sget v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v6, v7, :cond_3

    const-string v6, "FmReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STATE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    goto :goto_0

    :cond_3
    const/4 v6, 0x4

    sput v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    const/4 v6, 0x0

    sput v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    const/4 v6, 0x1

    iput v6, v2, Landroid/os/Message;->what:I

    const/16 v6, 0x8

    iput v6, v2, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    and-int/lit8 p1, p1, 0x3

    and-int/lit8 p3, p3, 0x1

    and-int/lit8 p2, p2, 0x7c

    if-eqz p1, :cond_4

    const/4 v6, 0x1

    move v4, v6

    .local v4, rdsOnNative:Z
    :goto_1
    if-eqz p3, :cond_5

    const/4 v6, 0x1

    move v0, v6

    .local v0, afOnNative:Z
    :goto_2
    and-int/lit8 v3, p1, 0x1

    .local v3, rdsModeNative:I
    :try_start_0
    invoke-direct {p0, v4, v0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRdsModeNative(ZZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_6

    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .end local v0           #afOnNative:Z
    .end local v3           #rdsModeNative:I
    .end local v4           #rdsOnNative:Z
    :cond_4
    const/4 v6, 0x0

    move v4, v6

    goto :goto_1

    .restart local v4       #rdsOnNative:Z
    :cond_5
    const/4 v6, 0x0

    move v0, v6

    goto :goto_2

    .restart local v0       #afOnNative:Z
    .restart local v3       #rdsModeNative:I
    :cond_6
    const/4 v5, 0x2

    goto :goto_3

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v6, "FmReceiverService"

    const-string v7, "setRdsNative failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x2

    goto :goto_3
.end method

.method private process_setStepSize(I)I
    .locals 8
    .parameter "stepSize"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "setStepSize()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, returnStatus:I
    const/16 v3, 0x10

    if-eq p1, v3, :cond_1

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_2

    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xb

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setScanStepNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "FmReceiverService"

    const-string v3, "setScanStepNative failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setWorldRegion(II)I
    .locals 8
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "setWorldRegion()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, returnStatus:I
    if-eqz p1, :cond_1

    if-eq p1, v6, :cond_1

    if-eq p1, v4, :cond_1

    const/4 v2, 0x4

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p2, :cond_2

    const/16 v3, 0x40

    if-eq p2, v3, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v4, v3, :cond_3

    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xd

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRegionNative(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureDeemphasisNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "FmReceiverService"

    const-string v3, "setRdsNative failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_tuneRadio(I)I
    .locals 8
    .parameter "freq"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "tuneRadio()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, returnStatus:I
    if-lt p1, v6, :cond_0

    const v3, 0x1869f

    if-le p1, v3, :cond_2

    :cond_0
    const/4 v2, 0x4

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3

    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->tuneNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "FmReceiverService"

    const-string v3, "tuneNative failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_turnOffRadio()I
    .locals 9

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "FmReceiverService"

    const-string v3, "FmReceiverService"

    const-string v3, "liying   turnOffRadio()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sput v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    const-string v3, "FmReceiverService"

    const-string v3, "liying   turnOffRadio() radio_state == RADIO_STATE_STOPPING"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    iput v5, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-virtual {p0, v8}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioPath(I)I

    sput v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    const-string v3, "FmReceiverService"

    const-string v3, "liying   turnOffRadio() radio_state == RADIO_STATE_OFF"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    const-string v3, "FmReceiverService"

    const-string v3, "turnOnRadioNative failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_turnOnRadio(I)I
    .locals 10
    .parameter "functionalityMask"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const-string v9, "FmReceiverService"

    const-string v5, "FmReceiverService"

    const-string v5, "turnOnRadio........()"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->initFmPower()V

    const/4 v4, 0x0

    .local v4, returnStatus:I
    and-int/lit8 v3, p1, 0x3

    .local v3, requestedRegion:I
    and-int/lit8 v2, p1, 0x70

    .local v2, requestedRdsFeatures:I
    if-eq v3, v8, :cond_1

    if-eq v3, v6, :cond_1

    if-eqz v3, :cond_1

    const-string v5, "FmReceiverService"

    const-string v5, "Illegal parameter"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    :cond_0
    :goto_0
    return v4

    :cond_1
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_2

    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_2

    const-string v5, "FmReceiverService"

    const-string v5, "Illegal parameter (2)"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    sget-boolean v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-eqz v5, :cond_3

    invoke-direct {p0, v8}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    goto :goto_0

    :cond_3
    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eqz v5, :cond_4

    const-string v5, "FmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    goto :goto_0

    :cond_4
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFuncMask:I

    sput v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    iput v6, v1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    and-int/lit8 p1, p1, 0x73

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->enableNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x2

    const-string v5, "FmReceiverService"

    const-string v5, "turnOnRadioNative failed"

    invoke-static {v9, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    .locals 4
    .parameter "job"

    .prologue
    const-string v1, "FmReceiverService"

    const-string v0, "FmReceiverService"

    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    const-string v1, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****** ****** Adding FM Job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->cleanQueue(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->processCommands()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native searchAbortNative()Z
.end method

.method private native searchNative(IIII)Z
.end method

.method private sendAudioModeEventCallback(I)V
    .locals 7
    .parameter "audioMode"

    .prologue
    const-string v6, "sendAudioModeEventCallback"

    const-string v5, "FmReceiverService"

    const-string v4, "FmReceiverService"

    const-string v4, "sendAudioModeEventCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioModeEvent(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendAudioModeEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    return-void

    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendAudioModeEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendAudioPathEventCallback(I)V
    .locals 7
    .parameter "audioPath"

    .prologue
    const-string v6, "sendAudioPathEventCallback"

    const-string v5, "FmReceiverService"

    const-string v4, "FmReceiverService"

    const-string v4, "sendAudioPathEventCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioPathEvent(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendAudioPathEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    return-void

    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendAudioPathEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendEstimateNflEventCallback(I)V
    .locals 7
    .parameter "nfl"

    .prologue
    const-string v6, "sendEstimateNflEventCallback"

    const-string v5, "FmReceiverService"

    const-string v4, "FmReceiverService"

    const-string v4, "sendEstimateNflEventCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onEstimateNflEvent(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendEstimateNflEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    return-void

    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendEstimateNflEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendLiveAudioQualityEventCallback(I)V
    .locals 7
    .parameter "rssi"

    .prologue
    const-string v6, "sendLiveAudioQualityEventCallback"

    const-string v5, "FmReceiverService"

    const-string v4, "FmReceiverService"

    const-string v4, "sendLiveAudioQualityEventCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onLiveAudioQualityEvent(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendLiveAudioQualityEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    return-void

    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendLiveAudioQualityEventCallbackFromLocalStore(I)V
    .locals 2
    .parameter "rssi"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x18

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendRdsDataEventCallback(IILjava/lang/String;)V
    .locals 6
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    const-string v5, "FmReceiverService"

    const-string v4, "FmReceiverService"

    const-string v4, "sendRdsDataEventCallback"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsDataEvent(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendRdsModeEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    return-void

    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendRdsDataEventCallbackFromLocalStore(IILjava/lang/String;)V
    .locals 2
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendRdsModeEventCallback(II)V
    .locals 7
    .parameter "rdsMode"
    .parameter "alternateFreqMode"

    .prologue
    const-string v6, "sendRdsModeEventCallback"

    const-string v5, "FmReceiverService"

    const-string v4, "FmReceiverService"

    const-string v4, "sendRdsModeEventCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsModeEvent(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendRdsModeEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    return-void

    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendRdsModeEventCallbackFromLocalStore()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    const-string v4, "sendRdsModeEventCallbackFromLocalStore"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, rds:I
    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    if-eqz v3, :cond_1

    move v0, v5

    .local v0, af:I
    :goto_0
    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    if-nez v3, :cond_2

    move v2, v5

    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x12

    iput v3, v1, Landroid/os/Message;->what:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    iput v0, v1, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .end local v0           #af:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .restart local v0       #af:I
    :cond_2
    const/4 v3, 0x2

    move v2, v3

    goto :goto_1
.end method

.method private sendSeekCompleteEventCallback(IIZI)V
    .locals 7
    .parameter "freq"
    .parameter "rssi"
    .parameter "seekSuccess"
    .parameter "iSendNextJob"

    .prologue
    const-string v6, "sendSeekCompleteEventCallback"

    const-string v5, "FmReceiverService"

    const-string v4, "FmReceiverService"

    const-string v4, "sendSeekCompleteEventCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onSeekCompleteEvent(IIZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendSeekCompleteEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-lez p4, :cond_0

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    :cond_0
    return-void

    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendSeekCompleteEventCallbackFromLocalStore(Z)V
    .locals 6
    .parameter "SendNextJob"

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x11

    iput v2, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZ)V

    .local v1, search_st:Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne p1, v5, :cond_0

    move v2, v5

    :goto_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 13
    .parameter "freq"
    .parameter "rssi"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"
    .parameter "iSendNextJob"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    .local v9, callbacks:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v9, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v10, v0

    .local v10, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v9           #callbacks:I
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v12           #i:I
    :catch_1
    move-exception v0

    move-object v11, v0

    .local v11, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v11           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    :cond_0
    if-lez p9, :cond_1

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    :cond_1
    return-void

    .restart local v9       #callbacks:I
    .restart local v12       #i:I
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendStatusEventCallbackFromLocalStore(Z)V
    .locals 12
    .parameter "SendNextJob"

    .prologue
    const/4 v11, 0x1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .local v10, msg:Landroid/os/Message;
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    sget-object v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    sget-object v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    sget-object v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sget-boolean v9, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .local v0, status:Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;
    const/16 v1, 0x10

    iput v1, v10, Landroid/os/Message;->what:I

    if-ne p1, v11, :cond_0

    move v1, v11

    :goto_0
    iput v1, v10, Landroid/os/Message;->arg1:I

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendVolumeEventCallback(II)V
    .locals 7
    .parameter "status"
    .parameter "volume"

    .prologue
    const-string v6, "sendVolumeEventCallback"

    const-string v5, "FmReceiverService"

    const-string v4, "FmReceiverService"

    const-string v4, "sendVolumeEventCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onVolumeEvent(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendVolumeEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    return-void

    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendVolumeEventCallbackFromLocalStore(II)V
    .locals 2
    .parameter "status"
    .parameter "volume"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x19

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendWorldRegionEventCallback(I)V
    .locals 7
    .parameter "worldRegion"

    .prologue
    const-string v6, "sendWorldRegionEventCallback"

    const-string v5, "FmReceiverService"

    const-string v4, "FmReceiverService"

    const-string v4, "sendWorldRegionEventCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onWorldRegionEvent(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendWorldRegionEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    return-void

    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendWorldRegionEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x16

    iput v1, v0, Landroid/os/Message;->what:I

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private native setAudioModeNative(I)Z
.end method

.method private native setAudioPathNative(I)Z
.end method

.method private native setFMVolumeNative(I)Z
.end method

.method private native setRdsModeNative(ZZI)Z
.end method

.method private native setRegionNative(I)Z
.end method

.method private native setScanStepNative(I)Z
.end method

.method private native tuneNative(I)Z
.end method


# virtual methods
.method public checkForPendingResponses()V
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "checkForPendingResponses"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallbackFromLocalStore(I)V

    return-void
.end method

.method public clearAllQueue()V
    .locals 4

    .prologue
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    const-string v1, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******* Clearing the queue. Present size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const/4 v1, 0x0

    sput-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .locals 2
    .parameter "nflLevel"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_ESTIMATE_NOISE_FLOOR_LEVEL:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->stopFM_Loop()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x4e20

    const-string v0, "FmReceiverService"

    const-string v1, "finish - cleanup Service here"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->clearAllQueue()V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseService;->finish()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "getName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bluetooth_fm_receiver_service"

    return-object v0
.end method

.method public getRadioIsOn()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    return v0
.end method

.method public declared-synchronized getStatus()I
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_GET_STATUS:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized muteAudio(Z)I
    .locals 2
    .parameter "mute"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_MUTE_AUDIO:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;Z)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRadioAfJumpEvent(III)V
    .locals 4
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v3, 0x1

    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioAfJumpEvent(status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sput-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore(Z)V

    return-void
.end method

.method public onRadioAudioDataEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "mode"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioAudioDataEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-nez p1, :cond_0

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    :cond_0
    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallbackFromLocalStore(I)V

    return-void
.end method

.method public onRadioAudioModeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "mode"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioAudioModeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_0

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallbackFromLocalStore()V

    return-void
.end method

.method public onRadioAudioPathEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "path"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioAudioPathEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_0

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallbackFromLocalStore()V

    return-void
.end method

.method public onRadioDeemphEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "time"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioDeemphEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    return-void
.end method

.method public onRadioMuteEvent(IZ)V
    .locals 3
    .parameter "status"
    .parameter "muted"

    .prologue
    const/4 v2, 0x1

    const-string v0, "FmReceiverService"

    const-string v1, "onRadioMuteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sput-boolean p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    return-void
.end method

.method public onRadioNflEstimationEvent(I)V
    .locals 2
    .parameter "level"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioNflEstimationEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallbackFromLocalStore()V

    return-void
.end method

.method public onRadioOffEvent(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "FmReceiverService"

    const-string v1, "onRadioOffEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->shutdownFmPower()V

    if-nez p1, :cond_0

    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-nez v0, :cond_1

    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    :cond_1
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    return-void
.end method

.method public onRadioOnEvent(I)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    const-string v0, "FmReceiverService"

    const-string v1, "onRadioOnEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    :cond_1
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    return-void
.end method

.method public onRadioRdsModeEvent(IZZI)V
    .locals 3
    .parameter "status"
    .parameter "rdsOn"
    .parameter "afOn"
    .parameter "rdsType"

    .prologue
    const-string v2, "FmReceiverService"

    const-string v0, "FmReceiverService"

    const-string v0, "onRadioRdsModeEvent()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sput-boolean p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    sput-boolean p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    sput p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    const-string v0, "FmReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRadioRdsModeEvent( rdsOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", afOn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallbackFromLocalStore()V

    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    return-void
.end method

.method public onRadioRdsTypeEvent(II)V
    .locals 3
    .parameter "status"
    .parameter "rdsType"

    .prologue
    const/4 v2, 0x1

    const-string v0, "FmReceiverService"

    const-string v1, "onRadioRdsTypeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    :cond_0
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallbackFromLocalStore()V

    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    goto :goto_0
.end method

.method public onRadioRdsUpdateEvent(IIILjava/lang/String;)V
    .locals 4
    .parameter "status"
    .parameter "data"
    .parameter "index"
    .parameter "text"

    .prologue
    const-string v3, ","

    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioRdsUpdateEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-direct {p0, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallbackFromLocalStore(IILjava/lang/String;)V

    :cond_0
    return-void

    :pswitch_1
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    goto :goto_0

    :pswitch_2
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRadioRegionEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "region"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioRegionEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallbackFromLocalStore()V

    return-void
.end method

.method public onRadioScanStepEvent(I)V
    .locals 2
    .parameter "stepSize"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioScanStepEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    return-void
.end method

.method public onRadioSearchCompleteEvent(III)V
    .locals 3
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v2, 0x1

    const-string v0, "FmReceiverService"

    const-string v1, "onRadioSearchCompleteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRadioSearchEvent(II)V
    .locals 3
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v2, 0x1

    const-string v0, "FmReceiverService"

    const-string v1, "onRadioSearchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore(Z)V

    return-void
.end method

.method public onRadioTuneEvent(III)V
    .locals 3
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v2, 0x1

    const-string v0, "FmReceiverService"

    const-string v1, "onRadioTuneEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_0

    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    :cond_0
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    return-void
.end method

.method public onRadioVolumeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "volume"

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioVolumeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendVolumeEventCallbackFromLocalStore(II)V

    return-void
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .locals 1
    .parameter "started"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .locals 6
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_RDS_STATION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;IIII)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekStation(II)I
    .locals 2
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_STATION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;II)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekStationAbort()I
    .locals 4

    .prologue
    const-string v2, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v2, "FmReceiverService"

    const-string v3, "seekStationAbort()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    .local v1, returnStatus:I
    iget v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchAbortNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x2

    :try_start_2
    const-string v2, "FmReceiverService"

    const-string v3, "searchAbortNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 2
    .parameter "audioMode"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_AUDIO_MODE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 2
    .parameter "audioPath"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_AUDIO_PATH:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFMVolume(I)I
    .locals 2
    .parameter "volume"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_VOLUME:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .locals 2
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_LIVE_AUDIO_POLLING:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;ZI)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .locals 6
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_RDS_MODE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;IIII)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStepSize(I)I
    .locals 2
    .parameter "stepSize"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_STEP_SIZE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorldRegion(II)I
    .locals 2
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_WORLD_REGION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;II)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverService"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_0

    const-string v0, "FmReceiverService"

    const-string v1, "Service already started...Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->startFM_Loop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startFM_Loop()V
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "startFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initLoopNative()V

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initNativeDataNative()V

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-nez v0, :cond_0

    const-string v0, "FmReceiverService"

    const-string v1, "Service already stopped...Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->stopFM_Loop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopFM_Loop()V
    .locals 2

    .prologue
    const-string v0, "FmReceiverService"

    const-string v1, "stopFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->cleanupLoopNative()V

    return-void
.end method

.method public declared-synchronized tuneRadio(I)I
    .locals 2
    .parameter "freq"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_TUNE_RADIO:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized turnOffRadio()I
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_OFF:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized turnOnRadio(I)I
    .locals 2
    .parameter "functionalityMask"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_ON:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
