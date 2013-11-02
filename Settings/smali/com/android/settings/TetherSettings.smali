.class public Lcom/android/settings/TetherSettings;
.super Landroid/preference/PreferenceActivity;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$1;,
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final DIALOG_TETHER_HELP:I = 0x1

.field private static final ENABLE_WIFI_AP:Ljava/lang/String; = "enable_wifi_ap"

.field private static final HELP_PATH:Ljava/lang/String; = "html/%y%z/tethering_help.html"

.field private static final HELP_URL:Ljava/lang/String; = "file:///android_asset/html/%y%z/tethering_%xhelp.html"

.field private static final TETHERING_HELP:Ljava/lang/String; = "tethering_help"

.field private static final USB_HELP_MODIFIER:Ljava/lang/String; = "usb_"

.field private static final USB_TETHER_SETTINGS:Ljava/lang/String; = "usb_tether_settings"

.field private static final WIFI_AP_SETTINGS:Ljava/lang/String; = "wifi_ap_settings"

.field private static final WIFI_HELP_MODIFIER:Ljava/lang/String; = "wifi_"


# instance fields
.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherHelp:Landroid/preference/PreferenceScreen;

.field private mUsbIfaces:Ljava/util/ArrayList;

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mView:Landroid/webkit/WebView;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiApSettings:Landroid/preference/PreferenceScreen;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TetherSettings;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method private findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 313
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 314
    .local v4, iface:Ljava/lang/String;
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 315
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v4

    .line 320
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v8

    .line 314
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 313
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 320
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 199
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 202
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method private updateState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 19
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 210
    const-string v17, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 212
    .local v4, cm:Landroid/net/ConnectivityManager;
    const/16 v16, 0x0

    .line 213
    .local v16, usbTethered:Z
    const/4 v13, 0x0

    .line 214
    .local v13, usbAvailable:Z
    const/4 v14, 0x0

    .line 215
    .local v14, usbError:I
    const/4 v15, 0x0

    .line 216
    .local v15, usbErrored:Z
    const-string v17, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 218
    .local v9, massStorageActive:Z
    move-object/from16 v2, p1

    .local v2, arr$:[Ljava/lang/Object;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/Object;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v10, v2, v6

    .line 219
    .local v10, o:Ljava/lang/Object;
    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 220
    .local v12, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object v3, v0

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v11, v3, v5

    .line 221
    .local v11, regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 222
    const/4 v13, 0x1

    .line 223
    if-nez v14, :cond_0

    .line 224
    invoke-virtual {v4, v12}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v14

    .line 220
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 218
    .end local v11           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_0

    .line 229
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v10           #o:Ljava/lang/Object;
    .end local v12           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v2, p2

    .restart local v2       #arr$:[Ljava/lang/Object;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/Object;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .restart local v6       #i$:I
    :goto_2
    if-ge v6, v7, :cond_5

    aget-object v10, v2, v6

    .line 230
    .restart local v10       #o:Ljava/lang/Object;
    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 231
    .restart local v12       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object v3, v0

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v8, v3

    .restart local v8       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_3
    if-ge v5, v8, :cond_4

    aget-object v11, v3, v5

    .line 232
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/16 v16, 0x1

    .line 231
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 229
    .end local v11           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_2

    .line 235
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v10           #o:Ljava/lang/Object;
    .end local v12           #s:Ljava/lang/String;
    :cond_5
    move-object/from16 v2, p3

    .restart local v2       #arr$:[Ljava/lang/Object;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/Object;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .restart local v6       #i$:I
    :goto_4
    if-ge v6, v7, :cond_8

    aget-object v10, v2, v6

    .line 236
    .restart local v10       #o:Ljava/lang/Object;
    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 237
    .restart local v12       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object v3, v0

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v8, v3

    .restart local v8       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_5
    if-ge v5, v8, :cond_7

    aget-object v11, v3, v5

    .line 238
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/4 v15, 0x1

    .line 237
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 235
    .end local v11           #regex:Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_4

    .line 242
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v10           #o:Ljava/lang/Object;
    .end local v12           #s:Ljava/lang/String;
    :cond_8
    if-eqz v16, :cond_9

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f08029c

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 267
    :goto_6
    return-void

    .line 246
    :cond_9
    if-eqz v13, :cond_b

    .line 247
    if-nez v14, :cond_a

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f08029b

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 252
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_6

    .line 250
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f08029f

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_7

    .line 254
    :cond_b
    if-eqz v15, :cond_c

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f08029f

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_6

    .line 258
    :cond_c
    if-eqz v9, :cond_d

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f08029d

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_6

    .line 263
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f08029e

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_6
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v1, 0x7f04002a

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 80
    const-string v1, "enable_wifi_ap"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 81
    const-string v1, "wifi_ap_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    .line 82
    const-string v1, "usb_tether_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 83
    const-string v1, "tethering_help"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    .line 85
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 88
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 92
    const v1, 0x7f080294

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->setTitle(I)V

    .line 95
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    const v1, 0x7f080293

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->setTitle(I)V

    .line 105
    :cond_2
    :goto_0
    new-instance v1, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 106
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    .line 107
    return-void

    .line 101
    :cond_3
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_2

    .line 103
    const v1, 0x7f080295

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->setTitle(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    const-string v13, "%z"

    const-string v12, "%y"

    const-string v11, ""

    const-string v9, "%x"

    .line 111
    if-ne p1, v10, :cond_5

    .line 112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 115
    .local v3, locale:Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 116
    .local v0, am:Landroid/content/res/AssetManager;
    const-string v7, "html/%y%z/tethering_help.html"

    const-string v8, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, path:Ljava/lang/String;
    const-string v7, "%z"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v13, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 118
    const/4 v6, 0x1

    .line 119
    .local v6, useCountry:Z
    const/4 v2, 0x0

    .line 121
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 125
    if-eqz v2, :cond_0

    .line 127
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 131
    :cond_0
    :goto_0
    const-string v7, "file:///android_asset/html/%y%z/tethering_%xhelp.html"

    const-string v8, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, url:Ljava/lang/String;
    const-string v7, "%z"

    if-eqz v6, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v5, v13, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 133
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-nez v7, :cond_3

    .line 134
    const-string v7, "%x"

    const-string v7, "usb_"

    invoke-virtual {v5, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 143
    :goto_2
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v7, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 145
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0802a0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 151
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #locale:Ljava/util/Locale;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    .end local v6           #useCountry:Z
    :goto_3
    return-object v7

    .line 122
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #locale:Ljava/util/Locale;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v6       #useCountry:Z
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 125
    if-eqz v2, :cond_0

    .line 127
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 128
    :catch_1
    move-exception v7

    goto :goto_0

    .line 125
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_1

    .line 127
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 128
    :cond_1
    :goto_4
    throw v7

    .line 132
    .restart local v5       #url:Ljava/lang/String;
    :cond_2
    const-string v7, ""

    move-object v7, v11

    goto :goto_1

    .line 135
    :cond_3
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-nez v7, :cond_4

    .line 136
    const-string v7, "%x"

    const-string v7, "wifi_"

    invoke-virtual {v5, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 140
    :cond_4
    const-string v7, "%x"

    const-string v7, ""

    invoke-virtual {v5, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 151
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #locale:Ljava/util/Locale;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    .end local v6           #useCountry:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 128
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #locale:Ljava/util/Locale;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v6       #useCountry:Z
    :catch_2
    move-exception v7

    goto/16 :goto_0

    :catch_3
    move-exception v8

    goto :goto_4
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 193
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 196
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v8, 0x7f08029f

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v9, ""

    .line 271
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_6

    .line 272
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 274
    .local v2, newState:Z
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 277
    .local v1, cm:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_3

    .line 278
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, available:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    invoke-direct {p0, v0, v5}, Lcom/android/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, usbIface:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    move v5, v6

    .line 309
    .end local v0           #available:[Ljava/lang/String;
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #newState:Z
    .end local v4           #usbIface:Ljava/lang/String;
    :goto_0
    return v5

    .line 285
    .restart local v0       #available:[Ljava/lang/String;
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    .restart local v2       #newState:Z
    .restart local v4       #usbIface:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 286
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 287
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    move v5, v6

    .line 288
    goto :goto_0

    .line 290
    :cond_1
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v6, ""

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v0           #available:[Ljava/lang/String;
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #newState:Z
    .end local v4           #usbIface:Ljava/lang/String;
    :cond_2
    :goto_1
    move v5, v7

    .line 309
    goto :goto_0

    .line 292
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    .restart local v2       #newState:Z
    :cond_3
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, tethered:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/android/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 295
    .restart local v4       #usbIface:Ljava/lang/String;
    if-nez v4, :cond_4

    .line 296
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    move v5, v6

    .line 297
    goto :goto_0

    .line 299
    :cond_4
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    .line 300
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    move v5, v6

    .line 301
    goto :goto_0

    .line 303
    :cond_5
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v6, ""

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 305
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #newState:Z
    .end local v3           #tethered:[Ljava/lang/String;
    .end local v4           #usbIface:Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    if-ne p2, v5, :cond_2

    .line 307
    invoke-virtual {p0, v6}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 174
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V

    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/TetherSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 180
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 181
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/TetherSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, p0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 188
    return-void
.end method
