.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatService$1;
    }
.end annotation


# static fields
.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final MSG_ID_ALPHA_NOTIFY:I = 0x7

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field private static final MSG_ID_ICC_RECORDS_LOADED:I = 0x14

.field private static final MSG_ID_ICC_REFRESH:I = 0x1e

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_SESSION_END:I = 0x1

.field public static mUserActivityFlag:Z


# instance fields
.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mIccRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

.field private mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

.field private mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mSlotId:I

.field private mhandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/cat/CatService;->mUserActivityFlag:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/UiccApplicationRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;I)V
    .locals 4
    .parameter "ci"
    .parameter "ir"
    .parameter "context"
    .parameter "fh"
    .parameter "slotId"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Service: Input parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p3, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iput p5, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cat Telephony service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mhandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mhandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    if-eqz p4, :cond_2

    const-string v0, "Initialize the Service with new IccFilehandler"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/cat/IconLoader;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-direct {v0, p4, v1}, Lcom/android/internal/telephony/cat/IconLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    if-nez v0, :cond_2

    const-string v0, "Error in initializing IconLoader"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance()Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1e

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/UiccApplicationRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CatService on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Is running"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private byteToBCD(I)B
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, bcdVal:Ljava/lang/Integer;
    if-ltz p1, :cond_0

    const/16 v1, 0x63

    if-gt p1, v1, :cond_0

    div-int/lit8 v1, p1, 0xa

    rem-int/lit8 v2, p1, 0xa

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "Err: byteToBCD conversion"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0
.end method

