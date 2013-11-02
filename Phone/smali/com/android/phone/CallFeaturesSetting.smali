.class public Lcom/android/phone/CallFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

.field private static final BUTTON_CDMA_OPTIONS:Ljava/lang/String; = "button_cdma_more_expand_key"

.field private static final BUTTON_FDN_KEY:Ljava/lang/String; = "button_fdn_key"

.field private static final BUTTON_GSM_UMTS_OPTIONS:Ljava/lang/String; = "button_gsm_more_expand_key"

.field private static final BUTTON_SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options_key"

.field private static final BUTTON_SIP_CALL_OPTIONS_WIFI_ONLY:Ljava/lang/String; = "sip_call_options_wifi_only_key"

.field private static final BUTTON_VOICEMAIL_KEY:Ljava/lang/String; = "button_voicemail_key"

.field private static final BUTTON_VOICEMAIL_PROVIDER_KEY:Ljava/lang/String; = "button_voicemail_provider_key"

.field private static final BUTTON_VOICEMAIL_SETTING_KEY:Ljava/lang/String; = "button_voicemail_setting_key"

.field private static final DBG:Z = false

.field public static final DEFAULT_VM_PROVIDER_KEY:Ljava/lang/String; = ""

.field static final DTMF_TONE_TYPE_LONG:I = 0x1

.field static final DTMF_TONE_TYPE_NORMAL:I = 0x0

.field private static final EVENT_FORWARDING_CHANGED:I = 0x1f5

.field private static final EVENT_FORWARDING_GET_COMPLETED:I = 0x1f6

.field private static final EVENT_VOICEMAIL_CHANGED:I = 0x1f4

