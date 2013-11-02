.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$MyFlipMuteListener;,
        Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;,
        Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;,
        Lcom/android/phone/CallNotifier$InCallTonePlayer;
    }
.end annotation


# static fields
.field private static final CALLERINFO_QUERYING:I = -0x1

.field private static final CALLERINFO_QUERY_READY:I = 0x0

.field private static final CALLWAITING_ADDCALL_DISABLE_TIME:I = 0x7530

.field private static final CALLWAITING_ADDCALL_DISABLE_TIMEOUT:I = 0x18

.field private static final CALLWAITING_CALLERINFO_DISPLAY_DONE:I = 0x17

.field private static final CALLWAITING_CALLERINFO_DISPLAY_TIME:I = 0x4e20

.field private static final CALL_RINGTONE_PLAY:I = 0x32

.field private static final CDMA_CALL_WAITING_REJECT:I = 0x1b

.field private static final DBG:Z = true

.field private static final DISPLAYINFO_NOTIFICATION_DONE:I = 0x19

.field private static final DISPLAYINFO_NOTIFICATION_TIME:I = 0x7d0

.field private static final EMERGENCY_TONE_ALERT:I = 0x1

.field private static final EMERGENCY_TONE_OFF:I = 0x0

.field private static final EMERGENCY_TONE_VIBRATE:I = 0x2

.field private static final EVENT_OTA_PROVISION_CHANGE:I = 0x1a

.field private static final LOG_TAG:Ljava/lang/String; = "CallNotifier"

.field private static final PHONE_AUTO_ANSWER:I = 0xd

.field private static final PHONE_BATTERY_LOW:I = 0x16

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x8

.field private static final PHONE_DISCONNECT:I = 0x3

.field private static final PHONE_ENHANCED_VP_OFF:I = 0xa

.field private static final PHONE_ENHANCED_VP_ON:I = 0x9

.field private static final PHONE_INCOMING_RING:I = 0x5

.field private static final PHONE_MWI_CHANGED:I = 0x15

.field private static final PHONE_NEW_RINGING_CONNECTION:I = 0x2

.field private static final PHONE_RESEND_MUTE:I = 0xc

.field private static final PHONE_RINGBACK_TONE:I = 0xb

.field private static final PHONE_STATE_CHANGED:I = 0x1

.field private static final PHONE_STATE_DISPLAYINFO:I = 0x6

.field private static final PHONE_STATE_SIGNALINFO:I = 0x7

.field private static final PHONE_UNKNOWN_CONNECTION_APPEARED:I = 0x4

.field private static final RINGER_CUSTOM_RINGTONE_QUERY_TIMEOUT:I = 0x64

.field private static final RINGTONE_QUERY_WAIT_TIME:I = 0x1f4

.field private static final SUPP_SERVICE_NOTIFY:I = 0x22

.field private static final TONE_RELATIVE_VOLUME_SIGNALINFO:I = 0x50

.field private static final VDBG:Z = true

.field private static suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;


# instance fields
.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCallWaitingTimeOut:Z

.field private mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mCallerInfoQueryState:I

.field private mCallerInfoQueryStateGuard:Ljava/lang/Object;

.field private mCdmaVoicePrivacyState:Z

.field private mCurrentEmergencyToneState:I

.field private mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

.field private mEnableCallVIibrate:Z

.field private mFlipMuteListener:Lcom/android/phone/CallNotifier$MyFlipMuteListener;

.field private mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIsCdmaRedialCall:Z

.field private mIsEmergencyToneOn:I

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

.field private mRinger:Lcom/android/phone/Ringer;

.field private mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

.field private mSilentRingerRequested:Z

.field private m_vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V
    .locals 4
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"
    .parameter "callLog"

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 124
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 134
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 189
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 190
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 198
    iput v3, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    .line 219
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    .line 220
    iget-object v2, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 221
    iput-object p5, p0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 223
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 225
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 231
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->createSignalInfoToneGenerator()V

    .line 234
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 235
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 238
    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->m_vibrator:Landroid/os/Vibrator;

    .line 241
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getEnableCallVibrate()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mEnableCallVIibrate:Z

    .line 243
    new-instance v2, Lcom/android/phone/CallNotifier$MyFlipMuteListener;

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/CallNotifier$MyFlipMuteListener;-><init>(Lcom/android/phone/CallNotifier;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mFlipMuteListener:Lcom/android/phone/CallNotifier$MyFlipMuteListener;

    .line 245
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 247
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 248
    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallNotifier;ZLcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallNotifier;->onMwiChanged(ZLcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallNotifier;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/phone/CallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/CallNotifier;)Lcom/android/phone/Ringer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    return-void
.end method

.method public static clearSuppSvcNotification()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallNotifier;->suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 437
    return-void
.end method

.method private getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .parameter "conn"

    .prologue
    .line 2250
    const/4 v1, 0x0

    .line 2251
    .local v1, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 2253
    .local v2, o:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_1

    .line 2254
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v1, v0

    .line 2258
    .end local v2           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 2256
    .restart local v2       #o:Ljava/lang/Object;
    :cond_1
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #o:Ljava/lang/Object;
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method private getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 4
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 2204
    const/4 v0, 0x0

    .line 2206
    .local v0, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2207
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2227
    :goto_0
    if-nez v0, :cond_4

    .line 2228
    const/4 v2, 0x0

    .line 2239
    :goto_1
    return-object v2

    .line 2214
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

    .line 2216
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2218
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2220
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2223
    :cond_3
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 2230
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 2233
    .local v1, presentation:I
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2, p2, v0, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2235
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2236
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2238
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

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    move-object v2, v0

    .line 2239
    goto :goto_1
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 4
    .parameter "sub"

    .prologue
    .line 440
    const-string v1, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneStateListener: SUBSCRIPTION == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v0, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;I)V

    .line 455
    .local v0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I
    .locals 3
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 2272
    if-nez p2, :cond_0

    .line 2273
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 2279
    .local v0, presentation:I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation: presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2280
    return v0

    .line 2275
    .end local v0           #presentation:I
    :cond_0
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2276
    .restart local v0       #presentation:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation(): ignoring connection\'s presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSuppSvcNotification()Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    .locals 1

    .prologue
    .line 432
    sget-object v0, Lcom/android/phone/CallNotifier;->suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    return-object v0
