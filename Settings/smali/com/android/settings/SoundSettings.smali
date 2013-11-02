.class public Lcom/android/settings/SoundSettings;
.super Landroid/preference/PreferenceActivity;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FALLBACK_EMERGENCY_TONE_VALUE:I = 0x0

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final KEY_DTMF_TONE:Ljava/lang/String; = "dtmf_tone"

.field private static final KEY_EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field private static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "haptic_feedback"

.field private static final KEY_LOCK_SOUNDS:Ljava/lang/String; = "lock_sounds"

.field private static final KEY_NOTIFICATION_ALWAYS_ON:Ljava/lang/String; = "notification_always_on"

.field private static final KEY_NOTIFICATION_BLINK:Ljava/lang/String; = "notification_blink"

.field private static final KEY_NOTIFICATION_CHARGING:Ljava/lang/String; = "notification_charging"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final KEY_POWER_SOUNDS:Ljava/lang/String; = "power_sounds"

.field private static final KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "sound_effects"

.field private static final KEY_SOUND_SETTINGS:Ljava/lang/String; = "sound_settings"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final TAG:Ljava/lang/String; = "SoundAndDisplaysSettings"

.field private static final VALUE_VIBRATE_ALWAYS:Ljava/lang/String; = "always"

.field private static final VALUE_VIBRATE_NEVER:Ljava/lang/String; = "never"

.field private static final VALUE_VIBRATE_ONLY_SILENT:Ljava/lang/String; = "silent"

.field private static final VALUE_VIBRATE_UNLESS_SILENT:Ljava/lang/String; = "notsilent"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mNotificationAlwaysOn:Landroid/preference/CheckBoxPreference;

.field private mNotificationBlink:Landroid/preference/CheckBoxPreference;

.field private mNotificationCharging:Landroid/preference/CheckBoxPreference;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;

.field private mPowerSounds:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSilent:Landroid/preference/CheckBoxPreference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mVibrate:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 89
    new-instance v0, Lcom/android/settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$1;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SoundSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    return-void
.end method

.method private getPhoneVibrateSettingValue()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    move v1, v5

    .line 222
    .local v1, vibeInSilent:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 225
    .local v0, callsVibrateSetting:I
    if-eqz v1, :cond_3

    .line 226
    if-nez v0, :cond_0

    .line 228
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4, v6}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 232
    :cond_0
    if-ne v0, v5, :cond_2

    .line 233
    const-string v2, "always"

    .line 247
    :goto_1
    return-object v2

    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_1
    move v1, v4

    .line 216
    goto :goto_0

    .line 235
    .restart local v0       #callsVibrateSetting:I
    .restart local v1       #vibeInSilent:Z
    :cond_2
    const-string v2, "silent"

    goto :goto_1

    .line 238
    :cond_3
    if-ne v0, v6, :cond_4

    .line 240
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 244
    :cond_4
    if-ne v0, v5, :cond_5

    .line 245
    const-string v2, "notsilent"

    goto :goto_1

    .line 247
    :cond_5
    const-string v2, "never"

    goto :goto_1
.end method

