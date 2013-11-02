.class public Lcom/android/systemui/toggles/ToggleSettings;
.super Landroid/preference/PreferenceActivity;
.source "ToggleSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

.field private mFullscreenExpandStyle:Landroid/preference/CheckBoxPreference;

.field private mIndicatorStyle:Landroid/preference/ListPreference;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mResolver:Landroid/content/ContentResolver;

.field private mStatusBarRestartReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarStyle:Lcom/android/systemui/toggles/ToggleStylePreference;

.field private mUsbMode:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/toggles/ToggleSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/toggles/ToggleSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mResolver:Landroid/content/ContentResolver;

    .line 37
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/android/systemui/toggles/ToggleSettings;->addPreferencesFromResource(I)V

    .line 39
    const-string v0, "status_bar_toggle_style"

    invoke-virtual {p0, v0}, Lcom/android/systemui/toggles/ToggleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/toggles/ToggleStylePreference;

    iput-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mStatusBarStyle:Lcom/android/systemui/toggles/ToggleStylePreference;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mStatusBarStyle:Lcom/android/systemui/toggles/ToggleStylePreference;

    invoke-virtual {v0, p0}, Lcom/android/systemui/toggles/ToggleStylePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 42
    new-instance v0, Lcom/android/systemui/toggles/ToggleSettings$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/toggles/ToggleSettings$1;-><init>(Lcom/android/systemui/toggles/ToggleSettings;)V

    iput-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mStatusBarRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0a003c

    invoke-virtual {p0, v1}, Lcom/android/systemui/toggles/ToggleSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 53
    const-string v0, "expandable_under_fullscreen"

    invoke-virtual {p0, v0}, Lcom/android/systemui/toggles/ToggleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mFullscreenExpandStyle:Landroid/preference/CheckBoxPreference;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mFullscreenExpandStyle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mFullscreenExpandStyle:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lmiui/app/ExtraStatusBarManager;->isExpandableUnderFullscreen(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 57
    const-string v0, "battery_indicator_style"

    invoke-virtual {p0, v0}, Lcom/android/systemui/toggles/ToggleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mIndicatorStyle:Landroid/preference/ListPreference;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mIndicatorStyle:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    const-string v0, "enable_back_long_press"

    invoke-virtual {p0, v0}, Lcom/android/systemui/toggles/ToggleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    const-string v0, "usb_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/toggles/ToggleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mUsbMode:Landroid/preference/ListPreference;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mUsbMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/toggles/ToggleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/toggles/ToggleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleSettings;->mUsbMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 68
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 105
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 106
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleSettings;->mStatusBarRestartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/toggles/ToggleSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    .line 110
    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleSettings;->mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_1

    .line 111
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 112
    .local v1, isChecked:Z
    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "back_key_long_press_timeout"

    if-eqz v1, :cond_0

    move v5, v6

    :goto_0
    mul-int/lit16 v5, v5, 0x7d0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    .end local v1           #isChecked:Z
    :goto_1
    return v6

    .line 112
    .restart local v1       #isChecked:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 117
    .end local v1           #isChecked:Z
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleSettings;->mUsbMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_2

    .line 118
    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleSettings;->mUsbMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 119
    .local v0, index:I
    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "usb_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleSettings;->mUsbMode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 121
    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleSettings;->mUsbMode:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/systemui/toggles/ToggleSettings;->mUsbMode:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 123
    .end local v0           #index:I
    .restart local p2
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleSettings;->mIndicatorStyle:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_3

    .line 125
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 126
    .local v2, value:I
    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "battery_indicator_style"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleSettings;->mIndicatorStyle:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/systemui/toggles/ToggleSettings;->mIndicatorStyle:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 129
    .end local v2           #value:I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 132
    .restart local p2
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleSettings;->mFullscreenExpandStyle:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_4

    .line 134
    :try_start_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {p0, v3}, Lmiui/app/ExtraStatusBarManager;->setExpandableUnderFullscreen(Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 135
    :catch_1
    move-exception v3

    goto :goto_1

    .line 140
    .restart local p2
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.miui.app.ExtraStatusBarManager.REQUEST_RESTART"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/toggles/ToggleSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "com.miui.app.ExtraStatusBarManager.LOADED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v4, p0, Lcom/android/systemui/toggles/ToggleSettings;->mStatusBarRestartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/toggles/ToggleSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    iget-object v4, p0, Lcom/android/systemui/toggles/ToggleSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "battery_indicator_style"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 79
    .local v2, style:I
    iget-object v4, p0, Lcom/android/systemui/toggles/ToggleSettings;->mIndicatorStyle:Landroid/preference/ListPreference;

    const/4 v5, 0x2

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 80
    iget-object v4, p0, Lcom/android/systemui/toggles/ToggleSettings;->mIndicatorStyle:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/systemui/toggles/ToggleSettings;->mIndicatorStyle:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v4, p0, Lcom/android/systemui/toggles/ToggleSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "back_key_long_press_timeout"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 86
    .local v3, timeout:I
    iget-object v4, p0, Lcom/android/systemui/toggles/ToggleSettings;->mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

    if-lez v3, :cond_0

    move v5, v7

    :goto_0
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    iget-object v4, p0, Lcom/android/systemui/toggles/ToggleSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "usb_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, mode:I
    iget-object v4, p0, Lcom/android/systemui/toggles/ToggleSettings;->mUsbMode:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v4, v7

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 92
    iget-object v4, p0, Lcom/android/systemui/toggles/ToggleSettings;->mUsbMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 93
    iget-object v4, p0, Lcom/android/systemui/toggles/ToggleSettings;->mUsbMode:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/systemui/toggles/ToggleSettings;->mUsbMode:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    return-void

    .end local v1           #mode:I
    :cond_0
    move v5, v6

    .line 86
    goto :goto_0
.end method
