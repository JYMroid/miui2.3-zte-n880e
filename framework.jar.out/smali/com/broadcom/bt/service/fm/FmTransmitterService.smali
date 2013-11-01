.class public final Lcom/broadcom/bt/service/fm/FmTransmitterService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "FmTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmTransmitterService$2;,
        Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;,
        Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;,
        Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;,
        Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static FMTX_Queue:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;",
            ">;"
        }
    .end annotation
.end field

.field private static final FMTX_STATE_BUSY:I = 0x4

.field private static final FMTX_STATE_OFF:I = 0x0

.field private static final FMTX_STATE_READY_FOR_COMMAND:I = 0x2

.field private static final FMTX_STATE_STARTING:I = 0x1

.field private static final FMTX_STATE_STOPPING:I = 0x3

.field private static final FM_TRANSMITTER_PERM:Ljava/lang/String; = "android.permission.ACCESS_FM_TRANSMITTER"

.field private static final OPERATION_FMTX_ABORT_SEARCH:I = 0x10

.field private static final OPERATION_FMTX_BCHNL_EVT:I = 0x25

.field private static final OPERATION_FMTX_CFG_EVT:I = 0x22

.field private static final OPERATION_FMTX_CHIRP_EVT:I = 0x26

.field private static final OPERATION_FMTX_DISABLE:I = 0x3

.field private static final OPERATION_FMTX_DISABLE_EVT:I = 0x1f

.field private static final OPERATION_FMTX_ENABLE:I = 0x2

.field private static final OPERATION_FMTX_ENABLE_EVT:I = 0x1e

.field private static final OPERATION_FMTX_INTF_EVT:I = 0x24

.field private static final OPERATION_FMTX_INTF_NOTIF:I = 0xe

.field private static final OPERATION_FMTX_MUTE_EVT:I = 0x23

.field private static final OPERATION_FMTX_POWER_EVT:I = 0x20

.field private static final OPERATION_FMTX_SEARCH_BEST_CHANS:I = 0xf

.field private static final OPERATION_FMTX_SET_AUDIO_MODE:I = 0x7

.field private static final OPERATION_FMTX_SET_AUDIO_PATH:I = 0xc

.field private static final OPERATION_FMTX_SET_BANDWIDTH:I = 0xa

.field private static final OPERATION_FMTX_SET_FREQ_EVT:I = 0x21

.field private static final OPERATION_FMTX_SET_MUTE_AUDIO:I = 0xd

.field private static final OPERATION_FMTX_SET_PREEMPHASIS:I = 0xb

.field private static final OPERATION_FMTX_SET_REGION:I = 0x9

.field private static final OPERATION_FMTX_SET_TXFREQ:I = 0x5

.field private static final OPERATION_FMTX_SET_TXPWR_LEVEL:I = 0x6

.field private static final OPERATION_FMTX_SET_VOLUME:I = 0x8

.field private static final OPERATION_FMTX_START_AUDIO_CHIRP:I = 0x11

.field private static final OPERATION_FMTX_STATUS_EVT:I = 0x20

.field private static final OPERATION_FMTX_STOP_AUDIO_CHIRP:I = 0x12

.field private static final OPERATION_FMTX_TIMEOUT:I = 0x1

.field private static final OPERATION_FMTX_TIMEOUT_GENERIC:I = 0x1388

.field private static final OPERATION_FMTX_TIMEOUT_SEARCH:I = 0x4e20

.field private static final OPERATION_FMTX_TIMEOUT_SHUTDOWN:I = 0x4e20

.field private static final OPERATION_FMTX_TIMEOUT_STARTUP:I = 0x4e20

.field private static final OPERATION_FMTX_TXPOWER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FmTransmitterService"

.field private static final V:Z = true

.field private static radio_state:I


# instance fields
.field private current_CMD:I

.field private m_bpowerOn:Z

.field private final m_callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;",
            ">;"
        }
    .end annotation
.end field

.field private m_iSaveFreq:I

.field protected operationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->classFmTxInitNative()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    iput-boolean v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    iput v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_iSaveFreq:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->current_CMD:I

    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->initializeStateMachine()V

    return-void
.end method

