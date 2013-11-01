.class public abstract Lcom/android/internal/telephony/DataConnection;
.super Lcom/android/internal/util/HierarchicalStateMachine;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnection$1;,
        Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;,
        Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;,
        Lcom/android/internal/telephony/DataConnection$DcQosActiveState;,
        Lcom/android/internal/telephony/DataConnection$DcActiveState;,
        Lcom/android/internal/telephony/DataConnection$DcActivatingState;,
        Lcom/android/internal/telephony/DataConnection$DcInactiveState;,
        Lcom/android/internal/telephony/DataConnection$DcDefaultState;,
        Lcom/android/internal/telephony/DataConnection$DisconnectParams;,
        Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;,
        Lcom/android/internal/telephony/DataConnection$ConnectionParams;,
        Lcom/android/internal/telephony/DataConnection$SetupResult;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field protected static final EVENT_CONNECT:I = 0x2

.field protected static final EVENT_DEACTIVATE_DONE:I = 0x5

.field protected static final EVENT_DISCONNECT:I = 0x6

.field protected static final EVENT_GET_LAST_FAIL_DONE:I = 0x4

.field protected static final EVENT_LOG_BAD_DNS_ADDRESS:I = 0xc3b4

.field protected static final EVENT_QOS_DISABLE:I = 0x9

.field protected static final EVENT_QOS_DISABLE_DONE:I = 0xa

.field protected static final EVENT_QOS_ENABLE:I = 0x7

.field protected static final EVENT_QOS_ENABLE_DONE:I = 0x8

.field protected static final EVENT_QOS_GET_STATUS:I = 0x11

.field protected static final EVENT_QOS_GET_STATUS_DONE:I = 0x12

.field protected static final EVENT_QOS_IND:I = 0x13

.field protected static final EVENT_QOS_MODIFY:I = 0xb

.field protected static final EVENT_QOS_MODIFY_DONE:I = 0xc

.field protected static final EVENT_QOS_RESUME:I = 0xf

.field protected static final EVENT_QOS_RESUME_DONE:I = 0x10

.field protected static final EVENT_QOS_SUSPEND:I = 0xd

.field protected static final EVENT_QOS_SUSPEND_DONE:I = 0xe

.field protected static final EVENT_RESET:I = 0x1

.field protected static final EVENT_SETUP_DATA_CONNECTION_DONE:I = 0x3

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static mCount:I

.field protected static mCountLock:Ljava/lang/Object;


# instance fields
.field protected cid:I

.field protected createTime:J