.end method

.method public static isTurnOnMuteOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "mContext"

    .prologue
    const/4 v2, 0x0

    .line 2295
    const-string v0, "CallNotifier"

    const-string v1, "isTurnOnMuteOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "turn_to_mute"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2284
    const-string v0, "CallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    return-void
.end method

.method private onBatteryLow()V
    .locals 1

    .prologue
    .line 1481
    const-string v0, "onBatteryLow()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1485
    return-void
.end method

.method private onCallConnectedVibrate()V
    .locals 3

    .prologue
    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallConnectedVibrate,mEnableCallVIibrate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CallNotifier;->mEnableCallVIibrate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 983
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->mEnableCallVIibrate:Z

    if-eqz v1, :cond_0

    .line 984
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    .line 985
    .local v0, mVibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 987
    .end local v0           #mVibrator:Landroid/os/Vibrator;
    :cond_0
    return-void
.end method

.method private onCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter "r"

    .prologue
    const/16 v10, 0x18

    const/16 v9, 0x17

    const/4 v8, 0x0

    .line 1904
    invoke-virtual {p0, v9}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1905
    invoke-virtual {p0, v10}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1909
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v7, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v6, v7}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1914
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1915
    const-string v6, "- showing incoming call (CDMA call waiting)..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1916
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 1920
    :cond_0
    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 1921
    const-wide/16 v6, 0x4e20

    invoke-virtual {p0, v9, v6, v7}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1925
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6, v8}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 1928
    const-wide/16 v6, 0x7530

    invoke-virtual {p0, v10, v6, v7}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1932
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 1933
    .local v0, infoCW:Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 1934
    .local v1, isPresent:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCdmaCallWaiting: isPresent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1935
    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    .line 1936
    iget v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 1937
    .local v5, uSignalType:I
    iget v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 1938
    .local v3, uAlertPitch:I
    iget v4, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 1939
    .local v4, uSignal:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCdmaCallWaiting: uSignalType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uAlertPitch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uSignal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1942
    invoke-static {v5, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v2

    .line 1946
    .local v2, toneID:I
    new-instance v6, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 1948
    .end local v2           #toneID:I
    .end local v3           #uAlertPitch:I
    .end local v4           #uSignal:I
    .end local v5           #uSignalType:I
    :cond_1
    return-void
.end method

.method private onCdmaCallWaitingReject()V
    .locals 32

    .prologue
    .line 1969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v30

    .line 1972
    .local v30, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    .line 1974
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v25

    .line 1976
    .local v25, c:Lcom/android/internal/telephony/Connection;
    if-eqz v25, :cond_1

    .line 1977
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v28

    .line 1978
    .local v28, number:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v8

    .line 1979
    .local v8, presentation:I
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v10

    .line 1980
    .local v10, date:J
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v12

    .line 1982
    .local v12, duration:J
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getCdmaLineCtrlDurationMillis()J

    move-result-wide v22

    .line 1983
    .local v22, lineCtrlDuration:J
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v26

    .line 1985
    .local v26, isInCommingCall:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    move v5, v0

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    move v9, v5

    .line 1988
    .local v9, callLogType:I
    :goto_0
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v31

    .line 1989
    .local v31, subscription:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCdmaCallWaitingReject subscription: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1991
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v29

    .line 1993
    .local v29, o:Ljava/lang/Object;
    if-eqz v29, :cond_0

    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move v5, v0

    if-eqz v5, :cond_4

    .line 1994
    :cond_0
    move-object/from16 v0, v29

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v6, v0

    .line 2001
    .end local v29           #o:Ljava/lang/Object;
    .local v6, ci:Lcom/android/internal/telephony/CallerInfo;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v28

    move v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 2003
    .local v7, logNumber:Ljava/lang/String;
    if-eqz v6, :cond_5

    iget v5, v6, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move/from16 v27, v5

    .line 2004
    .local v27, newPresentation:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "- onCdmaCallWaitingReject(): logNumber set to: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ", newPresentation value is: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2008
    const-wide/16 v14, 0x0

    cmp-long v5, v22, v14

    if-nez v5, :cond_6

    .line 2009
    new-instance v4, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    add-int/lit8 v14, v31, 0x1

    invoke-direct/range {v4 .. v14}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V

    .line 2019
    .local v4, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    move-object v5, v0

    invoke-virtual {v5, v4}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 2021
    const/4 v5, 0x3

    if-ne v9, v5, :cond_7

    .line 2023
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide v2, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 2030
    :goto_4
    invoke-static/range {v25 .. v25}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 2034
    .end local v4           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v7           #logNumber:Ljava/lang/String;
    .end local v8           #presentation:I
    .end local v9           #callLogType:I
    .end local v10           #date:J
    .end local v12           #duration:J
    .end local v22           #lineCtrlDuration:J
    .end local v26           #isInCommingCall:Z
    .end local v27           #newPresentation:I
    .end local v28           #number:Ljava/lang/String;
    .end local v31           #subscription:I
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 2036
    .end local v25           #c:Lcom/android/internal/telephony/Connection;
    :cond_2
    return-void

    .line 1985
    .restart local v8       #presentation:I
    .restart local v10       #date:J
    .restart local v12       #duration:J
    .restart local v22       #lineCtrlDuration:J
    .restart local v25       #c:Lcom/android/internal/telephony/Connection;
    .restart local v26       #isInCommingCall:Z
    .restart local v28       #number:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    move v9, v5

    goto/16 :goto_0

    .line 1996
    .restart local v9       #callLogType:I
    .restart local v29       #o:Ljava/lang/Object;
    .restart local v31       #subscription:I
    :cond_4
    check-cast v29, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v29           #o:Ljava/lang/Object;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v6, v0

    .restart local v6       #ci:Lcom/android/internal/telephony/CallerInfo;
    goto :goto_1

    .restart local v7       #logNumber:Ljava/lang/String;
    :cond_5
    move/from16 v27, v8

    .line 2003
    goto :goto_2

    .line 2013
    .restart local v27       #newPresentation:I
    :cond_6
    new-instance v4, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v15, v0

    add-int/lit8 v24, v31, 0x1

    move-object v14, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move-wide/from16 v20, v10

    invoke-direct/range {v14 .. v24}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V

    .restart local v4       #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    goto :goto_3

    .line 2026
    :cond_7
    const/16 v5, 0x17

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    goto :goto_4
.end method

.method private onCfiChanged(ZI)V
    .locals 2
    .parameter "visible"
    .parameter "subscription"

    .prologue
    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCfiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1450
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/NotificationMgr;->updateCfi(ZI)V

    .line 1451
    return-void
.end method

.method private onCustomRingQueryComplete()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "CallNotifier"

    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, isQueryExecutionTimeExpired:Z
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 698
    :try_start_0
    iget v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 699
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 700
    const/4 v0, 0x1

    .line 702
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    if-eqz v0, :cond_1

    .line 706
    const-string v2, "CallNotifier"

    const-string v2, "CallerInfo query took too long; falling back to default ringtone"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const v2, 0x112a0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 722
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_2

    .line 723
    const-string v2, "CallNotifier"

    const-string v2, "onCustomRingQueryComplete: No incoming call! Bailing out..."

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :goto_0
    return-void

    .line 702
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 730
    :cond_2
    const-string v2, "RINGING... (onCustomRingQueryComplete)"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 736
    const-string v2, "- showing incoming call (custom ring query complete)..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 737
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 740
    const/16 v2, 0x32

    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 741
    .local v1, message:Landroid/os/Message;
    const-wide/16 v2, 0x320

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 38
    .parameter "r"

    .prologue
    .line 1102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDisconnect()...  CallManager state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1104
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/internal/telephony/Connection;

    .line 1105
    .local v26, c:Lcom/android/internal/telephony/Connection;
    if-eqz v26, :cond_0

    .line 1106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- onDisconnect: cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", incoming = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", date = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1112
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 1113
    const/16 v25, 0x0

    .line 1114
    .local v25, autoretrySetting:I
    if-eqz v26, :cond_1

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_auto_retry"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 1119
    :cond_1
    if-eqz v26, :cond_2

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 1127
    const/16 v5, 0x17

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1128
    const/16 v5, 0x18

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1144
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v34

    .line 1145
    .local v34, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_13

    .line 1146
    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1149
    const-string v5, "cancelCallInProgressNotification()... (onDisconnect)"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1150
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotification()V

    .line 1167
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mFlipMuteListener:Lcom/android/phone/CallNotifier$MyFlipMuteListener;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$MyFlipMuteListener;->disable()V

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object v5, v0

    if-eqz v5, :cond_3

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1172
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1177
    :cond_3
    const/16 v37, 0x0

    .line 1180
    .local v37, toneToPlay:I
    if-eqz v26, :cond_4

    .line 1181
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v28

    .line 1182
    .local v28, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-ne v0, v1, :cond_15

    .line 1183
    const-string v5, "- need to play BUSY tone!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1184
    const/16 v37, 0x2

    .line 1221
    .end local v28           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_4
    :goto_1
    if-nez v37, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_6

    if-eqz v26, :cond_6

    .line 1224
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v28

    .line 1225
    .restart local v28       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-eq v0, v1, :cond_5

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-ne v0, v1, :cond_6

    .line 1227
    :cond_5
    const-string v5, "- need to play CALL_ENDED tone!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1228
    const/16 v37, 0x5

    .line 1229
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1233
    .end local v28           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_8

    .line 1236
    if-nez v37, :cond_7

    .line 1237
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 1240
    :cond_7
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotification()V

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 1249
    const/4 v5, 0x5

    move/from16 v0, v37

    move v1, v5

    if-eq v0, v1, :cond_8

    .line 1250
    const-string v5, "onDisconnect: force InCallScreen to finish()"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneApp;->dismissCallScreen(Lcom/android/internal/telephony/Phone;)V

    .line 1261
    :cond_8
    :goto_2
    if-eqz v26, :cond_11

    .line 1262
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v32

    .line 1263
    .local v32, number:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v10

    .line 1264
    .local v10, date:J
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v12

    .line 1266
    .local v12, duration:J
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCdmaLineCtrlDurationMillis()J

    move-result-wide v22

    .line 1267
    .local v22, lineCtrlDuration:J
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v30

    .line 1269
    .local v30, isInCommingCall:Z
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v28

    .line 1270
    .restart local v28       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v33

    .line 1272
    .local v33, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v36

    .line 1273
    .local v36, subscription:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDisconnect subscription: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1278
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1281
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-eq v0, v1, :cond_9

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-ne v0, v1, :cond_1f

    :cond_9
    const/4 v5, 0x3

    move v9, v5

    .line 1288
    .local v9, callLogType:I
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- callLogType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", UserData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1292
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v6

    .line 1293
    .local v6, ci:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v7

    .line 1295
    .local v7, logNumber:Ljava/lang/String;
    const-string v5, "- onDisconnect(): logNumber set to: xxxxxxx"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1302
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v8

    .line 1304
    .local v8, presentation:I
    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v14, 0x2

    if-ne v5, v14, :cond_a

    .line 1305
    invoke-static/range {v32 .. v32}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    move v5, v0

    if-eqz v5, :cond_a

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    move-object v5, v0

    if-eqz v5, :cond_a

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    move-object v5, v0

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v5}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$300(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1322
    :cond_a
    const/16 v35, 0x0

    .line 1325
    .local v35, shouldNotlogEmergencyNumber:Z
    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v14, 0x2

    if-ne v5, v14, :cond_21

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v5, 0x1

    move/from16 v31, v5

    .line 1327
    .local v31, isOtaNumber:Z
    :goto_4
    invoke-static/range {v32 .. v32}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v29

    .line 1330
    .local v29, isEmergencyNumber:Z
    if-nez v31, :cond_c

    if-eqz v29, :cond_b

    .line 1334
    :cond_b
    const-wide/16 v14, 0x0

    cmp-long v5, v22, v14

    if-nez v5, :cond_22

    .line 1335
    new-instance v4, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    add-int/lit8 v14, v36, 0x1

    invoke-direct/range {v4 .. v14}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V

    .line 1344
    .local v4, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    move-object v5, v0

    invoke-virtual {v5, v4}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 1348
    .end local v4           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :cond_c
    const/4 v5, 0x3

    if-ne v9, v5, :cond_d

    .line 1352
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide v2, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 1359
    :cond_d
    if-eqz v37, :cond_e

    .line 1360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- starting post-disconnect tone ("

    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1361
    new-instance v5, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1373
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_24

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_23

    .line 1380
    const/4 v5, 0x5

    move/from16 v0, v37

    move v1, v5

    if-eq v0, v1, :cond_f

    .line 1381
    const-string v5, "- NOT showing in-call screen; releasing wake locks!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    sget-object v6, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    sget-object v6, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1394
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_11

    :cond_10
    invoke-static/range {v32 .. v32}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-eq v0, v1, :cond_11

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-eq v0, v1, :cond_11

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-eq v0, v1, :cond_11

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-eq v0, v1, :cond_11

    .line 1401
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    move v5, v0

    if-nez v5, :cond_26

    .line 1402
    const/4 v5, 0x1

    move/from16 v0, v25

    move v1, v5

    if-ne v0, v1, :cond_25

    .line 1405
    const/4 v5, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    .line 1406
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1415
    .end local v7           #logNumber:Ljava/lang/String;
    .end local v8           #presentation:I
    .end local v9           #callLogType:I
    .end local v10           #date:J
    .end local v12           #duration:J
    .end local v22           #lineCtrlDuration:J
    .end local v28           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v29           #isEmergencyNumber:Z
    .end local v30           #isInCommingCall:Z
    .end local v31           #isOtaNumber:Z
    .end local v32           #number:Ljava/lang/String;
    .end local v33           #phone:Lcom/android/internal/telephony/Phone;
    .end local v35           #shouldNotlogEmergencyNumber:Z
    .end local v36           #subscription:I
    :cond_11
    :goto_7
    return-void

    .line 1152
    .end local v37           #toneToPlay:I
    :cond_12
    const-string v5, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_0

    .line 1156
    :cond_13
    const-string v5, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_14

    .line 1160
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v27

    .line 1161
    .local v27, c2:Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 1163
    .end local v27           #c2:Lcom/android/internal/telephony/Connection;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_0

    .line 1185
    .restart local v28       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v37       #toneToPlay:I
    :cond_15
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-ne v0, v1, :cond_16

    .line 1186
    const-string v5, "- need to play CONGESTION tone!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1187
    const/16 v37, 0x3

    goto/16 :goto_1

    .line 1188
    :cond_16
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-eq v0, v1, :cond_17

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-ne v0, v1, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1191
    const-string v5, "- need to play OTA_CALL_END tone!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1192
    const/16 v37, 0xc

    goto/16 :goto_1

    .line 1193
    :cond_18
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-ne v0, v1, :cond_19

    .line 1194
    const-string v5, "- need to play CDMA_REORDER tone!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1195
    const/16 v37, 0x7

    goto/16 :goto_1

    .line 1196
    :cond_19
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-ne v0, v1, :cond_1a

    .line 1197
    const-string v5, "- need to play CDMA_INTERCEPT tone!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1198
    const/16 v37, 0x8

    goto/16 :goto_1

    .line 1199
    :cond_1a
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-ne v0, v1, :cond_1b

    .line 1200
    const-string v5, "- need to play CDMA_DROP tone!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1201
    const/16 v37, 0x9

    goto/16 :goto_1

    .line 1202
    :cond_1b
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-ne v0, v1, :cond_1c

    .line 1203
    const-string v5, "- need to play OUT OF SERVICE tone!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1204
    const/16 v37, 0xa

    goto/16 :goto_1

    .line 1205
    :cond_1c
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-ne v0, v1, :cond_1d

    .line 1206
    const-string v5, "- need to play TONE_UNOBTAINABLE_NUMBER tone!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1207
    const/16 v37, 0xe

    goto/16 :goto_1

    .line 1208
    :cond_1d
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v28

    move-object v1, v5

    if-ne v0, v1, :cond_4

    .line 1209
    const-string v5, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1210
    const/16 v37, 0x5

    goto/16 :goto_1

    .line 1256
    .end local v28           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_1e
    const-string v5, "onDisconnect: In call screen. Set short timeout."

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->clearUserActivityTimeout()V

    goto/16 :goto_2

    .line 1281
    .restart local v10       #date:J
    .restart local v12       #duration:J
    .restart local v22       #lineCtrlDuration:J
    .restart local v28       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v30       #isInCommingCall:Z
    .restart local v32       #number:Ljava/lang/String;
    .restart local v33       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v36       #subscription:I
    :cond_1f
    const/4 v5, 0x1

    move v9, v5

    goto/16 :goto_3

    .line 1286
    :cond_20
    const/4 v9, 0x2

    .restart local v9       #callLogType:I
    goto/16 :goto_3

    .line 1325
    .restart local v6       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v7       #logNumber:Ljava/lang/String;
    .restart local v8       #presentation:I
    .restart local v35       #shouldNotlogEmergencyNumber:Z
    :cond_21
    const/4 v5, 0x0

    move/from16 v31, v5

    goto/16 :goto_4

    .line 1339
    .restart local v29       #isEmergencyNumber:Z
    .restart local v31       #isOtaNumber:Z
    :cond_22
    new-instance v4, Lcom/android/phone/CallLogAsync$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v15, v0

    add-int/lit8 v24, v36, 0x1

    move-object v14, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move-wide/from16 v20, v10

    invoke-direct/range {v14 .. v24}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V

    .restart local v4       #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    goto/16 :goto_5

    .line 1388
    .end local v4           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_23
    const-string v5, "- still showing in-call screen; not releasing wake locks."

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1391
    :cond_24
    const-string v5, "- phone still in use; not releasing wake locks."

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1408
    :cond_25
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_7

    .line 1411
    :cond_26
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_7
.end method

.method private onDisplayInfo(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "r"

    .prologue
    .line 1771
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    move-object v2, v0

    .line 1773
    .local v2, displayInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;
    if-eqz v2, :cond_0

    .line 1774
    iget-object v1, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 1775
    .local v1, displayInfo:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisplayInfo: displayInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1776
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3, v1}, Lcom/android/phone/CdmaDisplayInfo;->displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 1779
    const/16 v3, 0x19

    const-wide/16 v4, 0x7d0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1782
    .end local v1           #displayInfo:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private onMwiChanged(ZLcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "visible"
    .parameter "phone"

    .prologue
    .line 1435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMwiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1436
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/NotificationMgr;->updateMwi(ZLcom/android/internal/telephony/Phone;)V

    .line 1437
    return-void
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter "r"

    .prologue
    .line 472
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 473
    .local v1, c:Lcom/android/internal/telephony/Connection;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onNewRingingConnection(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 475
    .local v7, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 479
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "device_provisioned"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    move v6, v10

    .line 481
    .local v6, provisioned:Z
    :goto_0
    if-nez v6, :cond_1

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 482
    const-string v10, "CallNotifier"

    const-string v11, "CallNotifier: rejecting incoming call: not provisioned / ECM"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 610
    :goto_1
    return-void

    .line 479
    .end local v6           #provisioned:Z
    :cond_0
    const/4 v10, 0x0

    move v6, v10

    goto :goto_0

    .line 490
    .restart local v6       #provisioned:Z
    :cond_1
    invoke-static {v5}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 491
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v11, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    move v0, v10

    .line 493
    .local v0, activateState:Z
    :goto_2
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v11, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v10, v11, :cond_3

    const/4 v10, 0x1

    move v2, v10

    .line 495
    .local v2, dialogState:Z
    :goto_3
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v8, v10, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 497
    .local v8, spcState:Z
    if-eqz v8, :cond_4

    .line 498
    const-string v10, "CallNotifier"

    const-string v11, "CallNotifier: rejecting incoming call: OTA call is active"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1

    .line 491
    .end local v0           #activateState:Z
    .end local v2           #dialogState:Z
    .end local v8           #spcState:Z
    :cond_2
    const/4 v10, 0x0

    move v0, v10

    goto :goto_2

    .line 493
    .restart local v0       #activateState:Z
    :cond_3
    const/4 v10, 0x0

    move v2, v10

    goto :goto_3

    .line 501
    .restart local v2       #dialogState:Z
    .restart local v8       #spcState:Z
    :cond_4
    if-nez v0, :cond_5

    if-eqz v2, :cond_7

    .line 502
    :cond_5
    if-eqz v2, :cond_6

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 503
    :cond_6
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 504
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    .line 508
    .end local v0           #activateState:Z
    .end local v2           #dialogState:Z
    .end local v8           #spcState:Z
    :cond_7
    if-nez v1, :cond_8

    .line 509
    const-string v10, "CallNotifier"

    const-string v11, "CallNotifier.onNewRingingConnection(): null connection!"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 514
    :cond_8
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v10

    if-nez v10, :cond_9

    .line 515
    const-string v10, "CallNotifier"

    const-string v11, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 525
    :cond_9
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_a

    .line 526
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 529
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .line 531
    .local v9, state:Lcom/android/internal/telephony/Call$State;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "- connection is ringing!  state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 559
    const-string v10, "Holding wake lock on new incoming connection."

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 560
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v11, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 564
    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 565
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "auto_answer"

    const/4 v12, -0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 569
    .local v3, mAutoAnswer:I
    const/16 v10, 0xd

    invoke-virtual {p0, v10}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 571
    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 575
    const/4 v10, -0x1

    if-eq v3, v10, :cond_b

    .line 576
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Will auto-answer in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    div-int/lit16 v12, v3, 0x3e8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " seconds"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/16 v10, 0xd

    invoke-static {p0, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 578
    .local v4, message:Landroid/os/Message;
    int-to-long v10, v3

    invoke-virtual {p0, v4, v10, v11}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 582
    .end local v4           #message:Landroid/os/Message;
    :cond_b
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v10}, Lcom/android/phone/CallNotifier;->isTurnOnMuteOn(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 583
    const-string v10, "isTurnOnMuteOn true"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 584
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mFlipMuteListener:Lcom/android/phone/CallNotifier$MyFlipMuteListener;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/phone/CallNotifier$MyFlipMuteListener;->mEnableTime:J

    .line 585
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mFlipMuteListener:Lcom/android/phone/CallNotifier$MyFlipMuteListener;

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier$MyFlipMuteListener;->enable()V

    .line 609
    .end local v3           #mAutoAnswer:I
    :cond_c
    :goto_4
    const-string v10, "- onNewRingingConnection() done."

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 588
    :cond_d
    const-string v10, "- starting call waiting tone..."

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 589
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v10, :cond_e

    .line 590
    new-instance v10, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v11, 0x1

    invoke-direct {v10, p0, v11}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 591
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 595
    :cond_e
    const-string v10, "- showing incoming call (this is a WAITING call)..."

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 596
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_4
.end method

.method private onPhoneAutoAnswer()V
    .locals 4

    .prologue
    .line 459
    const-string v2, "CallNotifier"

    const-string v3, "Autoanswering ringing call"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 461
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    .line 463
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/CallManager;->acceptCall(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 466
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "r"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 837
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 838
    .local v4, state:Lcom/android/internal/telephony/Phone$State;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPhoneStateChanged: state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 843
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v7, :cond_e

    move v7, v9

    :goto_0
    invoke-virtual {v6, v7}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableNotificationAlerts(Z)V

    .line 846
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 847
    .local v3, fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v10, :cond_4

    .line 848
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_2

    .line 851
    :cond_0
    iget-boolean v6, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-eqz v6, :cond_1

    .line 852
    const/16 v5, 0xb

    .line 853
    .local v5, toneToPlay:I
    new-instance v6, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v6, p0, v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 856
    .end local v5           #toneToPlay:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 859
    :cond_2
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_3

    .line 861
    const-string v6, "cdma call connected"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 862
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCallConnectedVibrate()V

    .line 865
    :cond_3
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 873
    :cond_4
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6, v8}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    .line 877
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6, v4}, Lcom/android/phone/PhoneApp;->updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V

    .line 879
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v6, :cond_7

    .line 881
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v6, :cond_5

    .line 882
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 883
    iput-object v11, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 886
    :cond_5
    const-string v6, "onPhoneStateChanged: OFF HOOK"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 888
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 892
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v6

    if-nez v6, :cond_6

    .line 897
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v7, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 908
    :cond_6
    const-string v6, "stopRing()... (OFFHOOK state)"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 909
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v6}, Lcom/android/phone/Ringer;->stopRing()V

    .line 910
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mFlipMuteListener:Lcom/android/phone/CallNotifier$MyFlipMuteListener;

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$MyFlipMuteListener;->disable()V

    .line 911
    const-string v6, "Reset Auto answer timeout"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 912
    const/16 v6, 0xd

    invoke-virtual {p0, v6}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 915
    const-string v6, "- updating notification for phone state change..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 917
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v6, :cond_7

    .line 918
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 919
    .local v2, controlState:Lcom/android/phone/InCallControlState;
    iget-boolean v6, v2, Lcom/android/phone/InCallControlState;->onHold:Z

    if-eqz v6, :cond_f

    .line 920
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(I)V

    .line 929
    .end local v2           #controlState:Lcom/android/phone/InCallControlState;
    :cond_7
    :goto_1
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v10, :cond_a

    .line 930
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 931
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 932
    const-string v6, "onPhoneStateChanged: it is an emergency call."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 933
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 934
    .local v1, callState:Lcom/android/internal/telephony/Call$State;
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-nez v6, :cond_8

    .line 935
    new-instance v6, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-direct {v6, p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v6, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    .line 938
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v6, :cond_9

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v6, :cond_10

    .line 939
    :cond_9
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "emergency_tone"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    .line 942
    iget v6, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-nez v6, :cond_a

    .line 944
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v6, :cond_a

    .line 945
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V
    invoke-static {v6}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$200(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 958
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_a
    :goto_2
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-eq v6, v9, :cond_b

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_d

    .line 960
    :cond_b
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 961
    .restart local v1       #callState:Lcom/android/internal/telephony/Call$State;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fore call state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 963
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v6, :cond_c

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_c

    .line 965
    const-string v6, "gsm call connected"

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 966
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCallConnectedVibrate()V

    .line 968
    :cond_c
    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mPreviousGsmCallState:Lcom/android/internal/telephony/Call$State;

    .line 970
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-nez v6, :cond_d

    .line 973
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v6, :cond_d

    .line 974
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 975
    iput-object v11, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 979
    .end local v1           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_d
    return-void

    .end local v3           #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_e
    move v7, v8

    .line 843
    goto/16 :goto_0

    .line 922
    .restart local v2       #controlState:Lcom/android/phone/InCallControlState;
    .restart local v3       #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_f
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(I)V

    goto/16 :goto_1

    .line 948
    .end local v2           #controlState:Lcom/android/phone/InCallControlState;
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    .restart local v1       #callState:Lcom/android/internal/telephony/Call$State;
    :cond_10
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v6, :cond_a

    .line 949
    iget v6, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v6, :cond_a

    .line 950
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v6, :cond_a

    .line 951
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v6}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$300(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    goto :goto_2
.end method

.method private onResendMute()V
    .locals 2

    .prologue
    .line 2184
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 2185
    .local v0, muteState:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2186
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2187
    return-void

    .line 2185
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onRingbackTone(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 2160
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2162
    .local v0, playTone:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2167
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v1, :cond_0

    .line 2169
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2170
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 2178
    :cond_0
    :goto_0
    return-void

    .line 2173
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v1, :cond_0

    .line 2174
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 2175
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_0
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "r"

    .prologue
    .line 1826
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1829
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1875
    :cond_0
    :goto_0
    return-void

    .line 1832
    :cond_1
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    move-object v2, v0

    .line 1834
    .local v2, signalInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    if-eqz v2, :cond_0

    .line 1835
    iget-boolean v1, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 1836
    .local v1, isPresent:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSignalInfo: isPresent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1837
    if-eqz v1, :cond_0

    .line 1838
    iget v6, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 1839
    .local v6, uSignalType:I
    iget v4, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 1840
    .local v4, uAlertPitch:I
    iget v5, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 1842
    .local v5, uSignal:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSignalInfo: uSignalType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uAlertPitch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uSignal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1847
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    if-nez v4, :cond_2

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    .line 1849
    const-string v7, "***zyj*** don\'t play this audio!"

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1853
    :cond_2
    const-string v7, "***zyj*** play this audio!"

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1855
    invoke-static {v6, v4, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v3

    .line 1859
    .local v3, toneID:I
    new-instance v7, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v7, p0, v3}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto :goto_0
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 748
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 750
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 751
    const-string v1, "- showing incoming call (unknown connection appeared)..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 755
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 757
    :cond_0
    return-void
.end method

.method private registerForNotifications()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1036
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1037
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1038
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1039
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1040
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1041
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x1a

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1042
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1043
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1044
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1045
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1046
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1047
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1048
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1049
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x22

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1050
    return-void
.end method

.method private resetAudioStateAfterDisconnect()V
    .locals 3

    .prologue
    .line 1421
    const-string v0, "resetAudioStateAfterDisconnect()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1423
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1431
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1432
    return-void
.end method

.method private showIncomingCall()V
    .locals 2

    .prologue
    .line 779
    const-string v0, "showIncomingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 784
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "call"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 818
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 824
    const-string v0, "- updating notification from showIncomingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 825
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 826
    return-void

    .line 785
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .locals 9
    .parameter "c"
    .parameter "date"

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, p1, p0, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v8

    .line 2065
    .local v8, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    if-eqz v8, :cond_3

    .line 2068
    const-string v0, "showMissedCallNotification: Querying for CallerInfo on missed call..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2069
    iget-boolean v0, v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v0, :cond_0

    .line 2072
    iget-object v7, v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 2077
    .local v7, ci:Lcom/android/internal/telephony/CallerInfo;
    iget-object v1, v7, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2078
    .local v1, name:Ljava/lang/String;
    iget-object v2, v7, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2079
    .local v2, number:Ljava/lang/String;
    iget v0, v7, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v3, :cond_1

    .line 2080
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v3, 0x7f0c000e

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2087
    :goto_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iget-object v3, v7, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v6

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 2095
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v7           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_0
    :goto_1
    return-void

    .line 2081
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #number:Ljava/lang/String;
    .restart local v7       #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_1
    iget v0, v7, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v0, v3, :cond_2

    .line 2082
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v3, 0x7f0c000d

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2084
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget v3, v7, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v7, v2, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2093
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v7           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_3
    const-string v0, "CallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMissedCallNotification: got null CallerInfo for Connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V
    .locals 6
    .parameter "c"

    .prologue
    const/4 v5, 0x0

    .line 627
    const/4 v2, 0x0

    .line 628
    .local v2, shouldStartQuery:Z
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 629
    :try_start_0
    iget v4, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v4, :cond_0

    .line 630
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 631
    const/4 v2, 0x1

    .line 633
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    if-eqz v2, :cond_2

    .line 636
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 639
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3, p1, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 644
    .local v0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v3, :cond_1

    .line 645
    const-string v3, "- CallerInfo already up to date, using available data"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 646
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v5, p0, v3}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 676
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :goto_0
    return-void

    .line 633
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 648
    .restart local v0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_1
    const-string v3, "- Starting query, posting timeout message."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 649
    const/16 v3, 0x64

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 658
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_2
    const v3, 0x112a1

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 661
    const-string v3, "RINGING... (request to ring arrived while query is running)"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 668
    const-string v3, "- showing incoming call (couldn\'t start query)..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 669
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 672
    const/16 v3, 0x32

    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 673
    .local v1, message:Landroid/os/Message;
    const-wide/16 v3, 0x320

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method createSignalInfoToneGenerator()V
    .locals 4

    .prologue
    .line 990
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :goto_0
    return-void

    .line 992
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 993
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallNotifier: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0
.end method

.method getCdmaVoicePrivacyState()Z
    .locals 1

    .prologue
    .line 2049
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    return v0
.end method

.method getIsCdmaRedialCall()Z
    .locals 1

    .prologue
    .line 2056
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    return v0
.end method

.method getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v10, "- updating notification for VP state..."

    const-string v7, "CallNotifier"

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage() Msg Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 257
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->checkPhoneType()V

    .line 258
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 260
    :sswitch_0
    const-string v5, "RINGING... (new)"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 261
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    .line 262
    iput-boolean v9, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    goto :goto_0

    .line 268
    :sswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 269
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v2, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .line 271
    .local v2, pb:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_1

    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v5, :cond_1

    .line 273
    const-string v5, "RINGING... (PHONE_INCOMING_RING event)"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_1
    const-string v5, "RING before NEW_RING, skipping"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    .end local v2           #pb:Lcom/android/internal/telephony/PhoneBase;
    :sswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 288
    :sswitch_3
    const-string v5, "DISCONNECT"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 289
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 293
    :sswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 300
    :sswitch_5
    const-string v5, "CallNotifier"

    const-string v5, "CallerInfo query took too long; manually starting ringer"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_0

    .line 310
    :sswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 311
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v5

    invoke-direct {p0, v5, v3}, Lcom/android/phone/CallNotifier;->onMwiChanged(ZLcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 315
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    :sswitch_7
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onBatteryLow()V

    goto :goto_0

    .line 319
    :sswitch_8
    const-string v5, "Received PHONE_CDMA_CALL_WAITING event"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 320
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->onCdmaCallWaiting(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 324
    :sswitch_9
    const-string v5, "CallNotifier"

    const-string v5, "Received CDMA_CALL_WAITING_REJECT event"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 329
    :sswitch_a
    const-string v5, "CallNotifier"

    const-string v5, "Received CALLWAITING_CALLERINFO_DISPLAY_DONE event"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 331
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 335
    :sswitch_b
    const-string v5, "Received CALLWAITING_ADDCALL_DISABLE_TIMEOUT event ..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 337
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5, v8}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 338
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->updateInCallScreenTouchUi()V

    goto/16 :goto_0

    .line 342
    :sswitch_c
    const-string v5, "Received PHONE_STATE_DISPLAYINFO event"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 343
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->onDisplayInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 347
    :sswitch_d
    const-string v5, "Received PHONE_STATE_SIGNALINFO event"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 348
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 352
    :sswitch_e
    const-string v5, "Received Display Info notification done event ..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/android/phone/CdmaDisplayInfo;->dismissDisplayInfoRecord()V

    goto/16 :goto_0

    .line 357
    :sswitch_f
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, p1}, Lcom/android/phone/PhoneApp;->handleOtaEvents(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 361
    :sswitch_10
    const-string v5, "PHONE_ENHANCED_VP_ON..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 362
    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    if-nez v5, :cond_0

    .line 363
    const/4 v4, 0x6

    .line 364
    .local v4, toneToPlay:I
    new-instance v5, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v5, p0, v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 365
    iput-boolean v8, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 367
    const-string v5, "- updating notification for VP state..."

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 373
    .end local v4           #toneToPlay:I
    :sswitch_11
    const-string v5, "PHONE_ENHANCED_VP_OFF..."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 374
    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    if-eqz v5, :cond_0

    .line 375
    const/4 v4, 0x6

    .line 376
    .restart local v4       #toneToPlay:I
    new-instance v5, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v5, p0, v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 377
    iput-boolean v9, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 379
    const-string v5, "- updating notification for VP state..."

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 385
    .end local v4           #toneToPlay:I
    :sswitch_12
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 389
    :sswitch_13
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onResendMute()V

    goto/16 :goto_0

    .line 393
    :sswitch_14
    const-string v5, "Received CALL_RINGTONE_PLAY"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 394
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_0

    .line 395
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 396
    const-string v5, "isShowingCallScreen, ring"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 397
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v5}, Lcom/android/phone/Ringer;->ring()V

    goto/16 :goto_0

    .line 399
    :cond_2
    const-string v5, "Waiting InCallScreen onResume"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 400
    const/16 v5, 0x32

    const-wide/16 v6, 0x12c

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 408
    :sswitch_15
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onPhoneAutoAnswer()V

    goto/16 :goto_0

    .line 412
    :sswitch_16
    const-string v5, "Received Supplementary Notification"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 414
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 415
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    sput-object v5, Lcom/android/phone/CallNotifier;->suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 416
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getInCallScreen()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 417
    .local v1, inCallScreen:Lcom/android/phone/InCallScreen;
    if-eqz v1, :cond_3

    .line 418
    const v5, 0x7f07007c

    invoke-virtual {v1, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCard;

    .line 419
    .local v0, callCard:Lcom/android/phone/CallCard;
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v5}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_0

    .line 421
    .end local v0           #callCard:Lcom/android/phone/CallCard;
    :cond_3
    const-string v5, "CallNotifier"

    const-string v5, "SUPP_SERVICE_NOTIFY mInCallScreen null"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 258
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_1
        0x6 -> :sswitch_c
        0x7 -> :sswitch_d
        0x8 -> :sswitch_8
        0x9 -> :sswitch_10
        0xa -> :sswitch_11
        0xb -> :sswitch_12
        0xc -> :sswitch_13
        0xd -> :sswitch_15
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x17 -> :sswitch_a
        0x18 -> :sswitch_b
        0x19 -> :sswitch_e
        0x1a -> :sswitch_f
        0x1b -> :sswitch_9
        0x22 -> :sswitch_16
        0x32 -> :sswitch_14
        0x64 -> :sswitch_5
    .end sparse-switch
.end method

.method isRinging()Z
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    return v0
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 1059
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1060
    const-string v0, "CallerInfo query complete, posting missed call notification"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1062
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1065
    .restart local p2
    :cond_1
    instance-of v0, p2, Lcom/android/phone/CallNotifier;

    if-eqz v0, :cond_0

    .line 1066
    const-string v0, "CallerInfo query complete (for CallNotifier), updating state for incoming call.."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1070
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1072
    const/4 v7, 0x0

    .line 1073
    .local v7, isQueryExecutionTimeOK:Z
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 1074
    :try_start_0
    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1075
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1076
    const/4 v7, 0x1

    .line 1078
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    if-eqz v7, :cond_0

    .line 1083
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v0, :cond_3

    .line 1084
    const-string v0, "send to voicemail flag detected. hanging up."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 1078
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1090
    :cond_3
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 1091
    const-string v0, "custom ringtone found, setting up ringer."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1092
    check-cast p2, Lcom/android/phone/CallNotifier;

    .end local p2
    iget-object v8, p2, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 1093
    .local v8, r:Lcom/android/phone/Ringer;
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v8, v0}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1096
    .end local v8           #r:Lcom/android/phone/Ringer;
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_0
.end method

.method sendBatteryLow()V
    .locals 2

    .prologue
    .line 1476
    const/16 v1, 0x16

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1477
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendMessage(Landroid/os/Message;)Z

    .line 1478
    return-void
.end method

.method sendCdmaCallWaitingReject()V
    .locals 1

    .prologue
    .line 1958
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    .line 1959
    return-void
.end method

.method sendMwiChangedDelayed(JLcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "delayMillis"
    .parameter "phone"

    .prologue
    .line 1444
    const/16 v1, 0x15

    invoke-static {p0, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1445
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1446
    return-void
.end method

.method public setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 2289
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 2290
    return-void
.end method

.method silenceRinger()V
    .locals 1

    .prologue
    .line 1465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 1466
    const-string v0, "stopRing()... (silenceRinger)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1467
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1468
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mFlipMuteListener:Lcom/android/phone/CallNotifier$MyFlipMuteListener;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$MyFlipMuteListener;->disable()V

    .line 1469
    return-void
.end method

.method startVibratBeepTone(ZZ)V
    .locals 3
    .parameter "vibrate"
    .parameter "ringing"

    .prologue
    .line 1890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ghh0701 startVibratBeepTone a beep tone player. vibrate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ringing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1891
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->m_vibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1892
    :cond_0
    if-eqz p2, :cond_1

    .line 1894
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1896
    :cond_1
    return-void
.end method

.method stopSignalInfoTone()V
    .locals 2

    .prologue
    .line 1884
    const-string v0, "stopSignalInfoTone: Stopping SignalInfo tone player"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1885
    new-instance v0, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    const/16 v1, 0x62

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    .line 1886
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1000
    const-string v0, "CallNotifier"

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 1003
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1004
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1005
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 1006
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 1007
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1008
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1009
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1010
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1011
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1012
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 1013
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 1022
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1025
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1027
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 1028
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 1031
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 1032
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->createSignalInfoToneGenerator()V

    .line 1033
    return-void
.end method
