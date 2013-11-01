.class public Lcom/android/internal/telephony/UiccCardApplication;
.super Ljava/lang/Object;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UiccCardApplication$2;
    }
.end annotation


# static fields
.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0x6

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x2

.field private static final EVENT_CHANGE_PIN1_DONE:I = 0x3

.field private static final EVENT_CHANGE_PIN2_DONE:I = 0x4

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0xb

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x9

.field private static final EVENT_GET_PINPUK_RETRIES_DONE:I = 0x8

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0xa

.field private static final EVENT_PIN1PUK1_DONE:I = 0x1

.field private static final EVENT_PIN2PUK2_DONE:I = 0x7

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0x5


# instance fields
.field private mAid:Ljava/lang/String;

.field private mAppLabel:Ljava/lang/String;

.field private mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

.field private mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field protected mDbg:Z

.field private mDesiredFdnEnabled:Z

.field private mDestroyed:Z

.field protected mHandler:Landroid/os/Handler;

.field private mIccFdnAvailable:Z

.field private mIccFdnEnabled:Z

.field private mIccFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mIccPuk1Blocked:Z

.field private mLockedRegistrants:Landroid/os/RegistrantList;

.field private mLogTag:Ljava/lang/String;

.field private mPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field private mPersoSubstateRegistrants:Landroid/os/RegistrantList;

.field private mPin1Replaced:Z

.field private mPin1RetryCount:I

.field private mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

.field private mPin2RetryCount:I

.field private mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

.field private mReadyRegistrants:Landroid/os/RegistrantList;

.field mSubscription:Ljava/lang/Integer;

.field private mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

.field private mUiccCard:Lcom/android/internal/telephony/UiccCard;

.field private mUnavailableRegistrants:Landroid/os/RegistrantList;

.field private pin1_num_retries:B

.field private pin2_num_retries:B

.field private puk1_num_retries:B

