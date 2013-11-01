.class public Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "MSimPhoneSubInfoProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSimPhoneSubInfoProxy"


# instance fields
.field private mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    const-string v1, "iphonesubinfo"

    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->mPhone:[Lcom/android/internal/telephony/Phone;

    const-string v0, "iphonesubinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "iphonesubinfo"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method private getDefaultSubscription()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method private getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 7
    .parameter "subscription"

    .prologue
    const/4 v3, 0x0

    const-string v6, "MSimPhoneSubInfoProxy"

    const-string v5, "Exception is :"

    const-string v4, " For subscription :"

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object p0, v1, p1

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneSubInfoProxy()Lcom/android/internal/telephony/PhoneSubInfoProxy;
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
    const-string v1, "MSimPhoneSubInfoProxy"

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
    const-string v1, "MSimPhoneSubInfoProxy"

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
.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getCompleteVoiceMailNumberOnSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumberOnSubscription(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCompleteVoiceMailNumberOnSubscription phoneSubInfoProxy is null for Subscription:"

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

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getDeviceIdOnSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdOnSubscription(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceIdOnSubscription phoneSubInfoProxy is null for Subscription:"

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

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getDeviceSvnOnSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvnOnSubscription(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getDeviceSvn()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceSvnOnSubscription phoneSubInfoProxy is null for Subscription:"

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

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getIccSerialNumberOnSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumberOnSubscription(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccSerialNumberOnSubscription phoneSubInfoProxy is null for Subscription:"

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

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getLine1AlphaTagOnSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTagOnSubscription(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLine1AlphaTagOnSubscription phoneSubInfoProxy is null for Subscription:"

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

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getLine1NumberOnSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberOnSubscription(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLine1NumberOnSubscription phoneSubInfoProxy is null for Subscription:"

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

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getSubscriberIdOnSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdOnSubscription(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubscriberIdOnSubscription phoneSubInfoProxy is null for Subscription:"

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

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getVoiceMailAlphaTagOnSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagOnSubscription(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailAlphaTagOnSubscription phoneSubInfoProxy is null for Subscription:"

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

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getVoiceMailNumberOnSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberOnSubscription(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailNumberOnSubscription phoneSubInfoProxy is null for Subscription:"

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
