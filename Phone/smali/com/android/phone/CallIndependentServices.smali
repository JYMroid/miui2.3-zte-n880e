.class public Lcom/android/phone/CallIndependentServices;
.super Landroid/preference/PreferenceActivity;
.source "CallIndependentServices.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final BUTTON_CARD_FIRST_SETTINGS_KEY:Ljava/lang/String; = "button_sub_id_00"

.field private static final BUTTON_CARD_SECOND_SETTINGS_KEY:Ljava/lang/String; = "button_sub_id_01"

.field private static final BUTTON_DTMF_KEY:Ljava/lang/String; = "button_dtmf_settings"

.field private static final BUTTON_HAC_KEY:Ljava/lang/String; = "button_hac_key"

.field private static final BUTTON_RETRY_KEY:Ljava/lang/String; = "button_auto_retry_key"

.field private static final BUTTON_SELECT_SUB_KEY:Ljava/lang/String; = "button_call_independent_serv"

.field private static final BUTTON_SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options_key"

.field private static final BUTTON_SIP_CALL_OPTIONS_WIFI_ONLY:Ljava/lang/String; = "sip_call_options_wifi_only_key"

.field private static final BUTTON_TTY_KEY:Ljava/lang/String; = "button_tty_mode_key"

.field private static final DBG:Z = true

.field static final DTMF_TONE_TYPE_LONG:I = 0x1

.field static final DTMF_TONE_TYPE_NORMAL:I = 0x0

.field public static final HAC_KEY:Ljava/lang/String; = "HACSetting"

.field public static final HAC_VAL_OFF:Ljava/lang/String; = "OFF"

.field public static final HAC_VAL_ON:Ljava/lang/String; = "ON"

.field private static final LOG_TAG:Ljava/lang/String; = "CallIndependentServices"

.field public static final PACKAGE:Ljava/lang/String; = "PACKAGE"

.field private static final SIP_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "sip_settings_category_key"

.field public static final SUBSCRIPTION_ID:Ljava/lang/String; = "SUBSCRIPTION_ID"

.field public static final TARGET_CLASS:Ljava/lang/String; = "TARGET_CLASS"

.field static final preferredTtyMode:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mCardFirstSettings:Landroid/preference/PreferenceScreen;

