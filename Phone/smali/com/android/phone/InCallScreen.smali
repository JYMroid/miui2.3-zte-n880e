.class public Lcom/android/phone/InCallScreen;
.super Landroid/app/Activity;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallScreen$18;,
        Lcom/android/phone/InCallScreen$InCallInitStatus;,
        Lcom/android/phone/InCallScreen$InCallScreenMode;
    }
.end annotation


# static fields
.field public static final ACTION_SHOW_ACTIVATION:Ljava/lang/String; = "com.android.phone.InCallScreen.SHOW_ACTIVATION"

.field public static final ACTION_UNDEFINED:Ljava/lang/String; = "com.android.phone.InCallScreen.UNDEFINED"

.field private static final ADD_VOICEMAIL_NUMBER:I = 0x6a

.field private static final ALLOW_SCREEN_ON:I = 0x70

.field static final AUTO_RETRY_OFF:I = 0x0

.field static final AUTO_RETRY_ON:I = 0x1

.field private static final CALL_ENDED_LONG_DELAY:I = 0x7d0

.field private static final CALL_ENDED_SAVE_DELAY:I = 0xfa0

.field private static final CALL_ENDED_SHORT_DELAY:I = 0x5dc

.field private static final DBG:Z = true

.field private static final DELAYED_CDMA_HOLD_HANDLE:I = 0x7b

.field private static final DELAYED_CLEANUP_AFTER_DISCONNECT:I = 0x6c

.field private static final DISMISS_MENU:I = 0x6f

.field private static final DONT_ADD_VOICEMAIL_NUMBER:I = 0x6b

.field private static final ECM_DIALOG_TIMEOUT:I = 0x1f4

.field private static final EVENT_HEADSET_PLUG_STATE_CHANGED:I = 0x67

.field private static final EVENT_HIDE_PROVIDER_OVERLAY:I = 0x79

.field private static final EVENT_OTA_PROVISION_CHANGE:I = 0x75

.field private static final EVENT_PAUSE_DIALOG_COMPLETE:I = 0x78

.field static final EXTRA_GATEWAY_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

.field static final EXTRA_GATEWAY_URI:Ljava/lang/String; = "com.android.phone.extra.GATEWAY_URI"

.field public static final EXTRA_OTA_CALL:Ljava/lang/String; = "android.phone.extra.OTA_CALL"

.field private static final LOG_TAG:Ljava/lang/String; = "InCallScreen"

.field private static final MENU_DISMISS_DELAY:I = 0x3e8

.field public static final OTA_NUMBER:Ljava/lang/String; = "*228"

.field private static final PAUSE_PROMPT_DIALOG_TIMEOUT:I = 0x7d0

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x73

.field private static final PHONE_DISCONNECT:I = 0x66

.field private static final PHONE_STATE_CHANGED:I = 0x65

.field private static final POST_ON_DIAL_CHARS:I = 0x68

.field private static final PROVIDER_OVERLAY_TIMEOUT:I = 0x1388

.field public static final REJECT_SMS_SEND_ACTION_REQUEST:Ljava/lang/String; = "com.android.REJECT_SMS_SEND_ACTIOIN_REQUEST"

.field public static final REJECT_SMS_SEND_MODE:Ljava/lang/String; = "com.android.REJECT_SMS_SEND_MODE"

.field public static final REJECT_SMS_SEND_NUMBER:Ljava/lang/String; = "com.android.REJECT_SMS_SEND_NUMBER"

.field public static final REJECT_SMS_SEND_TEXT:Ljava/lang/String; = "com.android.REJECT_SMS_SEND_TEXT"

.field private static final REQUEST_CLOSE_OTA_FAILURE_NOTICE:I = 0x77

.field private static final REQUEST_CLOSE_SPC_ERROR_NOTICE:I = 0x76

.field private static final REQUEST_UPDATE_BLUETOOTH_INDICATION:I = 0x72

.field private static final REQUEST_UPDATE_TOUCH_UI:I = 0x7a

.field static final SHOW_DIALPAD_EXTRA:Ljava/lang/String; = "com.android.phone.ShowDialpad"

.field private static final SHOW_EXITING_ECM_DIALOG:I = 0x7c

.field public static final SUBSCRIPTION:Ljava/lang/String; = "Subscription"

.field private static final SUPP_SERVICE_FAILED:I = 0x6e

.field private static final THREEWAY_CALLERINFO_DISPLAY_DONE:I = 0x74

.field private static final THREEWAY_CALLERINFO_DISPLAY_TIME:I = 0xbb8

.field private static final TOUCH_LOCK_DELAY_DEFAULT:I = 0x1770

.field private static final TOUCH_LOCK_TIMER:I = 0x71

.field private static final VDBG:Z = true

.field private static final WILD_PROMPT_CHAR_ENTERED:I = 0x69

.field private static mRecordOn:Z

.field private static mRemoteEndCallNormal:Z


# instance fields
.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallCard:Lcom/android/phone/CallCard;

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field private mCallRecordTime:Lcom/android/phone/CallRecordTime;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field private mExitingECMDialog:Landroid/app/AlertDialog;

.field mFloatView:Lcom/android/phone/FloatView;

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHoldClickLastTime:J

.field private mInCallControlState:Lcom/android/phone/InCallControlState;

.field private mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field private mInCallMenu:Lcom/android/phone/InCallMenu;

.field private mInCallPanel:Landroid/view/ViewGroup;

.field private mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field private mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

.field private mIsDestroyed:Z

.field private mIsForegroundActivity:Z

.field private mIsInCallScreenWillDestroyed:Z

.field private mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field private mMainFrame:Landroid/view/ViewGroup;

.field private mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mNeedShowCallLostDialog:Z

.field private mNotUpdateMenu:Z

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Landroid/app/AlertDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPostDialStrAfterPause:Ljava/lang/String;

.field private mProviderAddress:Ljava/lang/String;

.field private mProviderGatewayUri:Landroid/net/Uri;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderLabel:Ljava/lang/CharSequence;

.field private mProviderOverlayVisible:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredForPhoneStates:Z

.field private mSaveContactButton:Landroid/widget/Button;

.field private mSaveContactNum:Ljava/lang/String;

.field private mShowCallWidget:Z

.field private mShowCallWidgetChange:Z

.field private mSmsReject:Z

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mSwapClickLastTime:J

.field private mTouchLockFadeIn:Landroid/view/animation/Animation;

.field private mTouchLockIcon:Landroid/view/View;

.field private mTouchLockLastTouchTime:J

.field private mTouchLockOverlay:Landroid/view/View;

.field private mUseTouchLockOverlay:Z

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptText:Landroid/widget/EditText;

.field mWm:Landroid/view/WindowManager;

.field private mXFloatView:I

.field public otaUtils:Lcom/android/phone/OtaUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 347
    sput-boolean v0, Lcom/android/phone/InCallScreen;->mRecordOn:Z

    .line 414
    sput-boolean v0, Lcom/android/phone/InCallScreen;->mRemoteEndCallNormal:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 229
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mNotUpdateMenu:Z

    .line 253
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsInCallScreenWillDestroyed:Z

    .line 284
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 336
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 355
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mSmsReject:Z

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mShowCallWidget:Z

    .line 360
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mShowCallWidgetChange:Z

    .line 371
    iput-wide v3, p0, Lcom/android/phone/InCallScreen;->mHoldClickLastTime:J

    .line 372
    iput-wide v3, p0, Lcom/android/phone/InCallScreen;->mSwapClickLastTime:J

    .line 394
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 395
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 399
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 408
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mFloatView:Lcom/android/phone/FloatView;

    .line 409
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWm:Landroid/view/WindowManager;

    .line 410
    iput v1, p0, Lcom/android/phone/InCallScreen;->mXFloatView:I

    .line 417
    new-instance v0, Lcom/android/phone/InCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$1;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    .line 631
    new-instance v0, Lcom/android/phone/InCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$2;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onMMICancel(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->touchLockTimerExpired()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mNotUpdateMenu:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showExitingECMDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/InCallScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/phone/InCallScreen;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallTouchUi;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    return-void
.end method

.method private addVoiceMailNumberPanel()V
    .locals 3

    .prologue
    .line 3405
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 3406
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3407
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3409
    :cond_0
    const-string v1, "addVoiceMailNumberPanel: finishing InCallScreen..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3410
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3412
    const-string v1, "show vm setting"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3415
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3418
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3419
    const-string v1, "SUBSCRIPTION_ID"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3423
    :cond_1
    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3424
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3425
    return-void
.end method

.method private bailOutAfterErrorDialog()V
    .locals 1

    .prologue
    .line 4430
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 4431
    const-string v0, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4432
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 4435
    :cond_0
    const-string v0, "bailOutAfterErrorDialog(): end InCallScreen session..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4443
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 4444
    return-void
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 3
    .parameter "state"

    .prologue
    .line 3332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIfOkToInitiateOutgoingCall: ServiceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3334
    packed-switch p1, :pswitch_data_0

    .line 3359
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3337
    :pswitch_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 3356
    :goto_0
    return-object v0

    .line 3341
    :pswitch_1
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 3352
    :pswitch_2
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 3356
    :pswitch_3
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->OUT_OF_SERVICE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 3334
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkIsOtaCall(Landroid/content/Intent;)Z
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 5803
    const-string v0, "checkIsOtaCall..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5805
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 5875
    :goto_0
    return v0

    .line 5809
    :cond_1
    const-string v0, "Subscription"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 5810
    .local v13, sub:I
    invoke-static {v13}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 5811
    .local v12, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v12}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 5812
    goto :goto_0

    .line 5815
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    .line 5817
    .local v7, app:Lcom/android/phone/PhoneApp;
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v0, :cond_4

    .line 5819
    :cond_3
    const-string v0, "checkIsOtaCall: OtaUtils.CdmaOtaScreenState not initialized"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v0, v2

    .line 5820
    goto :goto_0

    .line 5823
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 5824
    .local v6, action:Ljava/lang/String;
    const/4 v9, 0x0

    .line 5825
    .local v9, isOtaCall:Z
    const-string v0, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5826
    const-string v0, "checkIsOtaCall action = ACTION_SHOW_ACTIVATION"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5827
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v0, :cond_5

    .line 5828
    const-string v0, "checkIsOtaCall: ACTION_SHOW_ACTIVATION is not handled before"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5829
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 5830
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 5833
    :cond_5
    const/4 v9, 0x1

    .line 5869
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIsOtaCall: isOtaCall ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5870
    if-eqz v9, :cond_7

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_7

    .line 5871
    const-string v0, "checkIsOtaCall: creating OtaUtils..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5872
    new-instance v0, Lcom/android/phone/OtaUtils;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;Lcom/android/phone/DTMFTwelveKeyDialer;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    :cond_7
    move v0, v9

    .line 5875
    goto/16 :goto_0

    .line 5834
    :cond_8
    const-string v0, "android.intent.action.CALL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5838
    :cond_9
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 5843
    .local v11, number:Ljava/lang/String;
    invoke-interface {v12, v11}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5844
    const-string v0, "checkIsOtaCall action ACTION_CALL, it is valid OTA number"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5845
    const/4 v9, 0x1

    goto :goto_1

    .line 5839
    .end local v11           #number:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 5840
    .local v8, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    const-string v0, "Error retrieving number using the api getInitialNumber()"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v0, v2

    .line 5841
    goto/16 :goto_0

    .line 5847
    .end local v8           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    :cond_a
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5848
    const-string v0, "checkIsOtaCall action ACTION_MAIN"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5849
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v10

    .line 5850
    .local v10, isRingingCall:Z
    if-eqz v10, :cond_b

    .line 5851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIsOtaCall isRingingCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v0, v2

    .line 5852
    goto/16 :goto_0

    .line 5853
    :cond_b
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-eq v0, v1, :cond_c

    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v1, :cond_d

    .line 5857
    :cond_c
    const-string v0, "checkIsOtaCall action ACTION_MAIN, OTA call already in progress"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5858
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 5860
    :cond_d
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_6

    .line 5862
    const-string v0, "checkIsOtaCall action ACTION_MAIN, OTA call in progress with UNDEFINED"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5864
    const/4 v9, 0x1

    goto/16 :goto_1
.end method

.method private clearProvider()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6047
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 6048
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    .line 6049
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 6050
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    .line 6051
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    .line 6052
    return-void
.end method

.method public static createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "address"

    .prologue
    .line 2543
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2544
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2545
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2546
    const-string v1, "phone_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2548
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2550
    return-object v0
.end method

