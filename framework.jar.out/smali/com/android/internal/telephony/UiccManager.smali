.class public Lcom/android/internal/telephony/UiccManager;
.super Landroid/os/Handler;
.source "UiccManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UiccManager$AppFamily;
    }
.end annotation


# static fields
.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x3

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x2

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x4

.field private static final EVENT_RADIO_ON:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_UiccManager"

.field private static mInstance:Lcom/android/internal/telephony/UiccManager;


# instance fields
.field private final DEFAULT_INDEX:I

.field private mCatService:[Lcom/android/internal/telephony/cat/CatService;

.field mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field mContext:Landroid/content/Context;

.field private mIccChangedRegistrants:Landroid/os/RegistrantList;

.field private mRadioOn:[Z

.field mUiccCards:[Lcom/android/internal/telephony/UiccCard;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 10
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/UiccManager;->DEFAULT_INDEX:I

    new-array v0, v9, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mRadioOn:[Z

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    const-string v0, "RIL_UiccManager"

    const-string v1, "Creating UiccManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v9, [Lcom/android/internal/telephony/UiccCard;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    .local v7, phoneCount:I
    new-array v0, v7, [Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    new-array v0, v7, [Lcom/android/internal/telephony/cat/CatService;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mCatService:[Lcom/android/internal/telephony/cat/CatService;

    iput-object p1, p0, Lcom/android/internal/telephony/UiccManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    .local v6, index:Ljava/lang/Integer;
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, p2, v5

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v5

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v5

    invoke-interface {v0, p0, v9, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v5

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/internal/telephony/UiccManager;->mCatService:[Lcom/android/internal/telephony/cat/CatService;

    new-instance v0, Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v5

    iget-object v3, p0, Lcom/android/internal/telephony/UiccManager;->mContext:Landroid/content/Context;

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/UiccApplicationRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;I)V

    aput-object v0, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v6           #index:Ljava/lang/Integer;
    :cond_0
    return-void

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method private declared-synchronized disposeCard(I)V
    .locals 3
    .parameter "index"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const-string v0, "RIL_UiccManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disposing card "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->dispose()V

    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    const/4 v1, 0x0

    aput-object v1, v0, p1
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

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .parameter "msg"

    .prologue
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .local v1, index:Ljava/lang/Integer;
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #index:Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1       #index:Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1           #index:Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1       #index:Ljava/lang/Integer;
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/UiccManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/UiccManager;->mInstance:Lcom/android/internal/telephony/UiccManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/UiccManager;->mInstance:Lcom/android/internal/telephony/UiccManager;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccManager;
    .locals 1
    .parameter "c"
    .parameter "ci"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/UiccManager;->mInstance:Lcom/android/internal/telephony/UiccManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/UiccManager;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/UiccManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/UiccManager;->mInstance:Lcom/android/internal/telephony/UiccManager;

    :goto_0
    sget-object v0, Lcom/android/internal/telephony/UiccManager;->mInstance:Lcom/android/internal/telephony/UiccManager;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/UiccManager;->mInstance:Lcom/android/internal/telephony/UiccManager;

    iput-object p1, v0, Lcom/android/internal/telephony/UiccManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v0, Lcom/android/internal/telephony/UiccManager;->mInstance:Lcom/android/internal/telephony/UiccManager;

    iput-object p0, v0, Lcom/android/internal/telephony/UiccManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 9
    .parameter "ar"
    .parameter "index"

    .prologue
    const-string v0, "RIL_UiccManager"

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const-string v0, "RIL_UiccManager"

    const-string v1, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/UiccCardStatusResponse;

    .local v6, status:Lcom/android/internal/telephony/UiccCardStatusResponse;
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->card:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->card:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/UiccManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/UiccCard;->update(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->card:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->dispose()V

    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->card:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    if-eqz v0, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v0, Lcom/android/internal/telephony/UiccCard;

    iget-object v2, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->card:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget-object v3, p0, Lcom/android/internal/telephony/UiccManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v4, v1, v4

    iget-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mCatService:[Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v1, v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/UiccCard;-><init>(Lcom/android/internal/telephony/UiccManager;Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/cat/CatService;)V

    aput-object v0, v7, v8

    :cond_3
    const-string v0, "RIL_UiccManager"

    const-string v1, "Notifying IccChangedRegistrants"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .end local v6           #status:Lcom/android/internal/telephony/UiccCardStatusResponse;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getApplication(II)Lcom/android/internal/telephony/UiccCardApplication;
    .locals 4
    .parameter "slotId"
    .parameter "appId"

    .prologue
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    aget-object v1, v2, p1

    .local v1, c:Lcom/android/internal/telephony/UiccCard;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v2, v3, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getNumApplications()I

    move-result v2

    if-ge p2, v2, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/UiccCard;->getUiccCardApplication(I)Lcom/android/internal/telephony/UiccCardApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, app:Lcom/android/internal/telephony/UiccCardApplication;
    move-object v2, v0

    .end local v0           #app:Lcom/android/internal/telephony/UiccCardApplication;
    .end local v1           #c:Lcom/android/internal/telephony/UiccCard;
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCatService(I)Lcom/android/internal/telephony/cat/CatService;
    .locals 1
    .parameter "slotId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mCatService:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public declared-synchronized getIccCard(I)Lcom/android/internal/telephony/UiccCard;
    .locals 1
    .parameter "index"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIccCards()[Lcom/android/internal/telephony/UiccCard;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/UiccCard;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/UiccCard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-string v7, "RIL_UiccManager"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccManager;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v1

    .local v1, index:Ljava/lang/Integer;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    const-string v4, "RIL_UiccManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Unknown Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/UiccManager;->mRadioOn:[Z

    array-length v5, v5

    if-lt v4, v5, :cond_2

    :cond_1
    const-string v4, "RIL_UiccManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RADIO_ON: Invalid index - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/UiccManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    const-string v4, "RIL_UiccManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radio on -> Forcing sim status update on index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/UiccManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/UiccManager;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/UiccManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/UiccManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_3

    const-string v4, "RIL_UiccManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus on index"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/UiccManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p0, v5, v1}, Lcom/android/internal/telephony/UiccManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_3
    const-string v4, "RIL_UiccManager"

    const-string v4, "Received EVENT_ICC_STATUS_CHANGED while radio is not ON or index is invalid. Ignoring"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/UiccManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/UiccManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_5

    const-string v4, "RIL_UiccManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received EVENT_GET_ICC_STATUS_DONE on index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/UiccManager;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_4

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/os/AsyncResult;

    if-eqz v4, :cond_4

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .local v2, internalAr:Landroid/os/AsyncResult;
    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/os/Message;

    if-eqz v4, :cond_0

    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    .local v3, onComplete:Landroid/os/Message;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v2           #internalAr:Landroid/os/AsyncResult;
    .end local v3           #onComplete:Landroid/os/Message;
    :cond_4
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/os/Message;

    if-eqz v4, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    .restart local v3       #onComplete:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #onComplete:Landroid/os/Message;
    :cond_5
    const-string v4, "RIL_UiccManager"

    const-string v4, "Received EVENT_GET_ICC_STATUS_DONE while radio is not ON or index is invalid. Ignoring"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/UiccManager;->mRadioOn:[Z

    array-length v5, v5

    if-lt v4, v5, :cond_7

    :cond_6
    const-string v4, "RIL_UiccManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RADIO_OFF_OR_UNAVAILABLE: Invalid index - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string v4, "RIL_UiccManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RADIO_OFF_OR_UNAVAILABLE: index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/UiccManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    aput-boolean v6, v4, v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccManager;->disposeCard(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isCardFaulty(I)Z
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCards:[Lcom/android/internal/telephony/UiccCard;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->ERROR:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v0, v1, :cond_2

    const-string v0, "RIL_UiccManager"

    const-string v1, "Card is faulty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public triggerIccStatusUpdate(Ljava/lang/Object;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/UiccManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UiccManager;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
