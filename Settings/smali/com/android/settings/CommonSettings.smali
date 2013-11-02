.class public Lcom/android/settings/CommonSettings;
.super Landroid/preference/PreferenceActivity;
.source "CommonSettings.java"


# static fields
.field public static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final KEY_TOGGLE_AIRPLANE:Ljava/lang/String; = "toggle_airplane"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 54
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 60
    :goto_0
    return v1

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const-string v2, "toggle_airplane"

    .line 65
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f040009

    invoke-virtual {p0, v1}, Lcom/android/settings/CommonSettings;->addPreferencesFromResource(I)V

    .line 69
    const-string v1, "toggle_airplane"

    invoke-virtual {p0, v2}, Lcom/android/settings/CommonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 71
    .local v0, airplane:Landroid/preference/CheckBoxPreference;
    new-instance v1, Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/settings/CommonSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 72
    const-string v1, "toggle_airplane"

    invoke-virtual {p0, v2}, Lcom/android/settings/CommonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/CommonSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 73
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 86
    iget-object v0, p0, Lcom/android/settings/CommonSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 87
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/android/settings/CommonSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 80
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 90
    const v0, 0x7f030041

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 91
    return-void
.end method