.method private createFloatWindow()V
    .locals 9

    .prologue
    const/16 v8, 0x140

    .line 6132
    new-instance v6, Lcom/android/phone/FloatView;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/phone/FloatView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mFloatView:Lcom/android/phone/FloatView;

    .line 6133
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mFloatView:Lcom/android/phone/FloatView;

    const v7, 0x7f020056

    invoke-virtual {v6, v7}, Lcom/android/phone/FloatView;->setImageResource(I)V

    .line 6134
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mFloatView:Lcom/android/phone/FloatView;

    new-instance v7, Lcom/android/phone/InCallScreen$17;

    invoke-direct {v7, p0}, Lcom/android/phone/InCallScreen$17;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v6, v7}, Lcom/android/phone/FloatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6140
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mWm:Landroid/view/WindowManager;

    .line 6142
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getWmParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 6143
    .local v5, wmParams:Landroid/view/WindowManager$LayoutParams;
    const/16 v6, 0x7d2

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6144
    const/4 v6, -0x2

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 6145
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6147
    const/16 v4, 0x50

    .line 6148
    .local v4, widthIcon:I
    const/16 v2, 0x54

    .line 6149
    .local v2, heigthIcon:I
    const/16 v6, 0x33

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 6151
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 6152
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mWm:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6154
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6155
    .local v3, width:I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6156
    .local v1, height:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createFloatWindow, width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6157
    if-ne v3, v8, :cond_1

    const/16 v6, 0x1e0

    if-ne v1, v6, :cond_1

    .line 6158
    const/16 v4, 0x34

    .line 6159
    const/16 v2, 0x37

    .line 6166
    :cond_0
    :goto_0
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v6, v4

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 6167
    const/4 v6, 0x0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 6168
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v6, p0, Lcom/android/phone/InCallScreen;->mXFloatView:I

    .line 6171
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6172
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6175
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mWm:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mFloatView:Lcom/android/phone/FloatView;

    invoke-interface {v6, v7, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6176
    return-void

    .line 6161
    :cond_1
    const/16 v6, 0xf0

    if-ne v3, v6, :cond_0

    if-ne v1, v8, :cond_0

    .line 6162
    const/16 v4, 0x28

    .line 6163
    const/16 v2, 0x28

    goto :goto_0
.end method

.method private createWildPromptView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x4160

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    .line 2792
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2793
    .local v3, result:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2794
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2796
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2800
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2801
    .local v2, promptMsg:Landroid/widget/TextView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2802
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2803
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2805
    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2807
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    .line 2808
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 2809
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2810
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setTextSize(F)V

    .line 2811
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 2812
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 2813
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const v5, 0x1080018

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 2815
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2818
    .local v1, lp2:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x3

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2820
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2822
    return-object v3
.end method

.method private delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 3453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayedCleanupAfterDisconnect()...  Phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3465
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 3467
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3469
    const-string v0, "- delayedCleanupAfterDisconnect: phone is idle..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3473
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_0

    .line 3474
    const-string v0, "- delayedCleanupAfterDisconnect: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3491
    const-string v0, "- Post-call behavior:"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mLastDisconnectCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - isPhoneStateRestricted() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->isPhoneStateRestricted(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3516
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3526
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InCallScreen;->mRemoteEndCallNormal:Z

    .line 3528
    return-void

    .line 3521
    :cond_1
    const-string v0, "- delayedCleanupAfterDisconnect: staying on the InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3522
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    goto :goto_0
.end method

.method private dismissAllDialogs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4453
    const-string v0, "dismissAllDialogs()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4460
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 4461
    const-string v0, "- DISMISSING mMissingVoicemailDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4462
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4463
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 4465
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 4466
    const-string v0, "- DISMISSING mMmiStartedDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4467
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4468
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 4470
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 4471
    const-string v0, "- DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4472
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4473
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 4475
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 4476
    const-string v0, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4477
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4478
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 4480
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 4481
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4482
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4483
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4485
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 4486
    const-string v0, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4487
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4488
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 4490
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 4491
    const-string v0, "- DISMISSING mCallLostDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4492
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4493
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 4495
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_8

    .line 4498
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 4500
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 4501
    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4502
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4503
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 4505
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 4506
    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4507
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4508
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 4510
    :cond_a
    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .locals 1

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3429
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3432
    :cond_0
    const-string v0, "dontAddVoiceMailNumber: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3433
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3434
    return-void
.end method

.method private dumpBluetoothState()V
    .locals 3

    .prologue
    .line 5416
    const-string v1, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= isBluetoothAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= isBluetoothAudioConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= PhoneApp.showBluetoothIndication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5422
    const-string v1, "="

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5423
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v1, :cond_2

    .line 5424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHandsfree.isAudioOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5425
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    .line 5426
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 5427
    .local v0, headset:Landroid/bluetooth/BluetoothDevice;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHeadset.getCurrentHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5428
    if-eqz v0, :cond_0

    .line 5429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHeadset.isConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5438
    .end local v0           #headset:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 5433
    :cond_1
    const-string v1, "= mBluetoothHeadset is null"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5436
    :cond_2
    const-string v1, "= mBluetoothHandsfree is null; device is not BT capable"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableTouchLock(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 5540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableTouchLock("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5541
    if-eqz p1, :cond_5

    .line 5544
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    if-nez v0, :cond_1

    .line 5545
    const-string v0, "InCallScreen"

    const-string v1, "enableTouchLock: touch lock isn\'t used on this device!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5586
    :cond_0
    :goto_0
    return-void

    .line 5551
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5552
    const-string v0, "enableTouchLock: dialpad isn\'t up, no need to lock screen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5557
    :cond_2
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5558
    const-string v0, "enableTouchLock: speaker is on, no need to lock screen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5563
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-nez v0, :cond_4

    .line 5564
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initTouchLock()V

    .line 5570
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 5573
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5574
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mTouchLockFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 5584
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private endInCallScreenSession(Z)V
    .locals 2
    .parameter "forceFinish"

    .prologue
    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endInCallScreenSession("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1321
    if-eqz p1, :cond_0

    .line 1322
    const-string v0, "InCallScreen"

    const-string v1, "endInCallScreenSession(): FORCING a call to super.finish()!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1328
    :goto_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 1329
    return-void

    .line 1326
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method private getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .parameter "conn"

    .prologue
    .line 2481
    const/4 v1, 0x0

    .line 2482
    .local v1, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 2484
    .local v2, o:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_1

    .line 2485
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v1, v0

    .line 2489
    .end local v2           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 2487
    .restart local v2       #o:Ljava/lang/Object;
    :cond_1
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #o:Ljava/lang/Object;
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method private getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    const-string v2, "android.intent.extra.PHONE_NUMBER"

    .line 3075
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3077
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3078
    const/4 v1, 0x0

    .line 3086
    :goto_0
    return-object v1

    .line 3081
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3083
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3086
    :cond_1
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 4
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 2500
    const/4 v0, 0x0

    .line 2502
    .local v0, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2503
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2523
    :goto_0
    if-nez v0, :cond_4

    .line 2524
    const/4 v2, 0x0

    .line 2535
    :goto_1
    return-object v2

    .line 2510
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2512
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2514
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2516
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2519
    :cond_3
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 2526
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 2529
    .local v1, presentation:I
    invoke-static {p0, p2, v0, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2531
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2532
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2534
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLogNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move-object v2, v0

    .line 2535
    goto :goto_1
.end method

.method private handleCallKey()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1672
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    .line 1673
    .local v4, hasRingingCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 1674
    .local v2, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 1676
    .local v3, hasHoldingCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 1677
    .local v5, phoneType:I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 1681
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1682
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v6, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 1684
    .local v1, currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    if-eqz v4, :cond_1

    .line 1686
    const-string v6, "answerCall: First Incoming and Call Waiting scenario"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1687
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 1759
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_0
    :goto_0
    return v8

    .line 1689
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_1
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v6, :cond_2

    if-eqz v2, :cond_2

    .line 1692
    const-string v6, "answerCall: Merge 3-way call scenario"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1694
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 1695
    :cond_2
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v6, :cond_3

    .line 1698
    const-string v6, "answerCall: Switch btwn 2 calls scenario"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1699
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 1702
    :cond_3
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v6, :cond_0

    .line 1704
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    .line 1705
    const-string v6, "switch Hold or unhold for cdma"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1708
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_4
    if-eq v5, v8, :cond_5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_a

    .line 1710
    :cond_5
    if-eqz v4, :cond_6

    .line 1721
    const-string v6, "InCallScreen"

    const-string v7, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 1728
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 1730
    const-string v6, "handleCallKey: both lines in use ==> swap calls."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1731
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 1732
    :cond_7
    if-eqz v3, :cond_8

    .line 1735
    const-string v6, "handleCallKey: call on hold ==> unhold."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1736
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 1737
    :cond_8
    if-eqz v2, :cond_9

    .line 1739
    const-string v6, "handleCallKey: call on unhold ==> hold."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1740
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 1750
    :cond_9
    const-string v6, "handleCallKey: call in foregound ==> ignoring."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1754
    :cond_a
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDialerKeyDown: keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1588
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMissingVoiceMailNumber()V
    .locals 5

    .prologue
    .line 3364
    const-string v2, "handleMissingVoiceMailNumber"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3366
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 3367
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x6b

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3369
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 3370
    .local v1, msg2:Landroid/os/Message;
    const/16 v2, 0x6a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3372
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0056

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0057

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c004b

    new-instance v4, Lcom/android/phone/InCallScreen$12;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/InCallScreen$12;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0058

    new-instance v4, Lcom/android/phone/InCallScreen$11;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/InCallScreen$11;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$10;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/InCallScreen$10;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3398
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 3401
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 3402
    return-void
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 8
    .parameter "r"
    .parameter "ch"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 2619
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2621
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 2622
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 2625
    .local v3, state:Lcom/android/internal/telephony/Connection$PostDialState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePostOnDialChar: state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2628
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2629
    .local v1, phoneType:I
    sget-object v4, Lcom/android/phone/InCallScreen$18;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2684
    .end local v1           #phoneType:I
    .end local v3           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_0
    :goto_0
    return-void

    .line 2631
    .restart local v1       #phoneType:I
    .restart local v3       #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :pswitch_0
    if-ne v1, v6, :cond_0

    .line 2632
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 2633
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    if-eqz v4, :cond_1

    .line 2634
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallScreen;->showPausePromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 2636
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 2637
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->startLocalToneCdma(C)V

    goto :goto_0

    .line 2647
    :pswitch_1
    const-string v4, "handlePostOnDialChars: show WAIT prompt..."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2648
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    .line 2649
    .local v2, postDialStr:Ljava/lang/String;
    if-ne v1, v6, :cond_2

    .line 2650
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 2651
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 2652
    :cond_2
    if-ne v1, v7, :cond_3

    .line 2653
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogGSM(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 2654
    :cond_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    .line 2655
    const-string v4, "InCallScreen"

    const-string v5, "SipPhone doesn\'t support post dial yet"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2657
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2662
    .end local v2           #postDialStr:Ljava/lang/String;
    :pswitch_2
    const-string v4, "handlePostOnDialChars: show WILD prompt"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2663
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 2667
    :pswitch_3
    if-ne v1, v6, :cond_0

    .line 2668
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    goto :goto_0

    .line 2673
    :pswitch_4
    if-ne v1, v6, :cond_0

    .line 2674
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    .line 2675
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 2676
    iput-boolean v7, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    goto :goto_0

    .line 2629
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0c01f4

    const/4 v2, 0x1

    const-string v5, "InCallScreen"

    .line 4205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError(): status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4217
    sget-object v0, Lcom/android/phone/InCallScreen$18;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4300
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError: unexpected status code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4301
    invoke-direct {p0, v3, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    .line 4304
    :cond_0
    :goto_0
    return-void

    .line 4223
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleMissingVoiceMailNumber()V

    goto :goto_0

    .line 4234
    :pswitch_1
    const v0, 0x7f0c01f0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4241
    :pswitch_2
    const v0, 0x7f0c01f1

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4248
    :pswitch_3
    const v0, 0x7f0c01f2

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4255
    :pswitch_4
    const-string v0, "InCallScreen"

    const-string v0, "handleStartupError: unexpected PHONE_NOT_IN_USE status"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4263
    :pswitch_5
    const v0, 0x7f0c01f3

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4275
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 4276
    const v0, 0x7f0c01f5

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4287
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    .line 4288
    const-string v0, "ghh0618 CALL_FAILED and showGenericErrorDialog !"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4289
    invoke-direct {p0, v3, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4295
    :pswitch_8
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private initInCallScreen()V
    .locals 2

    .prologue
    .line 1537
    const-string v0, "initInCallScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1545
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 1547
    const v0, 0x7f07007a

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    .line 1548
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    .line 1551
    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCard;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    .line 1552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mCallCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1553
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1555
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->getCallRecordTime()Lcom/android/phone/CallRecordTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    .line 1558
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallTouchUi()V

    .line 1561
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mSaveContactButton:Landroid/widget/Button;

    .line 1562
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSaveContactButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1563
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSaveContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1566
    new-instance v0, Lcom/android/phone/InCallControlState;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/InCallControlState;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    .line 1569
    new-instance v0, Lcom/android/phone/ManageConferenceUtils;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/ManageConferenceUtils;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    .line 1570
    return-void
.end method

.method private initInCallTouchUi()V
    .locals 1

    .prologue
    .line 5097
    const-string v0, "initInCallTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5102
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallTouchUi;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    .line 5103
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0, p0}, Lcom/android/phone/InCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 5104
    return-void
.end method

.method private initOtaState(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    .line 5892
    const/4 v2, 0x0

    .line 5894
    .local v2, inOtaCall:Z
    invoke-static {p1}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5895
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5897
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v3, :cond_1

    .line 5898
    :cond_0
    const-string v3, "initOtaState func - All CdmaOTA utility classes not initialized"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v3, v4

    .line 5927
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :goto_0
    return v3

    .line 5902
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->checkIsOtaCall(Landroid/content/Intent;)Z

    move-result v2

    .line 5903
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_6

    .line 5904
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v1

    .line 5906
    .local v1, cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v3, :cond_3

    .line 5907
    const-string v3, "initOtaState - in OTA Normal mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5908
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    :cond_2
    :goto_1
    move v3, v2

    .line 5927
    goto :goto_0

    .line 5909
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    :cond_3
    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v3, :cond_4

    .line 5911
    const-string v3, "initOtaState - in OTA END mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5912
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 5913
    :cond_4
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v3, v4, :cond_5

    .line 5915
    const-string v3, "initOtaState - set OTA END Mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5916
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 5918
    :cond_5
    const-string v3, "initOtaState - Set OTA NORMAL Mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5919
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 5922
    .end local v1           #cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    :cond_6
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_2

    .line 5923
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3, v4}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    goto :goto_1
.end method

.method private initTouchLock()V
    .locals 2

    .prologue
    const-string v1, "InCallScreen"

    .line 5492
    const-string v0, "initTouchLock()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5493
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 5494
    const-string v0, "InCallScreen"

    const-string v0, "initTouchLock: already initialized!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5514
    :goto_0
    return-void

    .line 5498
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    if-nez v0, :cond_1

    .line 5499
    const-string v0, "InCallScreen"

    const-string v0, "initTouchLock: touch lock isn\'t used on this device!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5503
    :cond_1
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    .line 5505
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    .line 5510
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5511
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5513
    const/high16 v0, 0x7f04

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockFadeIn:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method private internalSwapCalls()V
    .locals 7

    .prologue
    .line 4611
    const-string v3, "internalSwapCalls()..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4616
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 4623
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 4627
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 4628
    .local v1, now:J
    iget-wide v3, p0, Lcom/android/phone/InCallScreen;->mSwapClickLastTime:J

    const-wide/16 v5, 0x320

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 4630
    const-string v3, "--yym-- internalSwapCalls() should not handle the request when it comes too fast"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4655
    :cond_0
    :goto_0
    return-void

    .line 4635
    :cond_1
    iput-wide v1, p0, Lcom/android/phone/InCallScreen;->mSwapClickLastTime:J

    .line 4643
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 4648
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 4649
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 4650
    .local v0, bthf:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_0

    .line 4651
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    goto :goto_0
.end method

.method private isNowSipPhone()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 2063
    const/4 v0, 0x0

    .line 2064
    .local v0, isNowSipPhone:Z
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2066
    :cond_0
    const/4 v0, 0x1

    .line 2068
    :cond_1
    return v0
.end method

.method private isTouchLocked()Z
    .locals 1

    .prologue
    .line 5517
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 6127
    const-string v0, "InCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6128
    return-void
.end method

.method private okToDialDTMFTones()Z
    .locals 5

    .prologue
    .line 5055
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 5056
    .local v2, hasRingingCall:Z
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 5067
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_1

    :cond_0
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 5072
    .local v0, canDial:Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[okToDialDTMFTones] foreground state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ringing state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", call screen mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5077
    return v0

    .line 5067
    .end local v0           #canDial:Z
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private onBluetoothClick()V
    .locals 2

    .prologue
    .line 3838
    const-string v0, "onBluetoothClick()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3840
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3842
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3843
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 3862
    :goto_0
    return-void

    .line 3851
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3852
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 3855
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->connectBluetoothAudio()V

    goto :goto_0

    .line 3860
    :cond_2
    const-string v0, "InCallScreen"

    const-string v1, "Got onBluetoothClick, but bluetooth is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 27
    .parameter "r"

    .prologue
    .line 2088
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 2089
    .local v6, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v10

    .line 2090
    .local v10, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    .line 2091
    .local v20, phone:Lcom/android/internal/telephony/Phone;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onDisconnect: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", cause="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2093
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 2094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 2098
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 2100
    .local v19, originalInCallIntent:Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v23

    if-nez v23, :cond_3

    const/16 v23, 0x1

    move/from16 v14, v23

    .line 2101
    .local v14, currentlyIdle:Z
    :goto_0
    const/4 v4, 0x0

    .line 2102
    .local v4, autoretrySetting:I
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/16 v23, 0x1

    move/from16 v21, v23

    .line 2103
    .local v21, phoneIsCdma:Z
    :goto_1
    if-eqz v21, :cond_1

    .line 2106
    if-eqz v14, :cond_1

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "call_auto_retry"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 2114
    :cond_1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "phone.getState(): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2115
    sget-boolean v23, Lcom/android/phone/InCallScreen;->mRecordOn:Z

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 2117
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->onRecordEnd(Z)V

    .line 2123
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 2124
    .local v3, app:Lcom/android/phone/PhoneApp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_5

    move-object v0, v3

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    move-object v0, v3

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    move/from16 v23, v0

    if-nez v23, :cond_5

    .line 2127
    sget-object v23, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 2128
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2446
    :goto_2
    return-void

    .line 2100
    .end local v3           #app:Lcom/android/phone/PhoneApp;
    .end local v4           #autoretrySetting:I
    .end local v14           #currentlyIdle:Z
    .end local v21           #phoneIsCdma:Z
    :cond_3
    const/16 v23, 0x0

    move/from16 v14, v23

    goto/16 :goto_0

    .line 2102
    .restart local v4       #autoretrySetting:I
    .restart local v14       #currentlyIdle:Z
    :cond_4
    const/16 v23, 0x0

    move/from16 v21, v23

    goto/16 :goto_1

    .line 2130
    .restart local v3       #app:Lcom/android/phone/PhoneApp;
    .restart local v21       #phoneIsCdma:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_6

    move-object v0, v3

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    move-object v0, v3

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 2132
    :cond_6
    const-string v23, "onDisconnect: OTA Call end already handled"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2139
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 2144
    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 2148
    invoke-static {}, Lcom/android/phone/CallNotifier;->getSuppSvcNotification()Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    move-result-object v22

    .line 2149
    .local v22, suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    if-eqz v22, :cond_10

    .line 2150
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    move/from16 v23, v0

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 2152
    const v23, 0x7f0c0033

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    .line 2153
    invoke-static {}, Lcom/android/phone/CallNotifier;->clearSuppSvcNotification()V

    goto :goto_2

    .line 2157
    .end local v22           #suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :cond_8
    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 2158
    const v23, 0x7f0c0020

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_2

    .line 2160
    :cond_9
    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 2161
    const v23, 0x7f0c001f

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_2

    .line 2163
    :cond_a
    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 2164
    const v23, 0x7f0c0024

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_2

    .line 2166
    :cond_b
    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 2167
    const v23, 0x7f0c0025

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_2

    .line 2169
    :cond_c
    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 2170
    const v23, 0x7f0c0026

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_2

    .line 2172
    :cond_d
    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->DIAL_MODIFIED_TO_USSD:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 2173
    const v23, 0x7f0c0021

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_2

    .line 2175
    :cond_e
    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->DIAL_MODIFIED_TO_SS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 2176
    const v23, 0x7f0c0022

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_2

    .line 2178
    :cond_f
    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->DIAL_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 2179
    const v23, 0x7f0c0023

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_2

    .line 2183
    :cond_10
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->releaseProximitySensorMode()V

    .line 2186
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onDisconnect:mIsInCallScreenWillDestroyed = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->mIsInCallScreenWillDestroyed:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2187
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->mIsInCallScreenWillDestroyed:Z

    move/from16 v23, v0

    if-eqz v23, :cond_18

    .line 2188
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mIsInCallScreenWillDestroyed:Z

    .line 2194
    :goto_3
    if-eqz v21, :cond_11

    .line 2195
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .line 2196
    .local v9, callState:Lcom/android/internal/telephony/Call$State;
    sget-object v23, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object v0, v9

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_19

    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_19

    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_19

    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_19

    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_19

    .line 2201
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 2235
    .end local v9           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_11
    :goto_4
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 2236
    .local v7, call:Lcom/android/internal/telephony/Call;
    if-eqz v7, :cond_13

    .line 2245
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v13

    .line 2246
    .local v13, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v13, :cond_13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_13

    .line 2247
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_12
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_13

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/Connection;

    .line 2248
    .local v12, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 2257
    const-string v23, "- Still-active conf call; clearing DISCONNECTED..."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2258
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2268
    .end local v12           #conn:Lcom/android/internal/telephony/Connection;
    .end local v13           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v18           #i$:Ljava/util/Iterator;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const-string v24, "emergency_call_retry_count"

    const/16 v25, -0x1

    invoke-virtual/range {v23 .. v25}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 2284
    .local v15, emergencyCallRetryCount:I
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 2287
    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_14

    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->USER_ALERTING_NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_15

    .line 2289
    :cond_14
    const/16 v23, 0x1

    sput-boolean v23, Lcom/android/phone/InCallScreen;->mRemoteEndCallNormal:Z

    .line 2297
    :cond_15
    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_16

    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_16

    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1d

    if-lez v15, :cond_1d

    :cond_16
    if-eqz v14, :cond_1d

    const/16 v23, 0x1

    move/from16 v5, v23

    .line 2304
    .local v5, bailOutImmediately:Z
    :goto_5
    if-eqz v5, :cond_1e

    .line 2305
    const-string v23, "- onDisconnect: bailOutImmediately..."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2311
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;)V

    .line 2318
    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_17

    if-lez v15, :cond_17

    .line 2320
    const-string v23, "InCallScreen"

    const-string v24, "onDisconnect: OUT_OF_SERVICE; need to retry emergency call!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    const-string v23, "InCallScreen"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "- emergencyCallRetryCount = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    const-class v23, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    .line 2335
    .local v17, i:Landroid/content/Intent;
    const-string v23, "InCallScreen"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "- launching: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 2353
    .end local v17           #i:Landroid/content/Intent;
    :cond_17
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;)V

    .line 2445
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x74

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_2

    .line 2190
    .end local v5           #bailOutImmediately:Z
    .end local v7           #call:Lcom/android/internal/telephony/Call;
    .end local v15           #emergencyCallRetryCount:I
    :cond_18
    sget-object v23, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    goto/16 :goto_3

    .line 2202
    .restart local v9       #callState:Lcom/android/internal/telephony/Call$State;
    :cond_19
    sget-object v23, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object v0, v9

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_1a

    sget-object v23, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object v0, v9

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_11

    :cond_1a
    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_11

    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_11

    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_11

    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_11

    .line 2208
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1b

    .line 2210
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 2211
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 2213
    :cond_1b
    if-nez v4, :cond_1c

    .line 2215
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 2216
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 2220
    :cond_1c
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 2297
    .end local v9           #callState:Lcom/android/internal/telephony/Call$State;
    .restart local v7       #call:Lcom/android/internal/telephony/Call;
    .restart local v15       #emergencyCallRetryCount:I
    :cond_1d
    const/16 v23, 0x0

    move/from16 v5, v23

    goto/16 :goto_5

    .line 2355
    .restart local v5       #bailOutImmediately:Z
    :cond_1e
    const-string v23, "- onDisconnect: delayed bailout..."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2363
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2367
    if-eqz v14, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v23

    if-nez v23, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v23

    if-eqz v23, :cond_20

    .line 2369
    :cond_1f
    const-string v23, "- onDisconnect: switching to \'Call ended\' state..."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2370
    sget-object v23, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 2375
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v16

    .line 2376
    .local v16, hasActiveCall:Z
    if-nez v16, :cond_23

    .line 2377
    const-string v23, "- onDisconnect: cleaning up after FG call disconnect..."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v23, v0

    if-eqz v23, :cond_21

    .line 2382
    const-string v23, "- DISMISSING mWaitPromptDialog."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->dismiss()V

    .line 2384
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2386
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v23, v0

    if-eqz v23, :cond_22

    .line 2387
    const-string v23, "- DISMISSING mWildPromptDialog."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->dismiss()V

    .line 2389
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2391
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v23, v0

    if-eqz v23, :cond_23

    .line 2392
    const-string v23, "- DISMISSING mPausePromptDialog."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->dismiss()V

    .line 2394
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 2408
    :cond_23
    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_24

    .line 2409
    if-nez v14, :cond_24

    .line 2413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2417
    const-string v23, "onDisconnect: Call Collision case - staying on InCallScreen."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2418
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    goto/16 :goto_2

    .line 2428
    :cond_24
    const/4 v8, 0x0

    .line 2429
    .local v8, callEndedDisplayDelay:I
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v11

    .line 2430
    .local v11, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v11, :cond_25

    move-object v0, v11

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v23, v0

    if-nez v23, :cond_25

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v23

    if-nez v23, :cond_25

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->isNowSipPhone()Z

    move-result v23

    if-nez v23, :cond_25

    .line 2431
    const/16 v8, 0xfa0

    .line 2437
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x6c

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 2438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x6c

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    move v0, v8

    int-to-long v0, v0

    move-wide/from16 v25, v0

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6

    .line 2433
    :cond_25
    sget-object v23, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v10

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_26

    const/16 v23, 0x5dc

    move/from16 v8, v23

    :goto_8
    goto :goto_7

    :cond_26
    const/16 v23, 0x7d0

    move/from16 v8, v23

    goto :goto_8
.end method

.method private onHoldClick()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3718
    const-string v6, "onHoldClick()..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3722
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3723
    .local v4, now:J
    iget-wide v6, p0, Lcom/android/phone/InCallScreen;->mHoldClickLastTime:J

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 3725
    const-string v6, "--yym-- onHoldClick() should not handle the request when it comes too fast"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3788
    :goto_0
    return-void

    .line 3730
    :cond_0
    iput-wide v4, p0, Lcom/android/phone/InCallScreen;->mHoldClickLastTime:J

    .line 3736
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 3737
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3738
    iput-boolean v10, p0, Lcom/android/phone/InCallScreen;->mNotUpdateMenu:Z

    .line 3739
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    invoke-virtual {v6}, Lcom/android/phone/InCallControlState;->update()V

    .line 3740
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "yangliu,onHoldClick()...mInCallControlState.canHold "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->canHold:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3741
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "yangliu,onHoldClick()...mInCallControlState.onHold "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3742
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v6, v6, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v6, :cond_1

    .line 3743
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->onHold:Z

    if-nez v7, :cond_3

    move v7, v10

    :goto_1
    iput-boolean v7, v6, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 3745
    :cond_1
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v6, :cond_2

    .line 3746
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v6}, Lcom/android/phone/InCallMenu;->setCdmaHoldDisable()V

    .line 3749
    :cond_2
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v6, v6, Lcom/android/phone/InCallControlState;->onHold:Z

    if-eqz v6, :cond_4

    .line 3750
    invoke-virtual {p0, v10}, Lcom/android/phone/InCallScreen;->sendCdmaHoldMessage(I)V

    .line 3787
    :goto_2
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6, v10}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0

    :cond_3
    move v7, v11

    .line 3743
    goto :goto_1

    .line 3752
    :cond_4
    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreen;->sendCdmaHoldMessage(I)V

    goto :goto_2

    .line 3759
    :cond_5
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 3760
    .local v0, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 3761
    .local v1, hasHoldingCall:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- hasActiveCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hasHoldingCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3765
    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    .line 3767
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3768
    const/4 v3, 0x1

    .line 3769
    .local v3, newHoldState:Z
    const/4 v2, 0x1

    .local v2, holdButtonEnabled:Z
    goto :goto_2

    .line 3770
    .end local v2           #holdButtonEnabled:Z
    .end local v3           #newHoldState:Z
    :cond_6
    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    .line 3772
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3773
    const/4 v3, 0x0

    .line 3774
    .restart local v3       #newHoldState:Z
    const/4 v2, 0x1

    .restart local v2       #holdButtonEnabled:Z
    goto :goto_2

    .line 3777
    .end local v2           #holdButtonEnabled:Z
    .end local v3           #newHoldState:Z
    :cond_7
    const/4 v3, 0x0

    .line 3778
    .restart local v3       #newHoldState:Z
    goto :goto_2
.end method

.method private onMMICancel(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 2591
    const-string v0, "onMMICancel()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2594
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 2605
    const-string v0, "onMMICancel: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2606
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 2607
    return-void
.end method

.method private onMMIInitiate(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 2557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMMIInitiate()...  AsyncResult r = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2558
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 2565
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    iget-boolean v3, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v3, :cond_0

    .line 2566
    const-string v3, "Activity not in foreground! Bailing out..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2582
    :goto_0
    return-void

    .line 2574
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 2576
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 2577
    .local v1, mmiCode:Lcom/android/internal/telephony/MmiCode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - MmiCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2579
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x35

    invoke-static {v3, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2580
    .local v0, message:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v1, v0, v3}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private onMuteClick()V
    .locals 2

    .prologue
    .line 3832
    const-string v1, "onMuteClick()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3833
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 3834
    .local v0, newMuteState:Z
    :goto_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3835
    return-void

    .line 3833
    .end local v0           #newMuteState:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 2026
    const-string v0, "onPhoneStateChanged()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2029
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2030
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setFloatViewVisibility(I)V

    .line 2037
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_1

    .line 2038
    const-string v0, "onPhoneStateChanged: Activity not in foreground! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2041
    const-string v0, "onPhoneStateChanged: release WakeState.SLEEP ..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2043
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2060
    :goto_0
    return-void

    .line 2050
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mSmsReject:Z

    if-eqz v0, :cond_2

    .line 2051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdma sendRejectSms ...mSmsReject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mSmsReject:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2052
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->sendRejectSms()V

    .line 2055
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2059
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto :goto_0
.end method

.method private onRecordClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3865
    const-string v2, "onRecordClick()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3867
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v2}, Lcom/android/phone/CallRecordTime;->is4gNoSDCard()Z

    move-result v0

    .line 3868
    .local v0, is4gNoSDCard:Z
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v2}, Lcom/android/phone/CallRecordTime;->is8gNoSDCard()Z

    move-result v1

    .line 3870
    .local v1, is8gNoSDCard:Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v2}, Lcom/android/phone/CallRecordTime;->diskExsitAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3871
    const v2, 0x7f0c0001

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3873
    const-string v2, "insert sd card..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3891
    :goto_0
    return-void

    .line 3875
    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v2}, Lcom/android/phone/CallRecordTime;->diskSpaceAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v2}, Lcom/android/phone/CallRecordTime;->diskExsitAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v2}, Lcom/android/phone/CallRecordTime;->diskSpaceAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v2}, Lcom/android/phone/CallRecordTime;->diskExsitAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v2}, Lcom/android/phone/CallRecordTime;->diskLocalSpaceAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v2}, Lcom/android/phone/CallRecordTime;->diskPhysicalExsitAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v2}, Lcom/android/phone/CallRecordTime;->diskPhysicalSpaceAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v2}, Lcom/android/phone/CallRecordTime;->diskPhysicalExsitAvailable()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v2}, Lcom/android/phone/CallRecordTime;->diskSpaceAvailable()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3880
    :cond_5
    const v2, 0x7f0c0002

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3882
    const-string v2, "storage is full..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3884
    :cond_6
    sget-boolean v2, Lcom/android/phone/InCallScreen;->mRecordOn:Z

    if-nez v2, :cond_7

    .line 3885
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onRecordStart()V

    goto :goto_0

    .line 3887
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->onRecordEnd(Z)V

    goto :goto_0