.field private mCardSecondSettings:Landroid/preference/PreferenceScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mResources:[I

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/CallIndependentServices;->mResources:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x5t 0x7ft
        0x2t 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method private createSipCallSettings()V
    .locals 3

    .prologue
    .line 529
    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallIndependentServices;->mSipManager:Landroid/net/sip/SipManager;

    .line 531
    new-instance v0, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallIndependentServices;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 532
    const v0, 0x7f05001d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallIndependentServices;->addPreferencesFromResource(I)V

    .line 533
    invoke-direct {p0}, Lcom/android/phone/CallIndependentServices;->getSipCallOptionPreference()Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallIndependentServices;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    .line 534
    iget-object v0, p0, Lcom/android/phone/CallIndependentServices;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 535
    iget-object v0, p0, Lcom/android/phone/CallIndependentServices;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallIndependentServices;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 538
    iget-object v0, p0, Lcom/android/phone/CallIndependentServices;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 540
    :cond_0
    return-void
.end method

.method private getSipCallOptionPreference()Landroid/preference/ListPreference;
    .locals 4

    .prologue
    .line 545
    const-string v3, "sip_call_options_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallIndependentServices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 547
    .local v1, wifiAnd3G:Landroid/preference/ListPreference;
    const-string v3, "sip_call_options_wifi_only_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallIndependentServices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 549
    .local v2, wifiOnly:Landroid/preference/ListPreference;
    const-string v3, "sip_settings_category_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallIndependentServices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 551
    .local v0, sipSettings:Landroid/preference/PreferenceGroup;
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object v3, v2

    .line 556
    :goto_0
    return-object v3

    .line 555
    :cond_0
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object v3, v1

    .line 556
    goto :goto_0
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 566
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, option:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallIndependentServices;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 570
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallIndependentServices;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 571
    return-void
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const-string v5, "preferred_tty_mode"

    .line 427
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 428
    .local v0, buttonTtyMode:I
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v4, 0x0

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 431
    .local v1, settingsTtyMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTTYChange: requesting set TTY mode enable (TTY) to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallIndependentServices;->log(Ljava/lang/String;)V

    .line 434
    if-eq v0, v1, :cond_0

    .line 435
    packed-switch v0, :pswitch_data_0

    .line 444
    const/4 v0, 0x0

    .line 447
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallIndependentServices;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 448
    invoke-direct {p0, v0}, Lcom/android/phone/CallIndependentServices;->updatePreferredTtyModeSummary(I)V

    .line 449
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .local v2, ttyModeChanged:Landroid/content/Intent;
    const-string v3, "ttyPreferredMode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    invoke-virtual {p0, v2}, Lcom/android/phone/CallIndependentServices;->sendBroadcast(Landroid/content/Intent;)V

    .line 453
    .end local v2           #ttyModeChanged:Landroid/content/Intent;
    :cond_0
    return-void

    .line 440
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initDualCardStyleData(Landroid/preference/PreferenceScreen;)V
    .locals 7
    .parameter "prefSet"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "SUBSCRIPTION_ID"

    .line 477
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallIndependentServices;->mCardFirstSettings:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallIndependentServices;->mCardSecondSettings:Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_1

    .line 481
    :cond_0
    const-string v2, "null error, finish!"

    invoke-static {v2}, Lcom/android/phone/CallIndependentServices;->log(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->finish()V

    .line 487
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 489
    .local v0, nSimStateFirst:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Card1 status: nSimStateFirst="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallIndependentServices;->log(Ljava/lang/String;)V

    .line 492
    if-ne v4, v0, :cond_2

    .line 495
    iget-object v2, p0, Lcom/android/phone/CallIndependentServices;->mCardFirstSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 505
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 507
    .local v1, nSimStateSecond:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Card2 status: nSimStateSecond="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallIndependentServices;->log(Ljava/lang/String;)V

    .line 510
    if-ne v4, v1, :cond_3

    .line 513
    iget-object v2, p0, Lcom/android/phone/CallIndependentServices;->mCardSecondSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 522
    :goto_1
    return-void

    .line 500
    .end local v1           #nSimStateSecond:I
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallIndependentServices;->mCardFirstSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 501
    iget-object v2, p0, Lcom/android/phone/CallIndependentServices;->mCardFirstSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SUBSCRIPTION_ID"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 518
    .restart local v1       #nSimStateSecond:I
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallIndependentServices;->mCardSecondSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 519
    iget-object v2, p0, Lcom/android/phone/CallIndependentServices;->mCardSecondSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SUBSCRIPTION_ID"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 561
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getContentResolver()Landroid/content/ContentResolver;

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

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 471
    const-string v0, "CallIndependentServices"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .parameter "TtyMode"

    .prologue
    const/4 v3, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, txts:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 465
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 466
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 468
    :goto_0
    return-void

    .line 462
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string v12, "RESOURCE_INDEX"

    .line 208
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 209
    const-string v8, "Creating activity"

    invoke-static {v8}, Lcom/android/phone/CallIndependentServices;->log(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallIndependentServices;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 212
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "RESOURCE_INDEX"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 213
    .local v6, resIndex:I
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mResources:[I

    array-length v8, v8

    if-ge v6, v8, :cond_0

    .line 214
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mResources:[I

    aget v8, v8, v6

    invoke-virtual {p0, v8}, Lcom/android/phone/CallIndependentServices;->addPreferencesFromResource(I)V

    .line 217
    :cond_0
    const-string v8, "audio"

    invoke-virtual {p0, v8}, Lcom/android/phone/CallIndependentServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/android/phone/CallIndependentServices;->mAudioManager:Landroid/media/AudioManager;

    .line 220
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 222
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    const-string v8, "button_dtmf_settings"

    invoke-virtual {p0, v8}, Lcom/android/phone/CallIndependentServices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/phone/CallIndependentServices;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 223
    const-string v8, "button_auto_retry_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/CallIndependentServices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/CallIndependentServices;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 224
    const-string v8, "button_hac_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/CallIndependentServices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/phone/CallIndependentServices;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 225
    const-string v8, "button_tty_mode_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/CallIndependentServices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/phone/CallIndependentServices;->mButtonTTY:Landroid/preference/ListPreference;

    .line 227
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v8, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 229
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 236
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_2

    .line 237
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 238
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 245
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_3

    .line 246
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090009

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 248
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 255
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v8, :cond_4

    .line 256
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 257
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 264
    :cond_4
    :goto_3
    const-string v8, "button_call_independent_serv"

    invoke-virtual {p0, v8}, Lcom/android/phone/CallIndependentServices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 265
    .local v7, selectSub:Landroid/preference/PreferenceScreen;
    if-eqz v7, :cond_5

    .line 266
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 267
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "PACKAGE"

    const-string v9, "com.android.phone"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v8, "TARGET_CLASS"

    const-string v9, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    const-string v8, "button_sub_id_00"

    invoke-virtual {p0, v8}, Lcom/android/phone/CallIndependentServices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/phone/CallIndependentServices;->mCardFirstSettings:Landroid/preference/PreferenceScreen;

    .line 274
    const-string v8, "button_sub_id_01"

    invoke-virtual {p0, v8}, Lcom/android/phone/CallIndependentServices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/phone/CallIndependentServices;->mCardSecondSettings:Landroid/preference/PreferenceScreen;

    .line 282
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "RESOURCE_INDEX"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 285
    .local v4, nResIndex:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RESOURCE_INDEX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CallIndependentServices;->log(Ljava/lang/String;)V

    .line 288
    const/4 v8, 0x1

    if-ne v4, v8, :cond_10

    .line 291
    if-eqz v7, :cond_6

    .line 293
    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 294
    const/4 v7, 0x0

    .line 299
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09001d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 301
    invoke-direct {p0}, Lcom/android/phone/CallIndependentServices;->createSipCallSettings()V

    .line 307
    :cond_7
    const-string v8, "button_ums_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/CallIndependentServices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 315
    .local v2, buttonUMS:Landroid/preference/EditTextPreference;
    if-eqz v2, :cond_9

    .line 317
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "ums_auto_reply"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, UmsText:Ljava/lang/String;
    const-string v8, "CallIndependentServices"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UmsText="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 324
    const v8, 0x7f0c0316

    invoke-virtual {p0, v8}, Lcom/android/phone/CallIndependentServices;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_8
    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 332
    .end local v0           #UmsText:Ljava/lang/String;
    :cond_9
    const-string v8, "button_speed_dial_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/CallIndependentServices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 339
    .local v1, buttonSpeedDial:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09001f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_a

    .line 341
    if-eqz v1, :cond_a

    .line 343
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 344
    const/4 v1, 0x0

    .line 350
    :cond_a
    invoke-direct {p0, v5}, Lcom/android/phone/CallIndependentServices;->initDualCardStyleData(Landroid/preference/PreferenceScreen;)V

    .line 372
    .end local v1           #buttonSpeedDial:Landroid/preference/PreferenceScreen;
    .end local v2           #buttonUMS:Landroid/preference/EditTextPreference;
    :cond_b
    :goto_4
    return-void

    .line 231
    .end local v4           #nResIndex:I
    .end local v7           #selectSub:Landroid/preference/PreferenceScreen;
    :cond_c
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 232
    iput-object v10, p0, Lcom/android/phone/CallIndependentServices;->mButtonDTMF:Landroid/preference/ListPreference;

    goto/16 :goto_0

    .line 240
    :cond_d
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    iput-object v10, p0, Lcom/android/phone/CallIndependentServices;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    .line 250
    :cond_e
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    iput-object v10, p0, Lcom/android/phone/CallIndependentServices;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 259
    :cond_f
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    iput-object v10, p0, Lcom/android/phone/CallIndependentServices;->mButtonTTY:Landroid/preference/ListPreference;

    goto/16 :goto_3

    .line 357
    .restart local v4       #nResIndex:I
    .restart local v7       #selectSub:Landroid/preference/PreferenceScreen;
    :cond_10
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mCardFirstSettings:Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_11

    .line 359
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mCardFirstSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    iput-object v10, p0, Lcom/android/phone/CallIndependentServices;->mCardFirstSettings:Landroid/preference/PreferenceScreen;

    .line 363
    :cond_11
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mCardSecondSettings:Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_b

    .line 365
    iget-object v8, p0, Lcom/android/phone/CallIndependentServices;->mCardSecondSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    iput-object v10, p0, Lcom/android/phone/CallIndependentServices;->mCardSecondSettings:Landroid/preference/PreferenceScreen;

    goto :goto_4
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 140
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 142
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mButtonDTMF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, index:I
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dtmf_tone_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    .end local v0           #index:I
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 187
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallIndependentServices;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 194
    invoke-direct {p0, p2}, Lcom/android/phone/CallIndependentServices;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 151
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p2, v1, :cond_0

    move v1, v4

    .line 170
    :goto_0
    return v1

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p2, v1, :cond_1

    move v1, v4

    .line 154
    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 156
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_auto_retry"

    iget-object v3, p0, Lcom/android/phone/CallIndependentServices;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v4

    .line 159
    goto :goto_0

    :cond_2
    move v3, v5

    .line 156
    goto :goto_1

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 161
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v4

    .line 163
    .local v0, hac:I
    :goto_2
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hearing_aid"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    iget-object v1, p0, Lcom/android/phone/CallIndependentServices;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "HACSetting"

    if-eqz v0, :cond_5

    const-string v3, "ON"

    :goto_3
    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 168
    goto :goto_0

    .end local v0           #hac:I
    :cond_4
    move v0, v5

    .line 161
    goto :goto_2

    .line 167
    .restart local v0       #hac:I
    :cond_5
    const-string v3, "OFF"

    goto :goto_3

    .end local v0           #hac:I
    :cond_6
    move v1, v5

    .line 170
    goto :goto_0
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 376
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 379
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 382
    iget-object v9, p0, Lcom/android/phone/CallIndependentServices;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v9, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dtmf_tone_type"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 385
    .local v2, dtmf:I
    iget-object v9, p0, Lcom/android/phone/CallIndependentServices;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v9, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 388
    .end local v2           #dtmf:I
    :cond_0
    iget-object v9, p0, Lcom/android/phone/CallIndependentServices;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "call_auto_retry"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 391
    .local v0, autoretry:I
    iget-object v9, p0, Lcom/android/phone/CallIndependentServices;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    move v10, v12

    :goto_0
    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 394
    .end local v0           #autoretry:I
    :cond_1
    iget-object v9, p0, Lcom/android/phone/CallIndependentServices;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "hearing_aid"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 396
    .local v3, hac:I
    iget-object v9, p0, Lcom/android/phone/CallIndependentServices;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_6

    move v10, v12

    :goto_1
    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 399
    .end local v3           #hac:I
    :cond_2
    iget-object v9, p0, Lcom/android/phone/CallIndependentServices;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v9, :cond_3

    .line 400
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_tty_mode"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 403
    .local v7, settingsTtyMode:I
    iget-object v9, p0, Lcom/android/phone/CallIndependentServices;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 404
    invoke-direct {p0, v7}, Lcom/android/phone/CallIndependentServices;->updatePreferredTtyModeSummary(I)V

    .line 408
    .end local v7           #settingsTtyMode:I
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/CallIndependentServices;->isAirplaneModeOn()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 409
    const-string v9, "sip_settings_category_key"

    invoke-virtual {p0, v9}, Lcom/android/phone/CallIndependentServices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 410
    .local v8, sipSettings:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/phone/CallIndependentServices;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 411
    .local v6, screen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 412
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v1, :cond_7

    .line 413
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 414
    .local v5, pref:Landroid/preference/Preference;
    if-eq v5, v8, :cond_4

    invoke-virtual {v5, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 412
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v1           #count:I
    .end local v4           #i:I
    .end local v5           #pref:Landroid/preference/Preference;
    .end local v6           #screen:Landroid/preference/PreferenceScreen;
    .end local v8           #sipSettings:Landroid/preference/Preference;
    .restart local v0       #autoretry:I
    :cond_5
    move v10, v11

    .line 391
    goto :goto_0

    .end local v0           #autoretry:I
    .restart local v3       #hac:I
    :cond_6
    move v10, v11

    .line 396
    goto :goto_1

    .line 423
    .end local v3           #hac:I
    :cond_7
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const-string v5, "ums_auto_reply"

    const-string v3, "button_ums_key"

    const-string v4, "CallIndependentServices"

    .line 577
    const-string v2, "button_ums_key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    const-string v2, "button_ums_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallIndependentServices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, text:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 582
    const v2, 0x7f0c0315

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 590
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallIndependentServices;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ums_auto_reply"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, dtext:Ljava/lang/String;
    const-string v2, "CallIndependentServices"

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

    .line 594
    .end local v0           #dtext:Ljava/lang/String;
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 586
    .restart local v1       #text:Ljava/lang/String;
    :cond_1
    const-string v2, "CallIndependentServices"

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

    .line 587
    iget-object v2, p0, Lcom/android/phone/CallIndependentServices;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ums_auto_reply"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
