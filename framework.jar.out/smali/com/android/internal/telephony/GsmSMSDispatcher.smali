.class final Lcom/android/internal/telephony/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 3
    .parameter "phone"
    .parameter "cm"
    .parameter "imsSMSDispatcher"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    const-string v0, "GSM"

    const-string v1, "Register for EVENT_NEW_SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewSMS(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/BaseCommands;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/BaseCommands;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 27
    .parameter "destinationAddress"
    .parameter "scAddress"
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
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v5, v0

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v25

    .local v25, ss:I
    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->isIms()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v25, :cond_1

    const/16 v18, 0x0

    .local v18, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, count:I
    :goto_0
    move/from16 v0, v18

    move v1, v14

    if-ge v0, v1, :cond_9

    const/16 v23, 0x0

    .local v23, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    check-cast v23, Landroid/app/PendingIntent;

    .restart local v23       #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v23

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v26

    .local v26, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .end local v14           #count:I
    .end local v18           #i:I
    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    .end local v26           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    .local v22, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .local v20, msgCount:I
    const/4 v10, 0x0

    .local v10, encoding:I
    sput v20, Lcom/android/internal/telephony/GsmSMSDispatcher;->mRemainingMessages:I

    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-object/from16 v17, v0

    .local v17, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v16

    .local v16, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move v5, v0

    if-eq v10, v5, :cond_3

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    if-ne v10, v5, :cond_3

    :cond_2
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move v10, v0

    :cond_3
    aput-object v16, v17, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .end local v16           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    new-instance v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v13}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .local v13, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v22

    move-object v1, v13

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v5, v18, 0x1

    iput v5, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move/from16 v0, v20

    move-object v1, v13

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v5, 0x0

    iput-boolean v5, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    new-instance v24, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v24, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v13

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const/4 v5, 0x1

    if-ne v10, v5, :cond_5

    aget-object v5, v17, v18

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move v0, v5

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    aget-object v5, v17, v18

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move v0, v5

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :cond_5
    const/16 v23, 0x0

    .restart local v23       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    check-cast v23, Landroid/app/PendingIntent;

    .restart local v23       #sentIntent:Landroid/app/PendingIntent;
    :cond_6
    const/4 v15, 0x0

    .local v15, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    move-object/from16 v0, p5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v15, Landroid/app/PendingIntent;

    .restart local v15       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_7
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v15, :cond_8

    const/4 v5, 0x1

    move v8, v5

    :goto_3
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v11, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move v12, v0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v21

    .local v21, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v19

    .local v19, map:Ljava/util/HashMap;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move-object v3, v15

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v26

    .restart local v26       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .end local v19           #map:Ljava/util/HashMap;
    .end local v21           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v26           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_8
    const/4 v5, 0x0

    move v8, v5

    goto :goto_3

    .end local v10           #encoding:I
    .end local v13           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v17           #encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v20           #msgCount:I
    .end local v22           #refNumber:I
    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    .end local v24           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_9
    return-void
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 10
    .parameter "smsb"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "GSM"

    if-nez p1, :cond_0

    const/4 v5, 0x2

    :goto_0
    return v5

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    move-object v3, v0

    .local v3, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v1, 0x0

    .local v1, handled:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "GSM"

    const-string v5, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->updateMessageWaitingIndicator(I)V

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v1

    const-string v5, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    if-eqz v1, :cond_6

    move v5, v7

    goto :goto_0

    :cond_3
    move v6, v8

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/GsmSMSDispatcher;->updateMessageWaitingIndicator(I)V

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v1

    const-string v5, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move v6, v8

    goto :goto_3

    :cond_6
    sget-boolean v5, Lcom/android/internal/telephony/GsmSMSDispatcher;->mStorageAvailable:Z

    if-nez v5, :cond_7

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v5

    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v5, v6, :cond_7

    const/4 v5, 0x3

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    .local v4, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v4, :cond_8

    iget-object v5, v4, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v5, :cond_c

    :cond_8
    new-array v2, v7, [[B

    .local v2, pdus:[[B
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v5

    aput-object v5, v2, v8

    if-eqz v4, :cond_b

    iget-object v5, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v5, :cond_b

    iget-object v5, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v6, 0xb84

    if-eq v5, v6, :cond_9

    iget-object v5, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v6, 0x3e80

    if-ne v5, v6, :cond_a

    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_a
    iget-object v5, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    :goto_4
    const/4 v5, -0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_4

    .end local v2           #pdus:[[B
    :cond_c
    iget-object v5, v4, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/internal/telephony/GsmSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v5

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewSMS(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    return-void
.end method

.method protected getEncoding()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected handleBroadcastSms(Landroid/os/AsyncResult;)V
    .locals 23
    .parameter "ar"

    .prologue
    const/16 v17, 0x0

    :try_start_0
    check-cast v17, [[B

    .local v17, pdus:[[B
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object/from16 v19, v0

    .local v19, receivedPdu:[B
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move v0, v11

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "SMS CB pdu data: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v20, sb:Ljava/lang/StringBuilder;
    move v15, v11

    .local v15, j:I
    :goto_1
    add-int/lit8 v21, v11, 0x8

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    aget-byte v21, v19, v15

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    .local v5, b:I
    const/16 v21, 0x10

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    const/16 v21, 0x30

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .end local v5           #b:I
    :cond_1
    const-string v21, "GSM"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, 0x8

    goto :goto_0

    .end local v15           #j:I
    .end local v20           #sb:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v10, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .local v10, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v21, "gsm.operator.numeric"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, plmn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .local v6, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v16

    .local v16, lac:I
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v7

    .local v7, cid:I
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    new-instance v8, Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;

    move-object v0, v8

    move-object v1, v10

    move-object/from16 v2, v18

    move/from16 v3, v16

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Ljava/lang/String;II)V

    .local v8, concatInfo:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pdus:[[B
    check-cast v17, [[B

    .restart local v17       #pdus:[[B
    if-nez v17, :cond_3

    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    aput-object v19, v17, v21

    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move v0, v11

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    aget-object v21, v17, v11

    if-nez v21, :cond_5

    .end local v6           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #cid:I
    .end local v8           #concatInfo:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v10           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v11           #i:I
    .end local v16           #lac:I
    .end local v17           #pdus:[[B
    .end local v18           #plmn:Ljava/lang/String;
    .end local v19           #receivedPdu:[B
    :cond_4
    :goto_3
    return-void

    .restart local v6       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #cid:I
    .restart local v8       #concatInfo:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    .restart local v10       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v11       #i:I
    .restart local v16       #lac:I
    .restart local v17       #pdus:[[B
    .restart local v18       #plmn:Ljava/lang/String;
    .restart local v19       #receivedPdu:[B
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v8           #concatInfo:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    :goto_4
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage(I)Z

    move-result v13

    .local v13, isEmergencyMessage:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatchBroadcastPdus([[BZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    :cond_7
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;

    .local v12, info:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object v0, v12

    move-object/from16 v1, v18

    move/from16 v2, v16

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v21

    if-nez v21, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .end local v6           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #cid:I
    .end local v10           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v11           #i:I
    .end local v12           #info:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v13           #isEmergencyMessage:Z
    .end local v14           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    .end local v16           #lac:I
    .end local v17           #pdus:[[B
    .end local v18           #plmn:Ljava/lang/String;
    .end local v19           #receivedPdu:[B
    :catch_0
    move-exception v21

    move-object/from16 v9, v21

    .local v9, e:Ljava/lang/RuntimeException;
    const-string v21, "GSM"

    const-string v22, "Error in decoding SMS CB pdu"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v9           #e:Ljava/lang/RuntimeException;
    .restart local v6       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #cid:I
    .restart local v10       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v11       #i:I
    .restart local v16       #lac:I
    .restart local v17       #pdus:[[B
    .restart local v18       #plmn:Ljava/lang/String;
    .restart local v19       #receivedPdu:[B
    :cond_8
    const/16 v21, 0x1

    :try_start_1
    move/from16 v0, v21

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    const/16 v21, 0x0

    aput-object v19, v17, v21
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method protected handleGetIccSmsDone(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "GSM"

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v1, v0

    .local v1, ba:[B
    aget-byte v5, v1, v7

    if-eqz v5, :cond_0

    const-string v5, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    aget-byte v5, v1, v7

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    array-length v3, v1

    .local v3, n:I
    sub-int v5, v3, v8

    new-array v4, v5, [B

    .local v4, pdu:[B
    sub-int v5, v3, v8

    invoke-static {v1, v8, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v2

    .local v2, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .end local v1           #ba:[B
    .end local v2           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v3           #n:I
    .end local v4           #pdu:[B
    :cond_1
    :goto_0
    return-void

    .restart local v1       #ba:[B
    :cond_2
    const-string v5, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error on GET_SMS with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected handleSmsOnIcc(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    const-string v5, "GSM"

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .local v1, index:[I
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    :cond_0
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Error on SMS_ON_SIM with exp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ EF_SMS RECORD index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6f3c

    aget v4, v1, v4

    const/16 v5, 0x13

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v11, 0x1

    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .local v5, pduString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .local v7, tpStatus:I
    iget v4, v6, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .local v4, messageRef:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_3

    const/16 v9, 0x40

    if-ge v7, v9, :cond_0

    const/16 v9, 0x20

    if-ge v7, v9, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, fillIn:Landroid/content/Intent;
    const-string v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v9, "encoding"

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getEncoding()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #count:I
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v2           #i:I
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #messageRef:I
    .end local v7           #tpStatus:I
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {p0, v11, v11, v9}, Lcom/android/internal/telephony/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    return-void

    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v4       #messageRef:I
    .restart local v7       #tpStatus:I
    .restart local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    goto :goto_1
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
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v5

    .local v5, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .local v6, map:Ljava/util/HashMap;
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v6, p5, p6, v0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .end local v5           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .parameter "tracker"

    .prologue
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v6, map:Ljava/util/HashMap;
    const-string v0, "destination"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, destinationAddress:Ljava/lang/String;
    const-string v0, "scaddress"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, scAddress:Ljava/lang/String;
    const-string v0, "parts"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "sentIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .local v5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 25
    .parameter "destinationAddress"
    .parameter "scAddress"
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
    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .local v21, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, msgCount:I
    const/4 v10, 0x0

    .local v10, encoding:I
    sput v19, Lcom/android/internal/telephony/GsmSMSDispatcher;->mRemainingMessages:I

    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-object/from16 v16, v0

    .local v16, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v15

    .local v15, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v5, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v10, v5, :cond_1

    if-eqz v10, :cond_0

    const/4 v5, 0x1

    if-ne v10, v5, :cond_1

    :cond_0
    iget v10, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    :cond_1
    aput-object v15, v16, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .end local v15           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    new-instance v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v13}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .local v13, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v21

    move-object v1, v13

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v5, v17, 0x1

    iput v5, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move/from16 v0, v19

    move-object v1, v13

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v5, 0x1

    iput-boolean v5, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    new-instance v23, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v23, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v13

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const/4 v5, 0x1

    if-ne v10, v5, :cond_3

    aget-object v5, v16, v17

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    aget-object v5, v16, v17

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :cond_3
    const/16 v22, 0x0

    .local v22, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    check-cast v22, Landroid/app/PendingIntent;

    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v14, 0x0

    .local v14, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v14, :cond_6

    const/4 v5, 0x1

    move v8, v5

    :goto_2
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v11, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move v12, v0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v20

    .local v20, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v18

    .local v18, map:Ljava/util/HashMap;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    move-object v3, v14

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v24

    .local v24, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .end local v18           #map:Ljava/util/HashMap;
    .end local v20           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v24           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_6
    const/4 v5, 0x0

    move v8, v5

    goto :goto_2

    .end local v13           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    .end local v23           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_7
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 26
    .parameter "destinationAddress"
    .parameter "scAddress"
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
    const-string v5, "vp"

    const/16 v6, 0xff

    move-object/from16 v0, p6

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .local v13, validPeroid:I
    const-string v5, "GSM"

    const-string v6, "sendMultipartText with Bundle extraInfo"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    .local v22, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .local v20, msgCount:I
    const/4 v10, 0x0

    .local v10, encoding:I
    sput v20, Lcom/android/internal/telephony/GsmSMSDispatcher;->mRemainingMessages:I

    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-object/from16 v17, v0

    .local v17, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v18, 0x0

    .end local p6
    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p6

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v16

    .local v16, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move v5, v0

    if-eq v10, v5, :cond_1

    if-eqz v10, :cond_0

    const/4 v5, 0x1

    if-ne v10, v5, :cond_1

    :cond_0
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move v10, v0

    :cond_1
    aput-object v16, v17, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .end local v16           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    new-instance v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .local v14, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v22

    move-object v1, v14

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v5, v18, 0x1

    iput v5, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move/from16 v0, v20

    move-object v1, v14

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v5, 0x1

    iput-boolean v5, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    new-instance v24, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v24, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v14

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const/4 v5, 0x1

    if-ne v10, v5, :cond_3

    aget-object v5, v17, v18

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move v0, v5

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    aget-object v5, v17, v18

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move v0, v5

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :cond_3
    const/16 v23, 0x0

    .local v23, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    check-cast v23, Landroid/app/PendingIntent;

    .restart local v23       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v15, 0x0

    .local v15, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    move-object/from16 v0, p5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v15, Landroid/app/PendingIntent;

    .restart local v15       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v15, :cond_6

    const/4 v5, 0x1

    move v8, v5

    :goto_2
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v11, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move v12, v0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v21

    .local v21, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v19

    .local v19, map:Ljava/util/HashMap;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move-object v3, v15

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v25

    .local v25, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .end local v19           #map:Ljava/util/HashMap;
    .end local v21           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v25           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_6
    const/4 v5, 0x0

    move v8, v5

    goto :goto_2

    .end local v14           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    .end local v24           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_7
    return-void
.end method

.method protected sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected sendRgData(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .parameter "tracker"

    .prologue
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v1, map:Ljava/util/HashMap;
    const-string v5, "smsc"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .local v4, smsc:[B
    const-string v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .local v2, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .local v3, reply:Landroid/os/Message;
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-gtz v5, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->isIms()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    if-eqz p5, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .local v1, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .local v0, map:Ljava/util/HashMap;
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v0, p4, p5, v3}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .end local v0           #map:Ljava/util/HashMap;
    .end local v1           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "extraInfo"

    .prologue
    const-string v4, "vp"

    const/16 v5, 0xff

    invoke-virtual {p6, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .local v3, validPeroid:I
    const-string v4, "GSM"

    const-string v5, "sendText with Bundle extraInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v4, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .local v1, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .local v0, map:Ljava/util/HashMap;
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v0, p4, p5, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .end local v0           #map:Ljava/util/HashMap;
    .end local v1           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected sendVPMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 26
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
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "validityPeriod : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    .local v22, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .local v20, msgCount:I
    const/4 v10, 0x0

    .local v10, encoding:I
    sput v20, Lcom/android/internal/telephony/GsmSMSDispatcher;->mRemainingMessages:I

    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-object/from16 v17, v0

    .local v17, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v16

    .local v16, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move v5, v0

    if-eq v10, v5, :cond_1

    if-eqz v10, :cond_0

    const/4 v5, 0x1

    if-ne v10, v5, :cond_1

    :cond_0
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move v10, v0

    :cond_1
    aput-object v16, v17, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .end local v16           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    new-instance v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .local v14, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v22

    move-object v1, v14

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v5, v18, 0x1

    iput v5, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move/from16 v0, v20

    move-object v1, v14

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v5, 0x1

    iput-boolean v5, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    new-instance v24, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v24, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v14

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const/4 v5, 0x1

    if-ne v10, v5, :cond_3

    aget-object v5, v17, v18

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move v0, v5

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    aget-object v5, v17, v18

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move v0, v5

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :cond_3
    const/16 v23, 0x0

    .local v23, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    check-cast v23, Landroid/app/PendingIntent;

    .restart local v23       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v15, 0x0

    .local v15, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    move-object/from16 v0, p5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v15, Landroid/app/PendingIntent;

    .restart local v15       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v15, :cond_6

    const/4 v5, 0x1

    move v8, v5

    :goto_2
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v11, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move v12, v0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move/from16 v13, p6

    invoke-static/range {v5 .. v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v21

    .local v21, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v19

    .local v19, map:Ljava/util/HashMap;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move-object v3, v15

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v25

    .local v25, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .end local v19           #map:Ljava/util/HashMap;
    .end local v21           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v25           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_6
    const/4 v5, 0x0

    move v8, v5

    goto :goto_2

    .end local v14           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    .end local v24           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_7
    return-void
.end method

.method protected sendVPText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "validityPeriod"

    .prologue
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validityPeriod : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v3, p6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .local v1, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .local v0, map:Ljava/util/HashMap;
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v0, p4, p5, v3}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .end local v0           #map:Ljava/util/HashMap;
    .end local v1           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected updateIccAvailability()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "GSM"

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v1

    .local v1, subData:Lcom/android/internal/telephony/ProxyManager$Subscription;
    const/4 v0, 0x0

    .local v0, newApplication:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget v3, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget v4, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/UiccManager;->getApplication(II)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v2, v0, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v2, :cond_2

    const-string v2, "GSM"

    const-string v2, "Removing stale 3gpp Application."

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v2, :cond_1

    iput-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    :cond_1
    iput-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "GSM"

    const-string v2, "New 3gpp application found"

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
    .locals 3
    .parameter "mwi"

    .prologue
    if-gez p1, :cond_1

    const/4 p1, -0x1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v1, :cond_2

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/internal/telephony/UiccApplicationRecords;->setVoiceMessageWaiting(IILandroid/os/Message;)V

    .end local v0           #onComplete:Landroid/os/Message;
    :goto_1
    return-void

    :cond_1
    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_2
    const-string v1, "GSM"

    const-string v2, "SIM Records not found, MWI not updated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method
