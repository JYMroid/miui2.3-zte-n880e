.class public Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;
.super Lcom/android/internal/telephony/ISms$Stub;
.source "MSimIccSmsInterfaceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_MSimIccSms"


# instance fields
.field protected mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method protected constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    const-string v1, "isms"

    invoke-direct {p0}, Lcom/android/internal/telephony/ISms$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->mPhone:[Lcom/android/internal/telephony/Phone;

    const-string v0, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "isms"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method private getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 7
    .parameter "subscription"

    .prologue
    const/4 v3, 0x0

    const-string v6, "RIL_MSimIccSms"

    const-string v5, "Exception is :"

    const-string v4, " For subscription :"

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object p0, v1, p1

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "RIL_MSimIccSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception is :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " For subscription :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v1, v3

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "RIL_MSimIccSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception is :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " For subscription :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    move-object v1, v3

    goto :goto_0
.end method


# virtual methods
.method public copyMessageToIccEf(I[B[B)Z
    .locals 3
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    const-string v0, "RIL_MSimIccSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyMessageToIccEf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->copyMessageToIccEfOnSubscription(I[B[BI)Z

    move-result v0

    return v0
.end method

.method public copyMessageToIccEfOnSubscription(I[B[BI)Z
    .locals 4
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(I[B[B)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEfOnSubscription iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableCdmaBroadcast(I)Z
    .locals 1
    .parameter "messageIdentifier"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->disableCdmaBroadcast(II)Z

    move-result v0

    return v0
.end method

.method public disableCdmaBroadcast(II)Z
    .locals 4
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCdmaBroadcast(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableCdmaBroadcast iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableCellBroadcast(I)Z
    .locals 1
    .parameter "messageIdentifier"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->disableCellBroadcastOnSubscription(II)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastOnSubscription(II)Z
    .locals 1
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->disableCellBroadcastRangeOnSubscription(III)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 1
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->disableCellBroadcastRangeOnSubscription(III)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRangeOnSubscription(III)Z
    .locals 4
    .parameter "startMessageId"
    .parameter "endMessageId"
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcastRange(II)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableCellBroadcast iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableCdmaBroadcast(I)Z
    .locals 1
    .parameter "messageIdentifier"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->enableCdmaBroadcast(II)Z

    move-result v0

    return v0
.end method

.method public enableCdmaBroadcast(II)Z
    .locals 4
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCdmaBroadcast(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCdmaBroadcast iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableCellBroadcast(I)Z
    .locals 1
    .parameter "messageIdentifier"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->enableCellBroadcastOnSubscription(II)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastOnSubscription(II)Z
    .locals 1
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->enableCellBroadcastRangeOnSubscription(III)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 1
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->enableCellBroadcastRangeOnSubscription(III)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRangeOnSubscription(III)Z
    .locals 4
    .parameter "startMessageId"
    .parameter "endMessageId"
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcastRange(II)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCellBroadcast iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected enforceReceiveAndSend(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->enforceReceiveAndSendOnSubscription(Ljava/lang/String;I)V

    return-void
.end method

.method protected enforceReceiveAndSendOnSubscription(Ljava/lang/String;I)V
    .locals 4
    .parameter "message"
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enforceReceiveAndSendOnSubscription iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAllMessagesFromIccEf()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getAllMessagesFromIccEfOnSubscription(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllMessagesFromIccEfOnSubscription(I)Ljava/util/List;
    .locals 4
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllMessagesFromIccEfOnSubscription iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPreferredSmsSubscription()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSMSSubscription()I

    move-result v0

    return v0
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getPreferredSmsSubscription()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->sendDataOnSubscription(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public sendDataOnSubscription(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p7}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDataOnSubscription iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object v0, p3

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, p4

    check-cast v0, Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, p5

    check-cast v0, Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getPreferredSmsSubscription()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->sendMultipartTextOnSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public sendMultipartTextOnSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMultipartTextOnSubscription iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartTextOnSubscriptionPriority(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILandroid/os/Bundle;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "subscription"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextPriority(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMultipartTextOnSubscription iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartTextOnSubscriptionVP(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;II)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "subscription"
    .parameter "validityPeriod"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p3, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    const-string v3, "RIL_MSimIccSms"

    const-string v1, "RIL_MSimIccSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validityPeriod : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p6}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMultipartTextOnSubscription iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendRgDataOnSubscription(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendRgData(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDataOnSubscription iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getPreferredSmsSubscription()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->sendTextOnSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public sendTextOnSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextOnSubscription iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextOnSubscriptionPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ILandroid/os/Bundle;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"
    .parameter "extra"

    .prologue
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextOnSubscription iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextOnSubscriptionVP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;II)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "subscription"
    .parameter "validityPeriod"

    .prologue
    const-string v3, "RIL_MSimIccSms"

    const-string v1, "RIL_MSimIccSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validityPeriod : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p6}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextOnSubscription iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateMessageOnIccEf(II[B)Z
    .locals 1
    .parameter "index"
    .parameter "status"
    .parameter "pdu"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->updateMessageOnIccEfOnSubscription(II[BI)Z

    move-result v0

    return v0
.end method

.method public updateMessageOnIccEfOnSubscription(II[BI)Z
    .locals 4
    .parameter "index"
    .parameter "status"
    .parameter "pdu"
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .local v0, iccSmsIntMgr:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(II[B)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "RIL_MSimIccSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMessageOnIccEfOnSubscription iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
