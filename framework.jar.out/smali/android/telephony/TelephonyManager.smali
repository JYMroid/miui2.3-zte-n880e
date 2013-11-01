.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DEFAULT_SUB:I = 0x0

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String; = null

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String; = null

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String; = null

.field public static final ICC_STATE_RUIM_CORPORATE_LOCKED:I = 0xe

.field public static final ICC_STATE_RUIM_HRPD_LOCKED:I = 0xd

.field public static final ICC_STATE_RUIM_NETWORK1_LOCKED:I = 0xb

.field public static final ICC_STATE_RUIM_NETWORK2_LOCKED:I = 0xc

.field public static final ICC_STATE_RUIM_RUIM_LOCKED:I = 0x10

.field public static final ICC_STATE_RUIM_SERVICE_PROVIDER_LOCKED:I = 0xf

.field public static final ICC_STATE_SIM_CORPORATE_LOCKED:I = 0x8

.field public static final ICC_STATE_SIM_NETWORK_SUBSET_LOCKED:I = 0x7

.field public static final ICC_STATE_SIM_SERVICE_PROVIDER_LOCKED:I = 0x9

.field public static final ICC_STATE_SIM_SIM_LOCKED:I = 0xa

.field private static final MAX_PHONE_COUNT_DS:I = 0x2

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x6

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static mPhoneCount:I

.field private static sInstance:Landroid/telephony/TelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput v0, Landroid/telephony/TelephonyManager;->mPhoneCount:I

    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    sput v0, Landroid/telephony/TelephonyManager;->mPhoneCount:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    return-void
.end method