.end method

.method private onRecordStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3894
    const-string v1, "enter onRecordStart"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3895
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    const-string v2, "/sdcard/sdcard"

    invoke-virtual {v1, v2}, Lcom/android/phone/CallRecordTime;->startRecording(Ljava/lang/String;)Z

    move-result v0

    .line 3896
    .local v0, bRet:Z
    if-nez v0, :cond_0

    .line 3897
    const v1, 0x7f0c0004

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3916
    :goto_0
    return-void

    .line 3900
    :cond_0
    const-string v1, "onRecordStart success"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3902
    sput-boolean v3, Lcom/android/phone/InCallScreen;->mRecordOn:Z

    .line 3903
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v1}, Lcom/android/phone/CallCard;->setRecordingVisible()V

    .line 3905
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->notifyRecord()V

    .line 3909
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_recording"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3912
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v1}, Lcom/android/phone/CallRecordTime;->reset()V

    .line 3913
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v1}, Lcom/android/phone/CallRecordTime;->periodicUpdateTimer()V

    .line 3914
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v1}, Lcom/android/phone/CallRecordTime;->checkSpaceUpdateTimer()V

    goto :goto_0
.end method

.method private onShowHideDialpad()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4000
    const-string v0, "onShowHideDialpad()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4001
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4002
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 4006
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 4007
    return-void

    .line 4004
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    goto :goto_0
.end method