.method private setPhoneVibrateSettingValue(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    const-string v2, "notsilent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    const/4 v0, 0x1

    .line 258
    .local v0, callsVibrateSetting:I
    const/4 v1, 0x0

    .line 270
    .local v1, vibeInSilent:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    if-eqz v1, :cond_4

    move v4, v6

    :goto_1
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_5

    move v3, v6

    :goto_2
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 285
    return-void

    .line 259
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_1
    const-string v2, "never"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    const/4 v0, 0x0

    .line 261
    .restart local v0       #callsVibrateSetting:I
    const/4 v1, 0x0

    .restart local v1       #vibeInSilent:Z
    goto :goto_0

    .line 262
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_2
    const-string v2, "silent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 263
    const/4 v0, 0x2

    .line 264
    .restart local v0       #callsVibrateSetting:I
    const/4 v1, 0x1

    .restart local v1       #vibeInSilent:Z
    goto :goto_0

    .line 266
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_3
    const/4 v0, 0x1

    .line 267
    .restart local v0       #callsVibrateSetting:I
    const/4 v1, 0x1

    .restart local v1       #vibeInSilent:Z
    goto :goto_0

    :cond_4
    move v4, v5

    .line 270
    goto :goto_1

    :cond_5
    move v3, v5

    .line 277
    goto :goto_2
.end method

.method private updateState(Z)V
    .locals 9
    .parameter "force"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 289
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 294
    .local v2, ringerMode:I
    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    move v4, v8

    .line 297
    .local v4, silentOrVibrateMode:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-ne v4, v5, :cond_0

    if-eqz p1, :cond_1

    .line 298
    :cond_0
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 301
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getPhoneVibrateSettingValue()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, phoneVibrateSetting:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p1, :cond_3

    .line 304
    :cond_2
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 306
    :cond_3
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mode_ringer_streams_affected"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 310
    .local v3, silentModeStreams:I
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_5

    move v0, v8

    .line 311
    .local v0, isAlarmInclSilentMode:Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    const v6, 0x7f0801c1

    :goto_2
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 314
    return-void

    .end local v0           #isAlarmInclSilentMode:Z
    .end local v1           #phoneVibrateSetting:Ljava/lang/String;
    .end local v3           #silentModeStreams:I
    .end local v4           #silentOrVibrateMode:Z
    :cond_4
    move v4, v7

    .line 294
    goto :goto_0

    .restart local v1       #phoneVibrateSetting:Ljava/lang/String;
    .restart local v3       #silentModeStreams:I
    .restart local v4       #silentOrVibrateMode:Z
    :cond_5
    move v0, v7

    .line 310
    goto :goto_1

    .line 311
    .restart local v0       #isAlarmInclSilentMode:Z
    :cond_6
    const v6, 0x7f0801c0

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v11, "dtmf_tone"

    const-string v9, "emergency_tone"

    .line 102
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 104
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 106
    .local v0, activePhoneType:I
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 108
    const v5, 0x7f040026

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 110
    if-eq v10, v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "emergency_tone"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 115
    :cond_0
    const-string v5, "silent"

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    .line 117
    const-string v5, "vibrate"

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    .line 118
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    const-string v5, "dtmf_tone"

    invoke-virtual {p0, v11}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 121
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 122
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v6, "dtmf_tone"

    invoke-static {v3, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_0
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 124
    const-string v5, "sound_effects"

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 125
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 126
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const-string v6, "sound_effects_enabled"

    invoke-static {v3, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 128
    const-string v5, "haptic_feedback"

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 129
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 130
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v6, "haptic_feedback_enabled"

    invoke-static {v3, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_2
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 132
    const-string v5, "lock_sounds"

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 133
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 134
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const-string v6, "lockscreen_sounds_enabled"

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 136
    const-string v5, "power_sounds"

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SoundSettings;->mPowerSounds:Landroid/preference/CheckBoxPreference;

    .line 137
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mPowerSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 138
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mPowerSounds:Landroid/preference/CheckBoxPreference;

    const-string v6, "power_sounds_enabled"

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_4
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 141
    if-ne v10, v0, :cond_1

    .line 142
    const-string v5, "emergency_tone"

    invoke-virtual {p0, v9}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 144
    .local v2, emergencyTonePreference:Landroid/preference/ListPreference;
    const-string v5, "emergency_tone"

    invoke-static {v3, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    .end local v2           #emergencyTonePreference:Landroid/preference/ListPreference;
    :cond_1
    const-string v5, "sound_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    iput-object v5, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 150
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v6, "notification_pulse"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    .line 152
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v6, "notification_blink"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SoundSettings;->mNotificationBlink:Landroid/preference/CheckBoxPreference;

    .line 154
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v6, "notification_always_on"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SoundSettings;->mNotificationAlwaysOn:Landroid/preference/CheckBoxPreference;

    .line 156
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v6, "notification_charging"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SoundSettings;->mNotificationCharging:Landroid/preference/CheckBoxPreference;

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d0015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 162
    .local v1, amberGreenLight:Z
    if-eqz v1, :cond_a

    .line 163
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mNotificationBlink:Landroid/preference/CheckBoxPreference;

    const-string v6, "notification_light_blink"

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_7

    move v6, v7

    :goto_5
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 167
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mNotificationBlink:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mNotificationAlwaysOn:Landroid/preference/CheckBoxPreference;

    const-string v6, "notification_light_always_on"

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_8

    move v6, v7

    :goto_6
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 171
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mNotificationAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mNotificationCharging:Landroid/preference/CheckBoxPreference;

    const-string v6, "notification_light_charging"

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_9

    move v6, v7

    :goto_7
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 175
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mNotificationCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    :goto_8
    return-void

    .end local v1           #amberGreenLight:Z
    :cond_2
    move v6, v8

    .line 122
    goto/16 :goto_0

    :cond_3
    move v6, v8

    .line 126
    goto/16 :goto_1

    :cond_4
    move v6, v8

    .line 130
    goto/16 :goto_2

    :cond_5
    move v6, v8

    .line 134
    goto/16 :goto_3

    :cond_6
    move v6, v8

    .line 138
    goto/16 :goto_4

    .restart local v1       #amberGreenLight:Z
    :cond_7
    move v6, v8

    .line 165
    goto :goto_5

    :cond_8
    move v6, v8

    .line 169
    goto :goto_6

    :cond_9
    move v6, v8

    .line 173
    goto :goto_7

    .line 178
    :cond_a
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mNotificationBlink:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mNotificationAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mNotificationCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f06

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_b

    .line 184
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_8

    .line 187
    :cond_b
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const-string v6, "notification_light_pulse"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_c

    move v6, v7

    :goto_9
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 189
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 190
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 191
    .local v4, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "SoundAndDisplaysSettings"

    const-string v6, "notification_light_pulse not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v4           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_c
    move v6, v8

    .line 187
    goto :goto_9
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 212
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const-string v4, "emergency_tone"

    .line 380
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, key:Ljava/lang/String;
    const-string v3, "emergency_tone"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 383
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 384
    .local v2, value:I
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_tone"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v2           #value:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 386
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 387
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "SoundAndDisplaysSettings"

    const-string v4, "could not persist emergency tone setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 389
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 390
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->setPhoneVibrateSettingValue(Ljava/lang/String;)V

    .line 391
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 318
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 319
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v5, v2, :cond_1

    move v1, v5

    .line 324
    .local v1, vibeInSilent:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 330
    .end local v1           #vibeInSilent:Z
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    .line 376
    :cond_0
    :goto_3
    return v5

    :cond_1
    move v1, v6

    .line 320
    goto :goto_0

    .restart local v1       #vibeInSilent:Z
    :cond_2
    move v3, v6

    .line 324
    goto :goto_1

    .line 328
    .end local v1           #vibeInSilent:Z
    :cond_3
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 331
    :cond_4
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_4
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_5
    move v4, v6

    goto :goto_4

    .line 335
    :cond_6
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 336
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 337
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 341
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    :goto_6
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 339
    :cond_7
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_5

    :cond_8
    move v4, v6

    .line 341
    goto :goto_6

    .line 344
    :cond_9
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v5

    :goto_7
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_a
    move v4, v6

    goto :goto_7

    .line 348
    :cond_b
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_d

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v5

    :goto_8
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_c
    move v4, v6

    goto :goto_8

    .line 352
    :cond_d
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mPowerSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_f

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mPowerSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v5

    :goto_9
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_e
    move v4, v6

    goto :goto_9

    .line 356
    :cond_f
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_11

    .line 357
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 358
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_light_pulse"

    if-eqz v0, :cond_10

    move v4, v5

    :goto_a
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_10
    move v4, v6

    goto :goto_a

    .line 361
    .end local v0           #value:Z
    :cond_11
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationBlink:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_13

    .line 362
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationBlink:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 363
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_light_blink"

    if-eqz v0, :cond_12

    move v4, v5

    :goto_b
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_12
    move v4, v6

    goto :goto_b

    .line 366
    .end local v0           #value:Z
    :cond_13
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationAlwaysOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_15

    .line 367
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationAlwaysOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 368
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_light_always_on"

    if-eqz v0, :cond_14

    move v4, v5

    :goto_c
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_14
    move v4, v6

    goto :goto_c

    .line 371
    .end local v0           #value:Z
    :cond_15
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationCharging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 373
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_light_charging"

    if-eqz v0, :cond_16

    move v4, v5

    :goto_d
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_16
    move v4, v6

    goto :goto_d
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 202
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    .line 204
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SoundSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    return-void
.end method
