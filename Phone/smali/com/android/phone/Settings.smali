.class public Lcom/android/phone/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Settings$1;,
        Lcom/android/phone/Settings$MyHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_APN_EXPAND_KEY:Ljava/lang/String; = "button_apn_key"

.field private static final BUTTON_PREFERED_NETWORK_MODE:Ljava/lang/String; = "preferred_network_mode_key"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSettings"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x11

.field public static final SUBSCRIPTION:Ljava/lang/String; = "SUBSCRIPTION_ID"

.field private static final iface:Ljava/lang/String; = "rmnet0"

.field static final preferredNetworkMode:I = 0x4


# instance fields
.field private mButtonAPNExpand:Landroid/preference/PreferenceScreen;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mHandler:Lcom/android/phone/Settings$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSubscription:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 297
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 3
    .parameter "NetworkMode"

    .prologue
    .line 401
    const-string v0, ""

    .line 403
    .local v0, summaryDisplay:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 443
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 445
    :goto_0
    return-void

    .line 406
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0c0306

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 409
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0c0307

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 412
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0c0308

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 415
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0c0309

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 418
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0c030a

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 421
    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0c030b

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 424
    :pswitch_6
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0c030c

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 427
    :pswitch_7
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0c030e

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 430
    :pswitch_8
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0c030f

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 433
    :pswitch_9
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0c0310

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 436
    :pswitch_a
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0c030d

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 439
    :pswitch_b
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v2, 0x7f0c0311

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/Settings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/phone/Settings;->getPreferredNetworkMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/Settings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->setPreferredNetworkMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/Settings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getPreferredNetworkMode()I
    .locals 5

    .prologue
    .line 279
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    iget v4, p0, Lcom/android/phone/Settings;->mSubscription:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 287
    .local v0, nwMode:I
    :goto_0
    return v0

    .line 283
    .end local v0           #nwMode:I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 284
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-static {v2}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 285
    const/4 v0, 0x4

    .restart local v0       #nwMode:I
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 467
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void
.end method

