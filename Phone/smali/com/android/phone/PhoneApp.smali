.class public Lcom/android/phone/PhoneApp;
.super Landroid/app/Application;
.source "PhoneApp.java"

# interfaces
.implements Lcom/android/phone/AccelerometerListener$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneApp$3;,
        Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$WakeState;,
        Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final DBG_LEVEL:I = 0x0

.field private static final EVENT_DATA_ROAMING_DISCONNECTED:I = 0xa

.field private static final EVENT_DATA_ROAMING_OK:I = 0xb

.field private static final EVENT_DOCK_STATE_CHANGED:I = 0xd

.field private static final EVENT_SIM_NETWORK_LOCKED:I = 0x3

.field private static final EVENT_SIM_SP_LOCKED:I = 0x5

.field private static final EVENT_SIM_STATE_CHANGED:I = 0x8

.field private static final EVENT_SIM_SUBNETWORK_LOCKED:I = 0x4

.field private static final EVENT_START_SIP_SERVICE:I = 0x11

.field private static final EVENT_TECHNOLOGY_CHANGED:I = 0x12

.field private static final EVENT_TTY_MODE_GET:I = 0xf

.field private static final EVENT_TTY_MODE_SET:I = 0x10

.field private static final EVENT_TTY_PREFERRED_MODE_CHANGED:I = 0xe

.field private static final EVENT_UNSOL_CDMA_INFO_RECORD:I = 0xc

.field private static final EVENT_UPDATE_INCALL_NOTIFICATION:I = 0x9

.field private static final EVENT_WIRED_HEADSET_PLUG:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "PhoneApp"

.field public static final MMI_CANCEL:I = 0x35

.field public static final MMI_COMPLETE:I = 0x34

.field public static final MMI_INITIATE:I = 0x33

.field private static final VDBG:Z = true

.field public static bNetworkLockActive:Z

.field static mDockState:I

.field private static mSinglePhones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/SinglePhone;",
            ">;"
        }
    .end annotation
.end field

.field private static sMe:Lcom/android/phone/PhoneApp;


# instance fields
.field public cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

.field public cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

.field public cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

.field public cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

.field cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field private mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

.field private mBeginningCall:Z

.field mBluetoothHeadsetAudioState:I

.field mBluetoothHeadsetState:I

.field mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mCachedSimPin:Ljava/lang/String;

.field private mDefaultSubscription:I

.field mHandler:Landroid/os/Handler;

.field private mIgnoreTouchUserActivity:Z

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIsHardKeyboardOpen:Z

.field private mIsHeadsetPlugged:Z

.field private mIsSimPinEnabled:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mOrientation:I

.field private mPUKEntryActivity:Landroid/app/Activity;

.field private mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneType:I

.field private mPokeLockToken:Landroid/os/IBinder;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mPreferredTtyMode:I

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

.field mServiceState:Landroid/telephony/ServiceState;

.field private mShouldRestoreMuteOnInCallResume:Z

.field mShowBluetoothIndication:Z

.field private mStatusBarDisableCount:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTtyEnabled:Z

.field private mTtySetOnPowerUp:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeState:Lcom/android/phone/PhoneApp$WakeState;

.field private mWmParams:Landroid/view/WindowManager$LayoutParams;

.field ndpPanel:Lcom/android/phone/IccDepersonalizationPanel;

.field notifier:Lcom/android/phone/CallNotifier;

.field phone:Lcom/android/internal/telephony/Phone;

