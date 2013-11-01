.class public Lcom/android/internal/telephony/ProxyManager;
.super Landroid/os/Handler;
.source "ProxyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ProxyManager$1;,
        Lcom/android/internal/telephony/ProxyManager$Subscription;,
        Lcom/android/internal/telephony/ProxyManager$SubscriptionData;,
        Lcom/android/internal/telephony/ProxyManager$SetDdsResult;,
        Lcom/android/internal/telephony/ProxyManager$SupplySubscription;,
        Lcom/android/internal/telephony/ProxyManager$CardInfo;
    }
.end annotation


# static fields
.field static final EVENT_ALL_DATA_DISCONNECTED:I = 0xf

.field static final EVENT_CLEANUP_DATA_CONNECTION_DONE:I = 0xb

.field static final EVENT_DISABLE_DATA_CONNECTION_DONE:I = 0x5

.field static final EVENT_GET_ICCID_DONE:I = 0x6

.field static final EVENT_GET_IMSI_DONE:I = 0x2d

.field static final EVENT_ICC_CHANGED:I = 0x3

.field static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x7

.field static final EVENT_RADIO_ON:I = 0x8

.field static final EVENT_SET_DATA_SUBSCRIPTION_DONE:I = 0x2

.field static final EVENT_SET_SUBSCRIPTION_COMPLETED:I = 0xd

.field static final EVENT_SET_SUBSCRIPTION_MODE_DONE:I = 0x4

.field static final EVENT_SET_UICC_SUBSCRIPTION_DONE:I = 0x1

.field static final EVENT_SIM_REFRESH:I = 0xa

.field static final EVENT_SUBSCRIPTION_STATUS_CHANGED:I = 0x9

.field static final EVENT_UPDATE_UICC_STATUS:I = 0xc

.field static final LOG_TAG:Ljava/lang/String; = "PROXY"

.field private static final NUM_SUBSCRIPTIONS:I = 0x2

.field private static final PROMPT_VALUE:I = 0x0

.field public static final SUB1_STATE_KEY:Ljava/lang/String; = "sub1_state"

.field public static final SUB2_STATE_KEY:Ljava/lang/String; = "sub2_state"

.field public static final SUBSCRIPTION_INDEX_INVALID:I = 0x1869f

.field public static final SUB_ACTIVATE:I = 0x1

.field public static final SUB_ACTIVATED:I = 0x2

.field public static final SUB_ACTIVATE_FAILED:Ljava/lang/String; = "ACTIVATE FAILED"

.field public static final SUB_ACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "ACTIVATE NOT SUPPORTED"

.field public static final SUB_ACTIVATE_SUCCESS:Ljava/lang/String; = "ACTIVATE SUCCESS"

.field public static final SUB_DEACTIVATE:I = 0x0

.field public static final SUB_DEACTIVATED:I = 0x3

.field public static final SUB_DEACTIVATE_FAILED:Ljava/lang/String; = "DEACTIVATE FAILED"

.field public static final SUB_DEACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "DEACTIVATE NOT SUPPORTED"

.field public static final SUB_DEACTIVATE_SUCCESS:Ljava/lang/String; = "DEACTIVATE SUCCESS"

.field public static final SUB_INVALID:I = 0x4

.field public static final SUB_NOT_CHANGED:Ljava/lang/String; = "NO CHANGE IN SUBSCRIPTION"

.field public static mdcData_done:Z

.field private static sProxyManager:Lcom/android/internal/telephony/ProxyManager;