.method private onSmsrejectClick()V
    .locals 1

    .prologue
    .line 3959
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    .line 3960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mSmsReject:Z

    .line 3961
    const-string v0, "onSmsrejectClick----exit-----"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3962
    return-void
.end method

.method private onSpeakerClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3803
    const-string v1, "onSpeakerClick()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3809
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v3

    .line 3810
    .local v0, newSpeakerState:Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3811
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 3813
    :cond_0
    invoke-static {p0, v0, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 3815
    if-eqz v0, :cond_3

    .line 3817
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 3826
    :cond_1
    :goto_1
    return-void

    .end local v0           #newSpeakerState:Z
    :cond_2
    move v0, v2

    .line 3809
    goto :goto_0

    .line 3822
    .restart local v0       #newSpeakerState:Z
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3823
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    goto :goto_1
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private placeCall(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 24
    .parameter "intent"

    .prologue
    .line 3098
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "placeCall()...  intent = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    .line 3101
    .local v16, phoneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .line 3102
    .local v9, fgCallState:Lcom/android/internal/telephony/Call$State;
    const/16 v21, 0x2

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 3103
    sget-object v21, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object v0, v9

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v21

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 3104
    sget-object v21, Lcom/android/phone/InCallScreen$InCallInitStatus;->CAN_NOT_ADD_CALL:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 3315
    :goto_0
    return-object v21

    .line 3109
    :cond_0
    const/4 v15, 0x0

    .line 3113
    .local v15, phone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v14

    .line 3117
    .local v14, okToCallStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v13

    .line 3125
    .local v13, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 3126
    .local v20, uri:Landroid/net/Uri;
    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v17, v21

    .line 3127
    .local v17, scheme:Ljava/lang/String;
    :goto_1
    const-string v21, "android.phone.extra.SIP_PHONE_URI"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3129
    .local v18, sipPhoneUri:Ljava/lang/String;
    const-string v21, "Subscription"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 3130
    .local v19, subscription:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object v2, v13

    move-object/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/telephony/Phone;

    move-result-object v15

    .line 3131
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "- got Phone instance: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", class = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3134
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/ServiceState;->getState()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 3149
    if-nez v13, :cond_3

    .line 3150
    const-string v21, "InCallScreen"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    sget-object v21, Lcom/android/phone/InCallScreen$InCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 3126
    .end local v17           #scheme:Ljava/lang/String;
    .end local v18           #sipPhoneUri:Ljava/lang/String;
    .end local v19           #subscription:I
    :cond_1
    const/16 v21, 0x0

    move-object/from16 v17, v21

    goto/16 :goto_1

    .line 3136
    .end local v13           #number:Ljava/lang/String;
    .end local v20           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v21

    move-object/from16 v8, v21

    .line 3141
    .local v8, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    sget-object v21, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object v0, v14

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 3142
    const-string v21, "Voicemail number not reachable in current SIM card state."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move-object/from16 v21, v14

    .line 3143
    goto/16 :goto_0

    .line 3145
    :cond_2
    const-string v21, "VoiceMailNumberMissingException from getInitialNumber()"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3146
    sget-object v21, Lcom/android/phone/InCallScreen$InCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 3154
    .end local v8           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    .restart local v13       #number:Ljava/lang/String;
    .restart local v17       #scheme:Ljava/lang/String;
    .restart local v18       #sipPhoneUri:Ljava/lang/String;
    .restart local v19       #subscription:I
    .restart local v20       #uri:Landroid/net/Uri;
    :cond_3
    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    .line 3155
    .local v11, isEmergencyNumber:Z
    const-string v21, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 3157
    .local v10, isEmergencyIntent:Z
    if-eqz v11, :cond_4

    if-nez v10, :cond_4

    .line 3158
    const-string v21, "InCallScreen"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Non-CALL_EMERGENCY Intent "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " attempted to call emergency number "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    sget-object v21, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 3162
    :cond_4
    if-nez v11, :cond_5

    if-eqz v10, :cond_5

    .line 3163
    const-string v21, "InCallScreen"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received CALL_EMERGENCY Intent "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " with non-emergency number "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " -- failing call."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    sget-object v21, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 3177
    :cond_5
    if-eqz v11, :cond_7

    sget-object v21, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object v0, v14

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_6

    sget-object v21, Lcom/android/phone/InCallScreen$InCallInitStatus;->OUT_OF_SERVICE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object v0, v14

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 3180
    :cond_6
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "placeCall: Emergency number detected with status = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3181
    sget-object v14, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 3182
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "==> UPDATING status to: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3185
    :cond_7
    sget-object v21, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object v0, v14

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 3191
    if-eqz v11, :cond_8

    sget-object v21, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object v0, v14

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 3192
    const-string v21, "InCallScreen"

    const-string v22, "placeCall: Trying to make emergency call while POWER_OFF!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    const-string v21, "InCallScreen"

    const-string v22, "- starting EmergencyCallHandler, finishing InCallScreen..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    const-class v21, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3195
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3196
    sget-object v21, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    :cond_8
    move-object/from16 v21, v14

    .line 3198
    goto/16 :goto_0

    .line 3202
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    .line 3204
    .local v5, app:Lcom/android/phone/PhoneApp;
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    invoke-interface {v15, v13}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 3205
    const-string v21, "placeCall: isOtaSpNumber() returns true"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3206
    sget-object v21, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 3207
    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    .line 3208
    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 3212
    :cond_a
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    .line 3219
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 3221
    .local v7, contactUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    if-nez v11, :cond_b

    if-nez v10, :cond_b

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->isRoutableViaGateway(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 3225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v13

    move-object v3, v7

    move-object/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/PhoneUtils;->placeCallVia(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v6

    .line 3231
    .local v6, callStatus:I
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 3313
    const-string v21, "InCallScreen"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "placeCall: unknown callStatus "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    sget-object v21, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 3228
    .end local v6           #callStatus:I
    :cond_b
    invoke-static {v15, v13, v7}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v6

    .restart local v6       #callStatus:I
    goto :goto_2

    .line 3233
    :pswitch_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "placeCall: PhoneUtils.placeCall() succeeded for regular call \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 3237
    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 3239
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3246
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 3258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 3265
    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v21

    if-eqz v21, :cond_d

    if-nez v11, :cond_d

    .line 3266
    const-string v21, "InCallScreen"

    const-string v22, "About to exit ECM because of an outgoing non-emergency call"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x7c

    invoke-static/range {v21 .. v22}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v12

    .line 3270
    .local v12, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x1f4

    move-object/from16 v0, v21

    move-object v1, v12

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3274
    .end local v12           #msg:Landroid/os/Message;
    :cond_d
    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 3276
    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v21

    sget-object v22, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 3279
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x74

    invoke-static/range {v21 .. v22}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v12

    .line 3283
    .restart local v12       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const-wide/16 v22, 0xbb8

    move-object/from16 v0, v21

    move-object v1, v12

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3286
    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 3289
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3293
    .end local v12           #msg:Landroid/os/Message;
    :cond_e
    sget-object v21, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 3295
    :pswitch_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "placeCall: specified number was an MMI code: \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3305
    sget-object v21, Lcom/android/phone/InCallScreen$InCallInitStatus;->DIALED_MMI:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 3307
    :pswitch_2
    const-string v21, "InCallScreen"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    sget-object v21, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 3231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private registerForPhoneStates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1344
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1346
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1347
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1353
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1354
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1355
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1356
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1357
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1360
    :cond_0
    return-void
.end method

.method private removeFloatWindow()V
    .locals 2

    .prologue
    .line 6189
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mFloatView:Lcom/android/phone/FloatView;

    if-eqz v0, :cond_0

    .line 6190
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mFloatView:Lcom/android/phone/FloatView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 6193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFloatView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mFloatView:Lcom/android/phone/FloatView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6194
    return-void
.end method

.method private resetIncallScreen()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->hideCallCardElements()V

    .line 813
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->hideConnecttedCallWidget()V

    .line 814
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 815
    return-void
.end method

.method private resetTouchLockTimer()V
    .locals 5

    .prologue
    const/16 v4, 0x71

    .line 5600
    const-string v1, "resetTouchLockTimer()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5604
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    if-nez v1, :cond_1

    .line 5622
    :cond_0
    :goto_0
    return-void

    .line 5606
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5607
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5616
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "short_keylight_delay_ms"

    const/16 v3, 0x1770

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5620
    .local v0, touchLockDelay:I
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private sendRejectSms()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "com.android.REJECT_SMS_SEND_MODE"

    .line 3965
    const/4 v0, 0x0

    .line 3966
    .local v0, TextString:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v4}, Lcom/android/phone/CallCard;->getIncomingPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 3968
    .local v2, sendNumber:Ljava/lang/String;
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mSmsReject:Z

    .line 3969
    if-eqz v2, :cond_0

    const-string v4, "PRIVATE NUMBER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3970
    :cond_0
    const v4, 0x7f0c003e

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3971
    const-string v4, "onSmsrejectClick----unknown number-----"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3997
    :goto_0
    return-void

    .line 3974
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v4}, Lcom/android/phone/CallCard;->getIncomingSub()I

    move-result v3

    .line 3975
    .local v3, sub:I
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ums_auto_reply"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3976
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendNumber-----TextString  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  sub is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3978
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3979
    const v4, 0x7f0c0316

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3982
    :cond_2
    if-nez v0, :cond_3

    .line 3983
    const-string v0, "aaa"

    .line 3986
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.REJECT_SMS_SEND_ACTIOIN_REQUEST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3987
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.android.REJECT_SMS_SEND_NUMBER"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3988
    const-string v4, "com.android.REJECT_SMS_SEND_TEXT"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3991
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3992
    const-string v4, "com.android.REJECT_SMS_SEND_MODE"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3996
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 3994
    :cond_4
    const-string v4, "com.android.REJECT_SMS_SEND_MODE"

    const/4 v4, 0x1

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private setFloatViewVisibility(I)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 6197
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mFloatView:Lcom/android/phone/FloatView;

    if-eqz v0, :cond_0

    .line 6198
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mFloatView:Lcom/android/phone/FloatView;

    invoke-virtual {v0, p1}, Lcom/android/phone/FloatView;->setVisibility(I)V

    .line 6201
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFloatView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mFloatView:Lcom/android/phone/FloatView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6202
    return-void
.end method

.method private setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V
    .locals 9
    .parameter "newMode"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "InCallScreen"

    .line 4665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInCallScreenMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4666
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 4667
    sget-object v3, Lcom/android/phone/InCallScreen$18;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 4795
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 4799
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4800
    :goto_1
    return-void

    .line 4669
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4670
    const-string v3, "InCallScreen"

    const-string v3, "MANAGE_CONFERENCE: no active conference call!"

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 4675
    :cond_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v2

    .line 4678
    .local v2, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v6, :cond_3

    .line 4679
    :cond_2
    const-string v3, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MANAGE_CONFERENCE: Bogus TRUE from isConferenceCall(); connections = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4683
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 4692
    :cond_3
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3}, Lcom/android/phone/ManageConferenceUtils;->initManageConferencePanel()V

    .line 4694
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3, v2}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    .line 4698
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3, v6}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 4707
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 4708
    .local v0, callDuration:J
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/ManageConferenceUtils;->startConferenceTime(J)V

    .line 4711
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 4722
    .end local v0           #callDuration:J
    .end local v2           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3, v5}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 4723
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    .line 4725
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateMenuButtonHint()V

    .line 4728
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 4733
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4734
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3, v5}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 4735
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    goto/16 :goto_0

    .line 4739
    :pswitch_3
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_0

    .line 4740
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v3, v4}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 4742
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 4747
    :pswitch_4
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_0

    .line 4748
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v3, v4}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 4750
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 4777
    :pswitch_5
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 4781
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v4, :cond_5

    .line 4782
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_4

    .line 4783
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3, v6}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 4789
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 4786
    :cond_5
    const-string v3, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 4667
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showCallLostDialog()V
    .locals 2

    .prologue
    .line 4356
    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4359
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_0

    .line 4360
    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4375
    :goto_0
    return-void

    .line 4365
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 4366
    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4370
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 4374
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showExitingECMDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4410
    const-string v0, "InCallScreen"

    const-string v1, "showExitingECMDialog()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 4413
    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4414
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4415
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 4419
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c023d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c004b

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 4424
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4426
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4427
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 7
    .parameter "resid"
    .parameter "isStartupError"

    .prologue
    .line 4311
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4312
    .local v2, msg:Ljava/lang/CharSequence;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showGenericErrorDialog(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4317
    if-eqz p2, :cond_0

    .line 4318
    new-instance v1, Lcom/android/phone/InCallScreen$13;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$13;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4322
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$14;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$14;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4341
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c004b

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 4349
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 4352
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 4353
    return-void

    .line 4327
    .end local v0           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v1           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v4

    .line 4328
    .local v4, sub:I
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 4329
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    new-instance v1, Lcom/android/phone/InCallScreen$15;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/InCallScreen$15;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;)V

    .line 4333
    .restart local v1       #clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$16;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/InCallScreen$16;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;)V

    .restart local v0       #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    goto :goto_0