.field phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field ringer:Lcom/android/phone/Ringer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    sput-boolean v0, Lcom/android/phone/PhoneApp;->bNetworkLockActive:Z

    .line 190
    sput v0, Lcom/android/phone/PhoneApp;->mDockState:I

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneApp;->mSinglePhones:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 532
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 187
    iput v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 188
    iput v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    .line 189
    iput-boolean v2, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 220
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 222
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 223
    sget-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 224
    iput-boolean v2, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 225
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    .line 234
    iput v2, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 239
    new-instance v0, Lcom/android/phone/PhoneApp$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$1;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 290
    new-instance v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 293
    new-instance v0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 310
    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 311
    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 312
    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 313
    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 318
    iput v2, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 319
    iput-boolean v2, p0, Lcom/android/phone/PhoneApp;->mTtySetOnPowerUp:Z

    .line 321
    iput v2, p0, Lcom/android/phone/PhoneApp;->mDefaultSubscription:I

    .line 354
    new-instance v0, Lcom/android/phone/PhoneApp$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$2;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    .line 2124
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    .line 533
    sput-object p0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    .line 534
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->hasService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->handleSimStateChange()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/PhoneApp;I)Lcom/android/phone/SinglePhone;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/PhoneApp;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneApp;->showDepersonalizationScreen(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/PhoneApp;Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/phone/PhoneApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput p1, p0, Lcom/android/phone/PhoneApp;->mDefaultSubscription:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput p1, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static createCallLogIntent(I)Landroid/content/Intent;
    .locals 3
    .parameter "subscription"

    .prologue
    .line 782
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 783
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Subscription"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 784
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    return-object v0
.end method

.method static createInCallIntent(I)Landroid/content/Intent;
    .locals 3
    .parameter "subscription"

    .prologue
    .line 795
    const-string v1, "PhoneApp"

    const-string v2, "createInCallIntent subscription:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 797
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Subscription"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 798
    const/high16 v1, 0x1084

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 801
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    return-object v0
.end method

.method static createInCallIntent(Z)Landroid/content/Intent;
    .locals 2
    .parameter "showDialpad"

    .prologue
    .line 811
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/PhoneApp;->createInCallIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 812
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 813
    return-object v0
.end method

.method static getCallScreenClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 817
    const-class v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataSubscription()I
    .locals 1

    .prologue
    .line 2096
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDataSubscription()I

    move-result v0

    return v0
.end method

.method static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 2028
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2029
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultSubscription()I
    .locals 1

    .prologue
    .line 2086
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method static getInstance()Lcom/android/phone/PhoneApp;
    .locals 1

    .prologue
    .line 763
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 770
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 2034
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2035
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v1

    .line 2036
    .local v1, singlePhone:Lcom/android/phone/SinglePhone;
    if-eqz v1, :cond_0

    .line 2037
    iget-object v2, v1, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2040
    :goto_0
    return-object v2

    .line 2039
    :cond_0
    const-string v2, "PhoneApp"

    const-string v3, "singlePhone object is null returning default phone"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method public static getSMSSubscription()I
    .locals 1

    .prologue
    .line 2101
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSMSSubscription()I

    move-result v0

    return v0
.end method

.method private getSinglePhone(I)Lcom/android/phone/SinglePhone;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 2019
    :try_start_0
    sget-object v1, Lcom/android/phone/PhoneApp;->mSinglePhones:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/SinglePhone;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    .line 2022
    :goto_0
    return-object v1

    .line 2020
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2021
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscripton Index out of bounds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getVoiceSubscription()I
    .locals 1

    .prologue
    .line 2091
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getVoiceSubscription()I

    move-result v0

    return v0
.end method

.method private handleQueryTTYModeResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const-string v5, "PhoneApp"

    .line 1923
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1924
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 1925
    const-string v3, "PhoneApp"

    const-string v3, "handleQueryTTYModeResponse: Error getting TTY state."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :goto_0
    return-void

    .line 1927
    :cond_0
    const-string v3, "PhoneApp"

    const-string v3, "handleQueryTTYModeResponse: TTY enable state successfully queried."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v2, v3, v6

    .line 1931
    .local v2, ttymode:I
    const-string v3, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryTTYModeResponse:ttymode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1934
    .local v1, ttyModeChanged:Landroid/content/Intent;
    const-string v3, "ttyEnabled"

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1935
    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    move v4, v6

    .line 1934
    goto :goto_1
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    .locals 11
    .parameter "intent"
    .parameter "phone"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 1808
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 1810
    .local v3, ss:Landroid/telephony/ServiceState;
    const/4 v1, 0x1

    .line 1811
    .local v1, hasService:Z
    const/4 v2, 0x0

    .line 1812
    .local v2, isCdma:Z
    const-string v0, ""

    .line 1813
    .local v0, eriText:Ljava/lang/String;
    const/4 v4, 0x3

    .line 1815
    .local v4, state:I
    if-eqz v3, :cond_2

    .line 1816
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 1817
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v5

    invoke-virtual {v5, v4, p2}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(ILcom/android/internal/telephony/Phone;)V

    .line 1818
    packed-switch v4, :pswitch_data_0

    .line 1828
    :goto_0
    :pswitch_0
    if-eq v4, v10, :cond_0

    iget-boolean v5, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/phone/PhoneApp;->mTtySetOnPowerUp:Z

    if-nez v5, :cond_0

    .line 1836
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xe

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1837
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/phone/PhoneApp;->mTtySetOnPowerUp:Z

    .line 1839
    :cond_0
    if-ne v4, v10, :cond_1

    .line 1844
    iput-boolean v9, p0, Lcom/android/phone/PhoneApp;->mTtySetOnPowerUp:Z

    .line 1846
    :cond_1
    return-void

    .line 1821
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1825
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1818
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleSetTTYModeResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1940
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1942
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 1943
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetTTYModeResponse: Error setting TTY mode, ar.exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 1948
    return-void
.end method

.method private handleSimStateChange()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "PhoneApp"

    .line 268
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 269
    .local v0, airplaneModeEnabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 270
    .local v1, sim:Lcom/android/internal/telephony/IccCard;
    const-string v2, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimStateChange->airplaneModeEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelNoServiceNotification()V

    .line 272
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->hasService()Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    if-eqz v0, :cond_2

    .line 285
    :cond_0
    :goto_1
    return-void

    .end local v0           #airplaneModeEnabled:Z
    .end local v1           #sim:Lcom/android/internal/telephony/IccCard;
    :cond_1
    move v0, v4

    .line 268
    goto :goto_0

    .line 277
    .restart local v0       #airplaneModeEnabled:Z
    .restart local v1       #sim:Lcom/android/internal/telephony/IccCard;
    :cond_2
    if-eqz v1, :cond_3

    .line 278
    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_0

    .line 282
    :cond_3
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->noServiceNotification()V

    .line 283
    const-string v2, "PhoneApp"

    const-string v2, "handleSimStateChange->NotificationMgr.getDefault().noServiceNotification();"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2108
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2115
    const/4 v0, 0x1

    .line 2118
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 2113
    goto :goto_0

    :cond_0
    move v0, v1

    .line 2118
    goto :goto_0

    .line 2109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initForNewRadioTechnology(I)V
    .locals 6
    .parameter "subscription"

    .prologue
    const-string v5, "PhoneApp"

    .line 1469
    const-string v3, "PhoneApp"

    const-string v3, "initForNewRadioTechnology..."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v2

    .line 1472
    .local v2, singlePhone:Lcom/android/phone/SinglePhone;
    iget-object v0, v2, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1474
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    iget-object v3, v2, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1475
    invoke-virtual {v2}, Lcom/android/phone/SinglePhone;->initializeCdmaVariables()V

    .line 1476
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->updatePhoneAppCdmaVariables(I)V

    .line 1481
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    .line 1483
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v4}, Lcom/android/phone/Ringer;->updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 1484
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 1485
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v3, :cond_0

    .line 1486
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->updateBtHandsfreeAfterRadioTechnologyChange()V

    .line 1488
    :cond_0
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v3, :cond_1

    .line 1489
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->updateAfterRadioTechnologyChange()V

    .line 1493
    :cond_1
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 1494
    .local v1, sim:Lcom/android/internal/telephony/IccCard;
    if-eqz v1, :cond_2

    .line 1495
    const-string v3, "PhoneApp"

    const-string v3, "Update registration for ICC status..."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1500
    :cond_2
    return-void

    .line 1478
    .end local v1           #sim:Lcom/android/internal/telephony/IccCard;
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    goto :goto_0
.end method