.method private encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "cmdInput"
    .parameter "buf"

    .prologue
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .local v0, cmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    if-nez v1, :cond_1

    const-string v1, "Received unrecognised cmd"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_4

    sget-object v1, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() Unsupported Cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz v1, :cond_0

    invoke-direct {p0, p4, p3}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    goto :goto_0

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLI: QUALIFIER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :cond_2
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-direct {p0, p4, v1}, Lcom/android/internal/telephony/cat/CatService;->getPliResponse(Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLI: resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() Unsupported Command Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private eventDownload(III[BZ)V
    .locals 11
    .parameter "event"
    .parameter "sourceId"
    .parameter "destinationId"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v2, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0xd6

    .local v8, tag:I
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p4, :cond_1

    move-object v0, p4

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_1

    aget-byte v1, v0, v4

    .local v1, b:B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v6           #len$:I
    :pswitch_1
    const-string v9, " Sending Browser termination event download to ICC"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :pswitch_2
    const-string v9, " Sending Idle Screen Available event download to ICC"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v9, " Sending Language Selection event download to ICC"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :pswitch_4
    const-string v9, "persist.radio.gcftest"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    const-string v9, " Sending User Activity event download to ICC"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/telephony/cat/CatService;->mUserActivityFlag:Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .local v7, rawData:[B
    array-length v9, v7

    const/4 v10, 0x2

    sub-int v5, v9, v10

    .local v5, len:I
    const/4 v9, 0x1

    int-to-byte v10, v5

    aput-byte v10, v7, v9

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .local v3, hexString:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ENVELOPE COMMAND: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private getCurrentDateTimeAndTimezone()[B
    .locals 14

    .prologue
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    .local v3, mHomeTZ:Ljava/lang/String;
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .local v0, calendar:Ljava/util/Calendar;
    const/4 v11, 0x7

    new-array v6, v11, [B

    .local v6, ret:[B
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_1
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .local v8, year:I
    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .local v5, month:I
    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .local v1, day:I
    const/16 v11, 0xb

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .local v2, hour:I
    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .local v4, minute:I
    const/16 v11, 0xd

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .local v7, second:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Date :: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Time :: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "persist.sys.timezone"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .local v9, zone:Ljava/util/TimeZone;
    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v11

    invoke-virtual {v9}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v12

    add-int v10, v11, v12

    .local v10, zoneOffset:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TimeZone :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": zoneOffset :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    rem-int/lit8 v12, v8, 0x64

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/cat/CatService;->byteToBCD(I)B

    move-result v12

    aput-byte v12, v6, v11

    const/4 v11, 0x1

    add-int/lit8 v12, v5, 0x1

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/cat/CatService;->byteToBCD(I)B

    move-result v12

    aput-byte v12, v6, v11

    const/4 v11, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->byteToBCD(I)B

    move-result v12

    aput-byte v12, v6, v11

    const/4 v11, 0x3

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/CatService;->byteToBCD(I)B

    move-result v12

    aput-byte v12, v6, v11

    const/4 v11, 0x4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/CatService;->byteToBCD(I)B

    move-result v12

    aput-byte v12, v6, v11

    const/4 v11, 0x5

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/CatService;->byteToBCD(I)B

    move-result v12

    aput-byte v12, v6, v11

    if-nez v10, :cond_2

    const/4 v11, 0x6

    const/4 v12, -0x1

    aput-byte v12, v6, v11

    :goto_1
    move-object v11, v6

    goto/16 :goto_0

    :cond_2
    const/4 v11, 0x6

    int-to-long v12, v10

    invoke-direct {p0, v12, v13}, Lcom/android/internal/telephony/cat/CatService;->getTZOffSetByte(J)B

    move-result v12

    aput-byte v12, v6, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tzOffset : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x6

    aget-byte v12, v6, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V
    .locals 2
    .parameter "buf"
    .parameter "cmdInput"

    .prologue
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .local v0, tag:I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method private getPliResponse(Ljava/io/ByteArrayOutputStream;I)V
    .locals 13
    .parameter "buf"
    .parameter "commandQualifier"

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x0

    .local v6, tag:I
    const/4 v7, 0x0

    .local v7, tagLen:I
    const/4 v10, 0x1

    new-array v8, v10, [B

    aput-byte v12, v8, v12

    .local v8, tagValues:[B
    const/4 v9, 0x0

    .local v9, writeToBuf:Z
    packed-switch p2, :pswitch_data_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPliResponse() Unsupported Cmd Qualifier :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p1, v7}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {p1, v8, v12, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_1
    return-void

    :pswitch_0
    const-string v10, "persist.sys.language"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, lang:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lang::"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, config:Landroid/content/res/Configuration;
    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v5, localetmp:Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v10, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    const/4 v9, 0x1

    goto :goto_0

    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v5           #localetmp:Ljava/util/Locale;
    :catch_0
    move-exception v10

    move-object v3, v10

    .local v3, e:Landroid/os/RemoteException;
    const-string v10, "getLanguage error"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v4           #lang:Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->getCurrentDateTimeAndTimezone()[B

    move-result-object v2

    .local v2, datetimeAndTZ:[B
    if-eqz v2, :cond_0

    sget-object v10, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DATETIME_TIMEZONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    array-length v7, v2

    move-object v8, v2

    const/4 v9, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTZOffSetByte(J)B
    .locals 8
    .parameter "offSetVal"

    .prologue
    const/4 v7, 0x1

    const-wide/16 v3, 0x0

    .local v3, tzOffset:J
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-gez v5, :cond_0

    move v2, v7

    .local v2, sign:Z
    :goto_0
    const/4 v0, 0x0

    .local v0, bcdVal:B
    const-wide/32 v5, 0xdbba0

    div-long v3, p1, v5

    if-eqz v2, :cond_1

    const/4 v5, -0x1

    :goto_1
    int-to-long v5, v5

    mul-long/2addr v3, v5

    long-to-int v5, v3

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CatService;->byteToBCD(I)B

    move-result v0

    if-eqz v2, :cond_2

    or-int/lit8 v5, v0, 0x8

    int-to-byte v0, v5

    move v1, v0

    .end local v0           #bcdVal:B
    .local v1, bcdVal:B
    :goto_2
    return v0

    .end local v1           #bcdVal:B
    .end local v2           #sign:Z
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    goto :goto_0

    .restart local v0       #bcdVal:B
    .restart local v2       #sign:Z
    :cond_1
    move v5, v7

    goto :goto_1

    :cond_2
    move v1, v0

    .end local v0           #bcdVal:B
    .restart local v1       #bcdVal:B
    goto :goto_2
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 11
    .parameter "resMsg"

    .prologue
    const/16 v3, 0x81

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v9, 0x0

    .local v9, resp:Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v7, 0x0

    .local v7, helpRequired:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v1

    .local v1, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v7, 0x1

    :pswitch_1
    iget v0, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v6

    .local v6, cmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v6, :cond_5

    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    :cond_1
    :pswitch_2
    move-object v5, v9

    .end local v6           #cmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .end local v9           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .local v5, resp:Lcom/android/internal/telephony/cat/ResponseData;
    :goto_1
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-boolean v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->includeAdditionalInfo:Z

    iget v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    iput-object v10, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v6       #cmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .restart local v9       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_3
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v2, :cond_2

    move v7, v4

    :goto_2
    const-string v0, "Event Download being sent"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    invoke-direct {p0, v0, v7}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    goto :goto_0

    :cond_2
    move v7, v5

    goto :goto_2

    :pswitch_4
    new-instance v5, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    .end local v9           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v9       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v8

    .local v8, input:Lcom/android/internal/telephony/cat/Input;
    iget-boolean v0, v8, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-nez v0, :cond_3

    if-nez v7, :cond_1

    new-instance v5, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    iget-boolean v2, v8, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    iget-boolean v3, v8, Lcom/android/internal/telephony/cat/Input;->packed:Z

    invoke-direct {v5, v0, v2, v3}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .end local v9           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v9       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    .end local v9           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .end local v8           #input:Lcom/android/internal/telephony/cat/Input;
    .restart local v9       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_6
    move-object v5, v9

    .end local v9           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v9       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    invoke-interface {v0, v2, v10}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    iput-object v10, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x5

    iget v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->eventValue:I

    if-ne v0, v2, :cond_4

    iget v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->eventValue:I

    .end local v1           #cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    const/4 v2, 0x2

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->addedInfo:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    goto/16 :goto_0

    .restart local v1       #cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    :cond_4
    iget v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->eventValue:I

    .end local v1           #cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    const/16 v2, 0x82

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->addedInfo:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    goto/16 :goto_0

    .restart local v1       #cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Command Type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v9

    .end local v9           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto/16 :goto_1

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .end local v6           #cmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .restart local v9       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_9
    iput-boolean v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->includeAdditionalInfo:Z

    iput v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:I

    :pswitch_a
    const/4 v5, 0x0

    .end local v9           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method private handleIccStatusChange(Lcom/android/internal/telephony/SimRefreshResponse;)V
    .locals 3
    .parameter "IccRefreshState"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.icc_status_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "REFRESH_RESULT"

    iget-object v2, p1, Lcom/android/internal/telephony/SimRefreshResponse;->refreshResult:Lcom/android/internal/telephony/SimRefreshResponse$Result;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SimRefreshResponse$Result;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending IccResult with Result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/SimRefreshResponse;->refreshResult:Lcom/android/internal/telephony/SimRefreshResponse$Result;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "RADIO_AVAILABLE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Radio Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 14
    .parameter "cmdParams"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v12, p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .local v12, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    const-string v0, "Unsupported command"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    :goto_1
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->loadIconFailed:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v2, v0

    .local v2, resultCode:Lcom/android/internal/telephony/cat/ResultCode;
    :goto_2
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .end local v2           #resultCode:Lcom/android/internal/telephony/cat/ResultCode;
    :cond_1
    :goto_3
    :pswitch_1
    iput-object v12, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    new-instance v13, Landroid/content/Intent;

    const-string v0, "android.intent.action.stk.command"

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v13, intent:Landroid/content/Intent;
    const-string v0, "STK CMD"

    invoke-virtual {v13, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "SLOT_ID"

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending CmdMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on slotid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v13           #intent:Landroid/content/Intent;
    :cond_2
    iput-object v12, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v2, v0

    goto :goto_2

    :pswitch_2
    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->loadIconFailed:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v2, v0

    .restart local v2       #resultCode:Lcom/android/internal/telephony/cat/ResultCode;
    :goto_4
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_3

    .end local v2           #resultCode:Lcom/android/internal/telephony/cat/ResultCode;
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v2, v0

    goto :goto_4

    :pswitch_3
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    goto :goto_3

    :pswitch_4
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->loadIconFailed:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v2, v0

    .restart local v2       #resultCode:Lcom/android/internal/telephony/cat/ResultCode;
    :goto_5
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_3

    .end local v2           #resultCode:Lcom/android/internal/telephony/cat/ResultCode;
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v2, v0

    goto :goto_5

    :pswitch_5
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/cat/CatService;->isSupportedSetupEventCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v7, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v6, p0

    move v9, v3

    move v10, v3

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_3

    :cond_6
    iget-object v7, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v6, p0

    move v9, v3

    move v10, v3

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_3

    :pswitch_6
    iget-object v7, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v6, p0

    move v9, v3

    move v10, v3

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v7, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v6, p0

    move v9, v3

    move v10, v3

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_3

    :pswitch_8
    const-string v0, "persist.radio.gcftest"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v7, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v6, p0

    move v9, v3

    move v10, v3

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 7
    .parameter "rilMsg"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    .local v6, cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    iget v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v2, :cond_0

    iget-object v6, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v6           #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v6, Lcom/android/internal/telephony/cat/CommandParams;

    .restart local v6       #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v6, :cond_0

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_0

    :pswitch_3
    iget-object v6, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v6           #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v6, Lcom/android/internal/telephony/cat/CommandParams;

    .restart local v6       #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v6, :cond_3

    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v2, :cond_2

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_0

    :cond_2
    iget-object v1, v6, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v2, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .local v1, lastCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    iput v3, v1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    iput v3, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    iput v3, v1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    iget-object v2, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .end local v1           #lastCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    :pswitch_4
    iget-object v6, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v6           #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v6, Lcom/android/internal/telephony/cat/CommandParams;

    .restart local v6       #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v6, :cond_0

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SESSION END on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private isSupportedSetupEventCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 6
    .parameter "cmdMsg"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x1

    .local v1, flag:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v0, v3, v2

    .local v0, eventval:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    :cond_0
    :goto_1
    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_2
    const-string v3, "persist.radio.gcftest"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_0

    sput-boolean v5, Lcom/android/internal/telephony/cat/CatService;->mUserActivityFlag:Z

    goto :goto_1

    .end local v0           #eventval:I
    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method private sendMenuSelection(IZ)V
    .locals 9
    .parameter "menuId"
    .parameter "helpRequired"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p2, :cond_0

    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .local v3, rawData:[B
    array-length v5, v3

    sub-int v2, v5, v8

    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v6

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .local v1, hexString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 8
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"
    .parameter "resp"

    .prologue
    const/4 v7, 0x2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, cmdInput:Lcom/android/internal/telephony/cat/Input;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    :cond_1
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .local v5, tag:I
    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_2

    or-int/lit16 v5, v5, 0x80

    :cond_2
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0x82

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p3, :cond_4

    move v3, v7

    .local v3, length:I
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p3, :cond_3

    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_3
    if-eqz p5, :cond_5

    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .local v4, rawData:[B
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .local v2, hexString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TERMINAL RESPONSE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v2           #hexString:Ljava/lang/String;
    .end local v3           #length:I
    .end local v4           #rawData:[B
    :cond_4
    const/4 v6, 0x1

    move v3, v6

    goto :goto_1

    .restart local v3       #length:I
    :cond_5
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2
.end method

.method private validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 3
    .parameter "resMsg"

    .prologue
    const/4 v0, 0x0

    .local v0, validResponse:Z
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CmdType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response CmdType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current  CmdType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CommandDetails;->compareTo(Lcom/android/internal/telephony/cat/CommandDetails;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isResponse for last valid cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanSTKIcon()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->handleIccStatusChange(Lcom/android/internal/telephony/SimRefreshResponse;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccApplicationRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallSetUp(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mhandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mhandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "arrived on slotid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized CAT command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :sswitch_0
    const/4 v2, 0x0

    .local v2, data:Ljava/lang/String;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, ar:Landroid/os/AsyncResult;
    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v2           #data:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    .restart local v2       #data:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    new-instance v7, Lcom/android/internal/telephony/cat/RilMessage;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-direct {v7, v8, v2}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Landroid/os/Handler;Lcom/android/internal/telephony/cat/IconLoader;Lcom/android/internal/telephony/cat/RilMessage;)V

    .end local v2           #data:Ljava/lang/String;
    :goto_0
    :sswitch_1
    return-void

    .restart local v1       #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v5

    move-object v3, v5

    .local v3, e:Ljava/lang/ClassCastException;
    const-string v5, "Exception caught for proactive cmd"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Ljava/lang/ClassCastException;
    :sswitch_2
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    new-instance v7, Lcom/android/internal/telephony/cat/RilMessage;

    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Landroid/os/Handler;Lcom/android/internal/telephony/cat/IconLoader;Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    :sswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    :sswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0

    :sswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    if-eqz v1, :cond_1

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/SimRefreshResponse;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CatService;->handleIccStatusChange(Lcom/android/internal/telephony/SimRefreshResponse;)V

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Icc REFRESH with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :cond_2
    const-string v5, "IccRefresh Message is null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_6
    const-string v5, "Received STK CC Alpha message from card"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    if-eqz v1, :cond_3

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_3

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .local v0, alphaString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting STK Alpha message from card: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.stk.alpha_notify"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, intent:Landroid/content/Intent;
    const-string v5, "SLOT_ID"

    iget v6, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "alpha_string"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v0           #alphaString:Ljava/lang/String;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    const-string v5, "STK Alpha message: ar.result is null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :cond_4
    const-string v5, "STK Alpha message: msg.obj is null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x6 -> :sswitch_4
        0x7 -> :sswitch_6
        0xa -> :sswitch_3
        0x14 -> :sswitch_1
        0x1e -> :sswitch_5
    .end sparse-switch
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .parameter "resMsg"

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public update(Lcom/android/internal/telephony/UiccApplicationRecords;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 3
    .parameter "ir"
    .parameter "fh"

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eq v0, p1, :cond_1

    const-string v0, "Reinitialize the Service with IccRecords"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccApplicationRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccApplicationRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string v0, "Records changed reinitialize"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "Reinitialize the Service with new IccFilehandler"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cat/IconLoader;->updateIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Lcom/android/internal/telephony/cat/IconLoader;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/cat/IconLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    goto :goto_0
.end method