.end method

.method private showPausePromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 6
    .parameter "c"
    .parameter "postDialStrAfterPause"

    .prologue
    .line 2771
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2772
    .local v2, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2773
    .local v0, buf:Ljava/lang/StringBuilder;
    const v3, 0x7f0c0051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2774
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2776
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 2777
    const-string v3, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2778
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 2779
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 2782
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 2785
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 2787
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x78

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2788
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2789
    return-void
.end method

.method private showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 5
    .parameter "c"
    .parameter "postDialStr"

    .prologue
    .line 2731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showWaitPromptDialogCDMA: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2733
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2734
    .local v1, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2735
    .local v0, buf:Ljava/lang/StringBuilder;
    const v2, 0x7f0c0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2736
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2739
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 2740
    const-string v2, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2741
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 2742
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2745
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0053

    new-instance v4, Lcom/android/phone/InCallScreen$7;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallScreen$7;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0054

    new-instance v4, Lcom/android/phone/InCallScreen$6;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallScreen$6;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2761
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 2763
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2764
    return-void
.end method

.method private showWaitPromptDialogGSM(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 5
    .parameter "c"
    .parameter "postDialStr"

    .prologue
    .line 2687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showWaitPromptDialogGSM: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2689
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2690
    .local v1, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2691
    .local v0, buf:Ljava/lang/StringBuilder;
    const v2, 0x7f0c0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2692
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2695
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 2696
    const-string v2, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2697
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 2698
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2701
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0052

    new-instance v4, Lcom/android/phone/InCallScreen$5;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallScreen$5;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$4;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/InCallScreen$4;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2718
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 2720
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2721
    return-void
.end method

.method private showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 2826
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->createWildPromptView()Landroid/view/View;

    move-result-object v0

    .line 2828
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 2829
    const-string v1, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2830
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2831
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2834
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0052

    new-instance v3, Lcom/android/phone/InCallScreen$9;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/InCallScreen$9;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/InCallScreen$8;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$8;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2859
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 2861
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2863
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2864
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->stopTimer()V

    .line 1533
    :cond_0
    sget-boolean v0, Lcom/android/phone/InCallScreen;->mRecordOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v0}, Lcom/android/phone/CallRecordTime;->cancelTimer()V

    .line 1534
    :cond_1
    return-void
.end method

.method private syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3023
    const/4 v2, 0x0

    .line 3024
    .local v2, updateSuccessful:Z
    const-string v3, "syncWithPhoneState()..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3025
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    .line 3026
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dumpBluetoothState()V

    .line 3031
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3033
    .local v1, phoneType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v3, v4, :cond_1

    .line 3038
    :cond_0
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 3054
    :goto_0
    return-object v3

    .line 3043
    :cond_1
    if-ne v1, v5, :cond_3

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v5

    .line 3046
    .local v0, hasPendingMmiCodes:Z
    :goto_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_4

    .line 3048
    :cond_2
    const-string v3, "syncWithPhoneState: it\'s ok to be here; update the screen..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3049
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3050
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 3043
    .end local v0           #hasPendingMmiCodes:Z
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 3053
    .restart local v0       #hasPendingMmiCodes:Z
    :cond_4
    const-string v3, "syncWithPhoneState: phone is idle; we shouldn\'t be here!"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3054
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0
.end method

.method private touchLockTimerExpired()V
    .locals 1

    .prologue
    .line 5632
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 5633
    return-void
.end method

.method private unregisterForPhoneStates()V
    .locals 2

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1364
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1365
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1366
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1367
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1368
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1369
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 1370
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1372
    return-void
.end method

.method private updateDialpadVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4875
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 4876
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 4886
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 4895
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 4898
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4899
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->sendShowCursorMessage()V

    .line 4900
    const-string v0, "zhangmin"

    const-string v1, "isOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4913
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->usingSlidingDrawer()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4933
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_3

    .line 4935
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4939
    :cond_3
    return-void
.end method

.method private updateFloatViewPosition()V
    .locals 3

    .prologue
    .line 6180
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWm:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 6181
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getWmParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 6182
    .local v0, wmParams:Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/android/phone/InCallScreen;->mXFloatView:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 6183
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 6184
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mFloatView:Lcom/android/phone/FloatView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6186
    .end local v0           #wmParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private updateInCallBackground()V
    .locals 9

    .prologue
    .line 5953
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v6

    .line 5954
    .local v6, hasRingingCall:Z
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    .line 5955
    .local v4, hasActiveCall:Z
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    .line 5956
    .local v5, hasHoldingCall:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5957
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v2

    .line 5959
    .local v2, bluetoothActive:Z
    const v1, 0x7f020004

    .line 5968
    .local v1, backgroundResId:I
    if-eqz v6, :cond_1

    .line 5970
    if-eqz v2, :cond_0

    .line 5971
    const/high16 v1, 0x7f02

    .line 6031
    :goto_0
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 6032
    return-void

    .line 5973
    :cond_0
    const v1, 0x7f020004

    goto :goto_0

    .line 5975
    :cond_1
    if-eqz v5, :cond_2

    if-nez v4, :cond_2

    .line 5977
    const v1, 0x7f020003

    goto :goto_0

    .line 5980
    :cond_2
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    iget-object v7, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->onHold:Z

    if-eqz v7, :cond_3

    .line 5982
    const v1, 0x7f020003

    .line 5983
    const-string v7, "cdma hold background update ."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5989
    :cond_3
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 5990
    .local v3, fgState:Lcom/android/internal/telephony/Call$State;
    sget-object v7, Lcom/android/phone/InCallScreen$18;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 6027
    const v1, 0x7f020004

    goto :goto_0

    .line 5994
    :pswitch_0
    if-eqz v2, :cond_4

    .line 5995
    const/high16 v1, 0x7f02

    goto :goto_0

    .line 5997
    :cond_4
    const v1, 0x7f020001

    .line 5999
    goto :goto_0

    .line 6002
    :pswitch_1
    const v1, 0x7f020002

    .line 6003
    goto :goto_0

    .line 6006
    :pswitch_2
    sget-boolean v7, Lcom/android/phone/InCallScreen;->mRemoteEndCallNormal:Z

    if-eqz v7, :cond_5

    .line 6007
    const v1, 0x7f020002

    goto :goto_0

    .line 6008
    :cond_5
    const v1, 0x7f020004

    .line 6009
    goto :goto_0

    .line 6014
    :pswitch_3
    if-eqz v2, :cond_6

    .line 6015
    const/high16 v1, 0x7f02

    goto :goto_0

    .line 6017
    :cond_6
    const v1, 0x7f020004

    .line 6019
    goto :goto_0

    .line 5990
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateInCallTouchUi()V
    .locals 2

    .prologue
    .line 5110
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 5111
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 5113
    :cond_0
    return-void
.end method

.method private updateManageConferencePanelIfNecessary()V
    .locals 7

    .prologue
    const-string v6, "InCallScreen"

    const-string v5, "- syncWithPhoneState failed! status = "

    .line 4818
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateManageConferencePanelIfNecessary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4820
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 4821
    .local v0, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-nez v0, :cond_1

    .line 4822
    const-string v3, "==> no connections on foreground call!"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4824
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 4825
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v2

    .line 4826
    .local v2, status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v2, v3, :cond_0

    .line 4827
    const-string v3, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- syncWithPhoneState failed! status = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4830
    const-string v3, "updateManageConferencePanelIfNecessary: endInCallScreenSession... 1"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4831
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 4860
    .end local v2           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_0
    :goto_0
    return-void

    .line 4837
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4838
    .local v1, numConnections:I
    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    .line 4839
    const-string v3, "==> foreground call no longer a conference!"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4841
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 4842
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v2

    .line 4843
    .restart local v2       #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v2, v3, :cond_0

    .line 4844
    const-string v3, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- syncWithPhoneState failed! status = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4847
    const-string v3, "updateManageConferencePanelIfNecessary: endInCallScreenSession... 2"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4848
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_0

    .line 4856
    .end local v2           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3}, Lcom/android/phone/ManageConferenceUtils;->getNumCallersInConference()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 4857
    const-string v3, "==> Conference size has changed; need to rebuild UI!"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4858
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3, v0}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    goto :goto_0
.end method

.method private updateMenuButtonHint()V
    .locals 7

    .prologue
    .line 4124
    const-string v5, "updateMenuButtonHint()..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4125
    const/4 v4, 0x1

    .line 4127
    .local v4, hintVisible:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 4128
    .local v2, hasRingingCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 4129
    .local v0, hasActiveCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 4133
    .local v1, hasHoldingCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v6, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v5, v6, :cond_3

    .line 4135
    const/4 v4, 0x0

    .line 4139
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isIncallTouchUiWithNoProximitySensor()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4140
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v5}, Lcom/android/phone/InCallTouchUi;->hideConnecttedCallWidget()V

    .line 4164
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isTouchUiEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4165
    const/4 v4, 0x0

    .line 4172
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isIncomingCallTouchUiEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4173
    const/4 v4, 0x0

    .line 4176
    :cond_2
    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    .line 4178
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    const v6, 0x7f0c003d

    invoke-virtual {v5, v6}, Lcom/android/phone/CallCard;->setMenuButtonHintText(I)V

    .line 4179
    const/4 v4, 0x1

    .line 4186
    :goto_1
    if-eqz v4, :cond_7

    const/4 v5, 0x0

    move v3, v5

    .line 4187
    .local v3, hintVisibility:I
    :goto_2
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v5}, Lcom/android/phone/CallCard;->getMenuButtonHint()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4194
    return-void

    .line 4144
    .end local v3           #hintVisibility:I
    :cond_3
    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    if-eqz v1, :cond_5

    .line 4147
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 4148
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4151
    const/4 v4, 0x0

    .line 4155
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isIncallTouchUiWithNoProximitySensor()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4156
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v5}, Lcom/android/phone/InCallTouchUi;->hideConnecttedCallWidget()V

    goto :goto_0

    .line 4182
    :cond_6
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    const v6, 0x7f0c003f

    invoke-virtual {v5, v6}, Lcom/android/phone/CallCard;->setMenuButtonHintText(I)V

    goto :goto_1

    .line 4186
    :cond_7
    const/16 v5, 0x8

    move v3, v5

    goto :goto_2
.end method