.method private onMMIComplete(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    .line 1462
    const-string v2, "PhoneApp"

    const-string v3, "onMMIComplete()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 1464
    .local v1, mmiCode:Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1465
    .local v0, localPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v0, v2, v1, v4, v4}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 1466
    return-void
.end method

.method private static shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z
    .locals 5
    .parameter "bluetoothState"
    .parameter "bluetoothAudioState"
    .parameter "cm"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1575
    sget-object v0, Lcom/android/phone/PhoneApp$3;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 1593
    :goto_0
    return v0

    .line 1581
    :pswitch_0
    if-ne p0, v4, :cond_0

    if-ne p1, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 1590
    :pswitch_1
    if-ne p0, v4, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 1575
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showDepersonalizationScreen(Ljava/lang/String;I)V
    .locals 4
    .parameter "reason"
    .parameter "subscription"

    .prologue
    const-string v3, "PhoneApp"

    .line 1960
    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v0

    .line 1962
    .local v0, subtype:I
    const-string v1, "SIM NETWORK"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1965
    const-string v1, "PhoneApp"

    const-string v1, "Ignoring SIM NETWORK Depersonalization since this is handled differently"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2002
    const-string v1, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show Deperso panel for subtype ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on subscription ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    new-instance v1, Lcom/android/phone/IccDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-direct {v1, v2, v0, p2}, Lcom/android/phone/IccDepersonalizationPanel;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->ndpPanel:Lcom/android/phone/IccDepersonalizationPanel;

    .line 2012
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->ndpPanel:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-virtual {v1}, Lcom/android/phone/IccDepersonalizationPanel;->show()V

    .line 2014
    :cond_0
    return-void

    .line 1967
    :cond_1
    const-string v1, "SIM NETWORK SUBSET"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1968
    const-string v1, "PhoneApp"

    const-string v1, "SIM NETWORK SUBSET Depersonalization"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v0

    goto :goto_0

    .line 1970
    :cond_2
    const-string v1, "SIM CORPORATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1971
    const-string v1, "PhoneApp"

    const-string v1, "SIM CORPORATE Depersonalization"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v0

    goto :goto_0

    .line 1973
    :cond_3
    const-string v1, "SIM SERVICE PROVIDER"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1974
    const-string v1, "PhoneApp"

    const-string v1, "SIM SERVICE PROVIDER Depersonalization"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v0

    goto :goto_0

    .line 1976
    :cond_4
    const-string v1, "SIM SIM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1977
    const-string v1, "PhoneApp"

    const-string v1, "SIM SIM Depersonalization"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 1979
    :cond_5
    const-string v1, "RUIM NETWORK1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1980
    const-string v1, "PhoneApp"

    const-string v1, "RUIM NETWORK1 Depersonalization"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 1982
    :cond_6
    const-string v1, "RUIM NETWORK2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1983
    const-string v1, "PhoneApp"

    const-string v1, "RUIM NETWORK2 Depersonalization"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 1985
    :cond_7
    const-string v1, "RUIM HRPD"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1986
    const-string v1, "PhoneApp"

    const-string v1, "RUIM HRPD Depersonalization"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 1988
    :cond_8
    const-string v1, "RUIM CORPORATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1989
    const-string v1, "PhoneApp"

    const-string v1, "RUIM CORPORATE Depersonalization"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 1991
    :cond_9
    const-string v1, "RUIM SERVICE PROVIDER"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1992
    const-string v1, "PhoneApp"

    const-string v1, "RUIM SERVICE PROVIDER Depersonalization"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 1994
    :cond_a
    const-string v1, "RUIM RUIM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1995
    const-string v1, "PhoneApp"

    const-string v1, "RUIM RUIM Depersonalization"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 1998
    :cond_b
    const-string v1, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Depersonalization: reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updatePhoneAppCdmaVariables(I)V
    .locals 4
    .parameter "subscription"

    .prologue
    .line 734
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneAppCdmaVariables"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    .line 737
    .local v0, singlePhone:Lcom/android/phone/SinglePhone;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 738
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 739
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 740
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 741
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 742
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 744
    :cond_0
    return-void
