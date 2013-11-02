.class public Lcom/android/settings/ChooseLockGeneric;
.super Landroid/preference/PreferenceActivity;
.source "ChooseLockGeneric.java"


# static fields
.field private static final CONFIRM_CREDENTIALS:Ljava/lang/String; = "confirm_credentials"

.field private static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field private static final KEY_UNLOCK_SET_NONE:Ljava/lang/String; = "unlock_set_none"

.field private static final KEY_UNLOCK_SET_PASSWORD:Ljava/lang/String; = "unlock_set_password"

.field private static final KEY_UNLOCK_SET_PATTERN:Ljava/lang/String; = "unlock_set_pattern"

.field private static final KEY_UNLOCK_SET_PIN:Ljava/lang/String; = "unlock_set_pin"

.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field private static final PASSWORD_CONFIRMED:Ljava/lang/String; = "password_confirmed"


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mPasswordConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    return-void
.end method

.method private disableUnusablePreferences(I)V
    .locals 12
    .parameter "quality"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "security_picker_category"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 127
    .local v5, picker:Landroid/preference/Preference;
    move-object v0, v5

    check-cast v0, Landroid/preference/PreferenceCategory;

    move-object v1, v0

    .line 128
    .local v1, cat:Landroid/preference/PreferenceCategory;
    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v7

    .line 129
    .local v7, preferenceCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_9

    .line 130
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .line 131
    .local v6, pref:Landroid/preference/Preference;
    instance-of v8, v6, Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_1

    .line 132
    move-object v0, v6

    check-cast v0, Landroid/preference/PreferenceScreen;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, key:Ljava/lang/String;
    const/4 v2, 0x1

    .line 134
    .local v2, enabled:Z
    const-string v8, "unlock_set_none"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 135
    if-gtz p1, :cond_2

    move v2, v11

    .line 143
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    .line 144
    const v8, 0x7f0800fe

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 145
    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 129
    .end local v2           #enabled:Z
    .end local v4           #key:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v2       #enabled:Z
    .restart local v4       #key:Ljava/lang/String;
    :cond_2
    move v2, v10

    .line 135
    goto :goto_1

    .line 136
    :cond_3
    const-string v8, "unlock_set_pattern"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 137
    const/high16 v8, 0x1

    if-gt p1, v8, :cond_4

    move v2, v11

    :goto_2
    goto :goto_1

    :cond_4
    move v2, v10

    goto :goto_2

    .line 138
    :cond_5
    const-string v8, "unlock_set_pin"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 139
    const/high16 v8, 0x2

    if-gt p1, v8, :cond_6

    move v2, v11

    :goto_3
    goto :goto_1

    :cond_6
    move v2, v10

    goto :goto_3

    .line 140
    :cond_7
    const-string v8, "unlock_set_password"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 141
    const/high16 v8, 0x5

    if-gt p1, v8, :cond_8

    move v2, v11

    :goto_4
    goto :goto_1

    :cond_8
    move v2, v10

    goto :goto_4

    .line 149
    .end local v2           #enabled:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #pref:Landroid/preference/Preference;
    :cond_9
    return-void
.end method

.method private updatePreferencesOrFinish()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.password_type"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 106
    .local v1, quality:I
    if-ne v1, v4, :cond_1

    .line 108
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 110
    .local v0, prefScreen:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 113
    :cond_0
    const v2, 0x7f040022

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->addPreferencesFromResource(I)V

    .line 114
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->disableUnusablePreferences(I)V

    .line 118
    .end local v0           #prefScreen:Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethodAndFinish(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 88
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    .line 90
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric;->updatePreferencesOrFinish()V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric;->setResult(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 49
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 51
    if-eqz p1, :cond_0

    .line 52
    const-string v1, "password_confirmed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    .line 55
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    if-nez v1, :cond_2

    .line 56
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 57
    .local v0, helper:Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    .line 59
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric;->updatePreferencesOrFinish()V

    .line 64
    .end local v0           #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric;->updatePreferencesOrFinish()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 69
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, key:Ljava/lang/String;
    const/4 v0, 0x1

    .line 71
    .local v0, handled:Z
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethodAndFinish(I)V

    .line 82
    :goto_0
    return v0

    .line 73
    :cond_0
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const/high16 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethodAndFinish(I)V

    goto :goto_0

    .line 75
    :cond_1
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    const/high16 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethodAndFinish(I)V

    goto :goto_0

    .line 77
    :cond_2
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethodAndFinish(I)V

    goto :goto_0

    .line 80
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    return-void
.end method

.method updateUnlockMethodAndFinish(I)V
    .locals 10
    .parameter "quality"

    .prologue
    const/4 v6, 0x0

    const/high16 v8, 0x200

    const/4 v7, 0x0

    const-string v9, "confirm_credentials"

    .line 160
    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    if-nez v5, :cond_0

    .line 161
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Tried to update password without confirming first"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 165
    :cond_0
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v3

    .line 166
    .local v3, minQuality:I
    if-ge p1, v3, :cond_1

    .line 167
    move p1, v3

    .line 169
    :cond_1
    const/high16 v5, 0x2

    if-lt p1, v5, :cond_4

    .line 170
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v2

    .line 171
    .local v2, minLength:I
    const/4 v5, 0x4

    if-ge v2, v5, :cond_2

    .line 172
    const/4 v2, 0x4

    .line 174
    :cond_2
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    .line 175
    .local v1, maxLength:I
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-class v6, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v5, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 176
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "lockscreen.password_type"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string v5, "lockscreen.password_min"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-string v5, "lockscreen.password_max"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v5, "confirm_credentials"

    invoke-virtual {v0, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric;->startActivity(Landroid/content/Intent;)V

    .line 196
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #maxLength:I
    .end local v2           #minLength:I
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    .line 197
    return-void

    .line 182
    :cond_4
    const/high16 v5, 0x1

    if-ne p1, v5, :cond_7

    .line 183
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    move v4, v5

    .line 184
    .local v4, showTutorial:Z
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 185
    .restart local v0       #intent:Landroid/content/Intent;
    if-eqz v4, :cond_6

    const-class v5, Lcom/android/settings/ChooseLockPatternTutorial;

    :goto_2
    invoke-virtual {v0, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 188
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    const-string v5, "key_lock_method"

    const-string v6, "pattern"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v5, "confirm_credentials"

    invoke-virtual {v0, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    .end local v4           #showTutorial:Z
    :cond_5
    move v4, v7

    .line 183
    goto :goto_1

    .line 185
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v4       #showTutorial:Z
    :cond_6
    const-class v5, Lcom/android/settings/ChooseLockPattern;

    goto :goto_2

    .line 192
    .end local v0           #intent:Landroid/content/Intent;
    .end local v4           #showTutorial:Z
    :cond_7
    if-nez p1, :cond_3

    .line 193
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    .line 194
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric;->setResult(I)V

    goto :goto_0
.end method