.method private updateProviderOverlay()V
    .locals 11

    .prologue
    const/16 v10, 0x79

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 4094
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateProviderOverlay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4096
    const v5, 0x7f070083

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 4098
    .local v2, overlay:Landroid/view/ViewGroup;
    iget-boolean v5, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    if-eqz v5, :cond_0

    .line 4099
    const v5, 0x7f0c0249

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4100
    .local v3, template:Ljava/lang/CharSequence;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    aput-object v6, v5, v9

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 4103
    .local v4, text:Ljava/lang/CharSequence;
    const v5, 0x7f070084

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4104
    .local v0, message:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4105
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4107
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4111
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 4112
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 4113
    .local v1, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4117
    .end local v0           #message:Landroid/widget/TextView;
    .end local v1           #msg:Landroid/os/Message;
    .end local v3           #template:Ljava/lang/CharSequence;
    .end local v4           #text:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 4115
    :cond_0
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSaveButton(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    const/16 v5, 0x8

    const-string v4, "updateSaveButton"

    .line 2450
    const-string v2, "updateSaveButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mCM.getState() is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    const-string v2, "updateSaveButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mCM.hasDisconnectedFgCall() is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    const-string v2, "updateSaveButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mCM.hasDisconnectedBgCall() is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 2454
    .local v0, c:Lcom/android/internal/telephony/Connection;
    const-string v2, "updateSaveButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Connection is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    if-nez v0, :cond_1

    .line 2456
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSaveContactButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2477
    :cond_0
    :goto_0
    return-void

    .line 2459
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 2460
    .local v1, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v1, :cond_0

    .line 2463
    const-string v2, "updateSaveButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CallerInfo contactExists is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v2, :cond_3

    iget v2, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v2, v3, :cond_3

    .line 2469
    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mSaveContactNum:Ljava/lang/String;

    .line 2470
    const-string v2, "updateSaveButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mSaveContactNum  is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mSaveContactNum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSaveContactButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 2473
    :cond_3
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSaveContactButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2871
    const-string v8, "updateScreen()..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2878
    iget-boolean v8, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v8, :cond_1

    .line 2879
    const-string v8, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3009
    :cond_0
    :goto_0
    return-void

    .line 2885
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isIncallTouchUiWithNoProximitySensor()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2886
    iget-boolean v8, p0, Lcom/android/phone/InCallScreen;->mShowCallWidgetChange:Z

    if-eqz v8, :cond_3

    .line 2887
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v9, :cond_5

    .line 2888
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->mShowCallWidget:Z

    .line 2897
    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v8, :cond_4

    .line 2899
    const-string v8, "- updateScreen: updating menu items..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2901
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8, v9}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/CallManager;)Z

    move-result v5

    .line 2902
    .local v5, okToShowMenu:Z
    if-nez v5, :cond_4

    .line 2910
    const-string v8, "- updateScreen: Tried to update menu; now need to dismiss!"

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2912
    invoke-virtual {p0, v10}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 2916
    .end local v5           #okToShowMenu:Z
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2918
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v9, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v8, v9, :cond_6

    .line 2919
    const-string v8, "- updateScreen: OTA call state NORMAL..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2920
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v8, :cond_0

    .line 2921
    const-string v8, "- updateScreen: otaUtils is not null, call otaShowProperScreen"

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2922
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v8}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    goto :goto_0

    .line 2890
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_5
    iput-boolean v10, p0, Lcom/android/phone/InCallScreen;->mShowCallWidget:Z

    goto :goto_1

    .line 2925
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_6
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v9, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v8, v9, :cond_8

    .line 2926
    const-string v8, "- updateScreen: OTA call ended state ..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2928
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2929
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v8, v8, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v9, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v8, v9, :cond_7

    .line 2931
    const-string v8, "- updateScreen: OTA_STATUS_ACTIVATION"

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2932
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v8, :cond_0

    .line 2933
    const-string v8, "- updateScreen: otaUtils is not null, call otaShowActivationScreen"

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2935
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v8}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    goto/16 :goto_0

    .line 2938
    :cond_7
    const-string v8, "- updateScreen: OTA Call end state for Dialogs"

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2939
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v8, :cond_0

    .line 2940
    const-string v8, "- updateScreen: Show OTA Success Failure dialog"

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2941
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v8}, Lcom/android/phone/OtaUtils;->otaShowSuccessFailure()V

    goto/16 :goto_0

    .line 2945
    :cond_8
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v9, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v8, v9, :cond_9

    .line 2946
    const-string v8, "- updateScreen: manage conference mode (NOT updating in-call UI)..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2947
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateManageConferencePanelIfNecessary()V

    goto/16 :goto_0

    .line 2949
    :cond_9
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v9, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v8, v9, :cond_a

    .line 2950
    const-string v8, "- updateScreen: call ended state (NOT updating in-call UI)..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2952
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallBackground()V

    goto/16 :goto_0

    .line 2956
    :cond_a
    const-string v8, "- updateScreen: updating the in-call UI..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2957
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8, v9}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 2958
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 2959
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 2960
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 2961
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateMenuButtonHint()V

    .line 2962
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallBackground()V

    .line 2965
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isNowSipPhone()Z

    move-result v8

    if-nez v8, :cond_b

    .line 2966
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->updateSaveButton(Lcom/android/internal/telephony/CallManager;)V

    .line 2972
    :goto_2
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2973
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    goto/16 :goto_0

    .line 2968
    :cond_b
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mSaveContactButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 2978
    :cond_c
    const/4 v7, 0x0

    .line 2979
    .local v7, postDialStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v2

    .line 2980
    .local v2, fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 2981
    .local v6, phoneType:I
    const/4 v8, 0x2

    if-ne v6, v8, :cond_f

    .line 2982
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 2983
    .local v3, fgLatestConnection:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v9, :cond_e

    .line 2985
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_d
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2986
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v8, v9, :cond_d

    .line 2988
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_3

    .line 2991
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_e
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v8, v9, :cond_0

    .line 2993
    const-string v8, "show the Wait dialog for CDMA"

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2994
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v7

    .line 2995
    invoke-direct {p0, v3, v7}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2997
    .end local v3           #fgLatestConnection:Lcom/android/internal/telephony/Connection;
    :cond_f
    if-eq v6, v10, :cond_10

    const/4 v8, 0x3

    if-ne v6, v8, :cond_12

    .line 2999
    :cond_10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_11
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3000
    .restart local v1       #cn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v8, v9, :cond_11

    .line 3001
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v7

    .line 3002
    invoke-direct {p0, v1, v7}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogGSM(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_4

    .line 3006
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_12
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method


# virtual methods
.method allowShowCallWidget()Z
    .locals 1

    .prologue
    .line 5046
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mShowCallWidget:Z

    return v0
.end method

.method connectBluetoothAudio()V
    .locals 2

    .prologue
    .line 5441
    const-string v0, "connectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5442
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 5443
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 5453
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 5454
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    .line 5455
    return-void
.end method

.method disconnectBluetoothAudio()V
    .locals 1

    .prologue
    .line 5458
    const-string v0, "disconnectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5459
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 5460
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 5462
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 5463
    return-void
.end method

.method dismissMenu(Z)V
    .locals 4
    .parameter "dismissImmediate"

    .prologue
    const/16 v3, 0x6f

    .line 5255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissMenu(immediate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5257
    if-eqz p1, :cond_0

    .line 5258
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->closeOptionsMenu()V

    .line 5264
    :goto_0
    return-void

    .line 5260
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5261
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1795
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1814
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1804
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1805
    const-string v0, "- ignoring DPAD event while touch-locked..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1806
    const/4 v0, 0x1

    goto :goto_0

    .line 1795
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 6081
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6082
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6083
    const/4 v0, 0x1

    return v0
.end method

.method public endInCallScreenSession()V
    .locals 1

    .prologue
    .line 1306
    const-string v0, "endInCallScreenSession()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1309
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1294
    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1296
    return-void
.end method

.method getRecordstate()Z
    .locals 1

    .prologue
    .line 6040
    sget-boolean v0, Lcom/android/phone/InCallScreen;->mRecordOn:Z

    return v0
.end method

.method public getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;
    .locals 1

    .prologue
    .line 5943
    const-string v0, "getUpdatedInCallControlState()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5944
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    invoke-virtual {v0}, Lcom/android/phone/InCallControlState;->update()V

    .line 5945
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    return-object v0
.end method

.method handleOnscreenButtonClick(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 4013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnscreenButtonClick(id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4015
    sparse-switch p1, :sswitch_data_0

    .line 4064
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnscreenButtonClick: unexpected ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4083
    return-void

    .line 4023
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 4026
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    .line 4031
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    goto :goto_0

    .line 4034
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 4037
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangup()V

    goto :goto_0

    .line 4040
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onShowHideDialpad()V

    goto :goto_0

    .line 4043
    :sswitch_6
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 4046
    :sswitch_7
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    goto :goto_0

    .line 4049
    :sswitch_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onSpeakerClick()V

    goto :goto_0

    .line 4052
    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 4056
    :sswitch_a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 4060
    :sswitch_b
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_0

    .line 4015
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070019 -> :sswitch_0
        0x7f07001a -> :sswitch_1
        0x7f07002e -> :sswitch_b
        0x7f070089 -> :sswitch_2
        0x7f07008c -> :sswitch_3
        0x7f07008f -> :sswitch_a
        0x7f070092 -> :sswitch_9
        0x7f070093 -> :sswitch_a
        0x7f070094 -> :sswitch_6
        0x7f070095 -> :sswitch_7
        0x7f070097 -> :sswitch_8
        0x7f070098 -> :sswitch_4
        0x7f070099 -> :sswitch_5
    .end sparse-switch
.end method

.method public handleOtaCallEnd()V
    .locals 3

    .prologue
    .line 5776
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5778
    .local v0, app:Lcom/android/phone/PhoneApp;
    const-string v1, "handleOtaCallEnd entering"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5779
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_1

    .line 5785
    const-string v1, "handleOtaCallEnd - Set OTA Call End stater"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5786
    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 5787
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 5789
    :cond_1
    return-void
.end method

.method internalAnswerAndEnd()V
    .locals 2

    .prologue
    .line 4571
    const-string v0, "internalAnswerAndEnd()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4572
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 4575
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 4576
    return-void
.end method

.method internalAnswerCall()V
    .locals 9

    .prologue
    .line 4524
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateFloatViewPosition()V

    .line 4526
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 4528
    .local v2, hasRingingCall:Z
    if-eqz v2, :cond_0

    .line 4529
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 4530
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 4531
    .local v5, ringing:Lcom/android/internal/telephony/Call;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 4532
    .local v4, phoneType:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 4533
    const-string v6, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4535
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 4565
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #phoneType:I
    .end local v5           #ringing:Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_0
    return-void

    .line 4537
    .restart local v3       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #phoneType:I
    .restart local v5       #ringing:Lcom/android/internal/telephony/Call;
    :cond_1
    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    .line 4543
    :cond_2
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 4544
    .local v0, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 4546
    .local v1, hasHoldingCall:Z
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 4547
    const-string v6, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4551
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 4557
    :cond_3
    const-string v6, "internalAnswerCall: answering..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4558
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 4562
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method internalHangup()V
    .locals 2

    .prologue
    .line 4593
    const-string v0, "internalHangup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCM.getFgPhone().getBackgroundCall().isIdle() is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4599
    sget-boolean v0, Lcom/android/phone/InCallScreen;->mRecordOn:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4600
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->onRecordEnd(Z)V

    .line 4604
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 4605
    return-void
.end method

.method internalHangupRingingCall()V
    .locals 1

    .prologue
    .line 4582
    const-string v0, "internalHangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4583
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 4586
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 4587
    return-void
.end method

.method internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "com.android.phone.ShowDialpad"

    .line 1431
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1432
    :cond_0
    sget-object v6, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1527
    :goto_0
    return-object v6

    .line 1435
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->checkIsOtaCall(Landroid/content/Intent;)Z

    .line 1437
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1438
    .local v0, action:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "internalResolveIntent: action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1445
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 1446
    .local v1, app:Lcom/android/phone/PhoneApp;
    const-string v6, "Subscription"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1447
    .local v5, subscription:I
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1451
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    const-string v6, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 1453
    sget-object v6, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 1454
    iget-object v6, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v6, v6, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v6, :cond_2

    .line 1456
    iget-object v6, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v9, v6, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 1457
    iget-object v6, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v7, v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1460
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateFloatViewPosition()V

    .line 1461
    sget-object v6, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 1462
    :cond_3
    const-string v6, "android.intent.action.ANSWER"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1463
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 1464
    invoke-virtual {v1, v8}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1465
    sget-object v6, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 1466
    :cond_4
    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1468
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempting call on sub: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 1470
    invoke-virtual {v1, v8}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1475
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1476
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    .line 1477
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 1478
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    .line 1479
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    .line 1480
    iput-boolean v9, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 1482
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1484
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearProvider()V

    .line 1489
    :cond_7
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->placeCall(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v4

    .line 1490
    .local v4, status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v6, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v4, v6, :cond_8

    .line 1493
    invoke-virtual {v1, v9}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 1495
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateFloatViewPosition()V

    move-object v6, v4

    .line 1496
    goto/16 :goto_0

    .line 1487
    .end local v4           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearProvider()V

    goto :goto_1

    .line 1497
    :cond_a
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1505
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v7, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v6, v7, :cond_b

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v7, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v6, v7, :cond_c

    .line 1508
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 1509
    sget-object v6, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 1511
    :cond_c
    const-string v6, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1512
    const-string v6, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v10, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1513
    .local v3, showDialpad:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1514
    if-eqz v3, :cond_e

    .line 1515
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6, v8}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 1520
    .end local v3           #showDialpad:Z
    :cond_d
    :goto_2
    sget-object v6, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 1517
    .restart local v3       #showDialpad:Z
    :cond_e
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6, v8}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_2

    .line 1521
    .end local v3           #showDialpad:Z
    :cond_f
    const-string v6, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1522
    sget-object v6, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 1524
    :cond_10
    const-string v6, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    sget-object v6, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0
.end method

.method isBluetoothAudioConnected()Z
    .locals 3

    .prologue
    .line 5354
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_0

    .line 5355
    const-string v1, "isBluetoothAudioConnected: ==> FALSE (null mBluetoothHandsfree)"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5356
    const/4 v1, 0x0

    .line 5360
    :goto_0
    return v1

    .line 5358
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .line 5359
    .local v0, isAudioOn:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothAudioConnected: ==> isAudioOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v1, v0

    .line 5360
    goto :goto_0
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, " msec ago)"

    .line 5374
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5375
    const-string v2, "isBluetoothAudioConnectedOrPending: ==> TRUE (really connected)"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v2, v7

    .line 5399
    :goto_0
    return v2

    .line 5383
    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    if-eqz v2, :cond_2

    .line 5384
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    sub-long v0, v2, v4

    .line 5386
    .local v0, timeSinceRequest:J
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 5387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBluetoothAudioConnectedOrPending: ==> TRUE (requested "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msec ago)"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v2, v7

    .line 5389
    goto :goto_0

    .line 5391
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBluetoothAudioConnectedOrPending: ==> FALSE (request too old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msec ago)"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5393
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    move v2, v6

    .line 5394
    goto :goto_0

    .line 5398
    .end local v0           #timeSinceRequest:J
    :cond_2
    const-string v2, "isBluetoothAudioConnectedOrPending: ==> FALSE"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v2, v6

    .line 5399
    goto :goto_0
.end method

.method isBluetoothAvailable()Z
    .locals 4

    .prologue
    .line 5312
    const-string v2, "isBluetoothAvailable()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5313
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v2, :cond_0

    .line 5315
    const-string v2, "  ==> FALSE (not BT capable)"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5316
    const/4 v2, 0x0

    .line 5347
    :goto_0
    return v2

    .line 5334
    :cond_0
    const/4 v1, 0x0

    .line 5335
    .local v1, isConnected:Z
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_1

    .line 5336
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 5337
    .local v0, headset:Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - headset state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - headset address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5340
    if-eqz v0, :cond_1

    .line 5341
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 5342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - isConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5346
    .end local v0           #headset:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v2, v1

    .line 5347
    goto :goto_0
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 4945
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 1332
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method public isIncallTouchUiWithNoProximitySensor()Z
    .locals 1

    .prologue
    .line 5126
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->isIncallTouchUiWithNoProximitySensor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncomingCallTouchUiEnabled()Z
    .locals 1

    .prologue
    .line 5135
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->isIncomingCallTouchUiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isKeyEventAcceptableDTMF(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isKeyEventAcceptable(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isManageConferenceMode()Z
    .locals 2

    .prologue
    .line 4806
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOtaCallInActiveState()Z
    .locals 3

    .prologue
    .line 5759
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5760
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v1, v2, :cond_1

    .line 5764
    :cond_0
    const/4 v1, 0x1

    .line 5766
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOtaCallInEndState()Z
    .locals 2

    .prologue
    .line 5792
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneStateRestricted(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v2, 0x1

    .line 5180
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 5181
    .local v0, serviceState:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTouchUiEnabled()Z
    .locals 1

    .prologue
    .line 5120
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->isTouchUiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method okToShowDialpad()Z
    .locals 1

    .prologue
    .line 5090
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    return v0
.end method

.method okToShowInCallTouchUi()Z
    .locals 2

    .prologue
    .line 5166
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1604
    const-string v0, "onBackPressed()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1611
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1615
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1616
    const-string v0, "BACK key while ringing: reject the call"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    .line 1622
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1661
    :goto_0
    return-void

    .line 1628
    :cond_0
    const-string v0, "BACK key while ringing: ignored"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1644
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1647
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 1649
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0

    .line 1653
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_3

    .line 1655
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_0

    .line 1660
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, 0x1

    .line 3536
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 3537
    .local v2, id:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick(View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3538
    instance-of v6, p1, Lcom/android/phone/InCallMenuItemView;

    if-eqz v6, :cond_0

    .line 3539
    move-object v0, p1

    check-cast v0, Lcom/android/phone/InCallMenuItemView;

    move-object v3, v0

    .line 3540
    .local v3, item:Lcom/android/phone/InCallMenuItemView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  ==> menu item! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3547
    .end local v3           #item:Lcom/android/phone/InCallMenuItemView;
    :cond_0
    const/4 v1, 0x1

    .line 3549
    .local v1, dismissMenuImmediate:Z
    sparse-switch v2, :sswitch_data_0

    .line 3659
    :goto_0
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v7, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v7, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v6, v7, :cond_3

    :cond_1
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v6, :cond_3

    .line 3662
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v6, v2}, Lcom/android/phone/OtaUtils;->onClickHandler(I)V

    .line 3670
    :goto_1
    const v6, 0x1129f

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    instance-of v9, p1, Landroid/widget/TextView;

    if-eqz v9, :cond_4

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    :goto_2
    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3684
    if-nez v1, :cond_2

    .line 3689
    const-string v6, "- onClick: updating menu to show \'new\' current state..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3690
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6, v7}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/CallManager;)Z

    move-result v5

    .line 3691
    .local v5, okToShowMenu:Z
    if-nez v5, :cond_2

    .line 3699
    const-string v6, "onClick: Tried to update menu, but now need to take it down!"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3700
    const/4 v1, 0x1

    .line 3705
    .end local v5           #okToShowMenu:Z
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 3714
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 3715
    return-void

    .line 3551
    .restart local p1
    :sswitch_0
    const-string v6, "onClick: AnswerAndHold..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3552
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_1

    .line 3556
    :sswitch_1
    const-string v6, "onClick: AnswerAndEnd..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3557
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerAndEnd()V

    goto :goto_1

    .line 3561
    :sswitch_2
    const-string v6, "onClick: Answer..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3562
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_1

    .line 3566
    :sswitch_3
    const-string v6, "onClick: Ignore..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3567
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    goto :goto_1

    .line 3571
    :sswitch_4
    const-string v6, "onClick: SwapCalls..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3572
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_1

    .line 3576
    :sswitch_5
    const-string v6, "onClick: MergeCalls..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3577
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_1

    .line 3581
    :sswitch_6
    const-string v6, "onClick: ManageConference..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3583
    sget-object v6, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 3587
    :sswitch_7
    const-string v6, "onClick: Show/hide dialpad..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3588
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onShowHideDialpad()V

    goto/16 :goto_1

    .line 3592
    :sswitch_8
    const-string v6, "onClick: mButtonManageConferenceDone..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3594
    sget-object v6, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto/16 :goto_1

    .line 3598
    :sswitch_9
    const-string v6, "onClick: Speaker..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3599
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onSpeakerClick()V

    .line 3601
    const/4 v1, 0x0

    .line 3602
    goto/16 :goto_1

    .line 3605
    :sswitch_a
    const-string v6, "onClick: Bluetooth..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3606
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onBluetoothClick()V

    .line 3608
    const/4 v1, 0x0

    .line 3609
    goto/16 :goto_1

    .line 3612
    :sswitch_b
    const-string v6, "onClick: Mute..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3613
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    .line 3615
    const/4 v1, 0x0

    .line 3616
    goto/16 :goto_1

    .line 3620
    :sswitch_c
    const-string v6, "onClick: Sms reject..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3621
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onSmsrejectClick()V

    .line 3623
    const/4 v1, 0x1

    .line 3624
    goto/16 :goto_1

    .line 3627
    :sswitch_d
    const-string v6, "onClick: Record..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3628
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onRecordClick()V

    .line 3630
    const/4 v1, 0x0

    .line 3631
    goto/16 :goto_1

    .line 3634
    :sswitch_e
    const-string v6, "onClick: Hold..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3635
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    .line 3637
    const/4 v1, 0x0

    .line 3638
    goto/16 :goto_1

    .line 3641
    :sswitch_f
    const-string v6, "onClick: AddCall..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3643
    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 3645
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_1

    .line 3649
    :sswitch_10
    const-string v6, "onClick: EndCall..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3650
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangup()V

    goto/16 :goto_1

    .line 3654
    :sswitch_11
    const-string v6, "onClick: saveContact..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3655
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mSaveContactNum:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/phone/InCallScreen;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 3656
    .local v4, mAddContactIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3664
    .end local v4           #mAddContactIntent:Landroid/content/Intent;
    :cond_3
    const-string v6, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got click from unexpected View ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (View = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3670
    :cond_4
    const-string v9, ""

    goto/16 :goto_2

    .line 3549
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070009 -> :sswitch_6
        0x7f07000a -> :sswitch_7
        0x7f07000b -> :sswitch_10
        0x7f07000c -> :sswitch_f
        0x7f07000d -> :sswitch_4
        0x7f07000e -> :sswitch_5
        0x7f07000f -> :sswitch_a
        0x7f070010 -> :sswitch_9
        0x7f070011 -> :sswitch_b
        0x7f070012 -> :sswitch_e
        0x7f070013 -> :sswitch_0
        0x7f070014 -> :sswitch_1
        0x7f070015 -> :sswitch_2
        0x7f070016 -> :sswitch_3
        0x7f070017 -> :sswitch_d
        0x7f070018 -> :sswitch_c
        0x7f070082 -> :sswitch_11
        0x7f0700a4 -> :sswitch_8
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged: newConfig = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6107
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6117
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v2, v4, :cond_0

    move v0, v4

    .line 6118
    .local v0, isKeyboardOpen:Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - isKeyboardOpen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6119
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v1, v4

    .line 6120
    .local v1, isLandscape:Z
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - isLandscape = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - uiMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6123
    return-void

    .end local v0           #isKeyboardOpen:Z
    .end local v1           #isLandscape:Z
    :cond_0
    move v0, v5

    .line 6117
    goto :goto_0

    .restart local v0       #isKeyboardOpen:Z
    :cond_1
    move v1, v5

    .line 6119
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    .line 653
    const-string v8, "InCallScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate()...  this = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v7, 0x0

    .line 656
    .local v7, subscription:I
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 660
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 661
    .local v1, config:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 662
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    .line 663
    const/4 v8, 0x2

    iput v8, v1, Landroid/content/res/Configuration;->orientation:I

    .line 668
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 671
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 673
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 674
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 676
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "Subscription"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 678
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate Subscription: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 679
    invoke-static {v7}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 682
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    const/high16 v3, 0x8

    .line 683
    .local v3, flags:I
    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneApp;->getPhoneState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    .line 684
    .local v6, ps:Lcom/android/internal/telephony/Phone$State;
    sget-object v8, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v8, :cond_0

    .line 690
    const/high16 v8, 0x40

    or-int/2addr v3, v8

    .line 692
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Window;->addFlags(I)V

    .line 694
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 696
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 698
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 699
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- mBluetoothHandsfree: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 701
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v8, :cond_1

    .line 705
    new-instance v8, Landroid/bluetooth/BluetoothHeadset;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v8, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 706
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- Got BluetoothHeadset: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 709
    :cond_1
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->requestWindowFeature(I)Z

    .line 712
    const v8, 0x7f030016

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->setContentView(I)V

    .line 714
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallScreen()V

    .line 733
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isIncallTouchUiWithNoProximitySensor()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 734
    const v8, 0x7f070065

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #config:Landroid/content/res/Configuration;
    check-cast v1, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 735
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- Using SlidingDrawer-based dialpad.  Found dialerView: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 736
    const v8, 0x7f070063

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SlidingDrawer;

    .line 737
    .local v2, dialerDrawer:Landroid/widget/SlidingDrawer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  ...and the SlidingDrawer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 755
    :goto_1
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-nez v8, :cond_2

    .line 756
    const-string v8, "InCallScreen"

    const-string v9, "onCreate: couldn\'t find dialerView"

    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    :cond_2
    new-instance v8, Lcom/android/phone/DTMFTwelveKeyDialer;

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {v8, p0, v9, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerView;Landroid/widget/SlidingDrawer;)V

    iput-object v8, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 761
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 764
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v9}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 774
    if-nez p1, :cond_7

    .line 775
    const-string v8, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 781
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate(): mInCallInitialStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 782
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v9, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v8, v9, :cond_3

    .line 783
    const-string v8, "InCallScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate: status "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from internalResolveIntent()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    .line 795
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 798
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->createFloatWindow()V

    .line 802
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v4, v8, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 803
    .local v4, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v4, p0}, Lcom/android/phone/CallNotifier;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 806
    const-string v8, "onCreate(): exit"

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 807
    return-void

    .line 665
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #dialerDrawer:Landroid/widget/SlidingDrawer;
    .end local v3           #flags:I
    .end local v4           #notifier:Lcom/android/phone/CallNotifier;
    .end local v5           #phone:Lcom/android/internal/telephony/Phone;
    .end local v6           #ps:Lcom/android/internal/telephony/Phone$State;
    .restart local v1       #config:Landroid/content/res/Configuration;
    :cond_4
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    .line 666
    const/4 v8, 0x1

    iput v8, v1, Landroid/content/res/Configuration;->orientation:I

    goto/16 :goto_0

    .line 741
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v3       #flags:I
    .restart local v5       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v6       #ps:Lcom/android/internal/telephony/Phone$State;
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isTouchUiEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 743
    const v8, 0x7f0700a7

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #config:Landroid/content/res/Configuration;
    check-cast v1, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 744
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- Full touch device!  Found dialerView: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 745
    const/4 v2, 0x0

    .restart local v2       #dialerDrawer:Landroid/widget/SlidingDrawer;
    goto/16 :goto_1

    .line 748
    .end local v2           #dialerDrawer:Landroid/widget/SlidingDrawer;
    .restart local v1       #config:Landroid/content/res/Configuration;
    :cond_6
    const v8, 0x7f070065

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #config:Landroid/content/res/Configuration;
    check-cast v1, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 749
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- Using SlidingDrawer-based dialpad.  Found dialerView: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 750
    const v8, 0x7f070063

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SlidingDrawer;

    .line 751
    .restart local v2       #dialerDrawer:Landroid/widget/SlidingDrawer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  ...and the SlidingDrawer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 788
    :cond_7
    sget-object v8, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2

    .line 793
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_3
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 4
    .parameter "featureId"

    .prologue
    const/4 v3, 0x0

    .line 5206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreatePanelView(featureId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5210
    if-eqz p1, :cond_0

    move-object v1, v3

    .line 5242
    :goto_0
    return-object v1

    .line 5227
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5229
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-nez v1, :cond_1

    .line 5230
    const-string v1, "onCreatePanelView: creating mInCallMenu (first time)..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5231
    new-instance v1, Lcom/android/phone/InCallMenu;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallMenu;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    .line 5232
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v1}, Lcom/android/phone/InCallMenu;->initMenu()V

    .line 5235
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mNotUpdateMenu:Z

    if-eqz v1, :cond_2

    .line 5236
    const-string v1, "onCreatePanelView: do not update"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5237
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v1}, Lcom/android/phone/InCallMenu;->getView()Lcom/android/phone/InCallMenuView;

    move-result-object v1

    goto :goto_0

    .line 5241
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    .line 5242
    .local v0, okToShowMenu:Z
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v1}, Lcom/android/phone/InCallMenu;->getView()Lcom/android/phone/InCallMenuView;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v3

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1217
    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy()...  this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1221
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mFloatView:Lcom/android/phone/FloatView;

    if-eqz v2, :cond_0

    .line 1222
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->removeFloatWindow()V

    .line 1228
    :cond_0
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 1230
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1231
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v2, :cond_1

    .line 1232
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2, v6}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1234
    :cond_1
    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1238
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v2, :cond_2

    .line 1239
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v2}, Lcom/android/phone/InCallMenu;->clearInCallScreenReference()V

    .line 1241
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v2, :cond_3

    .line 1242
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v2, v5}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1244
    :cond_3
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v2, :cond_4

    .line 1245
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v2, v5}, Lcom/android/phone/InCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1248
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearInCallScreenReference()V

    .line 1249
    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 1251
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 1259
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_5

    .line 1265
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->close()V

    .line 1266
    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 1271
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1272
    return-void

    .line 1260
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1261
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "unregisterReceiver(mReceiver) exception"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method onDialerClose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4996
    const-string v1, "onDialerClose()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialerClose()  phoneIsInUse  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5000
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isIncallTouchUiWithNoProximitySensor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5001
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallTouchUi;->showInCallControls(Z)V

    .line 5003
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5004
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v1}, Lcom/android/phone/InCallTouchUi;->showConnecttedCallWidget()V

    .line 5006
    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mShowCallWidget:Z

    .line 5007
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mShowCallWidgetChange:Z

    .line 5012
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5015
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v1, v2, :cond_3

    .line 5020
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 5021
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_3

    .line 5022
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    .line 5028
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 5031
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 5035
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 5038
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 5040
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/phone/InCallTouchUi;->showInCallControlsRow2(Z)V

    .line 5041
    return-void

    :cond_4
    move v2, v4

    .line 5040
    goto :goto_0