.end method

.method private updatePokeLock()V
    .locals 6

    .prologue
    const-string v5, "PhoneApp"

    .line 1047
    const/4 v1, 0x1

    .line 1048
    .local v1, pokeLockSetting:I
    sget-object v2, Lcom/android/phone/PhoneApp$3;->$SwitchMap$com$android$phone$PhoneApp$ScreenTimeoutDuration:[I

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1074
    :goto_0
    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    if-eqz v2, :cond_0

    .line 1075
    or-int/lit8 v1, v1, 0x8

    .line 1080
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    const-string v4, "PhoneApp"

    invoke-interface {v2, v1, v3, v4}, Landroid/os/IPowerManager;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    :goto_1
    return-void

    .line 1054
    :pswitch_0
    or-int/lit8 v1, v1, 0x2

    .line 1055
    goto :goto_0

    .line 1062
    :pswitch_1
    or-int/lit8 v1, v1, 0x4

    .line 1063
    goto :goto_0

    .line 1081
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1082
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.setPokeLock() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1048
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method authenticateAgainstCachedSimPin(Ljava/lang/String;)Z
    .locals 1
    .parameter "pin"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkPhoneType()V
    .locals 5

    .prologue
    const-string v4, "PhoneApp"

    .line 342
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 344
    invoke-direct {p0, v0}, Lcom/android/phone/PhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v1

    .line 345
    .local v1, singlePhone:Lcom/android/phone/SinglePhone;
    const-string v2, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old phone type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/phone/SinglePhone;->mPhoneType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", New Phone type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget v2, v1, Lcom/android/phone/SinglePhone;->mPhoneType:I

    iget-object v3, v1, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 347
    const-string v2, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: radio Technology has changed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-direct {p0, v0}, Lcom/android/phone/PhoneApp;->initForNewRadioTechnology(I)V

    .line 349
    iget-object v2, v1, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    iput v2, v1, Lcom/android/phone/SinglePhone;->mPhoneType:I

    .line 342
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v1           #singlePhone:Lcom/android/phone/SinglePhone;
    :cond_1
    return-void
.end method

.method public cleanOtaScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1878
    const-string v0, "PhoneApp"

    const-string v1, "cleanOtaScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v0, :cond_0

    .line 1882
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v2, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 1883
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v2, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 1884
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v2, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 1885
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput v2, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    .line 1886
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->otaSpcUptime:J

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_1

    .line 1889
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1891
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    if-eqz v0, :cond_2

    .line 1892
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    .line 1894
    :cond_2
    return-void
.end method

.method public clearInCallScreenMode()V
    .locals 2

    .prologue
    .line 1908
    const-string v0, "PhoneApp"

    const-string v1, "- clearInCallScreenMode ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 1912
    :cond_0
    return-void
.end method

.method public clearOtaState()V
    .locals 2

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1874
    :goto_0
    return-void

    .line 1872
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->cleanOtaScreen()V

    goto :goto_0
.end method

.method clearUserActivityTimeout()V
    .locals 5

    .prologue
    .line 1952
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->clearUserActivityTimeout(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1957
    :goto_0
    return-void

    .line 1954
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method disableStatusBar()V
    .locals 2

    .prologue
    const-string v1, "PhoneApp"

    .line 964
    const-string v0, "PhoneApp"

    const-string v0, "disable status bar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    monitor-enter p0

    .line 966
    :try_start_0
    iget v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 967
    const-string v0, "PhoneApp"

    const-string v1, "StatusBarManager.DISABLE_EXPAND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 970
    :cond_0
    monitor-exit p0

    .line 971
    return-void

    .line 970
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dismissCallScreen(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 881
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_2

    .line 890
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 893
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 895
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->handleOtaCallEnd()V

    .line 901
    :cond_1
    :goto_0
    return-void

    .line 898
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_0
.end method

.method public dismissOtaDialogs()V
    .locals 2

    .prologue
    const-string v1, "PhoneApp"

    .line 1898
    const-string v0, "PhoneApp"

    const-string v0, "- dismissOtaDialogs ..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    .line 1901
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 1902
    const-string v0, "PhoneApp"

    const-string v0, "  - dismissOtaDialogs clears OTA dialogs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_0
    return-void
.end method

.method displayCallScreen()V
    .locals 2

    .prologue
    .line 824
    const-string v0, "PhoneApp"

    const-string v1, "displayCallScreen()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneApp;->createInCallIntent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 826
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    .line 827
    return-void
.end method

.method getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method getCdmaPhoneCallState(I)Lcom/android/phone/CdmaPhoneCallState;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 2067
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    .line 2068
    .local v0, singlePhone:Lcom/android/phone/SinglePhone;
    if-nez v0, :cond_0

    .line 2069
    const/4 v1, 0x0

    .line 2071
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    goto :goto_0
.end method

.method getEnableCallVibrate()Z
    .locals 2

    .prologue
    .line 2104
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method getInCallScreen()Lcom/android/phone/InCallScreen;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getPUKEntryActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getPUKEntryProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method getPhoneState(I)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1446
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/SinglePhone;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method getRestoreMuteOnInCallResume()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    return v0
.end method

.method getRinger()Lcom/android/phone/Ringer;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method public getVoiceSubscriptionInService()I
    .locals 6

    .prologue
    .line 2052
    invoke-static {}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v4

    .line 2053
    .local v4, voiceSub:I
    move v3, v4

    .line 2054
    .local v3, sub:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 2055
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2056
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 2057
    .local v2, ss:I
    if-eqz v2, :cond_0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 2059
    :cond_0
    move v3, v0

    .line 2060
    if-ne v3, v4, :cond_2

    .line 2063
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v2           #ss:I
    :cond_1
    return v3

    .line 2054
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v2       #ss:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getWmParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method handleOtaEvents(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 911
    const-string v0, "PhoneApp"

    const-string v1, "Enter handleOtaEvents"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v0, p0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    .line 917
    :cond_0
    return-void
.end method

.method isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 1509
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isOtaCallInActiveState()Z
    .locals 4

    .prologue
    .line 1849
    const/4 v0, 0x0

    .line 1850
    .local v0, otaCallActive:Z
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 1851
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    .line 1853
    :cond_0
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- isOtaCallInActiveState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    return v0
.end method

.method public isOtaCallInEndState()Z
    .locals 4

    .prologue
    .line 1858
    const/4 v0, 0x0

    .line 1859
    .local v0, otaCallEnded:Z
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 1860
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    .line 1862
    :cond_0
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- isOtaCallInEndState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    return v0
.end method

.method isShowingCallScreen()Z
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 867
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    goto :goto_0
.end method

.method isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsSimPinEnabled:Z

    return v0
.end method

.method isSimPinEnabled(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    .line 835
    .local v0, singlePhone:Lcom/android/phone/SinglePhone;
    iget-boolean v1, v0, Lcom/android/phone/SinglePhone;->mIsSimPinEnabled:Z

    return v1
.end method

.method isSimPukLocked(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 2045
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/SinglePhone;->mIsSimPukLocked:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 748
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_0

    .line 749
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    .line 755
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 756
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 757
    return-void

    .line 751
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 20

    .prologue
    .line 538
    const-string v4, "PhoneApp"

    const-string v5, "onCreate()..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 541
    .local v17, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 542
    const-string v4, "PhoneApp"

    const-string v5, "PhoneApp onCreate() DSDS Enabled!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    const-string v4, "phone"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    .line 548
    .local v19, telephonyManager:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    move-object v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    if-nez v4, :cond_6

    .line 555
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 558
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 559
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 561
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v12, v4, :cond_1

    .line 562
    sget-object v4, Lcom/android/phone/PhoneApp;->mSinglePhones:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/phone/SinglePhone;

    invoke-direct {v5, v12}, Lcom/android/phone/SinglePhone;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    sget-object v4, Lcom/android/phone/PhoneApp;->mSinglePhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/SinglePhone;

    iget-object v4, v4, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 561
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 567
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/PhoneApp;->mDefaultSubscription:I

    .line 570
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/PhoneApp;->mDefaultSubscription:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setDefaultPhone(I)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/PhoneApp;->mPhoneType:I

    .line 574
    invoke-static/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->init(Landroid/content/Context;)V

    .line 576
    new-instance v4, Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    .line 582
    .local v15, phoneType:I
    const/4 v4, 0x2

    if-ne v15, v4, :cond_2

    .line 584
    new-instance v4, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v4}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 588
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 589
    new-instance v4, Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothHandsfree;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 590
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/phone/BluetoothHeadsetService;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 596
    :goto_1
    new-instance v4, Lcom/android/phone/Ringer;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    .line 599
    const-string v4, "power"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PowerManager;

    .line 607
    .local v16, pm:Landroid/os/PowerManager;
    const v4, 0x3000001a

    const-string v5, "PhoneApp"

    move-object/from16 v0, v16

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 612
    const v4, 0x20000001

    const-string v5, "PhoneApp"

    move-object/from16 v0, v16

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 615
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager;->getSupportedWakeLockFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_3

    .line 617
    const/16 v4, 0x20

    const-string v5, "PhoneApp"

    move-object/from16 v0, v16

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 620
    :cond_3
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate: mProximityWakeLock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 624
    new-instance v4, Lcom/android/phone/AccelerometerListener;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/phone/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/phone/AccelerometerListener$OrientationListener;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    .line 627
    :cond_4
    const-string v4, "keyguard"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 628
    const-string v4, "statusbar"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 632
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 635
    new-instance v4, Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    move-object v8, v0

    new-instance v9, Lcom/android/phone/CallLogAsync;

    invoke-direct {v9}, Lcom/android/phone/CallLogAsync;-><init>()V

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v6, 0x34

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    .line 647
    new-instance v13, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v13, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 649
    .local v13, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 650
    const-string v4, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 651
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 655
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 656
    const-string v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 657
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 658
    const-string v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 659
    const-string v4, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    move v4, v0

    if-eqz v4, :cond_5

    .line 661
    const-string v4, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 663
    :cond_5
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 669
    new-instance v14, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v14, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 675
    .local v14, mediaButtonIntentFilter:Landroid/content/IntentFilter;
    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 680
    const v4, 0x7f050017

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 682
    const/high16 v4, 0x7f05

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 691
    .end local v12           #i:I
    .end local v13           #intentFilter:Landroid/content/IntentFilter;
    .end local v14           #mediaButtonIntentFilter:Landroid/content/IntentFilter;
    .end local v15           #phoneType:I
    .end local v16           #pm:Landroid/os/PowerManager;
    :cond_6
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v12, v4, :cond_9

    .line 693
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v18

    .line 694
    .local v18, sim:Lcom/android/internal/telephony/IccCard;
    if-eqz v18, :cond_7

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move-object v1, v4

    move v2, v5

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 697
    :cond_7
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneApp;->updatePhoneAppCdmaVariables(I)V

    .line 691
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 593
    .end local v18           #sim:Lcom/android/internal/telephony/IccCard;
    .restart local v15       #phoneType:I
    :cond_8
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    goto/16 :goto_1

    .line 701
    .end local v15           #phoneType:I
    :cond_9
    const-string v4, "content://icc/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 704
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 713
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    move v4, v0

    if-eqz v4, :cond_a

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_tty_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 721
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_aid"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 725
    .local v11, hac:I
    const-string v4, "audio"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    .line 726
    .local v10, audioManager:Landroid/media/AudioManager;
    const-string v4, "HACSetting"

    if-eqz v11, :cond_c

    const-string v5, "ON"

    :goto_3
    invoke-virtual {v10, v4, v5}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    .end local v10           #audioManager:Landroid/media/AudioManager;
    .end local v11           #hac:I
    :cond_b
    return-void

    .line 726
    .restart local v10       #audioManager:Landroid/media/AudioManager;
    .restart local v11       #hac:I
    :cond_c
    const-string v5, "OFF"

    goto :goto_3
.end method

.method public orientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1415
    iput p1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 1416
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1417
    return-void
.end method

.method pokeUserActivity()V
    .locals 6

    .prologue
    const-string v5, "PhoneApp"

    .line 1306
    const-string v1, "PhoneApp"

    const-string v1, "pokeUserActivity()..."

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivity(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    :goto_0
    return-void

    .line 1309
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1310
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPowerManagerService.userActivity() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method preventScreenOn(Z)V
    .locals 4
    .parameter "prevent"

    .prologue
    const-string v3, "PhoneApp"

    .line 1271
    const-string v1, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- preventScreenOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->preventScreenOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    :goto_0
    return-void

    .line 1274
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1275
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPowerManagerService.preventScreenOn() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method proximitySensorModeEnabled()Z
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reenableStatusBar()V
    .locals 2

    .prologue
    const-string v1, "PhoneApp"

    .line 980
    const-string v0, "PhoneApp"

    const-string v0, "re-enable status bar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    monitor-enter p0

    .line 982
    :try_start_0
    iget v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    if-lez v0, :cond_1

    .line 983
    iget v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 984
    const-string v0, "PhoneApp"

    const-string v1, "StatusBarManager.DISABLE_NONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 990
    :cond_0
    :goto_0
    monitor-exit p0

    .line 991
    return-void

    .line 988
    :cond_1
    const-string v0, "PhoneApp"

    const-string v1, "mStatusBarDisableCount is already zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseProximitySensorMode()V
    .locals 2

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1405
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 1406
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1407
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1409
    :cond_0
    monitor-exit v0

    .line 1411
    :cond_1
    return-void

    .line 1409
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V
    .locals 3
    .parameter "ws"

    .prologue
    .line 1096
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestWakeState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    monitor-enter p0

    .line 1098
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    if-eq v0, p1, :cond_2

    .line 1099
    sget-object v0, Lcom/android/phone/PhoneApp$3;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    invoke-virtual {p1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1119
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1123
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1127
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 1129
    :cond_2
    monitor-exit p0

    .line 1130
    return-void

    .line 1103
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1104
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1111
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1112
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1099
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setBeginningCall(Z)V
    .locals 1
    .parameter "beginning"

    .prologue
    .line 1322
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 1324
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1325
    return-void
.end method

.method setCachedSimPin(Ljava/lang/String;)V
    .locals 0
    .parameter "pin"

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    .line 844
    return-void
.end method

.method setDefaultPhone(I)V
    .locals 2
    .parameter "subscription"

    .prologue
    .line 2077
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->getSinglePhone(I)Lcom/android/phone/SinglePhone;

    move-result-object v0

    .line 2078
    .local v0, singlePhone:Lcom/android/phone/SinglePhone;
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 2079
    iget v1, v0, Lcom/android/phone/SinglePhone;->mPhoneType:I

    iput v1, p0, Lcom/android/phone/PhoneApp;->mPhoneType:I

    .line 2080
    iget-object v1, v0, Lcom/android/phone/SinglePhone;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 2081
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->updatePhoneAppCdmaVariables(I)V

    .line 2082
    iput p1, p0, Lcom/android/phone/PhoneApp;->mDefaultSubscription:I

    .line 2083
    return-void
.end method

.method setIgnoreTouchUserActivity(Z)V
    .locals 3
    .parameter "ignore"

    .prologue
    .line 1293
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIgnoreTouchUserActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 1295
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    .line 1296
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 847
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 848
    return-void
.end method

.method setPukEntryActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 933
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    .line 934
    return-void
.end method

.method setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 950
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    .line 951
    return-void
.end method

.method setRestoreMuteOnInCallResume(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 329
    return-void
.end method

.method setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V
    .locals 3
    .parameter "duration"

    .prologue
    const-string v2, "PhoneApp"

    .line 1008
    const-string v0, "PhoneApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScreenTimeout("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    if-ne p1, v0, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    const-string v0, "proximity.incall.ignore"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 1020
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    :goto_1
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 1028
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    goto :goto_0

    .line 1025
    :cond_2
    const-string v0, "PhoneApp"

    const-string v0, "Ignore proximity sensor when determining \'In Call\' Screen timeout."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method showBluetoothIndication()Z
    .locals 1

    .prologue
    .line 1524
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    return v0
.end method

.method updateBluetoothIndication(Z)V
    .locals 3
    .parameter "forceUiUpdate"

    .prologue
    .line 1538
    iget v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    iget v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneApp;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 1541
    if-eqz p1, :cond_1

    .line 1544
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateBluetoothIndication()V

    .line 1545
    :cond_0
    const-string v0, "PhoneApp"

    const-string v1, "- updating in-call notification for BT state change..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1550
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1551
    return-void
.end method

.method public updateInCallScreenTouchUi()V
    .locals 2

    .prologue
    .line 1916
    const-string v0, "PhoneApp"

    const-string v1, "- updateInCallScreenTouchUi ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 1918
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateTouchUi()V

    .line 1920
    :cond_0
    return-void
.end method

.method updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1424
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v0, :cond_1

    .line 1425
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 1426
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1427
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    if-eqz v0, :cond_0

    .line 1429
    iput v2, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 1430
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v1, :cond_2

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/phone/AccelerometerListener;->enable(Z)V

    .line 1433
    :cond_0
    iput-boolean v2, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 1439
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 1440
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v1, :cond_3

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1443
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 1430
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1440
    goto :goto_1
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "PhoneApp"

    .line 1356
    const-string v3, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProximitySensorMode: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1359
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v3

    .line 1363
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    if-eqz v4, :cond_4

    :cond_1
    move v2, v7

    .line 1369
    .local v2, screenOnImmediately:Z
    :goto_0
    iget v4, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    move v1, v7

    .line 1371
    .local v1, horizontal:Z
    :goto_1
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v4, :cond_2

    iget-boolean v4, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    if-eqz v4, :cond_7

    :cond_2
    if-nez v2, :cond_7

    .line 1375
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1376
    const-string v4, "PhoneApp"

    const-string v5, "updateProximitySensorMode: acquiring..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1398
    :goto_2
    monitor-exit v3

    .line 1400
    .end local v1           #horizontal:Z
    .end local v2           #screenOnImmediately:Z
    :cond_3
    return-void

    :cond_4
    move v2, v6

    .line 1363
    goto :goto_0

    .restart local v2       #screenOnImmediately:Z
    :cond_5
    move v1, v6

    .line 1369
    goto :goto_1

    .line 1379
    .restart local v1       #horizontal:Z
    :cond_6
    const-string v4, "PhoneApp"

    const-string v5, "updateProximitySensorMode: lock already held."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1398
    .end local v1           #horizontal:Z
    .end local v2           #screenOnImmediately:Z
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1384
    .restart local v1       #horizontal:Z
    .restart local v2       #screenOnImmediately:Z
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1385
    const-string v4, "PhoneApp"

    const-string v5, "updateProximitySensorMode: releasing..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    if-eqz v2, :cond_8

    move v0, v6

    .line 1391
    .local v0, flags:I
    :goto_3
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    goto :goto_2

    .end local v0           #flags:I
    :cond_8
    move v0, v7

    .line 1389
    goto :goto_3

    .line 1394
    :cond_9
    const-string v4, "PhoneApp"

    const-string v5, "updateProximitySensorMode: lock already released."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method updateWakeState()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, "PhoneApp"

    .line 1161
    iget-object v8, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    .line 1166
    .local v7, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v3

    .line 1171
    .local v3, isShowingCallScreen:Z
    iget-object v8, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v8

    if-eqz v8, :cond_4

    move v0, v11

    .line 1181
    .local v0, isDialerOpened:Z
    :goto_0
    sget-object v8, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_5

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v11

    .line 1189
    .local v4, isSpeakerInUse:Z
    :goto_1
    const-string v8, "PhoneApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWakeState: callscreen "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dialer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", speaker "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    if-eqz v3, :cond_0

    if-eqz v4, :cond_6

    .line 1201
    :cond_0
    sget-object v8, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v8}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1233
    :goto_2
    sget-object v8, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_8

    move v2, v11

    .line 1236
    .local v2, isRinging:Z
    :goto_3
    iget-object v8, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    .line 1238
    .local v1, isDialing:Z
    iget-object v8, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_9

    if-eqz v3, :cond_9

    move v6, v11

    .line 1240
    .local v6, showingDisconnectedConnection:Z
    :goto_4
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    if-eqz v6, :cond_a

    :cond_1
    move v5, v11

    .line 1241
    .local v5, keepScreenOn:Z
    :goto_5
    const-string v8, "PhoneApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWakeState: keepScreenOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (isRinging "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isDialing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", showingDisc "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    if-eqz v5, :cond_b

    .line 1249
    if-nez v1, :cond_2

    .line 1250
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->releaseProximitySensorMode()V

    .line 1252
    :cond_2
    sget-object v8, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {p0, v8}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1262
    :cond_3
    :goto_6
    return-void

    .end local v0           #isDialerOpened:Z
    .end local v1           #isDialing:Z
    .end local v2           #isRinging:Z
    .end local v4           #isSpeakerInUse:Z
    .end local v5           #keepScreenOn:Z
    .end local v6           #showingDisconnectedConnection:Z
    :cond_4
    move v0, v10

    .line 1171
    goto/16 :goto_0

    .restart local v0       #isDialerOpened:Z
    :cond_5
    move v4, v10

    .line 1181
    goto/16 :goto_1

    .line 1204
    .restart local v4       #isSpeakerInUse:Z
    :cond_6
    if-eqz v0, :cond_7

    .line 1213
    sget-object v8, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v8}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    goto :goto_2

    .line 1222
    :cond_7
    sget-object v8, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v8}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    goto/16 :goto_2

    :cond_8
    move v2, v10

    .line 1233
    goto :goto_3

    .restart local v1       #isDialing:Z
    .restart local v2       #isRinging:Z
    :cond_9
    move v6, v10

    .line 1238
    goto :goto_4

    .restart local v6       #showingDisconnectedConnection:Z
    :cond_a
    move v5, v10

    .line 1240
    goto :goto_5

    .line 1254
    .restart local v5       #keepScreenOn:Z
    :cond_b
    sget-object v8, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_c

    .line 1256
    sget-object v8, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {p0, v8}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    goto :goto_6

    .line 1258
    :cond_c
    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_3

    .line 1260
    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iget-object v9, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    if-ne v8, v9, :cond_3

    sget-object v8, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {p0, v8}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    goto :goto_6
.end method

.method wakeUpScreen()V
    .locals 5

    .prologue
    .line 1137
    monitor-enter p0

    .line 1138
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    if-ne v0, v1, :cond_0

    .line 1139
    const-string v0, "PhoneApp"

    const-string v1, "pulse screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1146
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1147
    return-void

    .line 1146
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1142
    :catch_0
    move-exception v0

    goto :goto_0
.end method