.method public static getCurrentSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCurrentSubscriptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->UnPack(Landroid/os/Bundle;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    move-object v2, v3

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v2, v3

    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getDefaultSubscription()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDefaultSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    move v2, v3

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    move v2, v3

    goto :goto_0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneCount()I
    .locals 1

    .prologue
    sget v0, Landroid/telephony/TelephonyManager;->mPhoneCount:I

    return v0
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    const-string v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, mode:I
    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v0

    return v0
.end method

.method private getPhoneTypeFromProperty(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const-string v1, "gsm.current.phone-type"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, type:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v1

    goto :goto_0
.end method

.method public static getPreferredDataSubscription()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPreferredDataSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    move v2, v3

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    move v2, v3

    goto :goto_0
.end method

.method public static getPreferredVoiceSubscription()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPreferredVoiceSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    move v2, v3

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    move v2, v3

    goto :goto_0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "property"
    .parameter "index"
    .parameter "defaultVal"

    .prologue
    const/4 v1, 0x0

    .local v1, propVal:Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, prop:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, values:[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    aget-object v1, v2, p1

    .end local v2           #values:[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    move-object v3, p2

    :goto_0
    return-object v3

    :cond_1
    move-object v3, v1

    goto :goto_0
.end method

.method public static isMultiSimEnabled()Z
    .locals 2

    .prologue
    const-string v0, "persist.dsds.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setPreferredDataSubscription(I)Z
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->setPreferredDataSubscription(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    move v2, v3

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    move v2, v3

    goto :goto_0
.end method

.method public static setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .parameter "property"
    .parameter "index"
    .parameter "value"

    .prologue
    const-string v8, ","

    const-string v4, ""

    .local v4, propVal:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, p:[Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, prop:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v6, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_2

    const-string v5, ""

    .local v5, str:Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v6, v2

    if-ge v1, v6, :cond_1

    aget-object v5, v2, v1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v5           #str:Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_3

    add-int/lit8 v1, p1, 0x1

    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-static {p0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "TelephonyManager"

    const-string v7, "Propval length is greaterthan 91"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public disableLocationUpdates()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->disableLocationUpdates(I)V

    return-void
.end method

.method public disableLocationUpdates(I)V
    .locals 1
    .parameter "subscription"

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdatesOnSubscription(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->enableLocationUpdates(I)V

    return-void
.end method

.method public enableLocationUpdates(I)V
    .locals 1
    .parameter "subscription"

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdatesOnSubscription(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getActiveGateway(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;
    .locals 7
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v5, 0x0

    const-string v6, "TelephonyManager"

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/net/IPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getActiveGateway(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, gatewayAddr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "TelephonyManager"

    const-string v4, "gatewayAddr is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v5

    .end local v1           #gatewayAddr:Ljava/lang/String;
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-object v3

    .restart local v1       #gatewayAddr:Ljava/lang/String;
    .restart local v2       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    move-object v3, v1

    goto :goto_0

    .end local v1           #gatewayAddr:Ljava/lang/String;
    :cond_1
    move-object v3, v5

    goto :goto_0

    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, ex:Landroid/os/RemoteException;
    move-object v3, v5

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "TelephonyManager"

    const-string v3, "null pointer access"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    goto :goto_0
.end method

.method public getActiveInterfaceName(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;
    .locals 7
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v5, 0x0

    const-string v6, "TelephonyManager"

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/net/IPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getActiveInterfaceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, ifName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "TelephonyManager"

    const-string v4, "interface name is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v5

    .end local v1           #ifName:Ljava/lang/String;
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-object v3

    .restart local v1       #ifName:Ljava/lang/String;
    .restart local v2       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    move-object v3, v1

    goto :goto_0

    .end local v1           #ifName:Ljava/lang/String;
    :cond_1
    move-object v3, v5

    goto :goto_0

    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, ex:Landroid/os/RemoteException;
    move-object v3, v5

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "TelephonyManager"

    const-string v3, "null pointer access"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    goto :goto_0
.end method

.method public getActiveIpAddress(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;
    .locals 7
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v5, 0x0

    const-string v6, "TelephonyManager"

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/net/IPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getActiveIpAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, ipAddr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "TelephonyManager"

    const-string v4, "ipAddr is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v5

    .end local v1           #ipAddr:Ljava/lang/String;
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-object v3

    .restart local v1       #ipAddr:Ljava/lang/String;
    .restart local v2       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    move-object v3, v1

    goto :goto_0

    .end local v1           #ipAddr:Ljava/lang/String;
    :cond_1
    move-object v3, v5

    goto :goto_0

    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, ex:Landroid/os/RemoteException;
    move-object v3, v5

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "TelephonyManager"

    const-string v3, "null pointer access"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    goto :goto_0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public getCallState(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCallStateOnSubscription(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, -0x1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndexOnSubscription(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    goto :goto_0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, -0x1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconModeOnSubscription(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    goto :goto_0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriTextOnSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 5
    .parameter "subscription"

    .prologue
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getCellLocationOnSubscription(I)Landroid/os/Bundle;

    move-result-object v0

    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v4

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :goto_0
    return-object v3

    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #cl:Landroid/telephony/CellLocation;
    :cond_0
    move-object v3, v1

    goto :goto_0

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, ex:Landroid/os/RemoteException;
    move-object v3, v4

    goto :goto_0

    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .local v2, ex:Ljava/lang/NullPointerException;
    move-object v3, v4

    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumberOnSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceIdOnSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvnOnSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTagOnSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberOnSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfo(I)Ljava/util/List;
    .locals 3
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfoOnSubscription(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    const-string v0, "gsm.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    const-string v0, "gsm.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    const-string v0, "gsm.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPreferredDataSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getNetworkType(I)I
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeOnSubscription(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    move v2, v3

    goto :goto_0

    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    move v2, v3

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    move v2, v3

    goto :goto_0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPreferredDataSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "GPRS"

    goto :goto_0

    :pswitch_2
    const-string v0, "EDGE"

    goto :goto_0

    :pswitch_3
    const-string v0, "UMTS"

    goto :goto_0

    :pswitch_4
    const-string v0, "HSDPA"

    goto :goto_0

    :pswitch_5
    const-string v0, "HSUPA"

    goto :goto_0

    :pswitch_6
    const-string v0, "HSPA"

    goto :goto_0

    :pswitch_7
    const-string v0, "CDMA"

    goto :goto_0

    :pswitch_8
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    :pswitch_9
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    :pswitch_a
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    :pswitch_b
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    :pswitch_c
    const-string v0, "CDMA - EHRPD"

    goto :goto_0

    :pswitch_d
    const-string v0, "LTE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public getPesnFromCard()Ljava/lang/String;
    .locals 2

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPesnFromCard()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "RemoteException"

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "NullPointerException"

    goto :goto_0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getPhoneType(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeOnSubscription(I)I

    move-result v2

    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    const-string v0, "gsm.sim.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    const-string v0, "gsm.sim.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberOnSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public getSimState()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSimState(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    const-string v1, "gsm.sim.state"

    const-string v2, ""

    invoke-static {v1, p1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, prop:Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    goto :goto_0

    :cond_4
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    goto :goto_0

    :cond_5
    const-string v1, "SIM_NETWORK_SUBSET_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    goto :goto_0

    :cond_6
    const-string v1, "SIM_CORPORATE_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    goto :goto_0

    :cond_7
    const-string v1, "SIM_SERVICE_PROVIDER_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    goto :goto_0

    :cond_8
    const-string v1, "SIM_SIM_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    goto :goto_0

    :cond_9
    const-string v1, "RUIM_NETWORK1_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    goto :goto_0

    :cond_a
    const-string v1, "RUIM_NETWORK2_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    goto :goto_0

    :cond_b
    const-string v1, "RUIM_HRPD_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xd

    goto :goto_0

    :cond_c
    const-string v1, "RUIM_CORPORATE_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0xe

    goto/16 :goto_0

    :cond_d
    const-string v1, "RUIM_SERVICE_PROVIDER_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0xf

    goto/16 :goto_0

    :cond_e
    const-string v1, "RUIM_RUIM_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0x10

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdOnSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTagOnSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumberOnSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount(I)I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCount(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountOnSubscription(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardOnSubscription(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 7
    .parameter "listener"
    .parameter "events"

    .prologue
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, pkgForDebug:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .local v6, notifyNow:Ljava/lang/Boolean;
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v2, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget v5, p1, Landroid/telephony/PhoneStateListener;->mSubscription:I

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listenOnSubscription(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #notifyNow:Ljava/lang/Boolean;
    :goto_2
    return-void

    .end local v1           #pkgForDebug:Ljava/lang/String;
    :cond_0
    const-string v0, "<unknown>"

    move-object v1, v0

    goto :goto_0

    .restart local v1       #pkgForDebug:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public setPesnToCard([B)Z
    .locals 4
    .parameter "pesn"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setPesnToCard([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    move v2, v3

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    move v2, v3

    goto :goto_0
.end method
