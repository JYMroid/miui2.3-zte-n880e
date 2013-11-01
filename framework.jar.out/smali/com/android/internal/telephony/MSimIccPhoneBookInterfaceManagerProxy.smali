.class public Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "MSimIccPhoneBookInterfaceManagerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSimIccPbkIntMngProxy"


# instance fields
.field private mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    const-string v1, "simphonebook"

    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    const-string v0, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "simphonebook"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->mPhone:[Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private getDefaultSubscription()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method private getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    .locals 7
    .parameter "subscription"

    .prologue
    const/4 v3, 0x0

    const-string v6, "MSimIccPbkIntMngProxy"

    const-string v5, "Exception is :"

    const-string v4, " For subscription :"

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object p0, v1, p1

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getIccPhoneBookInterfaceManagerProxy()Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
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
    const-string v1, "MSimIccPbkIntMngProxy"

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
    const-string v1, "MSimIccPbkIntMngProxy"

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
.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getAdnRecordsInEfOnSubscription(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdnRecordsInEfOnSubscription(II)Ljava/util/List;
    .locals 4
    .parameter "efid"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsInEfOnSubscription iccPbkIntMgrProxy isnull for Subscription:"

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

.method public getAdnRecordsSize(I)[I
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getAdnRecordsSizeOnSubscription(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getAdnRecordsSizeOnSubscription(II)[I
    .locals 4
    .parameter "efid"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAdnRecordsSize(I)[I

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

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

.method public getAnrRecordsSize(I)I
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getAnrRecordsSizeOnSubscription(II)I

    move-result v0

    return v0
.end method

.method public getAnrRecordsSizeOnSubscription(II)I
    .locals 4
    .parameter "efid"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAnrRecordsSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnrRecordsSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getEmailRecordsSize(I)I
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getEmailRecordsSizeOnSubscription(II)I

    move-result v0

    return v0
.end method

.method public getEmailRecordsSizeOnSubscription(II)I
    .locals 4
    .parameter "efid"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getEmailRecordsSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmailRecordsSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getExt1RecordsSize(I)I
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getExt1RecordsSizeOnSubscription(II)I

    move-result v0

    return v0
.end method

.method public getExt1RecordsSizeOnSubscription(II)I
    .locals 4
    .parameter "efid"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getExt1RecordsSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExt1RecordsSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getExtensionSize(I)I
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getExtensionSizeOnSubscription(II)I

    move-result v0

    return v0
.end method

.method public getExtensionSizeOnSubscription(II)I
    .locals 4
    .parameter "efid"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getExtensionSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExtensionSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getGetAdnFileld(I)I
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getGetAdnFileldOnSubscription(II)I

    move-result v0

    return v0
.end method

.method public getGetAdnFileldOnSubscription(II)I
    .locals 4
    .parameter "efid"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getGetAdnFileld(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnrRecordsSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSimCardType()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getSimCardTypeOnSubscription(I)Z

    move-result v0

    return v0
.end method

.method public getSimCardTypeOnSubscription(I)Z
    .locals 4
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getSimCardType()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnrRecordsSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

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

.method public getSimSize(I)I
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getSimSizeOnSubscription(II)I

    move-result v0

    return v0
.end method

.method public getSimSizeOnSubscription(II)I
    .locals 4
    .parameter "efid"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getSimSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSimTotalSize(I)I
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getSimTotalSizeOnSubscription(II)I

    move-result v0

    return v0
.end method

.method public getSimTotalSizeOnSubscription(II)I
    .locals 4
    .parameter "efid"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getSimTotalSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimTotalSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTagRecordsSize(I)I
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getTagRecordsSizeOnSubscription(II)I

    move-result v0

    return v0
.end method

.method public getTagRecordsSizeOnSubscription(II)I
    .locals 4
    .parameter "efid"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getTagRecordsSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTagRecordsSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getUsimAdnRecordsSize(I)I
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getUsimAdnRecordsSizeOnSubscription(II)I

    move-result v0

    return v0
.end method

.method public getUsimAdnRecordsSizeOnSubscription(II)I
    .locals 4
    .parameter "efid"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getUsimAdnRecordsSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsimAdnRecordsSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getUsimSize(I)I
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getUsimSizeOnSubscription(II)I

    move-result v0

    return v0
.end method

.method public getUsimSizeOnSubscription(II)I
    .locals 4
    .parameter "efid"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getUsimSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsimSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getsimcap(Ljava/lang/String;)Lcom/android/internal/telephony/simcap;
    .locals 1
    .parameter "srecid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getsimcapOnSubscription(Ljava/lang/String;I)Lcom/android/internal/telephony/simcap;

    move-result-object v0

    return-object v0
.end method

.method public getsimcapOnSubscription(Ljava/lang/String;I)Lcom/android/internal/telephony/simcap;
    .locals 4
    .parameter "srecid"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getsimcap(Ljava/lang/String;)Lcom/android/internal/telephony/simcap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnrRecordsSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

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

.method public hasloadcontacts()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->hasloadcontactsOnSubscription(I)Z

    move-result v0

    return v0
.end method

.method public hasloadcontactsOnSubscription(I)Z
    .locals 4
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->hasloadcontacts()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnrRecordsSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

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

.method public isSupportANR()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->isSupportANROnSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isSupportANROnSubscription(I)Z
    .locals 4
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->isSupportANR()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnrRecordsSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

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

.method public isSupportEmail()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->isSupportEmailOnSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isSupportEmailOnSubscription(I)Z
    .locals 4
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->isSupportEmail()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnrRecordsSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

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

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfBySearchOnSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfBySearchOnSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p7}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .local v0, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MSimIccPbkIntMngProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearchOnSubscription iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updatepbRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "oldEmail"
    .parameter "oldAnr"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmail"
    .parameter "newAnr"
    .parameter "srecid"
    .parameter "pin2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getDefaultSubscription()I

    move-result v12

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->updatepbRecordsInEfBySearchOnSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatepbRecordsInEfBySearchOnSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 14
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "oldEmail"
    .parameter "oldAnr"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmail"
    .parameter "newAnr"
    .parameter "srecid"
    .parameter "pin2"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move/from16 v1, p12

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v2

    .local v2, iccPbkIntMgrProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v2, :cond_0

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updatepbRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const-string v3, "MSimIccPbkIntMngProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAnrRecordsSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    goto :goto_0
.end method
