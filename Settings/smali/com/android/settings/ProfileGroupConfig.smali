.class public Lcom/android/settings/ProfileGroupConfig;
.super Landroid/preference/PreferenceActivity;
.source "ProfileGroupConfig.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_LIGHTSMODE:Ljava/lang/CharSequence;

.field private static final KEY_RINGERMODE:Ljava/lang/CharSequence;

.field private static final KEY_RINGTONE:Ljava/lang/CharSequence;

.field private static final KEY_SOUNDMODE:Ljava/lang/CharSequence;

.field private static final KEY_SOUNDTONE:Ljava/lang/CharSequence;

.field private static final KEY_VIBRATEMODE:Ljava/lang/CharSequence;


# instance fields
.field private mLightsMode:Landroid/preference/ListPreference;

.field mProfile:Landroid/app/Profile;

.field mProfileGroup:Landroid/app/ProfileGroup;

.field private mProfileManager:Landroid/app/ProfileManager;

.field private mRingTone:Lcom/android/settings/ProfileRingtonePreference;

.field private mRingerMode:Landroid/preference/ListPreference;

.field private mSoundMode:Landroid/preference/ListPreference;

.field private mSoundTone:Lcom/android/settings/ProfileRingtonePreference;

.field private mVibrateMode:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "sound_mode"

    sput-object v0, Lcom/android/settings/ProfileGroupConfig;->KEY_SOUNDMODE:Ljava/lang/CharSequence;

    .line 36
    const-string v0, "vibrate_mode"

    sput-object v0, Lcom/android/settings/ProfileGroupConfig;->KEY_VIBRATEMODE:Ljava/lang/CharSequence;

    .line 38
    const-string v0, "lights_mode"

    sput-object v0, Lcom/android/settings/ProfileGroupConfig;->KEY_LIGHTSMODE:Ljava/lang/CharSequence;

    .line 40
    const-string v0, "ringer_mode"

    sput-object v0, Lcom/android/settings/ProfileGroupConfig;->KEY_RINGERMODE:Ljava/lang/CharSequence;

    .line 42
    const-string v0, "soundtone"

    sput-object v0, Lcom/android/settings/ProfileGroupConfig;->KEY_SOUNDTONE:Ljava/lang/CharSequence;

    .line 44
    const-string v0, "ringtone"

    sput-object v0, Lcom/android/settings/ProfileGroupConfig;->KEY_RINGTONE:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v1}, Landroid/app/ProfileGroup;->getVibrateMode()Landroid/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v1}, Landroid/app/ProfileGroup;->getSoundMode()Landroid/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v1}, Landroid/app/ProfileGroup;->getRingerMode()Landroid/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v1}, Landroid/app/ProfileGroup;->getLightsMode()Landroid/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v0}, Landroid/app/ProfileGroup;->getSoundOverride()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/ProfileGroupConfig;->mSoundTone:Lcom/android/settings/ProfileRingtonePreference;

    iget-object v1, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v1}, Landroid/app/ProfileGroup;->getSoundOverride()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ProfileRingtonePreference;->setRingtone(Landroid/net/Uri;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v0}, Landroid/app/ProfileGroup;->getRingerOverride()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/settings/ProfileGroupConfig;->mRingTone:Lcom/android/settings/ProfileRingtonePreference;

    iget-object v1, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v1}, Landroid/app/ProfileGroup;->getRingerOverride()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ProfileRingtonePreference;->setRingtone(Landroid/net/Uri;)V

    .line 120
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v2, 0x7f04001b

    invoke-virtual {p0, v2}, Lcom/android/settings/ProfileGroupConfig;->addPreferencesFromResource(I)V

    .line 70
    const-string v2, "profile"

    invoke-virtual {p0, v2}, Lcom/android/settings/ProfileGroupConfig;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfileManager;

    iput-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileManager:Landroid/app/ProfileManager;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/ProfileGroupConfig;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Profile"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/Profile;

    iput-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mProfile:Landroid/app/Profile;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/ProfileGroupConfig;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ProfileGroup"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 74
    .local v1, uuid:Ljava/util/UUID;
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v2, v1}, Landroid/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2, v1}, Landroid/app/Profile;->getProfileGroup(Ljava/util/UUID;)Landroid/app/ProfileGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    .line 78
    const v2, 0x7f0804ec

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/ProfileGroupConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v4}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ProfileGroupConfig;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/ProfileGroupConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    sget-object v2, Lcom/android/settings/ProfileGroupConfig;->KEY_RINGERMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    .line 81
    sget-object v2, Lcom/android/settings/ProfileGroupConfig;->KEY_SOUNDMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    .line 82
    sget-object v2, Lcom/android/settings/ProfileGroupConfig;->KEY_VIBRATEMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    .line 83
    sget-object v2, Lcom/android/settings/ProfileGroupConfig;->KEY_LIGHTSMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    .line 84
    sget-object v2, Lcom/android/settings/ProfileGroupConfig;->KEY_RINGTONE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ProfileRingtonePreference;

    iput-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mRingTone:Lcom/android/settings/ProfileRingtonePreference;

    .line 85
    sget-object v2, Lcom/android/settings/ProfileGroupConfig;->KEY_SOUNDTONE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ProfileRingtonePreference;

    iput-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mSoundTone:Lcom/android/settings/ProfileRingtonePreference;

    .line 87
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mRingTone:Lcom/android/settings/ProfileRingtonePreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/ProfileRingtonePreference;->setShowSilent(Z)V

    .line 88
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mSoundTone:Lcom/android/settings/ProfileRingtonePreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/ProfileRingtonePreference;->setShowSilent(Z)V

    .line 90
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mSoundTone:Lcom/android/settings/ProfileRingtonePreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/ProfileRingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mRingTone:Lcom/android/settings/ProfileRingtonePreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/ProfileRingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/ProfileGroupConfig;->updateState()V

    .line 98
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 124
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 125
    iget-object v3, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/ProfileGroup;->setVibrateMode(Landroid/app/ProfileGroup$Mode;)V

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 128
    iget-object v3, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/ProfileGroup;->setSoundMode(Landroid/app/ProfileGroup$Mode;)V

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 131
    iget-object v3, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/ProfileGroup;->setRingerMode(Landroid/app/ProfileGroup$Mode;)V

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 134
    iget-object v3, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/ProfileGroup;->setLightsMode(Landroid/app/ProfileGroup$Mode;)V

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mRingTone:Lcom/android/settings/ProfileRingtonePreference;

    if-ne p1, v2, :cond_4

    .line 137
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 138
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v2, v1}, Landroid/app/ProfileGroup;->setRingerOverride(Landroid/net/Uri;)V

    .line 140
    .end local v1           #uri:Landroid/net/Uri;
    :cond_4
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mSoundTone:Lcom/android/settings/ProfileRingtonePreference;

    if-ne p1, v2, :cond_5

    .line 141
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 142
    .restart local v1       #uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v2, v1}, Landroid/app/ProfileGroup;->setSoundOverride(Landroid/net/Uri;)V

    .line 145
    .end local v1           #uri:Landroid/net/Uri;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/ProfileGroupConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v3, p0, Lcom/android/settings/ProfileGroupConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2, v3}, Landroid/app/ProfileManager;->updateProfile(Landroid/app/Profile;)V

    .line 147
    invoke-direct {p0}, Lcom/android/settings/ProfileGroupConfig;->updateState()V

    .line 148
    const/4 v2, 0x1

    return v2
.end method