.field static final FORWARDING_SETTINGS_REASONS:[I = null

.field public static final FWD_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumber"

.field public static final FWD_NUMBER_TIME_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumberTime"

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo; = null

.field public static final FWD_SETTINGS_LENGTH_TAG:Ljava/lang/String; = "#Length"

.field public static final FWD_SETTINGS_TAG:Ljava/lang/String; = "#FWDSettings"

.field public static final FWD_SETTING_NUMBER:Ljava/lang/String; = "#Number"

.field public static final FWD_SETTING_REASON:Ljava/lang/String; = "#Reason"

.field public static final FWD_SETTING_STATUS:Ljava/lang/String; = "#Status"

.field public static final FWD_SETTING_TAG:Ljava/lang/String; = "#Setting"

.field public static final FWD_SETTING_TIME:Ljava/lang/String; = "#Time"

.field private static final FW_GET_RESPONSE_ERROR:I = 0x1f6

.field private static final FW_SET_RESPONSE_ERROR:I = 0x1f5

.field public static final HAC_KEY:Ljava/lang/String; = "HACSetting"

.field public static final HAC_VAL_OFF:Ljava/lang/String; = "OFF"

.field public static final HAC_VAL_ON:Ljava/lang/String; = "ON"

.field public static final IGNORE_PROVIDER_EXTRA:Ljava/lang/String; = "com.android.phone.ProviderToIgnore"

.field private static final LOCATION_OF_NUMBER_ENABLE_KEYWORDS:Ljava/lang/String; = "LOCATION_DISPLAY_ENABLED"

.field private static final LOG_TAG:Ljava/lang/String; = "CallFeaturesSetting"

.field private static final MSG_FW_GET_EXCEPTION:I = 0x192

.field private static final MSG_FW_SET_EXCEPTION:I = 0x191

.field private static final MSG_OK:I = 0x64

.field private static final MSG_VM_EXCEPTION:I = 0x190

.field private static final MSG_VM_NOCHANGE:I = 0x2bc

.field private static final MSG_VM_OK:I = 0x258

.field private static final NUM_PROJECTION:[Ljava/lang/String; = null

.field public static final SIGNOUT_EXTRA:Ljava/lang/String; = "com.android.phone.Signout"

.field private static final SIP_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "sip_settings_category_key"

.field public static final SUBSCRIPTION_ID:Ljava/lang/String; = "SUBSCRIPTION_ID"

.field private static final VM_NOCHANGE_ERROR:I = 0x190

.field private static final VM_NUMBERS_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "vm_numbers"

.field public static final VM_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.VoicemailNumber"

.field public static final VM_NUMBER_TAG:Ljava/lang/String; = "#VMNumber"

.field private static final VM_RESPONSE_ERROR:I = 0x1f4

.field private static final VOICEMAIL_DIALOG_CONFIRM:I = 0x258

.field private static final VOICEMAIL_FWD_READING_DIALOG:I = 0x25a

.field private static final VOICEMAIL_FWD_SAVING_DIALOG:I = 0x259

.field private static final VOICEMAIL_PREF_ID:I = 0x1

.field private static final VOICEMAIL_PROVIDER_CFG_ID:I = 0x2

.field private static final VOICEMAIL_REVERTING_DIALOG:I = 0x25b

.field private static mSettingsKeyArray:[Ljava/lang/String;

.field static final preferredTtyMode:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mCallerNumberDisplay:Landroid/preference/CheckBoxPreference;

.field mChangingVMorFwdDueToProviderChange:Z

.field private mContactListIntent:Landroid/content/Intent;

.field mCurrentDialogId:I

.field private mEnableLocationOfNumberSwitch:Landroid/preference/CheckBoxPreference;

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mLocationDlgOkClicked:Z

.field private mLocationDlgOkDialog:Landroid/app/Dialog;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSubscription:I

.field private mSubscriptionPrefCDMA:Landroid/preference/PreferenceScreen;

.field private mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

.field private mSubscriptionPrefGSM:Landroid/preference/PreferenceScreen;

.field mVMChangeCompletedSuccesfully:Z

.field mVMOrFwdSetError:I

.field mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailProviders:Landroid/preference/ListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 173
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 275
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SMART_IP_DIAL_ENABLED"

    aput-object v1, v0, v2

    const-string v1, "IP_NUMBER"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "LOCAL_NUMBER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PHONE_NUMBER"

    aput-object v2, v0, v1

    const-string v1, "LOCATION_DISPLAY_ENABLED"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->mSettingsKeyArray:[Ljava/lang/String;

    .line 302
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 249
    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    .line 388
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 394
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 401
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 406
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 411
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 416
    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 422
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 428
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 434
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccesfully:Z

    .line 440
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 446
    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    .line 487
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 975
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$2;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 1144
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$3;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1204
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$4;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallFeaturesSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method private checkForwardingCompleted()Z
    .locals 4

    .prologue
    .line 1242
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 1243
    const/4 v2, 0x1

    .line 1255
    .local v2, result:Z
    :cond_0
    :goto_0
    return v2

    .line 1247
    .end local v2           #result:Z
    :cond_1
    const/4 v2, 0x1

    .line 1248
    .restart local v2       #result:Z
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1249
    .local v1, reason:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1250
    const/4 v2, 0x0

    .line 1251
    goto :goto_0
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1261
    const/4 v3, 0x0

    .line 1262
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1264
    .end local p0
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1265
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1266
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/AsyncResult;

    iget-object v1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1267
    .local v1, exception:Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 1268
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1269
    if-nez v3, :cond_1

    .line 1270
    const-string v3, ""

    .line 1275
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1           #exception:Ljava/lang/Throwable;
    :cond_1
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1282
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1283
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1284
    .local v0, msg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1285
    const-string v1, ""

    .line 1289
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #msg:Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 1287
    goto :goto_0

    .line 1289
    .end local v0           #msg:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createSipCallSettings()V
    .locals 3

    .prologue
    .line 1963
    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1964
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSipManager:Landroid/net/sip/SipManager;

    .line 1965
    new-instance v0, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 1966
    const v0, 0x7f05001d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1967
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getSipCallOptionPreference()Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    .line 1968
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1969
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1972
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1974
    :cond_0
    return-void
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    .line 2322
    :goto_0
    return-void

    .line 2318
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mLocationDlgOkDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 2453
    :goto_0
    return-void

    .line 2451
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mLocationDlgOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mLocationDlgOkDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private dismissDialogSafely(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 921
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    :goto_0
    return-void

    .line 922
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2325
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2326
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getSipCallOptionPreference()Landroid/preference/ListPreference;
    .locals 4

    .prologue
    .line 1979
    const-string v3, "sip_call_options_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 1981
    .local v1, wifiAnd3G:Landroid/preference/ListPreference;
    const-string v3, "sip_call_options_wifi_only_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 1983
    .local v2, wifiOnly:Landroid/preference/ListPreference;
    const-string v3, "sip_settings_category_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 1985
    .local v0, sipSettings:Landroid/preference/PreferenceGroup;
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1986
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object v3, v2

    .line 1990
    :goto_0
    return-object v3

    .line 1989
    :cond_0
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object v3, v1

    .line 1990
    goto :goto_0
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 5

    .prologue
    .line 1296
    const/4 v2, 0x1

    .line 1297
    .local v2, success:Z
    const/4 v1, 0x0

    .line 1298
    .local v1, fwdFailure:Z
    const-string v0, ""

    .line 1299
    .local v0, exceptionMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 1300
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1301
    if-eqz v0, :cond_0

    .line 1302
    const/4 v2, 0x0

    .line 1303
    const/4 v1, 0x1

    .line 1306
    :cond_0
    if-eqz v2, :cond_1

    .line 1307
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1308
    if-eqz v0, :cond_1

    .line 1309
    const/4 v2, 0x0

    .line 1312
    :cond_1
    if-eqz v2, :cond_2

    .line 1314
    const/16 v3, 0x258

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1315
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 1325
    :goto_0
    return-void

    .line 1317
    :cond_2
    if-eqz v1, :cond_3

    .line 1318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change FW failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1319
    const/16 v3, 0x191

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0

    .line 1321
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change VM failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1322
    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 2082
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2083
    .local v0, option:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 2084
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 2086
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2087
    return-void
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const-string v5, "preferred_tty_mode"

    .line 2353
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2354
    .local v0, buttonTtyMode:I
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v4, 0x0

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2360
    .local v1, settingsTtyMode:I
    if-eq v0, v1, :cond_0

    .line 2361
    packed-switch v0, :pswitch_data_0

    .line 2370
    const/4 v0, 0x0

    .line 2373
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2374
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 2375
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2376
    .local v2, ttyModeChanged:Landroid/content/Intent;
    const-string v3, "ttyPreferredMode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2377
    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 2379
    .end local v2           #ttyModeChanged:Landroid/content/Intent;
    :cond_0
    return-void

    .line 2366
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 1340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1341
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1342
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 886
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .locals 2
    .parameter "msgId"

    .prologue
    const/4 v1, 0x0

    .line 1328
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    .line 1329
    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 1330
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1331
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    .line 1337
    :goto_0
    return-void

    .line 1334
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1335
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1336
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .parameter "infos"
    .parameter "reason"

    .prologue
    .line 1068
    const/4 v4, 0x0

    .line 1069
    .local v4, result:Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    .line 1070
    move-object v0, p1

    .local v0, arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1071
    .local v2, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_1

    .line 1072
    move-object v4, v2

    .line 1077
    .end local v0           #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1           #i$:I
    .end local v2           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3           #len$:I
    :cond_0
    return-object v4

    .line 1070
    .restart local v0       #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1       #i$:I
    .restart local v2       #info:Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3       #len$:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initVoiceMailProviders()V
    .locals 23

    .prologue
    .line 2131
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "vm_numbers"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 2135
    const/4 v15, 0x0

    .line 2136
    .local v15, providerToIgnore:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string v20, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2138
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2139
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2142
    :cond_0
    if-eqz v15, :cond_1

    .line 2143
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    .line 2147
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->clear()V

    .line 2150
    const v19, 0x7f0c00dc

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2151
    .local v11, myCarrier:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    const-string v20, ""

    new-instance v21, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 2155
    .local v13, pm:Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2156
    .local v8, intent:Landroid/content/Intent;
    const-string v19, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2157
    const/16 v19, 0x0

    move-object v0, v13

    move-object v1, v8

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    .line 2158
    .local v16, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v10, v19, 0x1

    .line 2162
    .local v10, len:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 2163
    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 2164
    .local v17, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    .line 2165
    .local v4, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    .line 2167
    .local v9, key:Ljava/lang/String;
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2169
    add-int/lit8 v10, v10, -0x1

    .line 2162
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2172
    :cond_2
    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2173
    .local v12, nameForDisplay:Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 2174
    .local v14, providerIntent:Landroid/content/Intent;
    const-string v19, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2175
    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v14

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, v19

    move-object v1, v9

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2185
    .end local v4           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    .end local v9           #key:Ljava/lang/String;
    .end local v12           #nameForDisplay:Ljava/lang/String;
    .end local v14           #providerIntent:Landroid/content/Intent;
    .end local v17           #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    new-array v5, v10, [Ljava/lang/String;

    .line 2186
    .local v5, entries:[Ljava/lang/String;
    move v0, v10

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2187
    .local v18, values:[Ljava/lang/String;
    const/16 v19, 0x0

    aput-object v11, v5, v19

    .line 2188
    const/16 v19, 0x0

    const-string v20, ""

    aput-object v20, v18, v19

    .line 2189
    const/4 v6, 0x1

    .line 2190
    .local v6, entryIdx:I
    const/4 v7, 0x0

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 2191
    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    .line 2192
    .restart local v9       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v9

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 2190
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2195
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v9

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    move-object v0, v4

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v5, v6

    .line 2196
    aput-object v9, v18, v6

    .line 2197
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2200
    .end local v9           #key:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2203
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 2204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 2205
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2077
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

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

.method public static isCallerNumberDisplayOn(Landroid/content/Context;)Z
    .locals 6
    .parameter "mContext"

    .prologue
    const/4 v4, 0x0

    const-string v2, "kingwhl"

    const-string v5, "caller_number"

    .line 2333
    const-string v1, "kingwhl"

    const-string v1, "mq~~~~isCallerNumberDisplayOn"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "caller_number"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 2338
    .local v0, i:I
    const-string v1, "kingwhl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mq~~~~Settings.System.CALLER_NUMBER_DISPLAY before="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2344
    .end local v0           #i:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "caller_number"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    move v1, v4

    goto :goto_1

    .line 2340
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "action"

    .prologue
    .line 2542
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2543
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2544
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2547
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2
    .parameter "oldInfo"
    .parameter "newInfo"

    .prologue
    .line 1082
    const/4 v0, 0x1

    .line 1083
    .local v0, result:Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 1086
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 1087
    const/4 v0, 0x0

    .line 1090
    :cond_0
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    .locals 12
    .parameter "key"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2276
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#VMNumber"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2278
    .local v6, vmNumberSetting:Ljava/lang/String;
    if-nez v6, :cond_0

    move-object v7, v10

    .line 2307
    :goto_0
    return-object v7

    .line 2283
    :cond_0
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2284
    .local v0, cfi:[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2285
    .local v1, fwdKey:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2286
    .local v2, fwdLen:I
    if-lez v2, :cond_1

    .line 2287
    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 2288
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_1

    .line 2289
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2290
    .local v4, settingKey:Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v7}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v7, v0, v3

    .line 2291
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 2293
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Reason"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 2296
    aget-object v7, v0, v3

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 2297
    aget-object v7, v0, v3

    const/16 v8, 0x91

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 2298
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Number"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 2300
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x14

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 2288
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 2305
    .end local v3           #i:I
    .end local v4           #settingKey:Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    invoke-direct {v5, p0, v6, v0}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .local v5, settings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    move-object v7, v5

    .line 2307
    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2090
    const-string v0, "CallFeaturesSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .parameter "ai"

    .prologue
    .line 2208
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V
    .locals 10
    .parameter "key"
    .parameter "newSettings"

    .prologue
    const-string v9, "#Length"

    .line 2238
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v7, :cond_1

    .line 2265
    :cond_0
    :goto_0
    return-void

    .line 2241
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v0

    .line 2242
    .local v0, curSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    invoke-virtual {p2, v0}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2247
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2248
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#VMNumber"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2250
    .local v3, fwdKey:Ljava/lang/String;
    iget-object v5, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2251
    .local v5, s:[Lcom/android/internal/telephony/CallForwardInfo;
    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v5, v7, :cond_2

    .line 2252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    array-length v8, v5

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2253
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v5

    if-ge v4, v7, :cond_3

    .line 2254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2255
    .local v6, settingKey:Ljava/lang/String;
    aget-object v2, v5, v4

    .line 2256
    .local v2, fi:Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2257
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Reason"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2258
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2259
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2253
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2262
    .end local v2           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v4           #i:I
    .end local v6           #settingKey:Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2264
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method private resetForwardingChangeState()V
    .locals 1

    .prologue
    .line 1094
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1095
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 1096
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V
    .locals 6
    .parameter "key"
    .parameter "newSettings"

    .prologue
    const/4 v5, 0x0

    const-string v3, ""

    .line 932
    iget-object v1, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 934
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 935
    const-string v1, ""

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 938
    :cond_0
    iget-object v1, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 944
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 946
    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 950
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v1, v2, :cond_2

    .line 951
    const/16 v1, 0x2bc

    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 973
    :goto_0
    return-void

    .line 955
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 956
    iput-boolean v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccesfully:Z

    .line 957
    iput-boolean v5, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 958
    iput v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 959
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 960
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 963
    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 964
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 965
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 966
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f6

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 964
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 969
    :cond_3
    const/16 v1, 0x25a

    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 971
    .end local v0           #i:I
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 1101
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1102
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 1103
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_3

    .line 1104
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->resetForwardingChangeState()V

    .line 1105
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 1106
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v7, v0, v8

    .line 1108
    .local v7, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/phone/CallFeaturesSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v6

    .line 1111
    .local v6, doUpdate:Z
    if-eqz v6, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1115
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    :goto_1
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v9, 0x1f5

    iget v10, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v5, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1105
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v1, v11

    .line 1115
    goto :goto_1

    .line 1126
    .end local v6           #doUpdate:Z
    .end local v7           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_2
    const/16 v0, 0x259

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    .line 1131
    .end local v8           #i:I
    :goto_2
    return-void

    .line 1129
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V

    goto :goto_2
.end method

.method private showDialogIfForeground(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 914
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    if-eqz v0, :cond_0

    .line 915
    invoke-virtual {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    .line 917
    :cond_0
    return-void
.end method

.method private showVMDialog(I)V
    .locals 1
    .parameter "msgStatus"

    .prologue
    .line 1516
    sparse-switch p1, :sswitch_data_0

    .line 1538
    :goto_0
    return-void

    .line 1520
    :sswitch_0
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1523
    :sswitch_1
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1526
    :sswitch_2
    const/16 v0, 0x1f6

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1529
    :sswitch_3
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1532
    :sswitch_4
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1516
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .parameter "preference"

    .prologue
    .line 2220
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 2221
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 2222
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 2223
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2228
    :cond_0
    return-void

    .line 2221
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 725
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 726
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccesfully:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_4

    .line 728
    :cond_0
    const/16 v0, 0x25b

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    .line 729
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v9

    .line 731
    .local v9, prevSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, v9, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 734
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 739
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_5

    .line 741
    iget-object v8, v9, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 743
    .local v8, prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v8, :cond_5

    .line 744
    iget-object v11, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 746
    .local v11, results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->resetForwardingChangeState()V

    .line 747
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_5

    .line 748
    aget-object v6, v8, v7

    .line 752
    .local v6, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    .line 753
    .local v10, result:Landroid/os/AsyncResult;
    if-eqz v10, :cond_2

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 754
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    :goto_1
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v12, 0x1f5

    invoke-virtual {v5, v12, v7, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 747
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move v1, v13

    .line 755
    goto :goto_1

    .line 770
    .end local v6           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7           #i:I
    .end local v8           #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9           #prevSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    .end local v10           #result:Landroid/os/AsyncResult;
    .end local v11           #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V

    .line 773
    :cond_5
    return-void
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .parameter "TtyMode"

    .prologue
    const/4 v3, 0x0

    .line 2382
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2383
    .local v0, txts:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2391
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2392
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2394
    :goto_0
    return-void

    .line 2388
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 9
    .parameter "currentProviderSetting"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2099
    move-object v0, p1

    .line 2100
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    .line 2106
    .local v1, provider:Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;
    if-nez v1, :cond_0

    .line 2107
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v4, 0x7f0c00db

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2108
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2109
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2110
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 2119
    :goto_0
    return-void

    .line 2112
    :cond_0
    iget-object v2, v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 2113
    .local v2, providerName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2114
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0245

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2116
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2117
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v4, v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 3

    .prologue
    .line 1349
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v1, :cond_0

    .line 1361
    :goto_0
    return-void

    .line 1353
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1354
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1355
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1357
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1358
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    move-object v0, v1

    .line 1360
    .local v0, summary:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1358
    .end local v0           #summary:Ljava/lang/String;
    :cond_2
    const v1, 0x7f0c0243

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 11
    .parameter "ar"
    .parameter "idx"

    .prologue
    const/16 v7, 0x25a

    const/4 v10, 0x0

    .line 989
    const/4 v3, 0x0

    .line 990
    .local v3, error:Ljava/lang/Throwable;
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    .line 993
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 995
    :cond_0
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 998
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v3           #error:Ljava/lang/Throwable;
    check-cast v3, Ljava/lang/Throwable;

    .line 1002
    .restart local v3       #error:Ljava/lang/Throwable;
    :cond_1
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v6, :cond_3

    .line 1065
    :cond_2
    :goto_0
    return-void

    .line 1008
    :cond_3
    if-eqz v3, :cond_4

    .line 1010
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1011
    invoke-direct {p0, v7}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    .line 1012
    const/16 v6, 0x192

    invoke-direct {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    goto :goto_0

    .line 1017
    :cond_4
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v6

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v1, v0

    .line 1018
    .local v1, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .line 1019
    .local v4, fi:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_5

    .line 1020
    aget-object v6, v1, v5

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9

    .line 1021
    aget-object v4, v1, v5

    .line 1025
    :cond_5
    if-nez v4, :cond_a

    .line 1030
    new-instance v4, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v4           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v4}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1031
    .restart local v4       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    iput v10, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1032
    sget-object v6, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v6, v6, p2

    iput v6, v4, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1033
    const/4 v6, 0x1

    iput v6, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1042
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v4, v6, p2

    .line 1045
    const/4 v2, 0x1

    .line 1046
    .local v2, done:Z
    const/4 v5, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v6, v6

    if-ge v5, v6, :cond_7

    .line 1047
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v6, v6, v5

    if-nez v6, :cond_c

    .line 1048
    const/4 v2, 0x0

    .line 1052
    :cond_7
    if-eqz v2, :cond_2

    .line 1054
    invoke-direct {p0, v7}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    .line 1055
    iget-boolean v6, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v6, :cond_8

    .line 1056
    const-string v6, ""

    new-instance v7, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v6, v7}, Lcom/android/phone/CallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 1059
    iput-boolean v10, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1061
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0

    .line 1019
    .end local v2           #done:Z
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1036
    :cond_a
    iget-object v6, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v6, :cond_b

    iget-object v6, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    .line 1037
    :cond_b
    iput v10, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_2

    .line 1046
    .restart local v2       #done:Z
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public isNumberLocationSwitchEnabled()I
    .locals 11

    .prologue
    const-string v2, "CallFeaturesSetting"

    .line 2466
    const-string v2, "content://zte.com.cn.providers.numberlocatorprovider/get_value"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2467
    .local v1, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 2468
    .local v9, enabled:I
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2469
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 2473
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2474
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2476
    const-string v2, "CallFeaturesSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    const-string v8, ""

    .line 2479
    .local v8, enableVal:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v10, v2, :cond_2

    .line 2481
    const/4 v2, 0x4

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2482
    const-string v2, "CallFeaturesSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/phone/CallFeaturesSetting;->mSettingsKeyArray:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2486
    const-string v2, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2488
    const/4 v9, 0x1

    .line 2495
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2479
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2492
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 2505
    .end local v8           #enableVal:Ljava/lang/String;
    .end local v10           #i:I
    :cond_2
    if-eqz v6, :cond_3

    .line 2507
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2510
    :cond_3
    :goto_2
    return v9

    .line 2499
    :catch_0
    move-exception v2

    move-object v7, v2

    .line 2501
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2505
    if-eqz v6, :cond_3

    .line 2507
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2505
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_4

    .line 2507
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 19
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 792
    const/4 v5, 0x2

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_8

    .line 793
    const/4 v12, 0x0

    .line 797
    .local v12, failure:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    move/from16 v16, v0

    .line 798
    .local v16, isVMProviderSettingsForced:Z
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 800
    const/16 v18, 0x0

    .line 801
    .local v18, vmNum:Ljava/lang/String;
    const/4 v5, -0x1

    move/from16 v0, p2

    move v1, v5

    if-eq v0, v1, :cond_2

    .line 803
    const/4 v12, 0x1

    .line 831
    :cond_0
    :goto_0
    if-eqz v12, :cond_7

    .line 833
    if-eqz v16, :cond_1

    .line 834
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    .line 873
    .end local v12           #failure:Z
    .end local v16           #isVMProviderSettingsForced:Z
    .end local v18           #vmNum:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 805
    .restart local v12       #failure:Z
    .restart local v16       #isVMProviderSettingsForced:Z
    .restart local v18       #vmNum:Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    .line 807
    const/4 v12, 0x1

    goto :goto_0

    .line 809
    :cond_3
    const-string v5, "com.android.phone.Signout"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 811
    if-eqz v16, :cond_4

    .line 813
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    .line 815
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v17

    .line 817
    .local v17, victim:Ljava/lang/String;
    new-instance v15, Landroid/content/Intent;

    const-string v5, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v15, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    .local v15, i:Landroid/content/Intent;
    const-string v5, "com.android.phone.ProviderToIgnore"

    move-object v0, v15

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    const/high16 v5, 0x400

    invoke-virtual {v15, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 820
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 824
    .end local v15           #i:Landroid/content/Intent;
    .end local v17           #victim:Ljava/lang/String;
    :cond_5
    const-string v5, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 825
    if-eqz v18, :cond_6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 827
    :cond_6
    const/4 v12, 0x1

    goto :goto_0

    .line 840
    :cond_7
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 841
    const-string v5, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 845
    .local v13, fwdNum:Ljava/lang/String;
    const-string v5, "com.android.phone.ForwardingNumberTime"

    const/16 v6, 0x14

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 849
    .local v14, fwdNumTime:I
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object v3, v13

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    goto :goto_1

    .line 854
    .end local v12           #failure:Z
    .end local v13           #fwdNum:Ljava/lang/String;
    .end local v14           #fwdNumTime:I
    .end local v16           #isVMProviderSettingsForced:Z
    .end local v18           #vmNum:Ljava/lang/String;
    :cond_8
    const/4 v5, -0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_1

    .line 859
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 861
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 866
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 868
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 866
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v2, 0x1f6

    const/4 v1, 0x1

    .line 1461
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mLocationDlgOkDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1463
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1465
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mLocationDlgOkClicked:Z

    .line 1467
    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->setNumberLocationSwitchStatus(I)V

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 1473
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mEnableLocationOfNumberSwitch:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 1479
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1480
    packed-switch p2, :pswitch_data_0

    .line 1508
    :cond_3
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1509
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    goto :goto_0

    .line 1486
    :pswitch_1
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v2, :cond_3

    .line 1489
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    .line 1494
    :pswitch_2
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v2, :cond_4

    .line 1497
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0

    .line 1499
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    goto :goto_0

    .line 1480
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26
    .parameter "icicle"

    .prologue
    .line 1546
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1549
    const/high16 v23, 0x7f05

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1552
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const-string v24, "SUBSCRIPTION_ID"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    .line 1554
    const-string v23, "button_fdn_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

    .line 1555
    const-string v23, "button_gsm_more_expand_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mSubscriptionPrefGSM:Landroid/preference/PreferenceScreen;

    .line 1556
    const-string v23, "button_cdma_more_expand_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mSubscriptionPrefCDMA:Landroid/preference/PreferenceScreen;

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const-string v24, "SUBSCRIPTION_ID"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscriptionPrefGSM:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const-string v24, "SUBSCRIPTION_ID"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscriptionPrefCDMA:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const-string v24, "SUBSCRIPTION_ID"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1561
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "settings onCreate subscription ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1562
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1564
    const-string v23, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    .line 1567
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    .line 1570
    .local v22, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09001e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1572
    const-string v23, "button_voicemail_category_key"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceCategory;

    .line 1573
    .local v16, localVoiceMailCategory:Landroid/preference/PreferenceCategory;
    if-eqz v16, :cond_0

    .line 1575
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1579
    :cond_0
    const-string v23, "button_misc_category_key"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceCategory;

    .line 1580
    .local v15, localOtherCallSettings:Landroid/preference/PreferenceCategory;
    if-eqz v15, :cond_1

    .line 1582
    move-object/from16 v0, v22

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1587
    .end local v15           #localOtherCallSettings:Landroid/preference/PreferenceCategory;
    .end local v16           #localVoiceMailCategory:Landroid/preference/PreferenceCategory;
    :cond_1
    const-string v23, "button_voicemail_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/EditPhoneNumberPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    move-object/from16 v23, v0

    const v24, 0x7f0c01c3

    invoke-virtual/range {v23 .. v24}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1594
    :cond_2
    const-string v23, "button_voicemail_provider_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1597
    const-string v23, "button_voicemail_setting_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1599
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->initVoiceMailProviders()V

    .line 1603
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    .line 1608
    .local v5, bMutliSimEnabled:Z
    const-string v23, "button_speed_dial_key"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->transmitSubscriptionID(Ljava/lang/String;I)V

    .line 1610
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09001f

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-eqz v23, :cond_4

    if-eqz v5, :cond_5

    .line 1613
    :cond_4
    const-string v23, "button_speed_dial_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    .line 1614
    .local v9, buttonSpeedDial:Landroid/preference/PreferenceScreen;
    if-eqz v9, :cond_5

    .line 1616
    move-object/from16 v0, v22

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1626
    .end local v9           #buttonSpeedDial:Landroid/preference/PreferenceScreen;
    :cond_5
    const-string v23, "button_IP_dial_key"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->transmitSubscriptionID(Ljava/lang/String;I)V

    .line 1628
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090020

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-nez v23, :cond_6

    .line 1630
    const-string v23, "button_IP_dial_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    .line 1631
    .local v18, mIPDial:Landroid/preference/PreferenceScreen;
    if-eqz v18, :cond_6

    .line 1633
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1645
    .end local v18           #mIPDial:Landroid/preference/PreferenceScreen;
    :cond_6
    const-string v23, "button_ums_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    .line 1647
    .local v10, buttonUMS:Landroid/preference/EditTextPreference;
    if-eqz v5, :cond_8

    .line 1649
    if-eqz v10, :cond_7

    .line 1651
    move-object/from16 v0, v22

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1654
    :cond_7
    const/4 v10, 0x0

    .line 1657
    :cond_8
    if-eqz v10, :cond_a

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "ums_auto_reply"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1662
    .local v4, UmsText:Ljava/lang/String;
    const-string v23, "CallFeaturesSetting"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "UmsText="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 1666
    const v23, 0x7f0c0316

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1669
    :cond_9
    invoke-virtual {v10, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1679
    .end local v4           #UmsText:Ljava/lang/String;
    :cond_a
    const-string v23, "button_cb_key"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->transmitSubscriptionID(Ljava/lang/String;I)V

    .line 1683
    const-string v23, "button_cb_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    .line 1684
    .local v14, localCellBroadcast:Landroid/preference/PreferenceScreen;
    if-eqz v14, :cond_b

    .line 1686
    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1693
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090006

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 1695
    const-string v23, "button_cdma_more_expand_key"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 1696
    .local v20, options:Landroid/preference/Preference;
    if-eqz v20, :cond_c

    .line 1697
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1698
    :cond_c
    const-string v23, "button_gsm_more_expand_key"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 1699
    if-eqz v20, :cond_d

    .line 1700
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1702
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v21

    .line 1703
    .local v21, phoneType:I
    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e

    .line 1705
    const-string v23, "button_fdn_key"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 1706
    .local v13, fdnButton:Landroid/preference/Preference;
    if-eqz v13, :cond_e

    .line 1707
    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1709
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090012

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-nez v23, :cond_f

    .line 1711
    const v23, 0x7f050007

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1716
    const-string v23, "button_voice_privacy_key"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->transmitSubscriptionID(Ljava/lang/String;I)V

    .line 1720
    :cond_f
    const v23, 0x7f050006

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1725
    const-string v23, "button_cf_expand_key"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->transmitSubscriptionID(Ljava/lang/String;I)V

    .line 1727
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090019

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-nez v23, :cond_10

    .line 1729
    const-string v23, "button_cf_expand_key"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 1730
    .local v11, cfButton:Landroid/preference/Preference;
    if-eqz v11, :cond_10

    .line 1732
    move-object/from16 v0, v22

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1739
    .end local v11           #cfButton:Landroid/preference/Preference;
    :cond_10
    const-string v23, "button_cw_key"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->transmitSubscriptionID(Ljava/lang/String;I)V

    .line 1741
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09001a

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-nez v23, :cond_1d

    .line 1743
    const-string v23, "button_cw_key"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 1744
    .local v12, cwButton:Landroid/preference/Preference;
    if-eqz v12, :cond_11

    .line 1746
    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1758
    .end local v13           #fdnButton:Landroid/preference/Preference;
    :cond_11
    :goto_0
    const-string v23, "button_cop_key"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->transmitSubscriptionID(Ljava/lang/String;I)V

    .line 1760
    const-string v23, "button_cop_key"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCallerNumberDisplay:Landroid/preference/CheckBoxPreference;

    .line 1762
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09001b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-nez v23, :cond_13

    .line 1764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallerNumberDisplay:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_12

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mCallerNumberDisplay:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1769
    :cond_12
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mCallerNumberDisplay:Landroid/preference/CheckBoxPreference;

    .line 1775
    :cond_13
    const-string v23, "button_plus_key"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->transmitSubscriptionID(Ljava/lang/String;I)V

    .line 1777
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09001c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-nez v23, :cond_14

    .line 1779
    const-string v23, "button_plus_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    .line 1780
    .local v19, mPlusCode:Landroid/preference/PreferenceScreen;
    if-eqz v19, :cond_14

    .line 1782
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1828
    .end local v12           #cwButton:Landroid/preference/Preference;
    .end local v19           #mPlusCode:Landroid/preference/PreferenceScreen;
    .end local v20           #options:Landroid/preference/Preference;
    .end local v21           #phoneType:I
    :cond_14
    :goto_1
    new-instance v23, Landroid/content/Intent;

    const-string v24, "android.intent.action.GET_CONTENT"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    const-string v24, "vnd.android.cursor.item/phone"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1836
    if-nez p1, :cond_15

    .line 1837
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_15

    .line 1839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_21

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 1847
    :cond_15
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 1848
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 1851
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09001d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-eqz v23, :cond_16

    if-nez v5, :cond_16

    .line 1854
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->createSipCallSettings()V

    .line 1858
    :cond_16
    const-string v23, "button_dtmf_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 1859
    const-string v23, "button_auto_retry_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 1860
    const-string v23, "button_hac_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 1861
    const-string v23, "button_tty_mode_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 1864
    if-eqz v5, :cond_22

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_17

    .line 1868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1869
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 1872
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_18

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1875
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 1878
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_19

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1881
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 1884
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1887
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 1934
    :cond_1a
    :goto_3
    const-string v23, "button_location_of_number_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mEnableLocationOfNumberSwitch:Landroid/preference/CheckBoxPreference;

    .line 1936
    const-string v23, "android.intent.action.NumberLocator"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 1937
    .local v6, bNumberLocationCheck:Z
    if-nez v6, :cond_1b

    .line 1939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mEnableLocationOfNumberSwitch:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1b

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mEnableLocationOfNumberSwitch:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1942
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mEnableLocationOfNumberSwitch:Landroid/preference/CheckBoxPreference;

    .line 1947
    :cond_1b
    const-string v23, "com.zte.cn.action.numberlocator_ip_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 1948
    .local v7, bSmartIpDialCheck:Z
    if-nez v7, :cond_1c

    .line 1950
    const-string v23, "button_smart_ip_dialing_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    .line 1951
    .local v8, button:Landroid/preference/PreferenceScreen;
    if-eqz v8, :cond_1c

    .line 1953
    move-object/from16 v0, v22

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1959
    .end local v8           #button:Landroid/preference/PreferenceScreen;
    :cond_1c
    return-void

    .line 1751
    .end local v6           #bNumberLocationCheck:Z
    .end local v7           #bSmartIpDialCheck:Z
    .restart local v13       #fdnButton:Landroid/preference/Preference;
    .restart local v20       #options:Landroid/preference/Preference;
    .restart local v21       #phoneType:I
    .restart local p1
    :cond_1d
    const-string v23, "button_cw_key"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 1752
    .restart local v12       #cwButton:Landroid/preference/Preference;
    move-object v0, v12

    check-cast v0, Lcom/android/phone/CdmaCallWaiting;

    move-object v13, v0

    .end local v13           #fdnButton:Landroid/preference/Preference;
    invoke-virtual {v13}, Lcom/android/phone/CdmaCallWaiting;->setMode()V

    goto/16 :goto_0

    .line 1789
    .end local v12           #cwButton:Landroid/preference/Preference;
    :cond_1e
    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_20

    .line 1791
    const v23, 0x7f050010

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 1797
    const-string v23, "button_cf_expand_key"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->transmitSubscriptionID(Ljava/lang/String;I)V

    .line 1802
    const-string v23, "button_gsm_restrict_settings"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->transmitSubscriptionID(Ljava/lang/String;I)V

    .line 1804
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090021

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-nez v23, :cond_1f

    .line 1806
    const-string v23, "button_gsm_restrict_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    .line 1807
    .local v17, mButtonCallBaring:Landroid/preference/PreferenceScreen;
    if-eqz v17, :cond_1f

    .line 1809
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1818
    .end local v17           #mButtonCallBaring:Landroid/preference/PreferenceScreen;
    :cond_1f
    const-string v23, "button_more_expand_key"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->transmitSubscriptionID(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1823
    :cond_20
    new-instance v23, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unexpected phone type: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1842
    .end local v20           #options:Landroid/preference/Preference;
    .end local v21           #phoneType:I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const-string v24, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1893
    .end local p1
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_23

    .line 1894
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09000a

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-eqz v23, :cond_26

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1902
    :cond_23
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_24

    .line 1903
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09000b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-eqz v23, :cond_27

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1911
    :cond_24
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_25

    .line 1912
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090009

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-eqz v23, :cond_28

    .line 1914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1921
    :cond_25
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 1922
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090008

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-eqz v23, :cond_29

    .line 1923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_3

    .line 1897
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1898
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto :goto_4

    .line 1906
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1907
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto :goto_5

    .line 1916
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1917
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto :goto_6

    .line 1925
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1926
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const/16 v9, 0x25b

    const/16 v8, 0x259

    const/4 v7, 0x0

    const v6, 0x7f0c00d1

    .line 1381
    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_0

    const/16 v5, 0x190

    if-eq p1, v5, :cond_0

    const/16 v5, 0x1f5

    if-eq p1, v5, :cond_0

    const/16 v5, 0x1f6

    if-eq p1, v5, :cond_0

    const/16 v5, 0x258

    if-ne p1, v5, :cond_1

    .line 1385
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1388
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c00c6

    .line 1389
    .local v4, titleId:I
    sparse-switch p1, :sswitch_data_0

    .line 1420
    const v3, 0x7f0c00cb

    .line 1423
    .local v3, msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1427
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1428
    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1429
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1430
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1431
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1434
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    move-object v5, v1

    .line 1451
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :goto_1
    return-object v5

    .line 1391
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    .restart local v4       #titleId:I
    :sswitch_0
    const v3, 0x7f0c00d6

    .line 1392
    .restart local v3       #msgId:I
    const v4, 0x7f0c009d

    .line 1394
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1399
    .end local v3           #msgId:I
    :sswitch_1
    const v3, 0x7f0c00da

    .line 1400
    .restart local v3       #msgId:I
    const v4, 0x7f0c009d

    .line 1402
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1405
    .end local v3           #msgId:I
    :sswitch_2
    const v3, 0x7f0c00d7

    .line 1407
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1410
    .end local v3           #msgId:I
    :sswitch_3
    const v3, 0x7f0c00d8

    .line 1412
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1415
    .end local v3           #msgId:I
    :sswitch_4
    const v3, 0x7f0c00d9

    .line 1416
    .restart local v3       #msgId:I
    const v5, 0x7f0c023e

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1417
    const v5, 0x7f0c023f

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1437
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :cond_1
    if-eq p1, v8, :cond_2

    const/16 v5, 0x25a

    if-eq p1, v5, :cond_2

    if-ne p1, v9, :cond_5

    .line 1439
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1440
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v5, 0x7f0c00c5

    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1441
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1442
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1443
    if-ne p1, v8, :cond_3

    const v5, 0x7f0c00c8

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v5, v1

    .line 1447
    goto :goto_1

    .line 1443
    :cond_3
    if-ne p1, v9, :cond_4

    const v5, 0x7f0c00c9

    goto :goto_2

    :cond_4
    const v5, 0x7f0c00c7

    goto :goto_2

    .line 1451
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 1389
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_4
        0x258 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 2457
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog()V

    .line 2458
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 2459
    return-void
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 2
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    .line 671
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    instance-of v1, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_0

    .line 675
    move-object v0, p1

    .line 677
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v1, :cond_0

    .line 678
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleVMBtnClickRequest()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mLocationDlgOkDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 2443
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mLocationDlgOkClicked:Z

    if-nez v0, :cond_0

    .line 2444
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mEnableLocationOfNumberSwitch:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2447
    :cond_0
    return-void
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 689
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v1, :cond_0

    .line 693
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    move-object v1, v2

    .line 706
    :goto_0
    return-object v1

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, vmDisplay:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 701
    goto :goto_0

    .line 706
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c009e

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 472
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 475
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    .line 479
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x1

    .line 614
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_3

    .line 615
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, currentProviderKey:Ljava/lang/String;
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 619
    .local v3, newProviderKey:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    .line 664
    .end local v1           #currentProviderKey:Ljava/lang/String;
    .end local v3           #newProviderKey:Ljava/lang/String;
    .end local p2
    :goto_0
    return v5

    .line 623
    .restart local v1       #currentProviderKey:Ljava/lang/String;
    .restart local v3       #newProviderKey:Ljava/lang/String;
    .restart local p2
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 625
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 627
    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v4

    .line 636
    .local v4, newProviderSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    if-nez v4, :cond_2

    .line 639
    iput-boolean v7, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 640
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .end local v1           #currentProviderKey:Ljava/lang/String;
    .end local v3           #newProviderKey:Ljava/lang/String;
    .end local v4           #newProviderSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    .end local p2
    :cond_1
    :goto_1
    move v5, v7

    .line 664
    goto :goto_0

    .line 644
    .restart local v1       #currentProviderKey:Ljava/lang/String;
    .restart local v3       #newProviderKey:Ljava/lang/String;
    .restart local v4       #newProviderSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    .restart local p2
    :cond_2
    iput-boolean v7, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 645
    invoke-direct {p0, v3, v4}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    goto :goto_1

    .line 647
    .end local v1           #currentProviderKey:Ljava/lang/String;
    .end local v3           #newProviderKey:Ljava/lang/String;
    .end local v4           #newProviderSettings:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    :cond_3
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_4

    .line 648
    invoke-direct {p0, p2}, Lcom/android/phone/CallFeaturesSetting;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    goto :goto_1

    .line 651
    :cond_4
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_5

    .line 653
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 654
    .local v2, index:I
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dtmf_tone_type"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 657
    .end local v2           #index:I
    .restart local p2
    :cond_5
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_1

    .line 659
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v8, 0x1080027

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v5, "caller_number"

    .line 496
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v3, :cond_0

    move v3, v6

    .line 602
    :goto_0
    return v3

    .line 499
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_1

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 502
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/CallFeaturesSetting;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v6

    .line 503
    goto :goto_0

    .line 507
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mCallerNumberDisplay:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 509
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mCallerNumberDisplay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 511
    .local v0, bIsChecked:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCallerNumberDisplay status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "caller_number"

    if-eqz v0, :cond_3

    move v4, v6

    :goto_1
    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 518
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "caller_number"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 519
    .local v2, i:I
    const-string v3, "meiqin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mq~~~~Settings.System.CALLER_NUMBER_DISPLAY ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v2           #i:I
    :goto_2
    if-nez v0, :cond_2

    .line 528
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c03bf

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c004b

    new-instance v5, Lcom/android/phone/CallFeaturesSetting$1;

    invoke-direct {v5, p0}, Lcom/android/phone/CallFeaturesSetting$1;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    move v3, v6

    .line 542
    goto/16 :goto_0

    :cond_3
    move v4, v7

    .line 513
    goto :goto_1

    .line 548
    .end local v0           #bIsChecked:Z
    :cond_4
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p2, v3, :cond_5

    move v3, v6

    .line 550
    goto/16 :goto_0

    .line 552
    :cond_5
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p2, v3, :cond_6

    move v3, v6

    .line 554
    goto/16 :goto_0

    .line 556
    :cond_6
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_8

    .line 558
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_auto_retry"

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_3
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v3, v6

    .line 561
    goto/16 :goto_0

    :cond_7
    move v5, v7

    .line 558
    goto :goto_3

    .line 563
    :cond_8
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b

    .line 565
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    move v1, v6

    .line 567
    .local v1, hac:I
    :goto_4
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hearing_aid"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 571
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "HACSetting"

    if-eqz v1, :cond_a

    const-string v5, "ON"

    :goto_5
    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v6

    .line 572
    goto/16 :goto_0

    .end local v1           #hac:I
    :cond_9
    move v1, v7

    .line 565
    goto :goto_4

    .line 571
    .restart local v1       #hac:I
    :cond_a
    const-string v5, "OFF"

    goto :goto_5

    .line 577
    .end local v1           #hac:I
    :cond_b
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mEnableLocationOfNumberSwitch:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_e

    .line 579
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mEnableLocationOfNumberSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 581
    iput-boolean v7, p0, Lcom/android/phone/CallFeaturesSetting;->mLocationDlgOkClicked:Z

    .line 582
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mLocationDlgOkDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_c

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog()V

    .line 583
    :cond_c
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c03c9

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c03c6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mLocationDlgOkDialog:Landroid/app/Dialog;

    .line 590
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mLocationDlgOkDialog:Landroid/app/Dialog;

    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_6
    move v3, v6

    .line 598
    goto/16 :goto_0

    .line 595
    :cond_d
    invoke-virtual {p0, v7}, Lcom/android/phone/CallFeaturesSetting;->setNumberLocationSwitchStatus(I)V

    goto :goto_6

    :cond_e
    move v3, v7

    .line 602
    goto/16 :goto_0

    .line 521
    .restart local v0       #bIsChecked:Z
    :catch_0
    move-exception v3

    goto/16 :goto_2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1374
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1375
    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 1376
    return-void
.end method

.method protected onResume()V
    .locals 15

    .prologue
    .line 1996
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1999
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 2002
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    .line 2005
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mCallerNumberDisplay:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_0

    .line 2007
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mCallerNumberDisplay:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2008
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mCallerNumberDisplay:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->isCallerNumberDisplayOn(Landroid/content/Context;)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2014
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    iget v13, p0, Lcom/android/phone/CallFeaturesSetting;->mSubscription:I

    invoke-virtual {v12, v13}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    .line 2017
    .local v7, nSimCardState:I
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "debug_disable_gryed_menu_20111226"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 2021
    .local v6, nDebugControl:I
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isAirplaneModeOn()Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, 0x1

    if-ne v12, v7, :cond_3

    if-nez v6, :cond_3

    .line 2024
    :cond_1
    const-string v12, "sip_settings_category_key"

    invoke-virtual {p0, v12}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 2025
    .local v11, sipSettings:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 2026
    .local v9, screen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 2027
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_8

    .line 2028
    invoke-virtual {v9, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 2029
    .local v8, pref:Landroid/preference/Preference;
    if-eq v8, v11, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2027
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2036
    .end local v1           #count:I
    .end local v4           #i:I
    .end local v8           #pref:Landroid/preference/Preference;
    .end local v9           #screen:Landroid/preference/PreferenceScreen;
    .end local v11           #sipSettings:Landroid/preference/Preference;
    :cond_3
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v12, :cond_4

    .line 2037
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dtmf_tone_type"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2039
    .local v2, dtmf:I
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v12, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 2042
    .end local v2           #dtmf:I
    :cond_4
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_5

    .line 2043
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "call_auto_retry"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2045
    .local v0, autoretry:I
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2048
    .end local v0           #autoretry:I
    :cond_5
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_6

    .line 2049
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "hearing_aid"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2050
    .local v3, hac:I
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_a

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2053
    .end local v3           #hac:I
    :cond_6
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v12, :cond_7

    .line 2054
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preferred_tty_mode"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 2057
    .local v10, settingsTtyMode:I
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2058
    invoke-direct {p0, v10}, Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 2063
    .end local v10           #settingsTtyMode:I
    :cond_7
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mEnableLocationOfNumberSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_8

    .line 2066
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->isNumberLocationSwitchEnabled()I

    move-result v5

    .line 2068
    .local v5, isChecked:I
    iget-object v12, p0, Lcom/android/phone/CallFeaturesSetting;->mEnableLocationOfNumberSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_b

    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2074
    .end local v5           #isChecked:I
    :cond_8
    return-void

    .line 2045
    .restart local v0       #autoretry:I
    :cond_9
    const/4 v13, 0x0

    goto :goto_1

    .line 2050
    .end local v0           #autoretry:I
    .restart local v3       #hac:I
    :cond_a
    const/4 v13, 0x0

    goto :goto_2

    .line 2068
    .end local v3           #hac:I
    .restart local v5       #isChecked:I
    :cond_b
    const/4 v13, 0x0

    goto :goto_3
.end method

.method onRevertDone()V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 779
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 780
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_0

    .line 781
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 782
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 784
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const-string v5, "ums_auto_reply"

    const-string v3, "button_ums_key"

    const-string v4, "CallFeaturesSetting"

    .line 2401
    const-string v2, "button_ums_key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2403
    const-string v2, "button_ums_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 2404
    .local v1, text:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2406
    const v2, 0x7f0c0315

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2414
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ums_auto_reply"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2416
    .local v0, dtext:Ljava/lang/String;
    const-string v2, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    .end local v0           #dtext:Ljava/lang/String;
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 2410
    .restart local v1       #text:Ljava/lang/String;
    :cond_1
    const-string v2, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ums_auto_reply"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setNumberLocationSwitchStatus(I)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 2516
    const-string v3, "content://zte.com.cn.providers.numberlocatorprovider/put_value"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2517
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2519
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2520
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "LOCATION_DISPLAY_ENABLED"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2523
    const-string v3, "CallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  setNumberLocationSwitchStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->isNumberLocationSwitchEnabled()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    return-void
.end method

.method setVMNumberWithCarrier()V
    .locals 5

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1139
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 713
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 715
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 721
    :goto_0
    return-void

    .line 720
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public transmitSubscriptionID(Ljava/lang/String;I)V
    .locals 3
    .parameter "sKey"
    .parameter "nSubscriptionID"

    .prologue
    .line 2424
    invoke-virtual {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2426
    .local v0, button:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 2428
    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2429
    .local v1, it:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 2431
    const-string v2, "SUBSCRIPTION_ID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2434
    .end local v1           #it:Landroid/content/Intent;
    :cond_0
    return-void
.end method