.field protected dnsServers:[Ljava/lang/String;

.field protected gatewayAddress:Ljava/lang/String;

.field protected interfaceName:Ljava/lang/String;

.field protected ipAddress:Ljava/lang/String;

.field protected lastFailCause:Lcom/android/internal/telephony/DataConnectionFailCause;

.field protected lastFailTime:J

.field private mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

.field private mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

.field protected mBearerType:Lcom/android/internal/telephony/Phone$BearerType;

.field protected mCM:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field protected mDataProfile:Lcom/android/internal/telephony/DataProfile;

.field private mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

.field private mDisconnectingBadDnsState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

.field private mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

.field private mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

.field private mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

.field protected mQosFlowIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mTag:I

.field userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/DataConnection;->mCountLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "ci"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/internal/util/HierarchicalStateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingBadDnsState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

    const-string v0, "DataConnection constructor E"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->clearSettings()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->setDbg(Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingBadDnsState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->setInitialState(Lcom/android/internal/util/HierarchicalState;)V

    const-string v0, "DataConnection constructor X"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->tearDownData(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingBadDnsState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcQosActiveState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/DataConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnection;->tearDownQos()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnectionFailCause;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnectionFailCause;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActivatingState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataConnection$SetupResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataConnection$SetupResult;

    move-result-object v0

    return-object v0
.end method

.method private notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnectionFailCause;)V
    .locals 5
    .parameter "cp"
    .parameter "cause"

    .prologue
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->onCompletedMsg:Landroid/os/Message;

    .local v0, connectionCompletedMsg:Landroid/os/Message;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .local v1, timeStamp:J
    iget v3, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    sget-object v3, Lcom/android/internal/telephony/DataConnectionFailCause;->NONE:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne p2, v3, :cond_1

    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyConnection at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnectionFailCause;

    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, p2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_1
.end method

.method private notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V
    .locals 5
    .parameter "dp"

    .prologue
    const-string v1, "NotifyDisconnectCompleted"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .local v0, msg:Landroid/os/Message;
    const-string v2, "msg.what=%d msg.obj=%s"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :goto_0
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

    monitor-enter v1

    :try_start_0
    iget-object v2, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->clearSettings()V

    return-void

    .restart local v0       #msg:Landroid/os/Message;
    :cond_2
    const-string v1, "<no-reason>"

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataConnection$SetupResult;
    .locals 10
    .parameter "ar"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, " "

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataConnection Init failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_0

    sget-object v2, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .local v2, result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    sget-object v4, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

    iput-object v4, v2, Lcom/android/internal/telephony/DataConnection$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnectionFailCause;

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataConnection setup result=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' on cid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    return-object v2

    .end local v2           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Other:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    sget-object v4, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnectionFailCause;

    iput-object v4, v2, Lcom/android/internal/telephony/DataConnection$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnectionFailCause;

    goto :goto_0

    .end local v2           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_1
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataCallState;

    .local v1, response:Lcom/android/internal/telephony/DataCallState;
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .local v0, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget v4, v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    iget v5, p0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    if-eq v4, v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BUG: onSetupConnectionCompleted is stale cp.tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mtag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto :goto_0

    .end local v2           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_2
    iget v4, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    if-eqz v4, :cond_3

    sget-object v2, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Other:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    .local v3, rilFailCause:I
    invoke-static {v3}, Lcom/android/internal/telephony/DataConnectionFailCause;->getDataCallSetupFailCause(I)Lcom/android/internal/telephony/DataConnectionFailCause;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/DataConnection$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnectionFailCause;

    goto :goto_0

    .end local v2           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    .end local v3           #rilFailCause:I
    :cond_3
    iget v4, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    iput v4, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    iget-object v4, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->bearerType:Lcom/android/internal/telephony/Phone$BearerType;

    iput-object v4, p0, Lcom/android/internal/telephony/DataConnection;->mBearerType:Lcom/android/internal/telephony/Phone$BearerType;

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->dp:Lcom/android/internal/telephony/DataProfile;

    iput-object v4, p0, Lcom/android/internal/telephony/DataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    iget-object v4, v1, Lcom/android/internal/telephony/DataCallState;->addresses:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/android/internal/telephony/DataCallState;->addresses:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/DataCallState;->gateways:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/DataCallState;->dnses:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->dnses:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    aput-object v5, v4, v7

    iget-object v4, v1, Lcom/android/internal/telephony/DataCallState;->dnses:Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-le v4, v8, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/telephony/DataCallState;->dnses:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    aput-object v5, v4, v8

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ipAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gateway="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DNS1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DNS2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->isDnsOk([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v2, Lcom/android/internal/telephony/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_0

    .end local v2           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadDns:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_0

    .end local v2           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_0
.end method

.method private tearDownData(Ljava/lang/Object;)V
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "tearDownData radio is on, call deactivateDataCall"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "tearDownData radio is off sendMessage EVENT_DEACTIVATE_DONE immediately"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, p1, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v1, ar:Landroid/os/AsyncResult;
    invoke-virtual {p0, v5, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private tearDownQos()V
    .locals 7

    .prologue
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Integer;

    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Integer;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, id:I
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->qosRelease(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3           #id:I
    :cond_0
    return-void
.end method


# virtual methods
.method protected clearSettings()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const-string v0, "clearSettings"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iput-wide v3, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    iput-wide v3, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->NONE:Lcom/android/internal/telephony/DataConnectionFailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnectionFailCause;

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mBearerType:Lcom/android/internal/telephony/Phone$BearerType;

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    return-void
.end method

.method public connect(Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;Lcom/android/internal/telephony/DataProfile;Lcom/android/internal/telephony/Phone$BearerType;Landroid/os/Message;)V
    .locals 4
    .parameter "radioTech"
    .parameter "dp"
    .parameter "bearerType"
    .parameter "onCompletedMsg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForQosStateChangedInd(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x2

    new-instance v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;Lcom/android/internal/telephony/DataProfile;Lcom/android/internal/telephony/Phone$BearerType;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public disconnect(Landroid/os/Message;)V
    .locals 2
    .parameter "onCompletedMsg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForQosStateChangedInd(Landroid/os/Handler;)V

    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getBearerType()Lcom/android/internal/telephony/Phone$BearerType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mBearerType:Lcom/android/internal/telephony/Phone$BearerType;

    return-object v0
.end method

.method public getConnectionTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    return-wide v0
.end method

.method public getDataProfile()Lcom/android/internal/telephony/DataProfile;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    return-object v0
.end method

.method public getDnsServers()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method public getGatewayAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFailCause()Lcom/android/internal/telephony/DataConnectionFailCause;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnectionFailCause;

    return-object v0
.end method

.method public getLastFailTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    return-wide v0
.end method

.method public getQosStatus(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getStateAsString()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, retVal:Ljava/lang/String;
    return-object v0
.end method

.method public isActive()Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .local v0, retVal:Z
    :goto_0
    return v0

    .end local v0           #retVal:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected abstract isDnsOk([Ljava/lang/String;)Z
.end method

.method public isInactive()Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .local v0, retVal:Z
    :goto_0
    return v0

    .end local v0           #retVal:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isQosAvailable()Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .local v0, retVal:Z
    :goto_0
    return v0

    .end local v0           #retVal:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isValidQos(I)Z
    .locals 2
    .parameter "qosId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V
.end method

.method protected abstract onQosGetStatus(I)V
.end method

.method protected abstract onQosGetStatusDone(ILandroid/os/AsyncResult;Ljava/lang/String;)V
.end method

.method protected abstract onQosRelease(I)V
.end method

.method protected abstract onQosReleaseDone(ILjava/lang/String;)V
.end method

.method protected abstract onQosSetup(Lcom/android/internal/telephony/QosSpec;)V
.end method

.method protected abstract onQosSetupDone(I[Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract onQosStateChangedInd(Landroid/os/AsyncResult;)V
.end method

.method public qosModify(ILcom/android/internal/telephony/QosSpec;)V
    .locals 3
    .parameter "qosId"
    .parameter "qosSpec"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public qosRelease(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public qosResume(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public qosSetup(Lcom/android/internal/telephony/QosSpec;)V
    .locals 1
    .parameter "qosSpec"

    .prologue
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public qosSuspend(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public reset(Landroid/os/Message;)V
    .locals 2
    .parameter "onCompletedMsg"

    .prologue
    const/4 v0, 0x1

    new-instance v1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public resetSynchronously()V
    .locals 4

    .prologue
    new-instance v1, Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    .local v1, lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;
    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "blockingReset: unexpected interrupted of wait()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public abstract toString()Ljava/lang/String;
.end method
