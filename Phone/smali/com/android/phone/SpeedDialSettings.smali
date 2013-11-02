.class public Lcom/android/phone/SpeedDialSettings;
.super Landroid/preference/PreferenceActivity;
.source "SpeedDialSettings.java"

# interfaces
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String; = null

.field private static final SD_REQUEST_CODE1:I = 0x8

.field private static final SD_REQUEST_CODE2:I = 0x0

.field private static final SD_REQUEST_CODE3:I = 0x1

.field private static final SD_REQUEST_CODE4:I = 0x2

.field private static final SD_REQUEST_CODE5:I = 0x3

.field private static final SD_REQUEST_CODE6:I = 0x4

.field private static final SD_REQUEST_CODE7:I = 0x5

.field private static final SD_REQUEST_CODE8:I = 0x6

.field private static final SD_REQUEST_CODE9:I = 0x7


# instance fields
.field private mOldSpeedNumber1:Ljava/lang/String;

.field private mOldSpeedNumber2:Ljava/lang/String;

.field private mOldSpeedNumber3:Ljava/lang/String;

.field private mOldSpeedNumber4:Ljava/lang/String;

.field private mOldSpeedNumber5:Ljava/lang/String;

.field private mOldSpeedNumber6:Ljava/lang/String;

.field private mOldSpeedNumber7:Ljava/lang/String;

.field private mOldSpeedNumber8:Ljava/lang/String;

.field private mOldSpeedNumber9:Ljava/lang/String;

