.class public Lcom/android/settings/ApplicationSettings;
.super Landroid/preference/PreferenceActivity;
.source "ApplicationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final APP_INSTALL_AUTO:I = 0x0

.field private static final APP_INSTALL_AUTO_ID:Ljava/lang/String; = "auto"

.field private static final APP_INSTALL_DEVICE:I = 0x1

.field private static final APP_INSTALL_DEVICE_ID:Ljava/lang/String; = "device"

.field private static final APP_INSTALL_SDCARD:I = 0x2

.field private static final APP_INSTALL_SDCARD_ID:Ljava/lang/String; = "sdcard"

.field private static final KEY_APP_INSTALL_LOCATION:Ljava/lang/String; = "app_install_location"

.field private static final KEY_QUICK_LAUNCH:Ljava/lang/String; = "quick_launch"

.field private static final KEY_TOGGLE_INSTALL_APPLICATIONS:Ljava/lang/String; = "toggle_install_applications"


# instance fields
.field private mInstallLocation:Landroid/preference/ListPreference;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "auto"

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 147
    .local v0, selectedLocation:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 148
    const-string v1, "device"

    .line 155
    :goto_0
    return-object v1

    .line 149
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 150
    const-string v1, "sdcard"

    goto :goto_0

    .line 151
    :cond_1
    if-nez v0, :cond_2

    .line 152
    const-string v1, "auto"

    move-object v1, v4

    goto :goto_0

    .line 155
    :cond_2
    const-string v1, "auto"

    move-object v1, v4

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    return-void

    .line 135
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 160
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080276

    invoke-virtual {p0, v1}, Lcom/android/settings/ApplicationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApplicationSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 167
    return-void
.end method


# virtual methods
.method protected handleUpdateAppInstallLocation(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    const-string v2, "default_install_location"

    .line 87
    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 102
    return-void

    .line 90
    :cond_0
    const-string v0, "sdcard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v1, 0x2

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 93
    :cond_1
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 127
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 128
    invoke-direct {p0, v1}, Lcom/android/settings/ApplicationSettings;->setNonMarketAppsAllowed(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 131
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v2, 0x7f040005

    invoke-virtual {p0, v2}, Lcom/android/settings/ApplicationSettings;->addPreferencesFromResource(I)V

    .line 59
    const-string v2, "toggle_install_applications"

    invoke-virtual {p0, v2}, Lcom/android/settings/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/ApplicationSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    .line 60
    iget-object v2, p0, Lcom/android/settings/ApplicationSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/ApplicationSettings;->isNonMarketAppsAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 62
    const-string v2, "app_install_location"

    invoke-virtual {p0, v2}, Lcom/android/settings/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "set_install_location"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    .line 66
    .local v1, userSetInstLocation:Z
    :goto_0
    if-nez v1, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 79
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    if-ne v2, v5, :cond_0

    .line 81
    const-string v2, "quick_launch"

    invoke-virtual {p0, v2}, Lcom/android/settings/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 82
    .local v0, quickLaunchSetting:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    .end local v0           #quickLaunchSetting:Landroid/preference/Preference;
    :cond_0
    return-void

    .end local v1           #userSetInstLocation:Z
    :cond_1
    move v1, v4

    .line 64
    goto :goto_0

    .line 69
    .restart local v1       #userSetInstLocation:Z
    :cond_2
    iget-object v2, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/ApplicationSettings;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/settings/ApplicationSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/ApplicationSettings$1;-><init>(Lcom/android/settings/ApplicationSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 110
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/ApplicationSettings;->warnAppInstallation()V

    .line 123
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 119
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/ApplicationSettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_0
.end method