# instance fields
.field data:[B

.field private mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentDds:I

.field private mDdsSet:Z

.field private mDisableDdsInProgress:Z

.field private mMSimIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;

.field private mMSimIccSmsInterfaceManager:Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;

.field private mMSimPhoneSubInfoProxy:Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;

.field private mProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private mQueuedDds:I

.field private mRadioOn:[Z

.field private mSetDdsCompleteMsg:Landroid/os/Message;

.field private mSetSubscriptionInProgress:Z

.field private mSetSubscriptionMode:Z

.field private mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

.field private mSimStateRegistrants:Landroid/os/RegistrantList;

.field private mSubscriptionReady:[Z

.field private mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

.field private mUiccCardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ProxyManager$CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccManager:Lcom/android/internal/telephony/UiccManager;

.field private mUpdateUiccStatusContext:I

.field private mUserDefaultSubs:[Ljava/lang/String;

.field private mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/ProxyManager;->mdcData_done:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 10
    .parameter "context"
    .parameter "phoneProxy"
    .parameter "uiccManager"
    .parameter "ci"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    const-string v9, "PROXY"

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "USIM"

    aput-object v4, v3, v6

    const-string v4, "USIM"

    aput-object v4, v3, v8

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mUserDefaultSubs:[Ljava/lang/String;

    iput-boolean v6, p0, Lcom/android/internal/telephony/ProxyManager;->mDdsSet:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/ProxyManager;->mDisableDdsInProgress:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionMode:Z

    new-array v3, v5, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mSubscriptionReady:[Z

    iput-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iput-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iput-boolean v6, p0, Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionInProgress:Z

    new-array v3, v5, [Z

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mRadioOn:[Z

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mSimStateRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    iput v6, p0, Lcom/android/internal/telephony/ProxyManager;->mUpdateUiccStatusContext:I

    const-string v3, "PROXY"

    const-string v3, "Creating ProxyManager"

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/ProxyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyManager;->getDefaultProperties(Landroid/content/Context;)V

    new-instance v3, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mMSimIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/MSimIccPhoneBookInterfaceManagerProxy;

    new-instance v3, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mMSimPhoneSubInfoProxy:Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;

    new-instance v3, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mMSimIccSmsInterfaceManager:Lcom/android/internal/telephony/MSimIccSmsInterfaceManager;

    iput-object p3, p0, Lcom/android/internal/telephony/ProxyManager;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/4 v4, 0x3

    invoke-virtual {v3, p0, v4, v7}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object p4, p0, Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v3, v5, [Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    invoke-direct {v4, p0, v7}, Lcom/android/internal/telephony/ProxyManager$CardInfo;-><init>(Lcom/android/internal/telephony/ProxyManager;Lcom/android/internal/telephony/UiccCard;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyManager;->getUserPreferredSubs()V

    new-instance v3, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;-><init>(Lcom/android/internal/telephony/ProxyManager;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    .local v2, sub:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x9

    invoke-interface {v3, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .local v1, slot:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0xa

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/4 v4, 0x7

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x8

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #slot:Ljava/lang/Integer;
    .end local v2           #sub:Ljava/lang/Integer;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDataSubscription()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    const-string v3, "PROXY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In ProxyManager constructor current active dds is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #i:I
    :cond_2
    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/ProxyManager;ILcom/android/internal/telephony/ProxyManager$Subscription;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ProxyManager;->saveUserPreferredSubscription(ILcom/android/internal/telephony/ProxyManager$Subscription;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/ProxyManager;Lcom/android/internal/telephony/ProxyManager$SubscriptionData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyManager;->updateSubPreferences(Lcom/android/internal/telephony/ProxyManager$SubscriptionData;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/ProxyManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionMode:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/telephony/ProxyManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionMode:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/ProxyManager;)Landroid/os/RegistrantList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/ProxyManager;)[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/ProxyManager;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mSubscriptionReady:[Z

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/ProxyManager;)[Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/ProxyManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/ProxyManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    return p1
.end method

.method private appTypetoString(Lcom/android/internal/telephony/UiccConstants$AppType;)Ljava/lang/String;
    .locals 3
    .parameter "p"

    .prologue
    const-string v2, "UNKNOWN"

    sget-object v0, Lcom/android/internal/telephony/ProxyManager$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/UiccConstants$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    move-object v0, v2

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "UNKNOWN"

    move-object v0, v2

    goto :goto_0

    :pswitch_1
    const-string v0, "SIM"

    goto :goto_0

    :pswitch_2
    const-string v0, "USIM"

    goto :goto_0

    :pswitch_3
    const-string v0, "RUIM"

    goto :goto_0

    :pswitch_4
    const-string v0, "CSIM"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private compareAndUpdateCardSubData()Z
    .locals 13

    .prologue
    const/4 v5, 0x0

    .local v5, cardsUpdated:Z
    const/4 v1, 0x0

    .local v1, cardIndex:I
    :goto_0
    const/4 v11, 0x2

    if-ge v1, v11, :cond_f

    const/4 v3, 0x0

    .local v3, cardState:Lcom/android/internal/telephony/UiccConstants$CardState;
    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    .local v2, cardInfo:Lcom/android/internal/telephony/ProxyManager$CardInfo;
    const/4 v9, 0x0

    .local v9, uiccCard:Lcom/android/internal/telephony/UiccCard;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v9

    :cond_0
    if-eqz v9, :cond_1

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mRadioOn:[Z

    aget-boolean v11, v11, v1

    if-nez v11, :cond_4

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "compareAndUpdateCardSubData(): mRadioOn["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/ProxyManager;->mRadioOn:[Z

    aget-boolean v12, v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "compareAndUpdateCardSubData(): NO Card!!!!! at index : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v11, v11, v1

    if-eqz v11, :cond_2

    const/4 v5, 0x1

    :cond_2
    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    const/4 v12, 0x0

    aput-object v12, v11, v1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "compareAndUpdateCardSubData(): cardIndex = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cardInfo = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    const/4 v6, 0x0

    .local v6, numApps:I
    sget-object v11, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v3, v11, :cond_5

    invoke-virtual {v9}, Lcom/android/internal/telephony/UiccCard;->getNumApplications()I

    move-result v6

    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "compareAndUpdateCardSubData(): Number of apps : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    sget-object v11, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v3, v11, :cond_e

    invoke-virtual {v2}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_e

    if-lez v6, :cond_e

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "compareAndUpdateCardSubData(): mCardSubData["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v12, v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v11, v11, v1

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v11, v11, v1

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v11, v11, v1

    invoke-virtual {v11}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getIccId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v12

    if-eq v11, v12, :cond_3

    :cond_6
    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mSimStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "compareAndUpdateCardSubData(): New card, update card info at index = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    new-instance v12, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    invoke-direct {v12, v6}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;-><init>(I)V

    aput-object v12, v11, v1

    const/4 v0, 0x0

    .local v0, appIndex:I
    :goto_2
    if-ge v0, v6, :cond_9

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v11, v11, v1

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v4, v11, v0

    .local v4, cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/UiccCard;->getUiccCardApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v10

    .local v10, uiccCardApplication:Lcom/android/internal/telephony/UiccCardApplication;
    iput v1, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    const v11, 0x1869f

    iput v11, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    const/4 v11, 0x4

    iput v11, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    invoke-virtual {v10}, Lcom/android/internal/telephony/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/internal/telephony/UiccCardApplication;->getAppLabel()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v8

    .local v8, type:Lcom/android/internal/telephony/UiccConstants$AppType;
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->appTypetoString(Lcom/android/internal/telephony/UiccConstants$AppType;)Ljava/lang/String;

    move-result-object v7

    .local v7, subAppType:Ljava/lang/String;
    const-string v11, "UNKNOWN"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    iput-object v7, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    :goto_3
    invoke-virtual {v10}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v11, v12, :cond_7

    const-string v11, "*************************************************************************************"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->loge(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AppState of the UiccCardApplication @ cardIndex:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " appIndex:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is APPSTATE_READY!!!!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->loge(Ljava/lang/String;)V

    const-string v11, "Android expectes APPSTATE_DETECTED before selecting the subscriptions!!!!!"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->loge(Ljava/lang/String;)V

    const-string v11, "WARNING!!! Please configure the NV items properly to select the subscriptions from UI"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->loge(Ljava/lang/String;)V

    const-string v11, "*************************************************************************************"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->loge(Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/ProxyManager;->fillAppIndex(Lcom/android/internal/telephony/ProxyManager$Subscription;I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_8
    const/4 v11, 0x0

    iput-object v11, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    const-string v11, "compareAndUpdateCardSubData(): UNKNOWN APP"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    goto :goto_3

    .end local v4           #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    .end local v7           #subAppType:Ljava/lang/String;
    .end local v8           #type:Lcom/android/internal/telephony/UiccConstants$AppType;
    .end local v10           #uiccCardApplication:Lcom/android/internal/telephony/UiccCardApplication;
    :cond_9
    const/4 v5, 0x1

    const/4 v11, 0x1

    if-ne v11, v6, :cond_d

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v11, v11, v1

    iget-object v11, v11, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    const/4 v12, 0x0

    aget-object v4, v11, v12

    .restart local v4       #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    if-nez v1, :cond_b

    iget-object v11, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    const-string v12, "SIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    const-string v12, "USIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    :cond_a
    const-string v11, "compareAndUpdateCardSubData(): slot0:SIM or USIM"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    const/4 v12, 0x0

    aput-object v12, v11, v1

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mSimStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    :cond_b
    const/4 v11, 0x1

    if-ne v11, v1, :cond_3

    iget-object v11, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    const-string v12, "RUIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    iget-object v11, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    const-string v12, "CSIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_c
    const-string v11, "compareAndUpdateCardSubData(): slot1:RUIM or CSIM"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    const/4 v12, 0x0

    aput-object v12, v11, v1

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mSimStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .end local v4           #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_d
    const/4 v11, 0x2

    if-ne v11, v6, :cond_3

    const/4 v11, 0x1

    if-ne v11, v1, :cond_3

    const-string v11, "compareAndUpdateCardSubData(): slot1 multi card!"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    const/4 v12, 0x0

    aput-object v12, v11, v1

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mSimStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .end local v0           #appIndex:I
    :cond_e
    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    const/4 v12, 0x0

    aput-object v12, v11, v1

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mSimStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .end local v2           #cardInfo:Lcom/android/internal/telephony/ProxyManager$CardInfo;
    .end local v3           #cardState:Lcom/android/internal/telephony/UiccConstants$CardState;
    .end local v6           #numApps:I
    .end local v9           #uiccCard:Lcom/android/internal/telephony/UiccCard;
    :cond_f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "compareAndUpdateCardSubData(): cardsUpdated = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "compareAndUpdateCardSubData(): mCardSubData = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    return v5
.end method

.method private fillAppIndex(Lcom/android/internal/telephony/ProxyManager$Subscription;I)V
    .locals 3
    .parameter "cardSub"
    .parameter "appIndex"

    .prologue
    const v2, 0x1869f

    iget-object v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-nez v0, :cond_1

    iput v2, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iput v2, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    const-string v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iput p2, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iput v2, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    const-string v1, "RUIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    const-string v1, "CSIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    iput v2, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iput p2, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    goto :goto_0
.end method

.method private getDefaultProperties(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const-string v13, "multi_sim_sms"

    const-string v12, "multi_sim_data_call"

    const-string v11, "default_subscription"

    const-string v10, "PROXY"

    const/4 v2, 0x1

    .local v2, resetToDefault:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "multi_sim_voice_call"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    .local v5, voiceSubscription:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "multi_sim_data_call"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .local v0, dataSubscription:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "multi_sim_sms"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .local v3, smsSubscription:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "default_subscription"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .local v1, defaultSubscription:I
    const-string v6, "PROXY"

    const-string v7, "Dual Sim Settings from Settings Provider :"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PROXY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "voiceSubscription = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dataSubscription = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " smsSubscription = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " defaultSubscription = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .end local v0           #dataSubscription:I
    .end local v1           #defaultSubscription:I
    .end local v3           #smsSubscription:I
    .end local v5           #voiceSubscription:I
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "multi_sim_voice_call"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "multi_sim_data_call"

    invoke-static {v6, v12, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "multi_sim_sms"

    invoke-static {v6, v13, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "default_subscription"

    invoke-static {v6, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "multi_sim_voice_prompt"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void

    :catch_0
    move-exception v6

    move-object v4, v6

    .local v4, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "PROXY"

    const-string v6, "Settings Exception Reading Voice/Sms/Data/Default Subscriptions"

    invoke-static {v10, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/ProxyManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/ProxyManager;->sProxyManager:Lcom/android/internal/telephony/ProxyManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ProxyManager;
    .locals 2
    .parameter "context"
    .parameter "phoneProxy"
    .parameter "uiccMgr"
    .parameter "ci"

    .prologue
    const-string v0, "PROXY"

    const-string v1, "In ProxyManager getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/ProxyManager;->sProxyManager:Lcom/android/internal/telephony/ProxyManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/ProxyManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/ProxyManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ProxyManager;->sProxyManager:Lcom/android/internal/telephony/ProxyManager;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ProxyManager;->sProxyManager:Lcom/android/internal/telephony/ProxyManager;

    return-object v0
.end method

.method private getMatchedUserPrefSubs()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .locals 11

    .prologue
    const/4 v8, 0x2

    const-string v10, "getMatchedUserPrefSubs(): UserPrefSubs at subId = "

    const-string v9, "] = "

    const/4 v0, 0x0

    .local v0, cardIndex:I
    new-instance v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    invoke-direct {v3, v8}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;-><init>(I)V

    .local v3, matchedSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    const-string v5, "getMatchedUserPrefSubs(): Enter"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_b

    iget-object v5, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v5, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v4, v5, v2

    .local v4, userSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMatchedUserPrefSubs(): Compare for UserPrefSubs["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget v5, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    if-eq v5, v8, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMatchedUserPrefSubs(): UserPrefSubs at subId = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Not required to activate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_9

    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v5

    const v6, 0x1869f

    if-eq v5, v6, :cond_a

    iget-object v5, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v5, v5, v0

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_a

    iget-object v5, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v6

    aget-object v1, v5, v6

    .local v1, cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    iget-object v5, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_3
    iget-object v5, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-nez v5, :cond_4

    iget-object v5, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-eqz v5, :cond_5

    :cond_4
    iget-object v5, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_5
    iget-object v5, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-nez v5, :cond_6

    iget-object v5, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-eqz v5, :cond_7

    :cond_6
    iget-object v5, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_7
    iget-object v5, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v5, v5, v2

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/ProxyManager$Subscription;->copyFrom(Lcom/android/internal/telephony/ProxyManager$Subscription;)Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget-object v5, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v5, v5, v2

    const/4 v6, 0x1

    iput v6, v5, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iget-object v5, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v5, v5, v2

    iput v2, v5, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    iget-object v5, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v5, v5, v2

    iget v6, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iput v6, v5, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget-object v5, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v5, v5, v2

    iget v6, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iput v6, v5, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iget-object v5, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v5, v5, v2

    iget v6, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iput v6, v5, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iget-object v5, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v5, v5, v2

    new-instance v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMatchedUserPrefSubs(): UserPrefSubs at subId = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " matches with : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " matchedSub.subscription["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    .end local v1           #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_9
    if-lt v0, v8, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMatchedUserPrefSubs(): No match for UserPrefSubs at subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .end local v4           #userSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMatchedUserPrefSubs(): matchedSub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    return-object v3
.end method

.method private getMatchedUserPrefSubsElseDefaultFromCard()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .locals 13

    .prologue
    const/4 v0, 0x0

    .local v0, cardIndex:I
    const/4 v7, 0x0

    .local v7, slot0Sub1Match:Z
    new-instance v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    const/4 v10, 0x2

    invoke-direct {v6, v10}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;-><init>(I)V

    .local v6, matchedSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    const-string v10, "getMatchedUserPrefSubsElseDefaultFromCard(): Enter"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/4 v10, 0x2

    if-ge v4, v10, :cond_17

    const/4 v8, 0x1

    .local v8, useDataInCard:Z
    iget-object v10, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v10, v10, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v9, v10, v4

    .local v9, userSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMatchedUserPrefSubsElseDefaultFromCard(): Compare for UserPrefSubs["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    const/4 v10, 0x2

    if-ge v0, v10, :cond_15

    const v3, 0x1869f

    .local v3, cardsubdataIndex:I
    iget-object v10, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v10, v10, v0

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v10

    if-lez v10, :cond_9

    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v10

    if-ge v5, v10, :cond_9

    iget-object v10, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v10, v10, v0

    iget-object v10, v10, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v1, v10, v5

    .local v1, cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    iget-object v10, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-nez v10, :cond_0

    iget-object v10, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-eqz v10, :cond_1

    :cond_0
    iget-object v10, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-eqz v10, :cond_c

    iget-object v10, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_1
    iget-object v10, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-nez v10, :cond_2

    iget-object v10, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-eqz v10, :cond_3

    :cond_2
    iget-object v10, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-eqz v10, :cond_c

    iget-object v10, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_3
    iget-object v10, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-nez v10, :cond_4

    iget-object v10, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-eqz v10, :cond_5

    :cond_4
    iget-object v10, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-eqz v10, :cond_c

    iget-object v10, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_5
    const/4 v8, 0x0

    if-nez v0, :cond_7

    iget-object v10, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    const-string v11, "SIM"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    const-string v11, "USIM"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    const/4 v7, 0x1

    const-string v10, "getMatchedUserPrefSubsElseDefaultFromCard(): notifyModeChoiceDialog()"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ProxyManager;->notifyModeChoiceDialog()V

    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMatchedUserPrefSubsElseDefaultFromCard(): subscription = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", slot = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    invoke-virtual {v10, v9}, Lcom/android/internal/telephony/ProxyManager$Subscription;->copyFrom(Lcom/android/internal/telephony/ProxyManager$Subscription;)Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget v10, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    const v11, 0x1869f

    if-ne v10, v11, :cond_b

    iget v10, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    const v11, 0x1869f

    if-ne v10, v11, :cond_b

    iget v10, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_b

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    const/4 v11, 0x3

    iput v11, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    iput v4, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    iget v11, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iput v11, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    iget v11, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iput v11, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    iget v11, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iput v11, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    iget-object v11, v9, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    iput-object v11, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    :cond_8
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMatchedUserPrefSubsElseDefaultFromCard(): UserPrefSubs at subId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " matches with : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " matchedSub.subscription["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    .end local v1           #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    .end local v5           #j:I
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMatchedUserPrefSubsElseDefaultFromCard(): useDataInCard = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    if-eqz v8, :cond_f

    iget-object v10, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v10, v10, v0

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v10

    if-lez v10, :cond_f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMatchedUserPrefSubsElseDefaultFromCard(): cardIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",i="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    if-nez v0, :cond_10

    if-nez v4, :cond_10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMatchedUserPrefSubsElseDefaultFromCard(): length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_4
    iget-object v10, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v10

    if-ge v5, v10, :cond_d

    iget-object v10, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v10, v10, v0

    iget-object v10, v10, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v5

    iget v10, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    const v11, 0x1869f

    if-eq v10, v11, :cond_a

    move v3, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMatchedUserPrefSubsElseDefaultFromCard(): cardsubdataIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .restart local v1       #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_b
    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    const/4 v11, 0x1

    iput v11, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    iput v4, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    iget v11, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iput v11, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    iget v11, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iput v11, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    iget v11, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iput v11, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iget-object v10, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    if-eqz v10, :cond_8

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    new-instance v11, Ljava/lang/String;

    iget-object v12, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v11, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .end local v1           #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_d
    const-string v10, "getMatchedUserPrefSubsElseDefaultFromCard(): sub=0 and slot=0"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    .end local v5           #j:I
    :cond_e
    :goto_5
    const v10, 0x1869f

    if-ne v3, v10, :cond_14

    const-string v10, "getMatchedUserPrefSubsElseDefaultFromCard(): cardsubdataIndex == SUBSCRIPTION_INDEX_INVALID"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    :cond_f
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_10
    const/4 v10, 0x1

    if-ne v10, v0, :cond_e

    const/4 v10, 0x1

    if-ne v10, v4, :cond_e

    const/4 v10, 0x1

    if-ne v7, v10, :cond_11

    const-string v10, "getMatchedUserPrefSubs(): slot0 is MultiCard,user choose GSM, so slot1 is invalid."

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_7
    iget-object v10, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v10

    if-ge v5, v10, :cond_13

    iget-object v10, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v10, v10, v0

    iget-object v10, v10, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v5

    iget v10, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    const v11, 0x1869f

    if-eq v10, v11, :cond_12

    move v3, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMatchedUserPrefSubsElseDefaultFromCard(): cardsubdataIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_13
    const-string v10, "getMatchedUserPrefSubsElseDefaultFromCard(): sub=1 and slot=1"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    goto :goto_5

    .end local v5           #j:I
    :cond_14
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMatchedUserPrefSubsElseDefaultFromCard(): mCardSubData["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "].subscription["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v10, v10, v0

    iget-object v10, v10, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v2, v10, v3

    .local v2, cardSubTemp1:Lcom/android/internal/telephony/ProxyManager$Subscription;
    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    invoke-virtual {v10, v2}, Lcom/android/internal/telephony/ProxyManager$Subscription;->copyFrom(Lcom/android/internal/telephony/ProxyManager$Subscription;)Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    const/4 v11, 0x1

    iput v11, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    iput v4, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    iget v11, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iput v11, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    iget v11, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iput v11, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    iget v11, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iput v11, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iget-object v10, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    if-eqz v10, :cond_f

    iget-object v10, v6, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v10, v10, v4

    new-instance v11, Ljava/lang/String;

    iget-object v12, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v11, v10, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    goto/16 :goto_6

    .end local v2           #cardSubTemp1:Lcom/android/internal/telephony/ProxyManager$Subscription;
    .end local v3           #cardsubdataIndex:I
    :cond_15
    const/4 v10, 0x2

    if-lt v0, v10, :cond_16

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMatchedUserPrefSubsElseDefaultFromCard(): No match for UserPrefSubs at subId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .end local v8           #useDataInCard:Z
    .end local v9           #userSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_17
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMatchedUserPrefSubsElseDefaultFromCard(): matchedSub = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    return-object v6
.end method

.method private getMatchedUserPrefSubsOrMakeDefault()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .local v0, cardIndex:I
    const/4 v6, 0x0

    .local v6, subIndex:I
    const v2, 0x1869f

    .local v2, cardsubdataIndex:I
    new-instance v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    const/4 v8, 0x2

    invoke-direct {v5, v8}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;-><init>(I)V

    .local v5, matchedSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    const-string v8, "getMatchedUserPrefSubsOrMakeDefault(): Enter"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v8, 0x2

    if-ge v0, v8, :cond_14

    const/4 v3, 0x1

    .local v3, defaultNeeded:Z
    move v6, v0

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v8, v6

    .local v7, userSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMatchedUserPrefSubsOrMakeDefault(): subIndex "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- iccId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- appType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- appId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- appType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- m3gppIndex "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- m3gpp2Index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v8, v8, v0

    if-eqz v8, :cond_12

    invoke-virtual {v7}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v8

    const v9, 0x1869f

    if-eq v8, v9, :cond_0

    invoke-virtual {v7}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v9

    if-lt v8, v9, :cond_1

    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v8

    const v9, 0x1869f

    if-ne v8, v9, :cond_12

    iget v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_12

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMatchedUserPrefSubsOrMakeDefault(): cardIndex "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "subscription.length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v8

    const v9, 0x1869f

    if-eq v8, v9, :cond_a

    invoke-virtual {v7}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v2

    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v8, v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v1, v8, v2

    .local v1, cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMatchedUserPrefSubsOrMakeDefault(): cardIndex "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMatchedUserPrefSubsOrMakeDefault(): cardsubdataIndex "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- iccId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- appType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- appId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- slotId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- appType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- m3gppIndex "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- m3gpp2Index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-nez v8, :cond_3

    iget-object v8, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-eqz v8, :cond_4

    :cond_3
    iget-object v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-eqz v8, :cond_11

    iget-object v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_4
    iget-object v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-nez v8, :cond_5

    iget-object v8, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-eqz v8, :cond_6

    :cond_5
    iget-object v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-eqz v8, :cond_11

    iget-object v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_6
    iget-object v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-nez v8, :cond_7

    iget-object v8, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-eqz v8, :cond_8

    :cond_7
    iget-object v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-eqz v8, :cond_11

    iget-object v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_8
    const/4 v3, 0x0

    iget v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMatchedUserPrefSubsOrMakeDefault(): UserPrefSubs at subId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Not required to activate"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    .end local v1           #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v8

    if-ge v4, v8, :cond_c

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v8, v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v8

    const v9, 0x1869f

    if-eq v8, v9, :cond_b

    move v2, v4

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_c
    const v8, 0x1869f

    if-ne v2, v8, :cond_2

    .end local v3           #defaultNeeded:Z
    .end local v4           #i:I
    .end local v7           #userSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_d
    :goto_3
    return-object v5

    .restart local v1       #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    .restart local v3       #defaultNeeded:Z
    .restart local v7       #userSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_e
    iget-object v8, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v6

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/ProxyManager$Subscription;->copyFrom(Lcom/android/internal/telephony/ProxyManager$Subscription;)Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget-object v8, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v6

    const/4 v9, 0x1

    iput v9, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iget-object v8, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v6

    iput v6, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    iget-object v8, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v6

    iget v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iput v9, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget-object v8, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v6

    iget v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iput v9, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iget-object v8, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v6

    iget v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iput v9, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iget-object v8, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    if-eqz v8, :cond_f

    iget-object v8, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v6

    new-instance v9, Ljava/lang/String;

    iget-object v10, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMatchedUserPrefSubsOrMakeDefault(): UserPrefSubs at subId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " matches with : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " matchedSub.subscription["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    .end local v1           #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :goto_4
    if-eqz v3, :cond_9

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v8, v8, v0

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v8

    if-lez v8, :cond_9

    const-string v8, "getMatchedUserPrefSubsOrMakeDefault(): MakeDefault"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v8

    if-ge v4, v8, :cond_13

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v8, v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v8

    const v9, 0x1869f

    if-eq v8, v9, :cond_10

    move v2, v4

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v4           #i:I
    .restart local v1       #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMatchedUserPrefSubsOrMakeDefault(): No match for UserPrefSubs at subId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    goto :goto_4

    .end local v1           #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMatchedUserPrefSubsOrMakeDefault(): UserPrefSubs invalid at subId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    goto :goto_4

    .restart local v4       #i:I
    :cond_13
    const v8, 0x1869f

    if-eq v2, v8, :cond_d

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aget-object v8, v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v1, v8, v2

    .restart local v1       #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    iget-object v8, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v6

    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/ProxyManager$Subscription;->copyFrom(Lcom/android/internal/telephony/ProxyManager$Subscription;)Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget-object v8, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v6

    const/4 v9, 0x1

    iput v9, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iget-object v8, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v6

    iput v0, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    iget-object v8, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v6

    iget v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iput v9, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget-object v8, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v6

    iget v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iput v9, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iget-object v8, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v6

    iget v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iput v9, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iget-object v8, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    if-eqz v8, :cond_9

    iget-object v8, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v6

    new-instance v9, Ljava/lang/String;

    iget-object v10, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    goto/16 :goto_1

    .end local v1           #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    .end local v3           #defaultNeeded:Z
    .end local v4           #i:I
    .end local v7           #userSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMatchedUserPrefSubsOrMakeDefault(): matchedSub = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private getStringFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private getUserPreferredSubs()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x4

    const v11, 0x1869f

    const-string v12, ","

    const-string v10, "PROXY"

    const/4 v1, 0x0

    .local v1, errorOnParsing:Z
    new-instance v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    invoke-direct {v7, v14}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v14, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, strUserSub:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, "PROXY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUserPreferredSubs: strUserSub = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, splitUserSub:[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x6

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v3

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->getStringFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v3

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->getStringFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v3

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->getStringFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v3

    const/4 v8, 0x3

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v3

    const/4 v8, 0x4

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v3

    const/4 v8, 0x5

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v5           #splitUserSub:[Ljava/lang/String;
    :cond_0
    :goto_3
    if-eqz v6, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mUserDefaultSubs:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, defaultUserSub:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-static {v7, v8, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v3

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v3

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mUserDefaultSubs:[Ljava/lang/String;

    aget-object v8, v8, v3

    iput-object v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v3

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v3

    iput v13, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v3

    iput v11, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v3

    iput v11, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    .end local v0           #defaultUserSub:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v3

    iput v3, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    const-string v7, "PROXY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUserPreferredSubs: mUserPrefSubs.subscription["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .restart local v5       #splitUserSub:[Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v7

    .local v2, ex:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v7, "PROXY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUserPreferredSubs: NumberFormatException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v3

    const/4 v8, 0x4

    iput v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I
    :try_end_4
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .end local v2           #ex:Ljava/lang/NumberFormatException;
    .end local v5           #splitUserSub:[Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v4, v7

    .local v4, pe:Ljava/util/regex/PatternSyntaxException;
    const-string v7, "PROXY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUserPreferredSubs: PatternSyntaxException while split : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto/16 :goto_3

    .end local v4           #pe:Ljava/util/regex/PatternSyntaxException;
    .restart local v5       #splitUserSub:[Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v2, v7

    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v7, "PROXY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUserPreferredSubs:m3gppIndex: NumberFormatException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v3

    const v8, 0x1869f

    iput v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    goto/16 :goto_2

    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v7

    move-object v2, v7

    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    const-string v7, "PROXY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUserPreferredSubs:m3gpp2Index: NumberFormatException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v3

    const v8, 0x1869f

    iput v8, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    goto/16 :goto_3

    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :cond_3
    const-string v7, "PROXY"

    const-string v8, "getUserPreferredSubs: splitUserSub.length != 6"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v1, 0x1

    goto/16 :goto_3

    .end local v5           #splitUserSub:[Ljava/lang/String;
    .end local v6           #strUserSub:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private handleAllDataDisconnected(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .local v1, sub:Ljava/lang/Integer;
    const-string v2, "PROXY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAllDataDisconnected: sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - mSubscriptionReady["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager;->mSubscriptionReady:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v2, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .local v0, currentPhone:Lcom/android/internal/telephony/PhoneProxy;
    sget-object v2, Lcom/android/internal/telephony/ProxyManager;->sProxyManager:Lcom/android/internal/telephony/ProxyManager;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyManager;->mSubscriptionReady:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyManager;->resetCurrentSubscription(I)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ProxyManager;->getCurrentSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setSubscriptionInfo(Lcom/android/internal/telephony/ProxyManager$Subscription;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ProxyManager;->getSelectedSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyManager;->updateSubPreferences(Lcom/android/internal/telephony/ProxyManager$SubscriptionData;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized handleGetIccIdDone(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const-string v4, "============================================================="

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string v4, "handleGetIccIdDone: parameter is null"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0

    .local v2, data:[B
    const/4 v1, 0x0

    .local v1, cardIndex:I
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetIccIdDone: cardIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, iccId:Ljava/lang/String;
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    const-string v4, "Exception in GET ICCID"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->setCardState(Lcom/android/internal/telephony/UiccConstants$CardState;)V

    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->setReadIccIdInProgress(Z)V

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->setIccId(Ljava/lang/String;)V

    const-string v4, "============================================================="

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET ICCID DONE. ICCID of card["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    const-string v4, "============================================================="

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ICCID Read Done for card : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyManager;->updateUiccStatus(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .end local v1           #cardIndex:I
    .end local v2           #data:[B
    .end local v3           #iccId:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v1       #cardIndex:I
    .restart local v2       #data:[B
    .restart local v3       #iccId:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    array-length v5, v2

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1
.end method

.method private declared-synchronized handleIccChanged(Z)V
    .locals 19
    .parameter "triggerUpdate"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v16

    if-eqz v16, :cond_8

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleIccChanged("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "): MultiSIM Enabled"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    const/4 v7, 0x0

    .local v7, cardStateChanged:Z
    const/4 v6, 0x0

    .local v6, cardIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UiccManager;->getIccCards()[Lcom/android/internal/telephony/UiccCard;

    move-result-object v15

    .local v15, uiccCards:[Lcom/android/internal/telephony/UiccCard;
    move-object v3, v15

    .local v3, arr$:[Lcom/android/internal/telephony/UiccCard;
    array-length v12, v3

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v12, :cond_4

    aget-object v14, v3, v10

    .local v14, uiccCard:Lcom/android/internal/telephony/UiccCard;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v5

    .local v5, card:Lcom/android/internal/telephony/UiccCard;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cardIndex = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " new uiccCard = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " old card = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v13

    .local v13, oldCardState:Lcom/android/internal/telephony/UiccConstants$CardState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->setUiccCard(Lcom/android/internal/telephony/UiccCard;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleIccChanged: oldCardState = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    if-eqz v14, :cond_2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleIccChanged: new uiccCard.getCardState() = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    if-eq v0, v1, :cond_1

    invoke-virtual {v14}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v16

    sget-object v17, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    const/16 v16, 0x0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->setIccId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    const/16 v16, 0x0

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->setReadIccIdInProgress(Z)V

    :cond_0
    const/4 v7, 0x1

    .end local v13           #oldCardState:Lcom/android/internal/telephony/UiccConstants$CardState;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .restart local v13       #oldCardState:Lcom/android/internal/telephony/UiccConstants$CardState;
    :cond_2
    const-string v16, "handleIccChanged: new uiccCard is NULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_1

    .end local v13           #oldCardState:Lcom/android/internal/telephony/UiccConstants$CardState;
    :cond_3
    if-nez v5, :cond_1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/ProxyManager$CardInfo;-><init>(Lcom/android/internal/telephony/ProxyManager;Lcom/android/internal/telephony/UiccCard;)V

    move-object/from16 v0, v16

    move v1, v6

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v3           #arr$:[Lcom/android/internal/telephony/UiccCard;
    .end local v5           #card:Lcom/android/internal/telephony/UiccCard;
    .end local v6           #cardIndex:I
    .end local v7           #cardStateChanged:Z
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v14           #uiccCard:Lcom/android/internal/telephony/UiccCard;
    .end local v15           #uiccCards:[Lcom/android/internal/telephony/UiccCard;
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .restart local v3       #arr$:[Lcom/android/internal/telephony/UiccCard;
    .restart local v6       #cardIndex:I
    .restart local v7       #cardStateChanged:Z
    .restart local v10       #i$:I
    .restart local v12       #len$:I
    .restart local v15       #uiccCards:[Lcom/android/internal/telephony/UiccCard;
    :cond_4
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyManager;->updateIccIds()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyManager;->isAllIccIdsAvailable()Z

    move-result v11

    .local v11, iccIdsAvailable:Z
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleIccChanged: MultiSIM Enabled :  triggerUpdate = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " cardStateChanged = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " iccIdsAvailable = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    if-nez p1, :cond_5

    if-eqz v7, :cond_6

    :cond_5
    if-eqz v11, :cond_6

    const-string v16, "ICC STATUS CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->updateUiccStatus(Ljava/lang/String;)V

    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyManager;->updateIMSI()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3           #arr$:[Lcom/android/internal/telephony/UiccCard;
    .end local v6           #cardIndex:I
    .end local v7           #cardStateChanged:Z
    .end local v10           #i$:I
    .end local v11           #iccIdsAvailable:Z
    .end local v12           #len$:I
    .end local v15           #uiccCards:[Lcom/android/internal/telephony/UiccCard;
    :cond_7
    :goto_2
    monitor-exit p0

    return-void

    :cond_8
    :try_start_2
    new-instance v8, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    const/16 v16, 0x1

    move-object v0, v8

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;-><init>(I)V

    .local v8, cardSubData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    const v17, 0x1869f

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    const v17, 0x1869f

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UiccManager;->getIccCards()[Lcom/android/internal/telephony/UiccCard;

    move-result-object v9

    .local v9, cardsList:[Lcom/android/internal/telephony/UiccCard;
    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_a

    const/16 v16, 0x0

    aget-object v16, v9, v16

    move-object/from16 v4, v16

    .local v4, c:Lcom/android/internal/telephony/UiccCard;
    :goto_3
    if-eqz v4, :cond_9

    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCard;->getSubscription3gppAppIndex()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCard;->getSubscription3gpp2AppIndex()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/Phone;->setSubscriptionInfo(Lcom/android/internal/telephony/ProxyManager$Subscription;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .end local v4           #c:Lcom/android/internal/telephony/UiccCard;
    :cond_a
    const/16 v16, 0x0

    move-object/from16 v4, v16

    goto :goto_3
.end method

.method private handleSubscriptionStatusChanged(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "ar"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "PROXY"

    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .local v3, sub:Ljava/lang/Integer;
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v0, v4, v8

    .local v0, actStatus:I
    const-string v4, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSubscriptionStatusChanged sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " actStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v6, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager;->mSubscriptionReady:[Z

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput-boolean v6, v4, v5

    iget-boolean v4, p0, Lcom/android/internal/telephony/ProxyManager;->mDdsSet:Z

    if-nez v4, :cond_1

    const-string v4, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lllccc handleSubscriptionStatusChanged: sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lllccc handleSubscriptionStatusChanged: mCurrentDds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**yj** handleSubscriptionStatusChanged: getCurrentSubscriptions().subscription[1].slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/ProxyManager;->getCurrentSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v5, v5, v6

    iget v5, v5, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    if-ne v4, v6, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/ProxyManager;->getCurrentSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataSubscription on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, msgSetDdsDone:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v5, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    aget-object v4, v4, v5

    invoke-interface {v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    iput-boolean v6, p0, Lcom/android/internal/telephony/ProxyManager;->mDdsSet:Z

    iget v4, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    iput v4, p0, Lcom/android/internal/telephony/ProxyManager;->mQueuedDds:I

    .end local v2           #msgSetDdsDone:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager;->mSubscriptionReady:[Z

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput-boolean v8, v4, v5

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v1, v4, v5

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .local v1, currentPhone:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    if-ne v4, v5, :cond_3

    const-string v4, "PROXY"

    const-string v4, "Register for the all data disconnect"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/internal/telephony/ProxyManager;->sProxyManager:Lcom/android/internal/telephony/ProxyManager;

    const/16 v5, 0xf

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/internal/telephony/PhoneProxy;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyManager;->resetCurrentSubscription(I)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ProxyManager;->getCurrentSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PhoneProxy;->setSubscriptionInfo(Lcom/android/internal/telephony/ProxyManager$Subscription;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ProxyManager;->getSelectedSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyManager;->updateSubPreferences(Lcom/android/internal/telephony/ProxyManager$SubscriptionData;)V

    goto :goto_0
.end method

.method private isAllIccIdsAvailable()Z
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    .local v0, cardInfo:Lcom/android/internal/telephony/ProxyManager$CardInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .end local v0           #cardInfo:Lcom/android/internal/telephony/ProxyManager$CardInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isAnySubscriptionActive()Z
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v4}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$100(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v4

    iget-object v0, v4, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    .local v0, arr$:[Lcom/android/internal/telephony/ProxyManager$Subscription;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, sub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    iget v4, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    .end local v3           #sub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :goto_1
    return v4

    .restart local v3       #sub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #sub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isNewCardsAvailable()Z
    .locals 11

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    .local v0, arr$:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v3, v0, v5

    .local v3, cardSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getIccId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    const/4 v2, 0x0

    .local v2, cardMatched:Z
    iget-object v9, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v1, v9, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    .local v1, arr$:[Lcom/android/internal/telephony/ProxyManager$Subscription;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v8, v1, v4

    .local v8, userSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    invoke-virtual {v3}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getIccId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v8           #userSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_1
    if-nez v2, :cond_2

    const/4 v9, 0x1

    .end local v1           #arr$:[Lcom/android/internal/telephony/ProxyManager$Subscription;
    .end local v2           #cardMatched:Z
    .end local v3           #cardSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .end local v4           #i$:I
    .end local v7           #len$:I
    :goto_2
    return v9

    .restart local v3       #cardSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .restart local v4       #i$:I
    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_0

    .end local v3           #cardSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    :cond_3
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private isValidCards()Z
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    .local v0, cardInfo:Lcom/android/internal/telephony/ProxyManager$CardInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :cond_1
    const/4 v2, 0x0

    .end local v0           #cardInfo:Lcom/android/internal/telephony/ProxyManager$CardInfo;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    const-string v0, "PROXY"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    const-string v0, "PROXY"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized onUpdateUiccStatus(Ljava/lang/String;I)V
    .locals 10
    .parameter "reason"
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const-string v6, "onUpdateUiccStatus: subId = "

    const-string v6, "onUpdateUiccStatus: cardsUpdated = "

    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdateUiccStatus: context = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mUpdateUiccStatusContext = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/ProxyManager;->mUpdateUiccStatusContext:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionInProgress:Z

    if-eqz v6, :cond_1

    const-string v6, "onUpdateUiccStatus: Already a SET UICC SUBSCRIPTION is under progress, Process the ICC CHANGED later!!"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v6, p0, Lcom/android/internal/telephony/ProxyManager;->mUpdateUiccStatusContext:I

    if-eq p2, v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdateUiccStatus: [ignored] : reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_2
    :try_start_2
    iget-boolean v6, p0, Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionMode:Z

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyManager;->isValidCards()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "onUpdateUiccStatus: Need to set the subscription mode, but all cards are not available"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .local v4, setSubRequired:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyManager;->compareAndUpdateCardSubData()Z

    move-result v0

    .local v0, cardsUpdated:Z
    const/4 v2, 0x0

    .local v2, matchedSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdateUiccStatus: cardsUpdated = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyManager;->getMatchedUserPrefSubsElseDefaultFromCard()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/ProxyManager;->getSelectedSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v1

    .local v1, currentSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    const/4 v5, 0x0

    .local v5, subId:I
    :goto_1
    if-ge v5, v8, :cond_6

    iget-object v6, v2, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    if-ne v6, v9, :cond_5

    iget-object v6, v1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    if-ne v6, v8, :cond_5

    iget-object v6, v2, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v6, v6, v5

    const/4 v7, 0x2

    iput v7, v6, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdateUiccStatus: subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : Already ACTIVATED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget-object v6, v2, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    if-ne v6, v9, :cond_4

    iget-object v6, v1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    if-eq v6, v8, :cond_4

    const/4 v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdateUiccStatus: subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : Need to ACTIVATE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    goto :goto_2

    .end local v1           #currentSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .end local v5           #subId:I
    :cond_6
    if-eqz v4, :cond_7

    const-string v6, "onUpdateUiccStatus: automatic set subscription"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ProxyManager;->setSubscription(Lcom/android/internal/telephony/ProxyManager$SubscriptionData;)V

    :goto_3
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyManager;->isNewCardsAvailable()Z

    move-result v3

    .local v3, newCardsAvailable:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdateUiccStatus: cardsUpdated = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newCardsAvailable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const-string v6, "onUpdateUiccStatus: New cards available, notify user to configure subscriptions"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3           #newCardsAvailable:Z
    :cond_7
    const-string v6, "onUpdateUiccStatus: Set Subscription not Required"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private processSimRefresh(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/SimRefreshResponse;

    .local v2, state:Lcom/android/internal/telephony/SimRefreshResponse;
    if-nez v2, :cond_1

    const-string v3, "PROXY"

    const-string v4, "processSimRefresh received without input"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .local v1, slot:Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processSimRefresh: slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " refreshResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/telephony/SimRefreshResponse;->refreshResult:Lcom/android/internal/telephony/SimRefreshResponse$Result;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/internal/telephony/SimRefreshResponse;->refreshResult:Lcom/android/internal/telephony/SimRefreshResponse$Result;

    sget-object v4, Lcom/android/internal/telephony/SimRefreshResponse$Result;->SIM_RESET:Lcom/android/internal/telephony/SimRefreshResponse$Result;

    if-ne v3, v4, :cond_0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processSimRefresh: mUserPrefSubs.slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v4, v4, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyManager;->resetCurrentSubscription(I)V

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/ProxyManager;->mDdsSet:Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_0
.end method

.method private resetCardInfo(I)V
    .locals 3
    .parameter "cardIndex"

    .prologue
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetCardInfo(): cardIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    aput-object v2, v0, p1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/ProxyManager$CardInfo;-><init>(Lcom/android/internal/telephony/ProxyManager;Lcom/android/internal/telephony/UiccCard;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private resetCurrentSubscription(I)V
    .locals 5
    .parameter "subscr"

    .prologue
    const/4 v4, 0x3

    const v3, 0x1869f

    const-string v0, "PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetCurrentSubscription : subscr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v0}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$100(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    iput v4, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v0}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$100(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    iput v3, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v0}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$100(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    iput v3, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v0}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$000(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    iput v4, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v0}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$000(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    iput v3, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v0}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$000(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, p1

    iput v3, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    return-void
.end method

.method private saveUserPreferredSubscription(ILcom/android/internal/telephony/ProxyManager$Subscription;)V
    .locals 6
    .parameter "subIndex"
    .parameter "userPrefSub"

    .prologue
    const-string v5, "PROXY"

    const-string v4, " "

    const-string v3, ","

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v1, "PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveUserPreferredSubscription: INVALID PARAMETERS: subIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userPrefSub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager;->mUserPrefSubs:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v1, v1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ProxyManager$Subscription;->copyFrom(Lcom/android/internal/telephony/ProxyManager$Subscription;)Lcom/android/internal/telephony/ProxyManager$Subscription;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p2, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p2, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p2, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, userSub:Ljava/lang/String;
    const-string v1, "PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveUserPreferredSubscription: userPrefSub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveUserPreferredSubscription: userSub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .end local v0           #userSub:Ljava/lang/String;
    :cond_2
    const-string v2, " "

    move-object v2, v4

    goto/16 :goto_1

    :cond_3
    const-string v2, " "

    move-object v2, v4

    goto/16 :goto_2

    :cond_4
    const-string v2, " "

    move-object v2, v4

    goto/16 :goto_3
.end method

.method private updateIccIds()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .local v1, cardIndex:I
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    .local v2, cardInfo:Lcom/android/internal/telephony/ProxyManager$CardInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateIccIds: cardIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cardInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v7

    .local v7, uiccCard:Lcom/android/internal/telephony/UiccCard;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v8, v9, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->isReadIccIdInProgress()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, strCardIndex:Ljava/lang/String;
    const/4 v8, 0x6

    invoke-virtual {p0, v8, v6}, Lcom/android/internal/telephony/ProxyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, response:Landroid/os/Message;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/UiccCard;->getUiccCardApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .local v0, cardApp:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    .local v3, fileHandler:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v3, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateIccIds: get ICCID for cardInfo : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    const/16 v8, 0x2fe2

    invoke-virtual {v3, v8, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->setReadIccIdInProgress(Z)V

    .end local v0           #cardApp:Lcom/android/internal/telephony/UiccCardApplication;
    .end local v3           #fileHandler:Lcom/android/internal/telephony/IccFileHandler;
    .end local v5           #response:Landroid/os/Message;
    .end local v6           #strCardIndex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #cardInfo:Lcom/android/internal/telephony/ProxyManager$CardInfo;
    .end local v7           #uiccCard:Lcom/android/internal/telephony/UiccCard;
    :cond_1
    return-void
.end method

.method private updateSubPreferences(Lcom/android/internal/telephony/ProxyManager$SubscriptionData;)V
    .locals 14
    .parameter "subData"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v10, "PROXY"

    const/4 v0, 0x0

    .local v0, activSubCount:I
    const/4 v1, 0x0

    .local v1, activeSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    iget-object v2, p1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    .local v2, arr$:[Lcom/android/internal/telephony/ProxyManager$Subscription;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v2, v4

    .local v6, sub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    if-eqz v6, :cond_0

    iget v7, v6, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    if-ne v7, v13, :cond_0

    add-int/lit8 v0, v0, 0x1

    move-object v1, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v6           #sub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    :cond_1
    if-ne v0, v11, :cond_4

    const-string v7, "PROXY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSubPreferences: only SUB:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is Active.  Update the default/voice/sms and data subscriptions"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->setVoiceSubscription(I)V

    iget v7, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->setSMSSubscription(I)V

    invoke-static {v12}, Lcom/android/internal/telephony/PhoneFactory;->setPromptEnabled(Z)V

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    iget v9, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/CallManager;->setDefaultPhone(Lcom/android/internal/telephony/Phone;)V

    const-string v7, "PROXY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSubPreferences: current defaultSub = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "PROXY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSubPreferences: current mCurrentDds = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v7

    iget v8, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    if-eq v7, v8, :cond_2

    iget v7, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->setDefaultSubscription(I)V

    :cond_2
    const-string v7, "PROXY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lllccc updateSubPreferences: mCurrentDds = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "PROXY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lllccc updateSubPreferences: activeSub.subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "PROXY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "**yj** updateSubPreferences: getCurrentSubscriptions().subscription[1].slotId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/ProxyManager;->getCurrentSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v11

    iget v8, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    iget v8, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    if-eq v7, v8, :cond_6

    iget v7, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    if-eqz v7, :cond_3

    iget v7, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    if-ne v7, v11, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/ProxyManager;->getCurrentSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v7, v7, v11

    iget v7, v7, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    if-nez v7, :cond_6

    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mSubscriptionReady:[Z

    iget v8, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_5

    iget v7, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    iput v7, p0, Lcom/android/internal/telephony/ProxyManager;->mQueuedDds:I

    iget v7, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v13, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .local v3, callback:Landroid/os/Message;
    const-string v7, "PROXY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update setDataSubscription to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v8, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    aget-object v7, v7, v8

    invoke-interface {v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    .end local v3           #callback:Landroid/os/Message;
    :cond_4
    :goto_1
    return-void

    :cond_5
    iput-boolean v12, p0, Lcom/android/internal/telephony/ProxyManager;->mDdsSet:Z

    iget v7, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    iput v7, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    const-string v7, "PROXY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SUBSCRIPTION_READY event is not yet received on sub: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->setDataSubscription(I)V

    goto :goto_1

    :cond_6
    const-string v7, "PROXY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not activate the DDS, because activeSub.subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCurrentDds = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateUiccStatus(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"

    .prologue
    iget v1, p0, Lcom/android/internal/telephony/ProxyManager;->mUpdateUiccStatusContext:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ProxyManager;->mUpdateUiccStatusContext:I

    const/16 v1, 0xc

    iget v2, p0, Lcom/android/internal/telephony/ProxyManager;->mUpdateUiccStatusContext:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/internal/telephony/ProxyManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ProxyManager;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public IsSub1Slot0Match()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string v1, "PROXY"

    const-string v0, "PROXY"

    const-string v0, "IsSub1Slot0Match() enter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v0}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$000(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    if-nez v0, :cond_0

    const-string v0, "PROXY"

    const-string v0, "sub1, slot0 match"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v0, "PROXY"

    const-string v0, "sub1, slot0 mismatch"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method adjstMinDigits(I)I
    .locals 1
    .parameter "digits"

    .prologue
    add-int/lit8 p1, p1, 0x6f

    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    const/16 v0, 0xa

    sub-int v0, p1, v0

    move p1, v0

    :cond_0
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    const/16 v0, 0x64

    sub-int v0, p1, v0

    move p1, v0

    :cond_1
    div-int/lit8 v0, p1, 0x64

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    const/16 v0, 0x3e8

    sub-int v0, p1, v0

    move p1, v0

    :cond_2
    return p1
.end method

.method public broadcastSubStateChangedIntent()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SUBSCRIPTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "sub1_state"

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v2}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$000(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "sub2_state"

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v2}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$000(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "PROXY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SUBSCRIPTION_STATE_CHANGED sub1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$000(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sub2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$000(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v5

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public getCardSubscriptions()[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    return-object v0
.end method

.method public getCurrentSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->prevSubscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v0}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$000(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    #getter for: Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->subscriptionData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    invoke-static {v0}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->access$100(Lcom/android/internal/telephony/ProxyManager$SupplySubscription;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v0

    return-object v0
.end method

.method handleGetIMSIDone(IILandroid/os/AsyncResult;)V
    .locals 19
    .parameter "cardIndex"
    .parameter "type"
    .parameter "ar"

    .prologue
    const/4 v14, 0x0

    .local v14, t_IMSI:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, isMulti:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    move-object v15, v0

    move-object v0, v15

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    .local v5, cardInfo:Lcom/android/internal/telephony/ProxyManager$CardInfo;
    invoke-static {}, Lcom/android/internal/telephony/UiccConstants$AppType;->values()[Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v15

    aget-object v3, v15, p2

    .local v3, appType:Lcom/android/internal/telephony/UiccConstants$AppType;
    const/4 v15, 0x0

    invoke-virtual {v5, v3, v15}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->setReadIMSIInProgress(Lcom/android/internal/telephony/UiccConstants$AppType;Z)V

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v15, v0

    if-eqz v15, :cond_0

    const-string v15, "PROXY"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception querying IMSI, Exception:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local p1
    :goto_0
    return-void

    .restart local p1
    :cond_0
    sget-object v15, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq v3, v15, :cond_1

    sget-object v15, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne v3, v15, :cond_4

    :cond_1
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ProxyManager;->data:[B

    const-string v15, "PROXY"

    const-string v16, " ***xt*** handle EVENT_GET_IMSI_DONE for SIM"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->data:[B

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->data:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    :cond_2
    :goto_1
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x6

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0xf

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_9

    :cond_3
    const-string v15, "PROXY"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "invalid IMSI "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local p1
    :cond_4
    sget-object v15, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq v3, v15, :cond_5

    sget-object v15, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne v3, v15, :cond_2

    :cond_5
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ProxyManager;->data:[B

    const-string v15, "PROXY"

    const-string v16, " ***xt*** handle EVENT_GET_IMSI_DONE for UIM"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->data:[B

    move-object v15, v0

    const/16 v16, 0x7

    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0x80

    const/16 v16, 0x80

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    const/4 v15, 0x1

    move v12, v15

    .local v12, provisioned:Z
    :goto_2
    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->data:[B

    move-object v15, v0

    const/16 v16, 0x9

    aget-byte v15, v15, v16

    shl-int/lit8 v15, v15, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->data:[B

    move-object/from16 v16, v0

    const/16 v17, 0x8

    aget-byte v16, v16, v17

    add-int v10, v15, v16

    .local v10, mcc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->data:[B

    move-object v15, v0

    const/16 v16, 0x6

    aget-byte v15, v15, v16

    and-int/lit16 v11, v15, 0xff

    .local v11, mnc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->data:[B

    move-object v15, v0

    const/16 v16, 0x2

    aget-byte v15, v15, v16

    and-int/lit8 v15, v15, 0x3

    shl-int/lit8 v15, v15, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->data:[B

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-byte v16, v16, v17

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int v7, v15, v16

    .local v7, first3digits:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->data:[B

    move-object v15, v0

    const/16 v16, 0x5

    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->data:[B

    move-object/from16 v16, v0

    const/16 v17, 0x4

    aget-byte v16, v16, v17

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    or-int v15, v15, v16

    shr-int/lit8 v13, v15, 0x6

    .local v13, second3digits:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->data:[B

    move-object v15, v0

    const/16 v16, 0x4

    aget-byte v15, v15, v16

    shr-int/lit8 v15, v15, 0x2

    and-int/lit8 v6, v15, 0xf

    .local v6, digit7:I
    const/16 v15, 0x9

    if-le v6, v15, :cond_6

    const/4 v6, 0x0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->data:[B

    move-object v15, v0

    const/16 v16, 0x4

    aget-byte v15, v15, v16

    and-int/lit8 v15, v15, 0x3

    shl-int/lit8 v15, v15, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager;->data:[B

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget-byte v16, v16, v17

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    or-int v9, v15, v16

    .local v9, last3digits:I
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->adjstMinDigits(I)I

    move-result v10

    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->adjstMinDigits(I)I

    move-result v15

    const/16 v16, 0x64

    sub-int v11, v15, v16

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->adjstMinDigits(I)I

    move-result v7

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->adjstMinDigits(I)I

    move-result v13

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ProxyManager;->adjstMinDigits(I)I

    move-result v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, builder:Ljava/lang/StringBuilder;
    const-string v15, "%03d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "%02d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "%03d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "%03d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "%d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "%03d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "PROXY"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " ***xt*** min present="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v6           #digit7:I
    .end local v7           #first3digits:I
    .end local v9           #last3digits:I
    .end local v10           #mcc:I
    .end local v11           #mnc:I
    .end local v12           #provisioned:Z
    .end local v13           #second3digits:I
    :cond_7
    const/4 v15, 0x0

    move v12, v15

    goto/16 :goto_2

    .restart local v12       #provisioned:Z
    :cond_8
    const-string v15, "PROXY"

    const-string v16, " ***xt*** min not present"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v12           #provisioned:Z
    :cond_9
    const-string v15, "PROXY"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "IMSI: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x6

    move-object v0, v14

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "xxxxxxx"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "PROXY"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "***xt*** IMSI: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",type:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v14, v3}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->setIMSI(Ljava/lang/String;Lcom/android/internal/telephony/UiccConstants$AppType;)V

    invoke-virtual {v5}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->isMutliSIM()Z

    move-result v8

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .local v7, t_IMSI:Ljava/lang/String;
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local p1
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .local v2, cardIndex:Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ProxyManager EVENT_RADIO_OFF_OR_NOT_AVAILABLE on cardIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/telephony/ProxyManager;->mRadioOn:[Z

    array-length v9, v9

    if-ge v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mRadioOn:[Z

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    aput-boolean v10, v8, v9

    invoke-virtual {p0}, Lcom/android/internal/telephony/ProxyManager;->getSelectedSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v3

    .local v3, currentSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    const/4 v6, 0x0

    .local v6, subId:I
    :goto_1
    const/4 v8, 0x2

    if-ge v6, v8, :cond_2

    iget-object v8, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    iget-object v8, v3, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_1

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyManager;->resetCurrentSubscription(I)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->resetCardInfo(I)V

    goto :goto_0

    .end local v3           #currentSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .end local v6           #subId:I
    :cond_3
    const-string v8, "Invalid Index!!!"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #cardIndex:Ljava/lang/Integer;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .restart local v2       #cardIndex:Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ProxyManager EVENT_RADIO_ON on cardIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/telephony/ProxyManager;->mRadioOn:[Z

    array-length v9, v9

    if-ge v8, v9, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mRadioOn:[Z

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyManager;->isAnySubscriptionActive()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionMode:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/ProxyManager;->mDdsSet:Z

    goto/16 :goto_0

    :cond_4
    const-string v8, "Invalid Index!!!"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #cardIndex:Ljava/lang/Integer;
    :sswitch_2
    const-string v8, "EVENT_SET_SUBSCRIPTION_COMPLETED"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionInProgress:Z

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->handleIccChanged(Z)V

    goto/16 :goto_0

    :sswitch_3
    const-string v8, "ProxyManager EVENT_ICC_CHANGED"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->handleIccChanged(Z)V

    goto/16 :goto_0

    :sswitch_4
    const-string v8, "ProxyManager EVENT_UPDATE_UICC_STATUS"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v8}, Lcom/android/internal/telephony/ProxyManager;->onUpdateUiccStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_5
    const-string v8, "PROXY"

    const-string v9, "ProxyManager EVENT_SUBSCRIPTION_STATUS_CHANGED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyManager;->handleSubscriptionStatusChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .restart local p1
    :sswitch_6
    const-string v8, "PROXY"

    const-string v9, "ProxyManager EVENT_ALL_DATA_DISCONNECTED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyManager;->handleAllDataDisconnected(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .restart local p1
    :sswitch_7
    const-string v8, "ProxyManager EVENT_READ_ICCID_DONE"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyManager;->handleGetIccIdDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .restart local p1
    :sswitch_8
    const-string v8, "PROXY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_DISABLE_DATA_CONNECTION_DONE, mDisableDdsInProgress = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/ProxyManager;->mDisableDdsInProgress:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v8, p0, Lcom/android/internal/telephony/ProxyManager;->mDisableDdsInProgress:Z

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/internal/telephony/ProxyManager;->mQueuedDds:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, str:Ljava/lang/String;
    const/4 v8, 0x2

    invoke-static {p0, v8, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, callback:Landroid/os/Message;
    const-string v8, "PROXY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set DDS to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/ProxyManager;->mQueuedDds:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Calling cmd interface setDataSubscription"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v9, p0, Lcom/android/internal/telephony/ProxyManager;->mQueuedDds:I

    aget-object v8, v8, v9

    invoke-interface {v8, v1}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v1           #callback:Landroid/os/Message;
    .end local v5           #str:Ljava/lang/String;
    :sswitch_9
    const-string v8, "PROXY"

    const-string v9, "SIM refresh EVENT_SIM_REFRESH"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyManager;->processSimRefresh(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_a
    const-string v8, "PROXY"

    const-string v9, "EVENT_SET_DATA_SUBSCRIPTION_DONE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    const-string v8, "PROXY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " lllccc  EVENT_SET_DATA_SUBSCRIPTION_DONE mQueuedDds is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/ProxyManager;->mQueuedDds:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/android/internal/telephony/ProxyManager;->mQueuedDds:I

    if-nez v8, :cond_5

    iget v8, p0, Lcom/android/internal/telephony/ProxyManager;->mQueuedDds:I

    invoke-static {v8}, Lcom/android/internal/telephony/PhoneFactory;->setDataSubscription(I)V

    iget v8, p0, Lcom/android/internal/telephony/ProxyManager;->mQueuedDds:I

    iput v8, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    :cond_5
    sget-object v4, Lcom/android/internal/telephony/ProxyManager$SetDdsResult;->ERR_GENERIC_FAILURE:Lcom/android/internal/telephony/ProxyManager$SetDdsResult;

    .local v4, result:Lcom/android/internal/telephony/ProxyManager$SetDdsResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_6

    iget v8, p0, Lcom/android/internal/telephony/ProxyManager;->mQueuedDds:I

    invoke-static {v8}, Lcom/android/internal/telephony/PhoneFactory;->setDataSubscription(I)V

    iget v8, p0, Lcom/android/internal/telephony/ProxyManager;->mQueuedDds:I

    iput v8, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    iget v9, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    aget-object p1, v8, v9

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneProxy;->updateDataConnectionTracker()V

    const-string v8, "PROXY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setDataSubscriptionSource is Successful  Enable Data Connectivity on Subscription "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    iget v9, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    aget-object v8, v8, v9

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    sget-object v4, Lcom/android/internal/telephony/ProxyManager$SetDdsResult;->SUCCESS:Lcom/android/internal/telephony/ProxyManager$SetDdsResult;

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    iget v9, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    aget-object p1, v8, v9

    check-cast p1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneProxy;->updateCurrentCarrierInProvider()Z

    :goto_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/ProxyManager;->mDisableDdsInProgress:Z

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    const/4 v9, 0x0

    invoke-static {v8, v4, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    const-string v8, "PROXY"

    const-string v9, "Enable Data Connectivity Done!! Sending the cnf back!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/ProxyManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    goto/16 :goto_0

    .restart local p1
    :cond_6
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/internal/telephony/CommandException;

    if-eqz v8, :cond_8

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_8

    sget-object v4, Lcom/android/internal/telephony/ProxyManager$SetDdsResult;->ERR_RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/ProxyManager$SetDdsResult;

    :cond_7
    :goto_3
    const-string v8, "PROXY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setDataSubscriptionSource Failed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/internal/telephony/CommandException;

    if-eqz v8, :cond_9

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_9

    sget-object v4, Lcom/android/internal/telephony/ProxyManager$SetDdsResult;->ERR_GENERIC_FAILURE:Lcom/android/internal/telephony/ProxyManager$SetDdsResult;

    goto :goto_3

    :cond_9
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/internal/telephony/CommandException;

    if-eqz v8, :cond_7

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_7

    sget-object v4, Lcom/android/internal/telephony/ProxyManager$SetDdsResult;->ERR_SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/ProxyManager$SetDdsResult;

    goto :goto_3

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v4           #result:Lcom/android/internal/telephony/ProxyManager$SetDdsResult;
    .restart local p1
    :sswitch_b
    const-string v8, "PROXY"

    const-string v9, "***xt*** case: 45"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, v8, v9, p1}, Lcom/android/internal/telephony/ProxyManager;->handleGetIMSIDone(IILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_a
        0x3 -> :sswitch_3
        0x5 -> :sswitch_8
        0x6 -> :sswitch_7
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_5
        0xa -> :sswitch_9
        0xc -> :sswitch_4
        0xd -> :sswitch_2
        0xf -> :sswitch_6
        0x2d -> :sswitch_b
    .end sparse-switch
.end method

.method public isSetSubscriptionInProgress()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionInProgress:Z

    return v0
.end method

.method public isSubActive(I)Z
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .local v1, isActive:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/ProxyManager;->getCurrentSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v0

    .local v0, currentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    iget-object v2, v0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method notifyModeChoiceDialog()V
    .locals 3

    .prologue
    const-string v1, "notifyModeChoiceDialog"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, setSubscriptionIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ModeChoiceTel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "NOTIFY_SLOT0_SUB1_GSM"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method notifyNewCardsAvailable()V
    .locals 3

    .prologue
    const-string v1, "notifyNewCardsAvailable"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, setSubscriptionIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ModeChoice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "NOTIFY_NEW_CARD_AVAILABLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public numSubsActive()I
    .locals 6

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .local v1, phoneCount:I
    const/4 v2, 0x0

    .local v2, subCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ProxyManager;->isSubActive(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count of subs activated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public declared-synchronized registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerForSimStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager;->mSimStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setDataSubscription(ILandroid/os/Message;)V
    .locals 4
    .parameter "subscription"
    .parameter "onCompleteMsg"

    .prologue
    const-string v1, "PROXY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setDataSubscription: mCurrentDds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new subscription = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/internal/telephony/ProxyManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    iput p1, p0, Lcom/android/internal/telephony/ProxyManager;->mQueuedDds:I

    iget-boolean v1, p0, Lcom/android/internal/telephony/ProxyManager;->mDisableDdsInProgress:Z

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ProxyManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, allDataDisabledMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/internal/telephony/ProxyManager;->mCurrentDds:I

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity(Landroid/os/Message;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyManager;->mDisableDdsInProgress:Z

    .end local v0           #allDataDisabledMsg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setSubscription(Lcom/android/internal/telephony/ProxyManager$SubscriptionData;)V
    .locals 7
    .parameter "subData"

    .prologue
    const v6, 0x1869f

    const-string v5, "PROXY"

    const-string v3, "PROXY"

    const-string v3, "setSubscription"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_6

    const-string v3, "PROXY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subData.subscription["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    if-eq v3, v6, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    if-ne v3, v6, :cond_1

    :cond_0
    iget-object v3, p1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    if-eq v3, v6, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mCardSubData:[Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v4, p1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    aget-object v1, v3, v4

    .local v1, cardSubData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    iget-object v3, v1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    iget-object v4, p1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyManager$Subscription;->getAppIndex()I

    move-result v4

    aget-object v0, v3, v4

    .local v0, cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    iget-object v3, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    const-string v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    const-string v4, "USIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GSM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "PROXY"

    const-string v3, "gets New GSM phone"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/PhoneProxy;->updatePhoneObject(Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;I)V

    .end local v0           #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    .end local v1           #cardSubData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .restart local v0       #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    .restart local v1       #cardSubData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    :cond_4
    iget-object v3, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    const-string v4, "RUIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    const-string v4, "CSIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDMA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "PROXY"

    const-string v3, "gets New CDMA phone"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/PhoneProxy;->updatePhoneObject(Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;I)V

    goto :goto_1

    .end local v0           #cardSub:Lcom/android/internal/telephony/ProxyManager$Subscription;
    .end local v1           #cardSubData:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->isAlive()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->start()V

    :cond_7
    const-string v3, "Set subscription is started. Setting the flag mSetSubscriptionInProgress"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionInProgress:Z

    const-string v3, "Calling mSupplySubscription.setSubscription"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager;->mSupplySubscription:Lcom/android/internal/telephony/ProxyManager$SupplySubscription;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/ProxyManager$SupplySubscription;->setSubscription(Lcom/android/internal/telephony/ProxyManager$SubscriptionData;)V

    return-void
.end method

.method public declared-synchronized unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

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

.method public declared-synchronized unRegisterForSimStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager;->mSimStateRegistrants:Landroid/os/RegistrantList;

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

.method updateIMSI()V
    .locals 14

    .prologue
    const-string v12, "***xt*** here is updateIMSI Entry! "

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    const/4 v5, 0x0

    .local v5, cardIndex:I
    const/4 v0, 0x0

    .local v0, AppNum:I
    const/4 v9, 0x0

    .local v9, number:I
    sget-object v2, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppType;

    .local v2, appType:Lcom/android/internal/telephony/UiccConstants$AppType;
    const/4 v1, 0x0

    .local v1, EF_FILE:I
    const/4 v10, 0x0

    .local v10, response:Landroid/os/Message;
    iget-object v12, p0, Lcom/android/internal/telephony/ProxyManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ProxyManager$CardInfo;

    .local v6, cardInfo:Lcom/android/internal/telephony/ProxyManager$CardInfo;
    invoke-virtual {v6}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v3

    .local v3, card:Lcom/android/internal/telephony/UiccCard;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v12, v13, :cond_5

    invoke-virtual {v6}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->AllIMSIAvailable()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .local v11, strCardIndex:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccCard;->getNumApplications()I

    move-result v0

    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v0, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "***xt*** updateIMSI i = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/UiccCard;->getUiccCardApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v4

    .local v4, cardApp:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "***xt*** updateIMSI appType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->isReadIMSIInProgress(Lcom/android/internal/telephony/UiccConstants$AppType;)Z

    move-result v12

    if-nez v12, :cond_2

    sget-object v12, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq v2, v12, :cond_0

    sget-object v12, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne v2, v12, :cond_3

    :cond_0
    const/16 v1, 0x6f07

    :cond_1
    :goto_1
    const/4 v12, 0x1

    invoke-virtual {v6, v2, v12}, Lcom/android/internal/telephony/ProxyManager$CardInfo;->setReadIMSIInProgress(Lcom/android/internal/telephony/UiccConstants$AppType;Z)V

    const/16 v12, 0x2d

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccConstants$AppType;->ordinal()I

    move-result v13

    invoke-virtual {p0, v12, v5, v13}, Lcom/android/internal/telephony/ProxyManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v7

    .local v7, fileHandler:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v7, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "***xt*** updateIMSI: read EF "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/ProxyManager;->logd(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v10}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .end local v7           #fileHandler:Lcom/android/internal/telephony/IccFileHandler;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    sget-object v12, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq v2, v12, :cond_4

    sget-object v12, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne v2, v12, :cond_1

    :cond_4
    const/16 v1, 0x6f22

    goto :goto_1

    .end local v4           #cardApp:Lcom/android/internal/telephony/UiccCardApplication;
    .end local v8           #i:I
    .end local v11           #strCardIndex:Ljava/lang/String;
    :cond_5
    return-void
.end method