.field private mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/SpeedDialSettings;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 418
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const v3, 0x7f0c02ea

    .line 60
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 62
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "speed_dial1"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

    .line 66
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 68
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

    const/16 v2, 0x8

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 72
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 73
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber1:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber1:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    :cond_0
    :goto_0
    const-string v1, "speed_dial2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    .line 91
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 94
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 95
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber2:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber2:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    :cond_1
    const-string v1, "speed_dial3"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    .line 101
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 104
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 105
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number3"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber3:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber3:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    :cond_2
    const-string v1, "speed_dial4"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    .line 111
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 114
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 115
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number4"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber4:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber4:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    :cond_3
    const-string v1, "speed_dial5"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    .line 121
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_4

    .line 123
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 124
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 125
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number5"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber5:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber5:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    :cond_4
    const-string v1, "speed_dial6"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    .line 131
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_5

    .line 133
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 134
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 135
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number6"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber6:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber6:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    :cond_5
    const-string v1, "speed_dial7"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    .line 141
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_6

    .line 143
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x5

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 144
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 145
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number7"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber7:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber7:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 150
    :cond_6
    const-string v1, "speed_dial8"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    .line 151
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_7

    .line 153
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x6

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 154
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 155
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number8"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber8:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber8:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    :cond_7
    const-string v1, "speed_dial9"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    .line 161
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_8

    .line 163
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x7

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 164
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 165
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speed_number9"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber9:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber9:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    :cond_8
    return-void

    .line 82
    :cond_9
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v8, "SpeedDialSettings.java onActivityResult()"

    .line 369
    const-string v0, "SpeedDialSettings.java onActivityResult()"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shen requestCode =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 372
    const-string v0, "SpeedDialSettings.java onActivityResult()"

    const-string v0, "shen resultCode != RESULT_OK"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/SpeedDialSettings;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 378
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 379
    :cond_1
    const-string v0, "SpeedDialSettings.java onActivityResult()"

    const-string v0, "shen cursor == null"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 389
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Lcom/android/phone/SpeedDialSettings;->addPreferencesFromResource(I)V

    .line 56
    invoke-direct {p0}, Lcom/android/phone/SpeedDialSettings;->init()V

    .line 57
    return-void
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 7
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    const-string v6, "shen mSpeedDial.getPhoneNumber() =="

    const-string v5, "SpeedDialSettings.java onDialogClosed()"

    .line 174
    const-string v2, "SpeedDialSetting.java onDialogClosed()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shen buttonClicked =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    instance-of v2, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_1

    .line 177
    move-object v0, p1

    .line 178
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    const/4 v1, 0x0

    .line 180
    .local v1, newSpeedNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_3

    .line 181
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen epn == mSpeedDial1"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 184
    if-nez v1, :cond_0

    .line 185
    const-string v1, ""

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen newSpeedNumber.equals(mOldSpeedNumber1)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v0           #epn:Lcom/android/phone/EditPhoneNumberPreference;
    .end local v1           #newSpeedNumber:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 191
    .restart local v0       #epn:Lcom/android/phone/EditPhoneNumberPreference;
    .restart local v1       #newSpeedNumber:Ljava/lang/String;
    :cond_2
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen putString(mOldSpeedNumber1)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber1:Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number1"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber1:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 195
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber1:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 198
    :cond_3
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_6

    .line 199
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen epn == mSpeedDial2"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 202
    if-nez v1, :cond_4

    .line 203
    const-string v1, ""

    .line 205
    :cond_4
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 206
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen newSpeedNumber.equals(mOldSpeedNumber2)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_5
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen putString(mOldSpeedNumber2)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber2:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number2"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber2:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber2:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 214
    :cond_6
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_9

    .line 215
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen epn == mSpeedDial3"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 218
    if-nez v1, :cond_7

    .line 219
    const-string v1, ""

    .line 221
    :cond_7
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 222
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen newSpeedNumber.equals(mOldSpeedNumber3)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 225
    :cond_8
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen putString(mOldSpeedNumber3)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber3:Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number3"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber3:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 229
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber3:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 230
    :cond_9
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_c

    .line 231
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen epn == mSpeedDial4"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 234
    if-nez v1, :cond_a

    .line 235
    const-string v1, ""

    .line 237
    :cond_a
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 238
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen newSpeedNumber.equals(mOldSpeedNumber4)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 241
    :cond_b
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen putString(mOldSpeedNumber4)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber4:Ljava/lang/String;

    .line 243
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number4"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber4:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 245
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber4:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 246
    :cond_c
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_f

    .line 247
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen epn == mSpeedDial5"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 250
    if-nez v1, :cond_d

    .line 251
    const-string v1, ""

    .line 253
    :cond_d
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 254
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen newSpeedNumber.equals(mOldSpeedNumber5)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 257
    :cond_e
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen putString(mOldSpeedNumber5)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber5:Ljava/lang/String;

    .line 259
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number5"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber5:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 261
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber5:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 262
    :cond_f
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_12

    .line 263
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen epn == mSpeedDial6"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 266
    if-nez v1, :cond_10

    .line 267
    const-string v1, ""

    .line 269
    :cond_10
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 270
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen newSpeedNumber.equals(mOldSpeedNumber6)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 273
    :cond_11
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen putString(mOldSpeedNumber6)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber6:Ljava/lang/String;

    .line 275
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number6"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber6:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber6:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 278
    :cond_12
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_15

    .line 279
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen epn == mSpeedDial7"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 282
    if-nez v1, :cond_13

    .line 283
    const-string v1, ""

    .line 285
    :cond_13
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber7:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 286
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen newSpeedNumber.equals(mOldSpeedNumber7)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 289
    :cond_14
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen putString(mOldSpeedNumber72)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber7:Ljava/lang/String;

    .line 291
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number7"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber7:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber7:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 294
    :cond_15
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_18

    .line 295
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen epn == mSpeedDial8"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 298
    if-nez v1, :cond_16

    .line 299
    const-string v1, ""

    .line 301
    :cond_16
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber8:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 302
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen newSpeedNumber.equals(mOldSpeedNumber8)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 305
    :cond_17
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen putString(mOldSpeedNumber8)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber8:Ljava/lang/String;

    .line 307
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number8"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber8:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 309
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber8:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 310
    :cond_18
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v2, :cond_1

    .line 311
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen epn == mSpeedDial9"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shen mSpeedDial.getPhoneNumber() =="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 314
    if-nez v1, :cond_19

    .line 315
    const-string v1, ""

    .line 317
    :cond_19
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber9:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 318
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen newSpeedNumber.equals(mOldSpeedNumber9)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 321
    :cond_1a
    const-string v2, "SpeedDialSettings.java onDialogClosed()"

    const-string v2, "shen putString(mOldSpeedNumber9)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iput-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber9:Ljava/lang/String;

    .line 323
    invoke-virtual {p0}, Lcom/android/phone/SpeedDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speed_number9"

    iget-object v4, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber9:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 325
    iget-object v2, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v3, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber9:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/SpeedDialSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 2
    .parameter "preference"

    .prologue
    const-string v1, "SpeedDialSettings.java onGetDefaultNumber()"

    .line 332
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_1

    .line 333
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v0, "shen getString() mSpeedDial1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial1:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 363
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_2

    .line 339
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v0, "shen getString() mSpeedDial2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial2:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_3

    .line 342
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v0, "shen getString() mSpeedDial3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial3:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_4

    .line 345
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v0, "shen getString() mSpeedDial4"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial4:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_5

    .line 348
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v0, "shen getString() mSpeedDial5"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial5:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0

    .line 350
    :cond_5
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_6

    .line 351
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v0, "shen getString() mSpeedDial6"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial6:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0

    .line 353
    :cond_6
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_7

    .line 354
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v0, "shen getString() mSpeedDial7"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial7:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0

    .line 356
    :cond_7
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_8

    .line 357
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v0, "shen getString() mSpeedDial8"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial8:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber8:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto/16 :goto_0

    .line 359
    :cond_8
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_0

    .line 360
    const-string v0, "SpeedDialSettings.java onGetDefaultNumber()"

    const-string v0, "shen getString() mSpeedDial9"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/phone/SpeedDialSettings;->mSpeedDial9:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/SpeedDialSettings;->mOldSpeedNumber9:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto/16 :goto_0
.end method