.field private puk2_num_retries:B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCard;Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .parameter "uiccCard"
    .parameter "as"
    .parameter "ur"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RIL_UiccCardApplication"

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccPuk1Blocked:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mSubscription:Ljava/lang/Integer;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLockedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubstateRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Lcom/android/internal/telephony/UiccCardApplication$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication$1;-><init>(Lcom/android/internal/telephony/UiccCardApplication;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating UiccApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    iget v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1_replaced:I

    if-eqz v0, :cond_1

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin2:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

    iget-byte v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1_num_retries:B

    iput-byte v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->pin1_num_retries:B

    iget-byte v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->puk1_num_retries:B

    iput-byte v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->puk1_num_retries:B

    iget-byte v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin2_num_retries:B

    iput-byte v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->pin2_num_retries:B

    iget-byte v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->puk2_num_retries:B

    iput-byte v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->puk2_num_retries:B

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lvliufang ****** Pin1 is blocked pin1_num_retries ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->pin1_num_retries:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "puk1_num_retries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->puk1_num_retries:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pin2_num_retries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->pin2_num_retries:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "puk2_num_retries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->puk2_num_retries:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "lvliufang ****** PUK1 is blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccPuk1Blocked:Z

    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_3

    iget-byte v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->puk1_num_retries:B

    iput v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lvliufang ****** Pin1 is PINSTATE_ENABLED_BLOCKED mPin1RetryCount ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->createUiccFileHandler(Lcom/android/internal/telephony/UiccConstants$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, v0, p3, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->createUiccApplicationRecords(Lcom/android/internal/telephony/UiccConstants$AppType;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryFdnAvailable()V

    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto/16 :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccPuk1Blocked:Z

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "lvliufang ****** PUK1 is not blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-byte v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->pin1_num_retries:B

    iput v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lvliufang ****** Pin1 is not PINSTATE_ENABLED_BLOCKED mPin1RetryCount ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/UiccCardApplication;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/UiccCardApplication;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/UiccCardApplication;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->onQueryFdnAvailable(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/UiccCardApplication;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/UiccCardApplication;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/UiccCardApplication;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z

    return v0
.end method

.method private createUiccApplicationRecords(Lcom/android/internal/telephony/UiccConstants$AppType;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccApplicationRecords;
    .locals 1
    .parameter "type"
    .parameter "ur"
    .parameter "c"
    .parameter "ci"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne p1, v0, :cond_3

    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createUiccFileHandler(Lcom/android/internal/telephony/UiccConstants$AppType;)Lcom/android/internal/telephony/IccFileHandler;
    .locals 3
    .parameter "type"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/UiccConstants$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/UsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/UsimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/CsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/CsimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCard] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized notifyAllRegistrants()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyUnavailableRegistrants()V

    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyLockedRegistrants()V

    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrants()V

    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPersoSubstateRegistrants()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyLockedRegistrants()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyLockedRegistrants(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyLockedRegistrants(Landroid/os/Registrant;)V
    .locals 4
    .parameter "r"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Sanity check failed! APPSTATE is locked while PIN1 is not!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    if-nez p1, :cond_5

    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying registrants: LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying 1 registrant: LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized notifyPersoSubstateRegistrants()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPersoSubstateRegistrants(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyPersoSubstateRegistrants(Landroid/os/Registrant;)V
    .locals 4
    .parameter "r"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying registrants: PERSO_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubstateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying 1 registrant: PERSO_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized notifyReadyRegistrants()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrants(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyReadyRegistrants(Landroid/os/Registrant;)V
    .locals 4
    .parameter "r"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Sanity check failed! APPSTATE is ready while PIN1 is not verified!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    if-nez p1, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying registrants: READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying 1 registrant: READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized notifyUnavailableRegistrants()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyUnavailableRegistrants(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyUnavailableRegistrants(Landroid/os/Registrant;)V
    .locals 4
    .parameter "r"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onQueryFdnAvailable(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .local v1, ints:[I
    array-length v2, v1

    if-eqz v2, :cond_4

    aget v2, v1, v4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iput-boolean v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query facility FDN : FDN service available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    aget v2, v1, v4

    if-ne v2, v5, :cond_3

    move v2, v5

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v3, "Bogus facility lock response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    .locals 6
    .parameter "ar"
    .parameter "isPin1"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v1, v0

    .local v1, intArray:[I
    array-length v2, v1

    .local v2, length:I
    iput v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    iput v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    if-lez v2, :cond_0

    if-eqz p2, :cond_1

    aget v3, v1, v5

    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget v3, v1, v5

    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    goto :goto_0
.end method

.method private queryFdnAvailable()V
    .locals 7

    .prologue
    const/4 v4, 0x7

    .local v4, serviceClassX:I
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    const-string v2, "FD"

    const-string v3, ""

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change Pin2 old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change Pin1 old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public closeLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .parameter "channel"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseChannel(ILandroid/os/Message;)V

    return-void
.end method

.method declared-synchronized dispose()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccApplicationRecords;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyUnavailableRegistrants()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Finalized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCard()Lcom/android/internal/telephony/UiccCard;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIccFdnAvailable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    return v0
.end method

.method public getIccFdnEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    return v0
.end method

.method public declared-synchronized getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIccLockEnabled()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccPin1RetryCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    return v0
.end method

.method public getIccPin2Blocked()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccPin2RetryCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    return v0
.end method

.method public getIccPuk1Blocked()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccPuk1Blocked:Z

    return v0
.end method

.method public getIccPuk2Blocked()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPersonalizationState()Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    return-object v0
.end method

.method public getPin1State()Lcom/android/internal/telephony/UiccConstants$PinState;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getUniversalPinState()Lcom/android/internal/telephony/UiccConstants$PinState;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    goto :goto_0
.end method

.method public getPin2State()Lcom/android/internal/telephony/UiccConstants$PinState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

    return-object v0
.end method

.method public getPinPukRetries()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccPinPukRetries(Landroid/os/Message;)V

    return-void
.end method

.method public getState()Lcom/android/internal/telephony/UiccConstants$AppState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    return-object v0
.end method

.method public getSubscription()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mSubscription:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mSubscription:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()Lcom/android/internal/telephony/UiccConstants$AppType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    return-object v0
.end method

.method public openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "AID"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClassX"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyLockedRegistrants(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForPersoSubstate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubstateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPersoSubstateRegistrants(Landroid/os/Registrant;)V

    return-void
.end method

.method public declared-synchronized registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrants(Landroid/os/Registrant;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerForUnavailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z

    const/16 v5, 0xf

    .local v5, serviceClassX:I
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    const-string v2, "FD"

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x7

    .local v5, serviceClassX:I
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    const-string v2, "SC"

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public setSubscription(Ljava/lang/Integer;)V
    .locals 0
    .parameter "subId"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mSubscription:Ljava/lang/Integer;

    return-void
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForPersoSubstate(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubstateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public declared-synchronized unregisterForReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterForUnavailable(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method update(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .parameter "as"
    .parameter "ur"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v4, "Application updated after destroyed! Fix me!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " update. New "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    .local v1, tempAppType:Lcom/android/internal/telephony/UiccConstants$AppType;
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    .local v0, tempAppState:Lcom/android/internal/telephony/UiccConstants$AppState;
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .local v2, tempPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_label:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1_replaced:I

    if-eqz v3, :cond_6

    move v3, v7

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin2:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

    iget-byte v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1_num_retries:B

    iput-byte v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->pin1_num_retries:B

    iget-byte v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->puk1_num_retries:B

    iput-byte v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->puk1_num_retries:B

    iget-byte v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin2_num_retries:B

    iput-byte v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->pin2_num_retries:B

    iget-byte v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->puk2_num_retries:B

    iput-byte v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->puk2_num_retries:B

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lvliufang update******  Pin1 is blocked pin1_num_retries ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->pin1_num_retries:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "puk1_num_retries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->puk1_num_retries:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pin2_num_retries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->pin2_num_retries:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "puk2_num_retries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->puk2_num_retries:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v4, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v4, "liuji ****** PUK1 is blocked"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccPuk1Blocked:Z

    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v4, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v3, v4, :cond_8

    iget-byte v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->puk1_num_retries:B

    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lvliufang update****** Pin1 is PINSTATE_ENABLED_BLOCKED mPin1RetryCount ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq v3, v1, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccApplicationRecords;->dispose()V

    :cond_2
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-direct {p0, v3, p2, p3, p4}, Lcom/android/internal/telephony/UiccCardApplication;->createUiccApplicationRecords(Lcom/android/internal/telephony/UiccConstants$AppType;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    :cond_3
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v3, v2, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPersoSubstateRegistrants()V

    :cond_4
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-eq v3, v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changed state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v4, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v3, v4, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryFdnAvailable()V

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyLockedRegistrants()V

    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrants()V

    goto/16 :goto_0

    :cond_6
    move v3, v6

    goto/16 :goto_1

    :cond_7
    iput-boolean v6, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccPuk1Blocked:Z

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v4, "liuji ****** PUK1 is not blocked"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    iget-byte v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->pin1_num_retries:B

    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lvliufang update****** Pin1 is not PINSTATE_ENABLED_BLOCKED mPin1RetryCount ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