.method private HandleStatusTimeOut(I)V
    .locals 6
    .parameter "Cmd"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    sput v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v2, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TIMEOUT Handling UNKNOWN CALLBACK: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_1
    sput v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onFmTransmitterEnabledEventFromLocal(I)V

    goto :goto_0

    :pswitch_2
    sput v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onFmTransmitterDisabledEventFromLocal(I)V

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_iSaveFreq:I

    invoke-direct {p0, v3, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onSetTxFrequencyEventFromLocal(II)V

    goto :goto_0

    :pswitch_4
    iget-boolean v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    invoke-direct {p0, v3, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onSetTxPowerEventFromLocal(IZ)V

    goto :goto_0

    :pswitch_5
    new-array v0, v4, [I

    .local v0, freq:[I
    new-array v1, v4, [I

    .local v1, rssi:[I
    aput v2, v0, v2

    aput v2, v1, v2

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onBestChannelEventFromLocal(II[I[I)V

    goto :goto_0

    .end local v0           #freq:[I
    .end local v1           #rssi:[I
    :pswitch_6
    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, v4, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, v5, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, v5, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, v3, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    :pswitch_b
    const/4 v2, 0x5

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    :pswitch_c
    const/4 v2, 0x6

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    :pswitch_d
    const/4 v2, 0x7

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    :pswitch_e
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private native abortScanForBestChannelNative()Z
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->logTimeOut(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->HandleStatusTimeOut(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/broadcom/bt/service/fm/FmTransmitterService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onChannelStatusEventFromLocal(III)V

    return-void
.end method

.method static synthetic access$1700(Lcom/broadcom/bt/service/fm/FmTransmitterService;II[I[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onBestChannelEventFromLocal(II[I[I)V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/fm/FmTransmitterService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onFmTransmitterEnabledEventFromLocal(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onFmTransmitterDisabledEventFromLocal(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/broadcom/bt/service/fm/FmTransmitterService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    return v0
.end method

.method static synthetic access$600(Lcom/broadcom/bt/service/fm/FmTransmitterService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onSetTxPowerEventFromLocal(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/broadcom/bt/service/fm/FmTransmitterService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/broadcom/bt/service/fm/FmTransmitterService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onSetTxFrequencyEventFromLocal(II)V

    return-void
.end method

.method private static native classFmTxInitNative()V
.end method

.method private cleanQueue(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    .locals 9
    .parameter "job"

    .prologue
    const-wide/16 v7, 0x0

    const-string v6, "FmTransmitterService"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, now:J
    sget-object v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;>;"
    if-eqz p1, :cond_3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    .local v0, existingJob:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    iget-object v4, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->command:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    sget-object v5, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_OFF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    if-ne v4, v5, :cond_1

    iget-wide v4, v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_2

    const-string v4, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed because of a FMTX off request. "

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
    iget-object v4, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->command:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    sget-object v5, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_ABORT_SEARCH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    if-ne v4, v5, :cond_2

    const-string v4, "FmTransmitterService"

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
    iget-wide v4, v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_0

    const-string v4, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "****** ***** Sent. So remove Job:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    goto :goto_0

    .end local v0           #existingJob:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    :cond_3
    return-void
.end method

.method private native cleanupLoopNative()V
.end method

.method private native disableNative()Z
.end method

.method private native enableNative()Z
.end method

.method private fetchNextJob()V
    .locals 5

    .prologue
    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    .local v0, job:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const-string v2, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******* ******* Processing FMTX job:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->cleanQueue(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V

    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->processCommands()V

    monitor-exit v1

    goto :goto_0

    .end local v0           #job:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private native initLoopNative()V
.end method

.method private native initNativeDataNative()V
.end method

.method private initializeStateMachine()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    return-void
.end method

.method private logTimeOut(I)V
    .locals 3
    .parameter "what"

    .prologue
    const-string v2, "FmTransmitterService"

    packed-switch p1, :pswitch_data_0

    const-string v0, "FmTransmitterService"

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
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_ENABLE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_DISABLE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_TXPOWER"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_SET_TXFREQ"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_SET_TXPWR_LEVEL"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_SET_AUDIO_MODE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_6
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_SET_VOLUME"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_7
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_SET_REGION"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_8
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_SET_BANDWIDTH"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_9
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_SET_PREEMPHASIS"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_a
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_SET_AUDIO_PATH"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_b
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_SET_MUTE_AUDIO"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_c
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_INTF_NOTIF"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_d
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_SEARCH_BEST_CHANS"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_e
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_ABORT_SEARCH"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_f
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_START_AUDIO_CHIRP"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_10
    const-string v0, "FmTransmitterService"

    const-string v0, "BTAPP TIMEOUT on OPERATION_FMTX_STOP_AUDIO_CHIRP"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

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
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private native muteAudioNative(I)Z
.end method

.method private onBestChannelEventFromLocal(II[I[I)V
    .locals 5
    .parameter "status"
    .parameter "numCh"
    .parameter "freq"
    .parameter "rssi"

    .prologue
    const-string v3, "FmTransmitterService"

    const-string v4, "onBestChannelEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onBestChannelEvent(II[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    return-void
.end method

.method private onChannelStatusEventFromLocal(III)V
    .locals 5
    .parameter "status"
    .parameter "rssi"
    .parameter "channel_status"

    .prologue
    const-string v3, "FmTransmitterService"

    const-string v4, "onChannelStatusEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onChannelStatusEvent(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private onFmTransmitterDisabledEventFromLocal(I)V
    .locals 5
    .parameter "status"

    .prologue
    const-string v3, "FmTransmitterService"

    const-string v4, "onFmTransmitterDisabledEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->shutdownFmPower()V

    if-nez p1, :cond_0

    const/4 v3, 0x0

    sput-boolean v3, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onFmTransmitterDisabledEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    return-void
.end method

.method private onFmTransmitterEnabledEventFromLocal(I)V
    .locals 5
    .parameter "status"

    .prologue
    const-string v3, "FmTransmitterService"

    const-string v4, "onFmTransmitterEnabledEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onFmTransmitterEnabledEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    return-void
.end method

.method private onSetTxFrequencyEventFromLocal(II)V
    .locals 5
    .parameter "status"
    .parameter "frequency"

    .prologue
    const-string v3, "FmTransmitterService"

    const-string v4, "onSetTxFrequencyEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onSetTxFrequencyEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    return-void
.end method

.method private onSetTxPowerEventFromLocal(IZ)V
    .locals 5
    .parameter "status"
    .parameter "powerOn"

    .prologue
    const-string v3, "FmTransmitterService"

    const-string v4, "onSetTxPowerEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onSetTxPowerEvent(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    return-void
.end method

.method private onStatusEventFromLocal(II)V
    .locals 6
    .parameter "type"
    .parameter "status"

    .prologue
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStatusEventFromLocal: type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onStatusEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    return-void
.end method

.method private processCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)Z
    .locals 11
    .parameter "job"

    .prologue
    const-string v4, "FmTransmitterService"

    const/4 v10, 0x0

    .local v10, successful:I
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->current_CMD:I

    iget-wide v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    const-string v0, "FmTransmitterService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** ***** process FMTX Command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    iget-object v1, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->command:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "FmTransmitterService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** ***** unknown command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x5

    :cond_0
    :goto_0
    if-nez v10, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_enableFmTransmitter()I

    move-result v10

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_disableFmTransmitter()I

    move-result v10

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->b_arg1:Z

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setTxPower(Z)I

    move-result v10

    goto :goto_0

    :pswitch_3
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setTxFrequency(I)I

    move-result v10

    goto :goto_0

    :pswitch_4
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setPwrLevel(I)I

    move-result v10

    goto :goto_0

    :pswitch_5
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setAudioMode(I)I

    move-result v10

    goto :goto_0

    :pswitch_6
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setVolume(I)I

    move-result v10

    goto :goto_0

    :pswitch_7
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setRegion(I)I

    move-result v10

    goto :goto_0

    :pswitch_8
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setBandwidth(I)I

    move-result v10

    goto :goto_0

    :pswitch_9
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setPreemphasis(I)I

    move-result v10

    goto :goto_0

    :pswitch_a
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setAudioPath(I)I

    move-result v10

    goto :goto_0

    :pswitch_b
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_muteAudio(I)I

    move-result v10

    goto :goto_0

    :pswitch_c
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setInterferenceNotif(I)I

    move-result v10

    goto :goto_0

    :pswitch_d
    const/16 v0, 0xf

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->current_CMD:I

    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    iget-boolean v1, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->b_arg1:Z

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_scanForBestChannel(IZ)I

    move-result v10

    goto :goto_0

    :pswitch_e
    iget-boolean v1, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->b_arg1:Z

    iget v2, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg2:I

    iget v4, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg3:I

    iget v5, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg4:I

    iget v6, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg5:I

    iget v7, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg6:I

    iget v8, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg7:I

    iget v9, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg8:I

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_startAudioChirp(ZIIIIIIII)I

    move-result v10

    goto :goto_0

    :pswitch_f
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_stopAudioChirp()I

    move-result v10

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

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
        :pswitch_f
    .end packed-switch
.end method

.method private processCommands()V
    .locals 5

    .prologue
    const-string v2, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** ***** process FMTX_Commands:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    .local v1, job:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->processCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)Z

    move-result v2

    if-eqz v2, :cond_1

    .end local v1           #job:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    :cond_0
    return-void

    .restart local v1       #job:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private process_disableFmTransmitter()I
    .locals 9

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "FmTransmitterService"

    const-string v3, "FmTransmitterService"

    const-string v3, "process_disableFmTransmitter()"

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    .local v2, returnStatus:I
    sput v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    iput v4, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->disableNative()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iput-boolean v7, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    sput v7, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    return v2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    const-string v3, "FmTransmitterService"

    const-string v3, "disableFmTransmitter failed"

    invoke-static {v8, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_enableFmTransmitter()I
    .locals 8

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmTransmitterService"

    const-string v3, "FmTransmitterService"

    const-string v3, "process_enableFmTransmitter()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->initFmPower()V

    const/4 v2, 0x5

    .local v2, returnStatus:I
    sput v6, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->enableNative()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return v2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    const-string v3, "FmTransmitterService"

    const-string v3, "enableFmTransmitter failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_muteAudio(I)I
    .locals 8
    .parameter "mute"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmTransmitterService"

    const-string v3, "FmTransmitterService"

    const-string v3, "process_muteAudio()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    const-string v3, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

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
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return v2

    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xd

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->muteAudioNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    const-string v3, "FmTransmitterService"

    const-string v3, "muteAudio failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_scanForBestChannel(IZ)I
    .locals 8
    .parameter "numChans"
    .parameter "optimize"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmTransmitterService"

    const-string v3, "FmTransmitterService"

    const-string v3, "process_scanForBestChannel()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    const-string v3, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

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
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return v2

    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xf

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->scanForBestChannelNative(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    const-string v3, "FmTransmitterService"

    const-string v3, "scanForBestChannel failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setAudioMode(I)I
    .locals 8
    .parameter "audioMode"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmTransmitterService"

    const-string v3, "FmTransmitterService"

    const-string v3, "process_setAudioMode()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    const-string v3, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

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
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return v2

    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x7

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setAudioModeNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    const-string v3, "FmTransmitterService"

    const-string v3, "setAudioMode failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setAudioPath(I)I
    .locals 8
    .parameter "audioPath"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmTransmitterService"

    const-string v3, "FmTransmitterService"

    const-string v3, "process_setAudioPath()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    const-string v3, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

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
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return v2

    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xc

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setAudioPathNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    const-string v3, "FmTransmitterService"

    const-string v3, "setAudioPath failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setBandwidth(I)I
    .locals 8
    .parameter "bandwidth"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmTransmitterService"

    const-string v3, "FmTransmitterService"

    const-string v3, "process_setBandwidth()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    const-string v3, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

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
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return v2

    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setBandwidthNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    const-string v3, "FmTransmitterService"

    const-string v3, "setBandwidth failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setInterferenceNotif(I)I
    .locals 6
    .parameter "notifBitmask"

    .prologue
    const/4 v5, 0x2

    const-string v4, "FmTransmitterService"

    const-string v2, "FmTransmitterService"

    const-string v2, "process_setInterferenceNotif()"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    .local v1, returnStatus:I
    sget v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v5, v2, :cond_1

    const-string v2, "FmTransmitterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal STATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    :cond_0
    :goto_0
    sput v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    const-string v2, "FmTransmitterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process_setInterferenceNotif() return ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    return v1

    :cond_1
    const/4 v2, 0x4

    sput v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setInterferenceNotifNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    const-string v2, "FmTransmitterService"

    const-string v2, "setInterferenceNotif failed"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setPreemphasis(I)I
    .locals 8
    .parameter "preemph"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmTransmitterService"

    const-string v3, "FmTransmitterService"

    const-string v3, "setPreemphasis()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    const-string v3, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

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
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return v2

    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xb

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setPreemphasisNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    const-string v3, "FmTransmitterService"

    const-string v3, "setPreemphasis failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setPwrLevel(I)I
    .locals 8
    .parameter "dbGain"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmTransmitterService"

    const-string v3, "FmTransmitterService"

    const-string v3, "process_setPwrLevel()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    const-string v3, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

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
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return v2

    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setPwrLevelNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    const-string v3, "FmTransmitterService"

    const-string v3, "setPwrLevel failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setRegion(I)I
    .locals 8
    .parameter "region"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmTransmitterService"

    const-string v3, "FmTransmitterService"

    const-string v3, "process_setRegion()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    const-string v3, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

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
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return v2

    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x9

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setRegionNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    const-string v3, "FmTransmitterService"

    const-string v3, "setRegion failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setTxFrequency(I)I
    .locals 8
    .parameter "frequency"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmTransmitterService"

    const-string v3, "FmTransmitterService"

    const-string v3, "process_setTxFrequency()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    const-string v3, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

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
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return v2

    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_iSaveFreq:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setTxFrequencyNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    const-string v3, "FmTransmitterService"

    const-string v3, "setTxFrequency failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setTxPower(Z)I
    .locals 8
    .parameter "powerOn"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v6, 0x1

    const-string v7, "FmTransmitterService"

    const-string v3, "FmTransmitterService"

    const-string v3, "process_setTxPower()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    .local v2, returnStatus:I
    sget v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v5, v3, :cond_1

    const-string v3, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

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
    iget-boolean v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    sput v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->arg1:I

    iput-boolean p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    sput v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .restart local v1       #msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    iput v4, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setTxPowerNative(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    const-string v3, "FmTransmitterService"

    const-string v3, "setTxPower failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setVolume(I)I
    .locals 8
    .parameter "volume"

    .prologue
    const/4 v6, 0x1

    const-string v7, "FmTransmitterService"

    const-string v3, "FmTransmitterService"

    const-string v3, "process_setVolume()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    const-string v3, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

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
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return v2

    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x8

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setVolumeNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    const-string v3, "FmTransmitterService"

    const-string v3, "setVolume failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_startAudioChirp(ZIIIIIIII)I
    .locals 6
    .parameter "autoOn"
    .parameter "leftMgn"
    .parameter "rightMgn"
    .parameter "leftFreq"
    .parameter "rightFreq"
    .parameter "leftMrk"
    .parameter "rightMrk"
    .parameter "leftSpc"
    .parameter "rightSpc"

    .prologue
    const-string v3, "FmTransmitterService"

    const-string v4, "process_startAudioChirp()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_1

    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    return v2

    :cond_1
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x11

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct/range {p0 .. p9}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->startAudioChirpNative(ZIIIIIIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    const-string v3, "FmTransmitterService"

    const-string v4, "startAudioChirp failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_stopAudioChirp()I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const-string v7, "FmTransmitterService"

    const-string v3, "FmTransmitterService"

    const-string v3, "process_stopAudioChirp()"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    .local v2, returnStatus:I
    sget v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v8, v3, :cond_1

    const-string v3, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

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
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    sput v8, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    return v2

    :cond_1
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x12

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->stopAudioChirpNative()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    const-string v3, "FmTransmitterService"

    const-string v3, "stopAudioChirpNative failed"

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    .locals 4
    .parameter "job"

    .prologue
    const-string v1, "FmTransmitterService"

    const-string v0, "FmTransmitterService"

    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    const-string v1, "FmTransmitterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****** ****** Adding FMTX Job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->cleanQueue(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->processCommands()V

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

.method private native scanForBestChannelNative(IZ)Z
.end method

.method private native setAudioModeNative(I)Z
.end method

.method private native setAudioPathNative(I)Z
.end method

.method private native setBandwidthNative(I)Z
.end method

.method private native setInterferenceNotifNative(I)Z
.end method

.method private native setPreemphasisNative(I)Z
.end method

.method private native setPwrLevelNative(I)Z
.end method

.method private native setRegionNative(I)Z
.end method

.method private native setTxFrequencyNative(I)Z
.end method

.method private native setTxPowerNative(Z)Z
.end method

.method private native setVolumeNative(I)Z
.end method

.method private native startAudioChirpNative(ZIIIIIIII)Z
.end method

.method private startFM_Loop()V
    .locals 2

    .prologue
    const-string v0, "FmTransmitterService"

    const-string v1, "startFmTransmit_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->initLoopNative()V

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->initNativeDataNative()V

    return-void
.end method

.method private native stopAudioChirpNative()Z
.end method

.method private stopFM_Loop()V
    .locals 2

    .prologue
    const-string v0, "FmTransmitterService"

    const-string v1, "stopFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->cleanupLoopNative()V

    return-void
.end method


# virtual methods
.method public declared-synchronized abortScanForBestChannel()I
    .locals 4

    .prologue
    const-string v2, "FmTransmitterService"

    monitor-enter p0

    :try_start_0
    const-string v2, "FmTransmitterService"

    const-string v3, "abortScanForBestChannel()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    .local v1, returnStatus:I
    iget v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->current_CMD:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->current_CMD:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->abortScanForBestChannelNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    :try_start_2
    const-string v2, "FmTransmitterService"

    const-string v3, "abortScanForBestChannel failed"

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

.method public clearAllQueue()V
    .locals 4

    .prologue
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    const-string v1, "FmTransmitterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******* Clearing the queue. Present size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const/4 v1, 0x0

    sput-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

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

.method public declared-synchronized disableFmTransmitter()I
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_OFF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
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

.method public declared-synchronized enableFmTransmitter()I
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eqz v0, :cond_0

    const-string v0, "FmTransmitterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x6

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_ON:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

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
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->stopFM_Loop()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public finish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x20

    const/16 v2, 0x4e20

    const-string v0, "FmTransmitterService"

    const-string v1, "finish - cleanup Service here"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->clearAllQueue()V

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseService;->finish()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "FmTransmitterService"

    const-string v1, "getName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bluetooth_fm_transmitter_service"

    return-object v0
.end method

.method public getRadioIsOn()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    return v0
.end method

.method public declared-synchronized muteAudio(I)I
    .locals 2
    .parameter "mute"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_MUTE_AUDIO:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
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

.method public onBestChannelEvent(II[I[I)V
    .locals 7
    .parameter "status"
    .parameter "numCh"
    .parameter "freq"
    .parameter "rssi"

    .prologue
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService;II[I[I)V

    .local v0, st:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .local v6, msg:Landroid/os/Message;
    const/16 v1, 0x25

    iput v1, v6, Landroid/os/Message;->what:I

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onChannelStatusEvent(III)V
    .locals 3
    .parameter "status"
    .parameter "rssi"
    .parameter "channel_status"

    .prologue
    new-instance v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService;III)V

    .local v1, st:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x24

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFmTransmitterDisabledEvent(I)V
    .locals 3
    .parameter "status"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1f

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFmTransmitterEnabledEvent(I)V
    .locals 3
    .parameter "status"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSetTxFrequencyEvent(II)V
    .locals 3
    .parameter "status"
    .parameter "frequency"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x21

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSetTxPowerEvent(IZ)V
    .locals 3
    .parameter "status"
    .parameter "powerOn"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-boolean p2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

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

.method public onStatusEvent(II)V
    .locals 3
    .parameter "type"
    .parameter "status"

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x20

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized scanForBestChannel(IZ)I
    .locals 2
    .parameter "numChans"
    .parameter "optimize"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SEARCH_BEST_CHANS:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;IZ)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
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

.method public declared-synchronized setAudioMode(I)I
    .locals 2
    .parameter "audioMode"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_AUDIO_MODE:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
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
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_AUDIO_PATH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
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

.method public declared-synchronized setBandwidth(I)I
    .locals 2
    .parameter "bandwidth"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_BANDWIDTH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
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

.method public declared-synchronized setInterferenceNotif(I)I
    .locals 2
    .parameter "notifBitmask"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_INTF_NOTIF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
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

.method public declared-synchronized setPreemphasis(I)I
    .locals 2
    .parameter "preemph"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_PREEMPHASIS:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
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

.method public declared-synchronized setPwrLevel(I)I
    .locals 3
    .parameter "dbGain"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXPWR_LEVEL:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
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

.method public declared-synchronized setRegion(I)I
    .locals 2
    .parameter "region"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_REGION:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
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

.method public declared-synchronized setTxFrequency(I)I
    .locals 2
    .parameter "frequency"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXFREQ:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
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

.method public declared-synchronized setTxPower(Z)I
    .locals 2
    .parameter "powerOn"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXPOWER:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;Z)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
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

.method public declared-synchronized setVolume(I)I
    .locals 2
    .parameter "volume"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_VOLUME:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
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
    monitor-enter p0

    :try_start_0
    const-string v0, "FmTransmitterService"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->startFM_Loop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startAudioChirp(ZIIIIIIII)I
    .locals 11
    .parameter "autoOn"
    .parameter "leftMgn"
    .parameter "rightMgn"
    .parameter "leftFreq"
    .parameter "rightFreq"
    .parameter "leftMrk"
    .parameter "rightMrk"
    .parameter "leftSpc"
    .parameter "rightSpc"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_START_AUDIO_CHIRP:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;ZIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
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

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "FmTransmitterService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->stopFM_Loop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopAudioChirp()I
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_STOP_AUDIO_CHIRP:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
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

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
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
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

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
