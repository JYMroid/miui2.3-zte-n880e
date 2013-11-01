.class final Lcom/android/internal/telephony/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 3
    .parameter "phone"
    .parameter "cm"
    .parameter "imsSMSDispatcher"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    iput-object p3, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    const-string v0, "CDMA"

    const-string v1, "Register for EVENT_NEW_SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSMS(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private checkDuplicatePortOmadmWappush([BI)Z
    .locals 8
    .parameter "origPdu"
    .parameter "index"

    .prologue
    const/4 v7, 0x0

    add-int/lit8 p2, p2, 0x4

    array-length v5, p1

    sub-int/2addr v5, p2

    new-array v2, v5, [B

    .local v2, omaPdu:[B
    array-length v5, v2

    invoke-static {p1, p2, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .local v3, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v4, 0x2

    .local v4, wspIndex:I
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v7

    :goto_0
    return v5

    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v1

    .local v1, mimeType:Ljava/lang/String;
    if-nez v1, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    long-to-int v0, v5

    .local v0, binaryContentType:I
    const/16 v5, 0x44

    if-ne v0, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    .end local v0           #binaryContentType:I
    :cond_2
    move v5, v7

    goto :goto_0
.end method

.method private handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 7
    .parameter "sms"

    .prologue
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .local v4, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, fillIn:Landroid/content/Intent;
    const-string v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v5, "encoding"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getEncoding()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .restart local v4       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method IsSelfRegMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 10
    .parameter "sms"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    new-array v0, v9, [Ljava/lang/String;

    const-string v5, "10659401"

    aput-object v5, v0, v8

    .local v0, addressSelfReg:[Ljava/lang/String;
    const-string v5, "hubo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current address is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .local v2, filter:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v9

    .end local v2           #filter:Ljava/lang/String;
    :goto_1
    return v5

    .restart local v2       #filter:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2           #filter:Ljava/lang/String;
    :cond_1
    move v5, v8

    goto :goto_1
.end method

.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    const-string v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, inEcm:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->resultToCause(I)I

    move-result v0

    .local v0, causeCode:I
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v2, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 14
    .parameter "smsb"

    .prologue
    const/16 v13, 0x1005

    const/16 v12, 0x1004

    const/16 v11, 0x1002

    const/4 v10, -0x1

    const/4 v9, 0x1

    if-nez p1, :cond_0

    const-string v7, "CDMA"

    const-string v8, "dispatchMessage: message is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    :goto_0
    return v7

    :cond_0
    const-string v7, "ril.cdma.inecmmode"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, inEcm:Ljava/lang/String;
    const-string v7, "true"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v10

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    move-object v4, v0

    .local v4, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iget-object v7, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iget-object v8, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v9

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v6

    .local v6, teleService:I
    const/4 v1, 0x0

    .local v1, handled:Z
    const/16 v7, 0x1003

    if-eq v7, v6, :cond_3

    const/high16 v7, 0x4

    if-ne v7, v6, :cond_5

    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->updateMessageWaitingIndicator(I)V

    const/4 v1, 0x1

    :cond_4
    :goto_1
    if-eqz v1, :cond_8

    move v7, v9

    goto :goto_0

    :cond_5
    if-eq v11, v6, :cond_6

    if-ne v13, v6, :cond_7

    :cond_6
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "CDMA"

    const-string v8, "Received SMS without user data"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    sget-boolean v7, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mStorageAvailable:Z

    if-nez v7, :cond_9

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v7

    sget-object v8, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v7, v8, :cond_9

    const/4 v7, 0x3

    goto :goto_0

    :cond_9
    if-eq v12, v6, :cond_a

    const v7, 0xfdea

    if-ne v7, v6, :cond_b

    :cond_a
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v7

    iget v8, v4, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_b
    if-eq v11, v6, :cond_c

    if-eq v13, v6, :cond_c

    const v7, 0xfded

    if-eq v7, v6, :cond_c

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v7

    if-eq v9, v7, :cond_c

    const/4 v7, 0x4

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    .local v5, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v5, :cond_d

    iget-object v7, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v7, :cond_11

    :cond_d
    new-array v3, v9, [[B

    .local v3, pdus:[[B
    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v8

    aput-object v8, v3, v7

    if-eqz v5, :cond_f

    iget-object v7, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v7, :cond_f

    iget-object v7, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v8, 0xb84

    if-ne v7, v8, :cond_e

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_e
    iget-object v7, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v3, v7}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    :goto_2
    move v7, v10

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v7

    if-ne v7, v9, :cond_10

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v7

    const/16 v8, 0x1000

    if-lt v7, v8, :cond_10

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v7

    if-gt v7, v12, :cond_10

    const-string v7, "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

    invoke-virtual {p0, v7, v3}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchBroadcastPdus(Ljava/lang/String;[[B)V

    goto :goto_2

    :cond_10
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->IsSelfRegMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v7

    invoke-virtual {p0, v3, v7}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchPdusExtra([[BZ)V

    goto :goto_2

    .end local v3           #pdus:[[B
    :cond_11
    iget-object v7, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-virtual {p0, v4, v7, v8}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v7

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSMS(Landroid/os/Handler;)V

    return-void
.end method

.method protected getEncoding()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    return v0
.end method

.method protected handleBroadcastSms(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    const-string v0, "CDMA"

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected handleGetIccSmsDone(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    const-string v0, "CDMA"

    const-string v1, "handleGetIccSmsDone function is not applicable for CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected handleSmsOnIcc(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    const-string v0, "CDMA"

    const-string v1, "handleSmsOnIcc function is not applicable for CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    const-string v0, "CDMA"

    const-string v1, "handleStatusReport is a special GSM function, should never be called in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected processCdmaWapPdu([BILjava/lang/String;)I
    .locals 30
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"

    .prologue
    const/16 v18, 0x0

    .local v18, index:I
    const/16 v26, 0x0

    .local v26, sourcePort:I
    const/4 v14, 0x0

    .local v14, destinationPort:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .local v19, index:I
    aget-byte v20, p1, v18

    .local v20, msgType:I
    if-eqz v20, :cond_1

    const-string v4, "CDMA"

    const-string v5, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move/from16 v18, v19

    .end local v19           #index:I
    .restart local v18       #index:I
    :cond_0
    :goto_0
    return v4

    .end local v18           #index:I
    .restart local v19       #index:I
    :cond_1
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v27, p1, v19

    .local v27, totalSegments:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v24, p1, v18

    .local v24, segment:I
    if-nez v24, :cond_a

    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v26, v4, 0x8

    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    or-int v26, v26, v4

    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v14, v4, 0x8

    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v14, v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    move v4, v0

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->checkDuplicatePortOmadmWappush([BI)Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v18, v19, 0x4

    .end local v19           #index:I
    .restart local v18       #index:I
    :goto_1
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v4, "address = ?"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v29, where:Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v8, v4

    .local v8, whereArgs:[Ljava/lang/String;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received WAP PDU. Type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", originator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", src-port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dst-port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", segment# = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    check-cast v23, [[B

    .local v23, pdus:[[B
    const/4 v10, 0x0

    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/CdmaSMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .local v11, cursorCount:I
    const/4 v4, 0x1

    sub-int v4, v27, v4

    if-eq v11, v4, :cond_3

    const/4 v4, 0x1

    if-lt v11, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "CDMA"

    const-string v5, "processCdmaWapPdu -segment frequency is error,delete the old segment!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .local v28, values:Landroid/content/ContentValues;
    const-string v4, "date"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "pdu"

    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    sub-int v5, v5, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "address"

    move-object/from16 v0, v28

    move-object v1, v4

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "count"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "sequence"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "destination_port"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-eqz v10, :cond_0

    .end local v11           #cursorCount:I
    .end local v28           #values:Landroid/content/ContentValues;
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .restart local v11       #cursorCount:I
    :cond_3
    :try_start_1
    const-string v4, "pdu"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .local v22, pduColumn:I
    const-string v4, "sequence"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .local v25, sequenceColumn:I
    move/from16 v0, v27

    new-array v0, v0, [[B

    move-object/from16 v23, v0

    const/16 v17, 0x0

    .local v17, i:I
    :goto_3
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-object v0, v10

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v12, v4

    .local v12, cursorSequence:I
    if-nez v12, :cond_4

    const-string v4, "destination_port"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .local v15, destinationPortColumn:I
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v14, v4

    .end local v15           #destinationPortColumn:I
    :cond_4
    move-object v0, v10

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v23, v12

    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .end local v12           #cursorSequence:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v21, output:Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    sub-int v4, v4, v18

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .end local v11           #cursorCount:I
    .end local v17           #i:I
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    .end local v22           #pduColumn:I
    .end local v25           #sequenceColumn:I
    :catch_0
    move-exception v4

    move-object/from16 v16, v4

    .local v16, e:Landroid/database/SQLException;
    :try_start_2
    const-string v4, "CDMA"

    const-string v5, "Can\'t access multipart SMS database"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x2

    if-eqz v10, :cond_0

    goto/16 :goto_2

    .end local v16           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v4

    .restart local v11       #cursorCount:I
    .restart local v17       #i:I
    .restart local v21       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v22       #pduColumn:I
    .restart local v25       #sequenceColumn:I
    :cond_8
    aget-object v4, v23, v17

    const/4 v5, 0x0

    aget-object v6, v23, v17

    array-length v6, v6

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    :cond_9
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .local v13, datagram:[B
    packed-switch v14, :pswitch_data_0

    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [[B

    move-object/from16 v23, v0

    const/4 v4, 0x0

    aput-object v13, v23, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    const/4 v4, -0x1

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v13

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .end local v8           #whereArgs:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #cursorCount:I
    .end local v13           #datagram:[B
    .end local v17           #i:I
    .end local v18           #index:I
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    .end local v22           #pduColumn:I
    .end local v23           #pdus:[[B
    .end local v25           #sequenceColumn:I
    .end local v29           #where:Ljava/lang/StringBuilder;
    .restart local v19       #index:I
    :cond_a
    move/from16 v18, v19

    .end local v19           #index:I
    .restart local v18       #index:I
    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xb84
        :pswitch_0
    .end packed-switch
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v5

    .local v5, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .local v6, map:Ljava/util/HashMap;
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v6, p5, p6, v0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .end local v5           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    const-string v0, "CDMA"

    const-string v1, "TODO: CdmaSMSDispatcher.sendMultipartSms not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move v12, v0

    .local v12, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, msgCount:I
    const/4 v8, 0x0

    .local v8, encoding:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_2

    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v7

    .local v7, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object v0, v7

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v18, v0

    move v0, v8

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    if-eqz v8, :cond_0

    const/16 v18, 0x1

    move v0, v8

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    :cond_0
    iget v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v7           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_7

    new-instance v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .local v5, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v12, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iput v11, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object v1, v5

    iput-boolean v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    new-instance v14, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v14, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v5, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const/4 v13, 0x0

    .local v13, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    move v1, v9

    if-le v0, v1, :cond_3

    move-object/from16 v0, p4

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    const/4 v6, 0x0

    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    move v1, v9

    if-le v0, v1, :cond_4

    move-object/from16 v0, p5

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_4
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v17, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/16 v18, 0x1

    move v0, v8

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v6, :cond_6

    const/16 v18, 0x1

    sub-int v18, v11, v18

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v15

    .local v15, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v10

    .local v10, map:Ljava/util/HashMap;
    sget-object v18, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move-object v3, v6

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v16

    .local v16, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .end local v10           #map:Ljava/util/HashMap;
    .end local v15           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v16           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_5
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_2

    :cond_6
    const/16 v18, 0x0

    goto :goto_3

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    .end local v14           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v17           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_7
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 19
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "extraInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move v12, v0

    .local v12, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, msgCount:I
    const/4 v8, 0x0

    .local v8, encoding:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_2

    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v7

    .local v7, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object v0, v7

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v18, v0

    move v0, v8

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    if-eqz v8, :cond_0

    const/16 v18, 0x1

    move v0, v8

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    :cond_0
    iget v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v7           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_7

    new-instance v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .local v5, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v12, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iput v11, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object v1, v5

    iput-boolean v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    new-instance v14, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v14, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v5, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const/4 v13, 0x0

    .local v13, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    move v1, v9

    if-le v0, v1, :cond_3

    move-object/from16 v0, p4

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    const/4 v6, 0x0

    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    move v1, v9

    if-le v0, v1, :cond_4

    move-object/from16 v0, p5

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_4
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v17, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/16 v18, 0x1

    move v0, v8

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v6, :cond_6

    const/16 v18, 0x1

    sub-int v18, v11, v18

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLandroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v15

    .local v15, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v10

    .local v10, map:Ljava/util/HashMap;
    sget-object v18, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move-object v3, v6

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v16

    .local v16, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .end local v10           #map:Ljava/util/HashMap;
    .end local v15           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v16           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_5
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_2

    :cond_6
    const/16 v18, 0x0

    goto :goto_3

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    .end local v14           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v17           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_7
    return-void
.end method

.method protected sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected sendRgData(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    if-eqz p5, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .local v1, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .local v0, map:Ljava/util/HashMap;
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v0, p4, p5, v3}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .end local v0           #map:Ljava/util/HashMap;
    .end local v1           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 5
    .parameter "tracker"

    .prologue
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v1, map:Ljava/util/HashMap;
    const-string v4, "pdu"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0

    .local v2, pdu:[B
    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .local v3, reply:Landroid/os/Message;
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-gtz v4, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->isIms()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BLandroid/os/Message;)V

    goto :goto_0
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    const-string v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "CDMA"

    const-string v1, "Block SMS in Emergency Callback mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    if-eqz p5, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {p2, p1, p3, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .local v1, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .local v0, map:Ljava/util/HashMap;
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v0, p4, p5, v3}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .end local v0           #map:Ljava/util/HashMap;
    .end local v1           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "extraInfo"

    .prologue
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .local v7, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v7}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .local v6, map:Ljava/util/HashMap;
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v6, p4, p5, v0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v8

    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0
.end method

.method protected sendVPMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 2
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "validityPeriod"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "CDMA"

    const-string v1, "validityPeriod CdmaSMSDispatcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendVPText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 2
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "validityPeriod"

    .prologue
    const-string v0, "CDMA"

    const-string v1, "validityPeriod CdmaSMSDispatcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected updateIccAvailability()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "CDMA"

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v1

    .local v1, subData:Lcom/android/internal/telephony/ProxyManager$Subscription;
    const/4 v0, 0x0

    .local v0, newApplication:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget v3, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget v4, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/UiccManager;->getApplication(II)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v2, v0, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v2, :cond_2

    const-string v2, "CDMA"

    const-string v2, "Removing stale 3gpp2 Application."

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v2, :cond_1

    iput-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    :cond_1
    iput-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "CDMA"

    const-string v2, "New 3gpp2 application found"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    :cond_3
    return-void
.end method

.method updateMessageWaitingIndicator(I)V
    .locals 1
    .parameter "mwi"

    .prologue
    if-gez p1, :cond_1

    const/4 p1, -0x1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->storeVoiceMailCount()V

    return-void

    :cond_1
    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    const/16 p1, 0x63

    goto :goto_0
.end method

.method updateMessageWaitingIndicator(Z)V
    .locals 1
    .parameter "mwi"

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->updateMessageWaitingIndicator(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method