.end method

.method onDialerOpen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4953
    const-string v0, "onDialerOpen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4957
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isIncallTouchUiWithNoProximitySensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4958
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0, v2}, Lcom/android/phone/InCallTouchUi;->showInCallControls(Z)V

    .line 4959
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->hideConnecttedCallWidget()V

    .line 4960
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mShowCallWidget:Z

    .line 4961
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mShowCallWidgetChange:Z

    .line 4968
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 4972
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4975
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 4978
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4983
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_2

    .line 4986
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->hideOtaScreen()V

    .line 4988
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->showInCallControlsRow2(Z)V

    .line 4989
    return-void

    :cond_3
    move v1, v2

    .line 4988
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const-string v7, "InCallScreen"

    .line 1835
    sparse-switch p1, :sswitch_data_0

    .line 1940
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v6

    .line 1944
    :goto_0
    return v4

    .line 1837
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleCallKey()Z

    move-result v1

    .line 1838
    .local v1, handled:Z
    if-nez v1, :cond_1

    .line 1839
    const-string v4, "InCallScreen"

    const-string v4, "InCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v6

    .line 1842
    goto :goto_0

    .end local v1           #handled:Z
    :sswitch_1
    move v4, v6

    .line 1854
    goto :goto_0

    .line 1858
    :sswitch_2
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_0

    .line 1869
    const-string v4, "InCallScreen"

    const-string v4, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v2, v4, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 1875
    .local v2, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1877
    const-string v4, "VOLUME key: silence ringer"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1878
    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    :cond_2
    move v4, v6

    .line 1883
    goto :goto_0

    .line 1898
    .end local v2           #notifier:Lcom/android/phone/CallNotifier;
    :sswitch_3
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1899
    const-string v4, "- allowing MENU to dismiss touch lock overlay..."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1902
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 1903
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    move v4, v6

    .line 1904
    goto :goto_0

    .line 1909
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    move v4, v6

    .line 1910
    goto :goto_0

    .line 1915
    :sswitch_5
    const-string v4, "----------- InCallScreen View dump --------------"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1917
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1918
    .local v3, w:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1919
    .local v0, decorView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->debug()V

    move v4, v6

    .line 1920
    goto :goto_0

    .line 1925
    .end local v0           #decorView:Landroid/view/View;
    .end local v3           #w:Landroid/view/Window;
    :sswitch_6
    const-string v4, "----------- InCallScreen call state dump --------------"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1926
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    .line 1927
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    move v4, v6

    .line 1928
    goto :goto_0

    .line 1934
    :sswitch_7
    const-string v4, "------------ Temp testing -----------------"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v4, v6

    .line 1935
    goto :goto_0

    .line 1944
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 1835
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x4c -> :sswitch_5
        0x52 -> :sswitch_3
        0x5b -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1822
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1828
    :goto_0
    return v0

    .line 1824
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 1826
    goto :goto_0

    .line 1828
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 1390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewIntent: intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 1410
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1411
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/high16 v1, 0x8

    .line 1412
    .local v1, flags:I
    const-string v3, "Subscription"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1413
    .local v2, subscription:I
    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getPhoneState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_0

    .line 1414
    const/high16 v3, 0x40

    or-int/2addr v1, v3

    .line 1416
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1422
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1423
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v3, v4, :cond_1

    .line 1424
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNewIntent: status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from internalResolveIntent()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_1
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 5273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPanelClosed(featureId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5277
    if-nez p1, :cond_0

    .line 5282
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 5283
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1077
    const-string v1, "onPause()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1078
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1080
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 1085
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 1086
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 1088
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1092
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 1096
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v1}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    .line 1100
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1104
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    .line 1129
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_0

    .line 1131
    const-string v1, "DELAYED_CLEANUP_AFTER_DISCONNECT detected, moving UI to background."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 1135
    :cond_0
    const v1, 0x1129e

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1139
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 1143
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1146
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 1158
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/InCallScreen$3;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InCallScreen$3;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/PhoneApp;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1164
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->reenableStatusBar()V

    .line 1168
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1172
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1173
    return-void
