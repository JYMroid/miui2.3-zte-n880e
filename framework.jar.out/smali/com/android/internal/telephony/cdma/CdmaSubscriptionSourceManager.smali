.class public Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
.super Landroid/os/Handler;
.source "CdmaSubscriptionSourceManager.java"


# static fields
.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x1

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_SOURCE:I = 0x2

.field private static final EVENT_RADIO_ON:I = 0x3

.field private static final EVENT_SUBSCRIPTION_STATUS_CHANGED:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static mCdmaSSMInstances:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/internal/telephony/CommandsInterface;",
            "Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mCM:Lcom/android/internal/telephony/CommandsInterface;

.field protected mCdmaSubscriptionSource:I

.field protected mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

.field protected mContext:Landroid/content/Context;

.field private mNotifyCdmaSubSource:Z

.field mRef:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSSMInstances:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "context"
    .parameter "ci"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "CDMA"

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mRef:I

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mNotifyCdmaSubSource:Z

    if-nez p1, :cond_0

    const-string v0, "CDMA"

    const-string v0, "Context shouldn\'t be null"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez p2, :cond_1

    const-string v0, "CDMA"

    const-string v0, "CommandsInterface shouldn\'t be null"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefaultCdmaSubscriptionSource()I

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private getDefaultCdmaSubscriptionSource()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "subscription_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:I

    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:I

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Registrant;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    .locals 5
    .parameter "context"
    .parameter "ci"
    .parameter "registrant"

    .prologue
    const-class v3, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    monitor-enter v3

    const/4 v1, 0x0

    .local v1, mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSSMInstances:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSSMInstances:Ljava/util/Hashtable;

    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    invoke-virtual {v2, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSSMInstances:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-object v1, v0

    if-eqz p2, :cond_1

    iget-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, p2}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    :cond_1
    iget v2, v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mRef:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mRef:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleCdmaSubscriptionSource(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v6, "CDMA"

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v5

    .local v1, newSubscriptionSource:I
    const/4 v0, 0x0

    .local v0, cdmaSubSourceChanged:Z
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:I

    if-eq v1, v2, :cond_0

    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscription Source Changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:I

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mNotifyCdmaSubSource:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mNotifyCdmaSubSource:Z

    if-eqz v2, :cond_2

    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mNotifyCdmaSubSource:Z

    .end local v0           #cdmaSubSourceChanged:Z
    .end local v1           #newSubscriptionSource:I
    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get CDMA Subscription Source, Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispose(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mRef:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mRef:I

    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mRef:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaSubscriptionSourceChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V

    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSSMInstances:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public getCdmaSubscriptionSource()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCdmaSubscriptionSource:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x2

    const-string v4, "CDMA"

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v2, "CDMA"

    const-string v2, "EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->handleCdmaSubscriptionSource(Landroid/os/AsyncResult;)V

    goto :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    const-string v2, "CDMA"

    const-string v2, "EVENT_GET_CDMA_SUBSCRIPTION_SOURCE"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->handleCdmaSubscriptionSource(Landroid/os/AsyncResult;)V

    goto :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSubscriptionSource(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    const-string v2, "CDMA"

    const-string v2, "EVENT_SUBSCRIPTION_STATUS_CHANGED"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v0, v2, v3

    .local v0, actStatus:I
    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v2, "CDMA"

    const-string v2, "get Cdma Subscription Source"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSubscriptionSource(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