.method private setPreferredNetworkMode(I)V
    .locals 3
    .parameter "nwMode"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    iget v2, p0, Lcom/android/phone/Settings;->mSubscription:I

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 295
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 449
    packed-switch p1, :pswitch_data_0

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 451
    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 453
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/Settings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v9, "Unexpected phone type: "

    const-string v8, "SUBSCRIPTION_ID"

    .line 117
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v3, 0x7f050017

    invoke-virtual {p0, v3}, Lcom/android/phone/Settings;->addPreferencesFromResource(I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "SUBSCRIPTION_ID"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v4

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/Settings;->mSubscription:I

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings onCreate subscription ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/Settings;->mSubscription:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 123
    iget v3, p0, Lcom/android/phone/Settings;->mSubscription:I

    invoke-static {v3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 124
    new-instance v3, Lcom/android/phone/Settings$MyHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/phone/Settings$MyHandler;-><init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V

    iput-object v3, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    .line 127
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 129
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "preferred_network_mode_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 132
    const-string v3, "button_apn_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/Settings;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    .line 133
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "SUBSCRIPTION_ID"

    iget v4, p0, Lcom/android/phone/Settings;->mSubscription:I

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string v3, "ro.config.svlte1x"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ro.config.ehrpd"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    :cond_0
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-ne v3, v6, :cond_5

    .line 141
    const-string v3, "ro.monkey"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    :goto_0
    return-void

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 152
    .local v2, settingsNetworkMode:I
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 157
    .local v0, phoneType:I
    if-ne v0, v7, :cond_3

    .line 158
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 159
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v4, 0x7f06000e

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 160
    new-instance v3, Lcom/android/phone/CdmaOptions;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v3, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    goto :goto_0

    .line 161
    :cond_3
    if-ne v0, v6, :cond_4

    .line 162
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v4, 0x7f06000b

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 163
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v4, 0x7f06000c

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 164
    new-instance v3, Lcom/android/phone/GsmUmtsOptions;

    iget v4, p0, Lcom/android/phone/Settings;->mSubscription:I

    invoke-direct {v3, p0, v1, v4}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v3, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    goto :goto_0

    .line 170
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    .end local v0           #phoneType:I
    .end local v2           #settingsNetworkMode:I
    :cond_5
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 177
    .restart local v0       #phoneType:I
    if-ne v0, v7, :cond_6

    .line 178
    new-instance v3, Lcom/android/phone/CdmaOptions;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v3, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    goto/16 :goto_0

    .line 179
    :cond_6
    if-ne v0, v6, :cond_7

    .line 180
    new-instance v3, Lcom/android/phone/GsmUmtsOptions;

    iget v4, p0, Lcom/android/phone/Settings;->mSubscription:I

    invoke-direct {v3, p0, v1, v4}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v3, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    goto/16 :goto_0

    .line 182
    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 204
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    .line 215
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    .line 218
    iget-object v5, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 220
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 221
    .local v1, buttonNetworkMode:I
    invoke-direct {p0}, Lcom/android/phone/Settings;->getPreferredNetworkMode()I

    move-result v3

    .line 222
    .local v3, settingsNetworkMode:I
    if-eq v1, v3, :cond_0

    .line 224
    packed-switch v1, :pswitch_data_0

    .line 262
    const/4 v2, 0x4

    .line 264
    .local v2, modemNetworkMode:I
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    .line 265
    invoke-direct {p0, v1}, Lcom/android/phone/Settings;->setPreferredNetworkMode(I)V

    .line 267
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v5, v6}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 273
    .end local v1           #buttonNetworkMode:I
    .end local v2           #modemNetworkMode:I
    .end local v3           #settingsNetworkMode:I
    :cond_0
    return v6

    .line 226
    .restart local v1       #buttonNetworkMode:I
    .restart local v3       #settingsNetworkMode:I
    :pswitch_0
    const/4 v2, 0x7

    .line 227
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 229
    .end local v2           #modemNetworkMode:I
    :pswitch_1
    const/4 v2, 0x6

    .line 230
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 232
    .end local v2           #modemNetworkMode:I
    :pswitch_2
    const/4 v2, 0x5

    .line 233
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 235
    .end local v2           #modemNetworkMode:I
    :pswitch_3
    const/4 v2, 0x4

    .line 236
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 238
    .end local v2           #modemNetworkMode:I
    :pswitch_4
    const/4 v2, 0x3

    .line 239
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 241
    .end local v2           #modemNetworkMode:I
    :pswitch_5
    const/4 v2, 0x2

    .line 242
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 244
    .end local v2           #modemNetworkMode:I
    :pswitch_6
    const/4 v2, 0x1

    .line 245
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 247
    .end local v2           #modemNetworkMode:I
    :pswitch_7
    const/4 v2, 0x0

    .line 248
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 250
    .end local v2           #modemNetworkMode:I
    :pswitch_8
    const/16 v2, 0x8

    .line 251
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 253
    .end local v2           #modemNetworkMode:I
    :pswitch_9
    const/16 v2, 0x9

    .line 254
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 256
    .end local v2           #modemNetworkMode:I
    :pswitch_a
    const/16 v2, 0xa

    .line 257
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 259
    .end local v2           #modemNetworkMode:I
    :pswitch_b
    const/16 v2, 0xb

    .line 260
    .restart local v2       #modemNetworkMode:I
    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 84
    iget-object v1, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v1, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v4

    .line 111
    :goto_0
    return v1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v1, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 89
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iput-object p2, p0, Lcom/android/phone/Settings;->mClickedPreference:Landroid/preference/Preference;

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x11

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    move v1, v4

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v1, :cond_3

    .line 102
    invoke-direct {p0}, Lcom/android/phone/Settings;->getPreferredNetworkMode()I

    move-result v0

    .line 103
    .local v0, settingsNetworkMode:I
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move v1, v4

    .line 104
    goto :goto_0

    .line 109
    .end local v0           #settingsNetworkMode:I
    :cond_3
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v1, v2

    .line 111
    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 189
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 193
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preferred_network_mode_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 199
    :cond_0
    return-void
.end method