.end method

.method public onRecordEnd(Z)V
    .locals 6
    .parameter "isLimit"

    .prologue
    const/4 v5, 0x0

    .line 3920
    const-string v3, "enter onRecordEnd"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3921
    sput-boolean v5, Lcom/android/phone/InCallScreen;->mRecordOn:Z

    .line 3924
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v3, p0}, Lcom/android/phone/CallRecordTime;->saveSample(Landroid/content/Context;)V

    .line 3927
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v3}, Lcom/android/phone/CallRecordTime;->stopRecording()V

    .line 3928
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v3}, Lcom/android/phone/CallRecordTime;->cancelTimer()V

    .line 3929
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v3}, Lcom/android/phone/CallCard;->setRecordingInvisible()V

    .line 3931
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->cancelRecord()V

    .line 3934
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v3}, Lcom/android/phone/CallRecordTime;->is4gNoSDCard()Z

    move-result v0

    .line 3935
    .local v0, is4gNoSDCard:Z
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v3}, Lcom/android/phone/CallRecordTime;->is8gNoSDCard()Z

    move-result v1

    .line 3937
    .local v1, is8gNoSDCard:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v3}, Lcom/android/phone/CallRecordTime;->diskExsitAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v3}, Lcom/android/phone/CallRecordTime;->diskPhysicalExsitAvailable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3940
    :cond_2
    const v3, 0x7f0c0003

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3944
    .local v2, text:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_3

    .line 3945
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0002

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3948
    :cond_3
    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3952
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_recording"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3954
    return-void

    .line 3942
    .end local v2           #text:Ljava/lang/String;
    :cond_4
    const v3, 0x7f0c03ca

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #text:Ljava/lang/String;
    goto :goto_0
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/16 v11, 0x70

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 851
    const-string v7, "onResume()..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 852
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 854
    iput-boolean v10, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 856
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 858
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 859
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->disableStatusBar()V

    .line 864
    invoke-virtual {v0, v10}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 868
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 875
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v7}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    .line 878
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- onResume: initial status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 879
    const/4 v2, 0x0

    .line 880
    .local v2, handledStartupError:Z
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v8, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v7, v8, :cond_0

    .line 881
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- onResume: failure during startup: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 888
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 890
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V

    .line 891
    const/4 v2, 0x1

    .line 897
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 901
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isIncallTouchUiWithNoProximitySensor()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 902
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetIncallScreen()V

    .line 909
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    .line 911
    .local v1, bluetoothConnected:Z
    if-eqz v1, :cond_6

    .line 912
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    .line 917
    :goto_0
    invoke-virtual {p0, v10}, Lcom/android/phone/InCallScreen;->takeKeyEvents(Z)V

    .line 919
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    move v5, v10

    .line 921
    .local v5, phoneIsCdma:Z
    :goto_1
    const/4 v3, 0x0

    .line 922
    .local v3, inOtaCall:Z
    if-eqz v5, :cond_1

    .line 923
    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->initOtaState(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    .line 925
    :cond_1
    if-nez v3, :cond_2

    .line 927
    sget-object v7, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 939
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v6

    .line 940
    .local v6, status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v6, v7, :cond_b

    .line 941
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- onResume: syncWithPhoneState failed! status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 945
    if-eqz v2, :cond_8

    .line 953
    const-string v7, "  ==> syncWithPhoneState failed, but staying here anyway."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1003
    :cond_3
    const v7, 0x1129d

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1010
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_e

    .line 1026
    const-string v7, "- posting ALLOW_SCREEN_ON message..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1027
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1028
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1042
    :goto_2
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1047
    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 1050
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v7}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 1054
    :cond_4
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRestoreMuteOnInCallResume()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1056
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    .line 1057
    invoke-virtual {v0, v9}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1060
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    const-class v8, Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 1063
    sget-boolean v7, Lcom/android/phone/InCallScreen;->mRemoteEndCallNormal:Z

    if-eqz v7, :cond_f

    .line 1064
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 1070
    :goto_3
    const-string v7, "onResume() done."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1071
    :goto_4
    return-void

    .line 914
    .end local v3           #inOtaCall:Z
    .end local v5           #phoneIsCdma:Z
    .end local v6           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_6
    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_0

    :cond_7
    move v5, v9

    .line 919
    goto/16 :goto_1

    .line 967
    .restart local v3       #inOtaCall:Z
    .restart local v5       #phoneIsCdma:Z
    .restart local v6       #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_8
    const-string v7, "  ==> syncWithPhoneState failed; bailing out!"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 970
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v6, v7, :cond_9

    sget-boolean v7, Lcom/android/phone/InCallScreen;->mRemoteEndCallNormal:Z

    if-ne v7, v10, :cond_a

    .line 972
    :cond_9
    const-string v7, "ghh0630 the phone is not in use !"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 973
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 974
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 975
    sget-object v7, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_4

    .line 980
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 988
    iput-boolean v10, p0, Lcom/android/phone/InCallScreen;->mIsInCallScreenWillDestroyed:Z

    .line 989
    invoke-direct {p0, v10}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    goto :goto_4

    .line 992
    :cond_b
    if-eqz v5, :cond_3

    .line 993
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v7, v8, :cond_3

    .line 995
    :cond_c
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v7, v9}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 996
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 997
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    goto :goto_4

    .line 1040
    :cond_e
    invoke-virtual {v0, v9}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_2

    .line 1066
    :cond_f
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    goto :goto_3
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 832
    const-string v0, "onStart()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 833
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 836
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setFloatViewVisibility(I)V

    .line 839
    sget-boolean v0, Lcom/android/phone/InCallScreen;->mRecordOn:Z

    if-eqz v0, :cond_0

    .line 840
    const-string v0, "mRecordOn = true"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->setRecordingVisible()V

    .line 843
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v0}, Lcom/android/phone/CallRecordTime;->stepSet()V

    .line 844
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    invoke-virtual {v0}, Lcom/android/phone/CallRecordTime;->periodicUpdateTimer()V

    .line 847
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1177
    const-string v2, "onStop()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1178
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1181
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1182
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->setFloatViewVisibility(I)V

    .line 1188
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopTimer()V

    .line 1190
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 1191
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1193
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_0

    .line 1194
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1198
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v2, :cond_0

    .line 1206
    const-string v2, "- onStop: calling finish() to clear activity history..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1208
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v2, :cond_0

    .line 1209
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2, v4}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1213
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_0
    return-void

    .line 1184
    .end local v1           #state:Lcom/android/internal/telephony/Phone$State;
    :cond_1
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->setFloatViewVisibility(I)V

    goto :goto_0
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    .line 1952
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Phone$SuppService;

    .line 1953
    .local v1, service:Lcom/android/internal/telephony/Phone$SuppService;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuppServiceFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1956
    sget-object v2, Lcom/android/phone/InCallScreen$18;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1997
    const v0, 0x7f0c01f7

    .line 2005
    .local v0, errorMessageResId:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 2006
    const-string v2, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2007
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 2009
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 2012
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c004b

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 2017
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 2019
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2020
    return-void

    .line 1960
    .end local v0           #errorMessageResId:I
    :pswitch_0
    const v0, 0x7f0c01f8

    .line 1961
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 1966
    .end local v0           #errorMessageResId:I
    :pswitch_1
    const v0, 0x7f0c01f9

    .line 1967
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 1973
    .end local v0           #errorMessageResId:I
    :pswitch_2
    const v0, 0x7f0c01fa

    .line 1974
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 1979
    .end local v0           #errorMessageResId:I
    :pswitch_3
    const v0, 0x7f0c01fb

    .line 1980
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 1985
    .end local v0           #errorMessageResId:I
    :pswitch_4
    const v0, 0x7f0c01fc

    .line 1986
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 1990
    .end local v0           #errorMessageResId:I
    :pswitch_5
    const v0, 0x7f0c01fd

    .line 1991
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 1956
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5640
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-ne p1, v2, :cond_5

    .line 5648
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v6

    .line 5718
    :goto_0
    return v2

    .line 5659
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    if-ne p1, v2, :cond_4

    .line 5661
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 5662
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5663
    .local v0, now:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- touch lock icon: handling a DOWN event, t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5666
    iget-wide v2, p0, Lcom/android/phone/InCallScreen;->mTouchLockLastTouchTime:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 5667
    const-string v2, "==> touch lock icon: DOUBLE-TAP!"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5671
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 5672
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 5674
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .end local v0           #now:J
    :cond_2
    :goto_1
    move v2, v7

    .line 5685
    goto :goto_0

    .line 5676
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 5680
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/phone/InCallScreen;->mTouchLockLastTouchTime:J

    goto :goto_1

    :cond_4
    move v2, v7

    .line 5714
    goto :goto_0

    .line 5717
    :cond_5
    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch: event from unexpected View: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 5718
    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 5726
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5727
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 5729
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 1783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1784
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    .line 1785
    const-string v0, "- onWindowFocusChanged: faking onDialerKeyUp()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1786
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1788
    :cond_0
    return-void
.end method

.method requestCloseOtaFailureNotice(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 5737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseOtaFailureNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5738
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5746
    return-void
.end method

.method requestCloseSpcErrorNotice(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 5754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseSpcErrorNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5755
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5756
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .locals 2

    .prologue
    const/16 v1, 0x72

    .line 5407
    const-string v0, "requestUpdateBluetoothIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5411
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5412
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5413
    return-void
.end method

.method requestUpdateTouchUi()V
    .locals 2

    .prologue
    const/16 v1, 0x7a

    .line 5146
    const-string v0, "requestUpdateTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5148
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5149
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5150
    return-void
.end method

.method public resetInCallScreenMode()V
    .locals 1

    .prologue
    .line 6035
    const-string v0, "resetInCallScreenMode - InCallScreenMode set to UNDEFINED"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6036
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 6037
    return-void
.end method

.method public sendCdmaHoldMessage(I)V
    .locals 4
    .parameter "onHold"

    .prologue
    const/16 v2, 0x7b

    .line 3794
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3795
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3796
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 3797
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3798
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3799
    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 827
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 828
    return-void
.end method

.method updateAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 1375
    const-string v0, "InCallScreen"

    const-string v1, "updateAfterRadioTechnologyChange()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 1382
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 1385
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 1386
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .locals 2
    .parameter "dismissKeyguard"

    .prologue
    const/high16 v1, 0x40

    .line 1336
    if-eqz p1, :cond_0

    .line 1337
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1341
    :goto_0
    return-void

    .line 1339
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public updateMenuItems()V
    .locals 3

    .prologue
    .line 5931
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v1, :cond_0

    .line 5932
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    .line 5933
    .local v0, okToShowMenu:Z
    if-nez v0, :cond_0

    .line 5934
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 5937
    .end local v0           #okToShowMenu:Z
    :cond_0
    return-void
.end method

.method updateSlidingTabHint(II)V
    .locals 2
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    .line 6064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRotarySelectorHint("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6065
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_0

    .line 6066
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/CallCard;->setRotarySelectorHint(II)V

    .line 6067
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 6077
    :cond_0
    return-void
.end method
