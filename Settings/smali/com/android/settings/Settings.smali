.class public Lcom/android/settings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"


# static fields
.field private static final KEY_CALL_SETTINGS:Ljava/lang/String; = "call_settings"

.field private static final KEY_DEVICE_SETTINGS:Ljava/lang/String; = "device_settings"

.field private static final KEY_DOCK_SETTINGS:Ljava/lang/String; = "dock_settings"

.field private static final KEY_LAUNCHER:Ljava/lang/String; = "launcher_settings"

.field private static final KEY_PARENT:Ljava/lang/String; = "parent"

.field private static final KEY_SYNC_SETTINGS:Ljava/lang/String; = "sync_settings"


# instance fields
.field private mLauncherSettings:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const-string v5, "launcher_settings"

    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v3, 0x7f040024

    invoke-virtual {p0, v3}, Lcom/android/settings/Settings;->addPreferencesFromResource(I)V

    .line 48
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 50
    .local v0, activePhoneType:I
    const-string v3, "parent"

    invoke-virtual {p0, v3}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 51
    .local v2, parent:Landroid/preference/PreferenceGroup;
    const-string v3, "sync_settings"

    invoke-static {p0, v2, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 52
    const-string v3, "launcher_settings"

    invoke-static {p0, v2, v5, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 53
    const-string v3, "device_settings"

    invoke-static {p0, v2, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 54
    const-string v3, "launcher_settings"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/Settings;->mLauncherSettings:Landroid/preference/Preference;

    .line 56
    const-string v3, "dock_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 57
    .local v1, dockSettings:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 60
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const-string v5, "launcher_settings"

    .line 64
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 65
    const-string v3, "call_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 69
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v3, "parent"

    invoke-virtual {p0, v3}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 75
    .local v2, parent:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 76
    .local v0, a:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_3

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.android.launcher.Launcher"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 77
    const-string v3, "launcher_settings"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 78
    iget-object v3, p0, Lcom/android/settings/Settings;->mLauncherSettings:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 85
    :cond_1
    :goto_1
    return-void

    .line 65
    .end local v0           #a:Landroid/content/pm/ActivityInfo;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #parent:Landroid/preference/PreferenceGroup;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 81
    .restart local v0       #a:Landroid/content/pm/ActivityInfo;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #parent:Landroid/preference/PreferenceGroup;
    :cond_3
    const-string v3, "launcher_settings"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 82
    iget-object v3, p0, Lcom/android/settings/Settings;->mLauncherSettings:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method
