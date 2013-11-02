.class public Lcom/android/settings/wifi/AdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "AdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static DEBUGGABLE:I = 0x0

.field private static final KEY_CURRENT_IP_ADDRESS:Ljava/lang/String; = "current_ip_address"

.field private static final KEY_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final KEY_NUM_CHANNELS:Ljava/lang/String; = "num_channels"

.field private static final KEY_SLEEP_POLICY:Ljava/lang/String; = "sleep_policy"

.field private static final KEY_USE_STATIC_IP:Ljava/lang/String; = "use_static_ip"

.field private static final MENU_ITEM_CANCEL:I = 0x2

.field private static final MENU_ITEM_SAVE:I = 0x1


# instance fields
.field private mPreferenceKeys:[Ljava/lang/String;

.field private mSettingNames:[Ljava/lang/String;

.field private mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wifi_static_ip"

    aput-object v1, v0, v2

    const-string v1, "wifi_static_gateway"

    aput-object v1, v0, v3

    const-string v1, "wifi_static_netmask"

    aput-object v1, v0, v4

    const-string v1, "wifi_static_dns1"

    aput-object v1, v0, v5

    const-string v1, "wifi_static_dns2"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ip_address"

    aput-object v1, v0, v2

    const-string v1, "gateway"

    aput-object v1, v0, v3

    const-string v1, "netmask"

    aput-object v1, v0, v4

    const-string v1, "dns1"

    aput-object v1, v0, v5

    const-string v1, "dns2"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    return-void
.end method

.method private initNumChannelsPreference()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 117
    const-string v7, "num_channels"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 118
    .local v4, pref:Landroid/preference/ListPreference;
    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 126
    .local v6, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getValidChannelCounts()[I

    move-result-object v5

    .line 127
    .local v5, validChannelCounts:[I
    if-nez v5, :cond_1

    .line 128
    const v7, 0x7f080186

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 130
    invoke-virtual {v4, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    array-length v7, v5

    new-array v0, v7, [Ljava/lang/String;

    .line 134
    .local v0, entries:[Ljava/lang/String;
    array-length v7, v5

    new-array v1, v7, [Ljava/lang/String;

    .line 136
    .local v1, entryValues:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v5

    if-ge v2, v7, :cond_2

    .line 137
    aget v7, v5, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 138
    const v7, 0x7f080187

    new-array v8, v11, [Ljava/lang/Object;

    aget v9, v5, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    :cond_2
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v4, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 144
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getNumAllowedChannels()I

    move-result v3

    .line 145
    .local v3, numChannels:I
    if-ltz v3, :cond_0

    .line 146
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSleepPolicyPreference()V
    .locals 5

    .prologue
    .line 151
    const-string v2, "sleep_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 152
    .local v0, pref:Landroid/preference/ListPreference;
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 155
    .local v1, value:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 8
    .parameter "value"

    .prologue
    const/16 v7, 0x2e

    const/4 v6, 0x0

    .line 227
    const/4 v4, 0x0

    .line 228
    .local v4, start:I
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 229
    .local v2, end:I
    const/4 v3, 0x0

    .line 231
    .local v3, numBlocks:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 233
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 238
    :cond_0
    :try_start_0
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 239
    .local v0, block:I
    const/16 v5, 0xff

    if-gt v0, v5, :cond_1

    if-gez v0, :cond_2

    :cond_1
    move v5, v6

    .line 252
    .end local v0           #block:I
    :goto_1
    return v5

    .line 242
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/NumberFormatException;
    move v5, v6

    .line 243
    goto :goto_1

    .line 246
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #block:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 248
    add-int/lit8 v4, v2, 0x1

    .line 249
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0

    .line 252
    .end local v0           #block:I
    :cond_3
    const/4 v5, 0x4

    if-ne v3, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_1
.end method

.method private refreshWifiInfo()V
    .locals 15

    .prologue
    .line 312
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 313
    .local v7, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 315
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v8, "mac_address"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 316
    .local v6, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v4, :cond_2

    const/4 v8, 0x0

    move-object v3, v8

    .line 317
    .local v3, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    move-object v8, v3

    :goto_1
    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    const-string v8, "current_ip_address"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 321
    .local v5, wifiIpAddressPref:Landroid/preference/Preference;
    const/4 v2, 0x0

    .line 322
    .local v2, ipAddress:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 323
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v8

    int-to-long v0, v8

    .line 324
    .local v0, addr:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_1

    .line 326
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gez v8, :cond_0

    const-wide v8, 0x100000000L

    add-long/2addr v0, v8

    .line 327
    :cond_0
    const-string v8, "%d.%d.%d.%d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide/16 v11, 0xff

    and-long/2addr v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0x8

    shr-long v11, v0, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/16 v11, 0x10

    shr-long v11, v0, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/16 v11, 0x18

    shr-long v11, v0, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 331
    .end local v0           #addr:J
    :cond_1
    if-nez v2, :cond_4

    const v8, 0x7f080242

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    return-void

    .line 316
    .end local v2           #ipAddress:Ljava/lang/String;
    .end local v3           #macAddress:Ljava/lang/String;
    .end local v5           #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_2
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    goto :goto_0

    .line 317
    .restart local v3       #macAddress:Ljava/lang/String;
    :cond_3
    const v8, 0x7f080242

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .restart local v2       #ipAddress:Ljava/lang/String;
    .restart local v5       #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_4
    move-object v8, v2

    .line 331
    goto :goto_2
.end method

.method private updateSettingsProvider()V
    .locals 5

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 302
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v3, "wifi_use_static_ip"

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 306
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 307
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 302
    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 309
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method private updateUi()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 288
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    const-string v5, "wifi_use_static_ip"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 291
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 292
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 293
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, settingValue:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    .end local v3           #settingValue:Ljava/lang/String;
    :cond_0
    move v5, v6

    .line 288
    goto :goto_0

    .line 297
    .restart local v1       #i:I
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v3, 0x7f040032

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AdvancedSettings;->addPreferencesFromResource(I)V

    .line 71
    const-string v3, "use_static_ip"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    .line 72
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 76
    .local v2, preference:Landroid/preference/Preference;
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v2           #preference:Landroid/preference/Preference;
    :cond_0
    const-string v3, "ro.debuggable"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/wifi/AdvancedSettings;->DEBUGGABLE:I

    .line 85
    sget v3, Lcom/android/settings/wifi/AdvancedSettings;->DEBUGGABLE:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 91
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->initNumChannelsPreference()V

    .line 98
    :cond_1
    :goto_1
    return-void

    .line 93
    :cond_2
    const-string v3, "num_channels"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 94
    .local v0, chanPref:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 258
    const/4 v0, 0x1

    const v1, 0x7f08018e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 261
    const/4 v0, 0x2

    const v1, 0x7f08018f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 264
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 161
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateSettingsProvider()V

    .line 165
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 270
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 282
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 273
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateSettingsProvider()V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->finish()V

    move v0, v1

    .line 275
    goto :goto_0

    .line 278
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->finish()V

    move v0, v1

    .line 279
    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v9, 0x7f080186

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 169
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, key:Ljava/lang/String;
    if-nez v3, :cond_0

    move v7, v11

    .line 222
    .end local p2
    :goto_0
    return v7

    .line 172
    .restart local p2
    :cond_0
    const-string v7, "num_channels"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 174
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 175
    .local v4, numChannels:I
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 176
    .local v6, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Landroid/net/wifi/WifiManager;->setNumAllowedChannels(IZ)Z

    move-result v7

    if-nez v7, :cond_1

    .line 177
    const v7, 0x7f080186

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #numChannels:I
    .end local v6           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_1
    move v7, v11

    .line 222
    goto :goto_0

    .line 180
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 181
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    move v7, v10

    .line 183
    goto :goto_0

    .line 186
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_2
    const-string v7, "sleep_policy"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 188
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_sleep_policy"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 190
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 191
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const v7, 0x7f08018a

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    move v7, v10

    .line 193
    goto :goto_0

    .line 196
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_3
    const-string v7, "use_static_ip"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 197
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 200
    .local v5, value:Z
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_use_static_ip"

    if-eqz v5, :cond_4

    move v9, v11

    :goto_2
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 202
    :catch_2
    move-exception v7

    move-object v1, v7

    .restart local v1       #e:Ljava/lang/NumberFormatException;
    move v7, v10

    .line 203
    goto :goto_0

    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_4
    move v9, v10

    .line 200
    goto :goto_2

    .line 206
    .end local v5           #value:Z
    .restart local p2
    :cond_5
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 208
    .local v5, value:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/AdvancedSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 209
    const v7, 0x7f080190

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    move v7, v10

    .line 210
    goto/16 :goto_0

    .line 213
    :cond_6
    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_1

    .line 215
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 214
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->updateUi()V

    .line 109
    sget v0, Lcom/android/settings/wifi/AdvancedSettings;->DEBUGGABLE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->initNumChannelsPreference()V

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->initSleepPolicyPreference()V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->refreshWifiInfo()V

    .line 114
    return-void
.end method
