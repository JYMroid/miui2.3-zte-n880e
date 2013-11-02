.class public Lcom/android/phone/MobileNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final BUTTON_DATA_ENABLED_KEY:Ljava/lang/String; = "button_data_enabled_key"

.field private static final BUTTON_DATA_USAGE_KEY:Ljava/lang/String; = "button_data_usage_key"

.field private static final BUTTON_GPRS_KEY:Ljava/lang/String; = "button_gprs_key"

.field private static final BUTTON_MANAGE_SUB_KEY:Ljava/lang/String; = "button_settings_manage_sub"

.field private static final BUTTON_MANAGE_SUB_KEY_1:Ljava/lang/String; = "button_settings_manage_sub_1"

.field private static final BUTTON_MANAGE_SUB_KEY_2:Ljava/lang/String; = "button_settings_manage_sub_2"

.field private static final BUTTON_ROAMING_KEY:Ljava/lang/String; = "button_roaming_key"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MobileNetworkSettings"

.field public static final SUBSCRIPTION_ID:Ljava/lang/String; = "SUBSCRIPTION_ID"


# instance fields
.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonDataUsage:Landroid/preference/Preference;

.field private mButtonGprs:Landroid/preference/CheckBoxPreference;

.field private mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field private mGprsCancelClicked:Z

.field private mGprsCancelDialog:Landroid/app/Dialog;

.field private mGprsOkClicked:Z

.field private mGprsOkDialog:Landroid/app/Dialog;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mResources:[I

.field private mSubscription:I

.field private manageSub1:Landroid/preference/PreferenceScreen;

.field private manageSub2:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsOkDialog:Landroid/app/Dialog;

    .line 72
    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsCancelDialog:Landroid/app/Dialog;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MobileNetworkSettings;->mSubscription:I

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mResources:[I

    return-void

    :array_0
    .array-data 0x4
        0x13t 0x0t 0x5t 0x7ft
        0x14t 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 355
    const-string v0, "MobileNetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const-string v5, "moblie_data_enabled"

    const-string v3, "MobileNetworkSettings"

    .line 97
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsOkDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 98
    const-string v0, "MobileNetworkSettings"

    const-string v0, "onClick() dialog == mGprsOkDialog"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    if-ne p2, v1, :cond_0

    .line 100
    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsOkClicked:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "moblie_data_enabled"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    const-string v0, "MobileNetworkSettings"

    const-string v0, "onClick() dialog == mGprsOkDialog which == DialogInterface.BUTTON1"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v0, "MobileNetworkSettings"

    const-string v0, "onClick() dialog == mGprsOkDialog which != DialogInterface.BUTTON1"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGprs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsCancelDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    .line 110
    const-string v0, "MobileNetworkSettings"

    const-string v0, "onClick() dialog == mGprsCancelDialog"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    if-ne p2, v1, :cond_2

    .line 112
    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsCancelClicked:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "moblie_data_enabled"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    const-string v0, "MobileNetworkSettings"

    const-string v0, "onClick() dialog == mGprsCancelDialog which == DialogInterface.BUTTON1"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_2
    const-string v0, "MobileNetworkSettings"

    const-string v0, "onClick() dialog == mGprsCancelDialog which != DialogInterface.BUTTON1"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGprs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 123
    :cond_3
    if-ne p2, v1, :cond_4

    .line 124
    const-string v0, "onClick setDataRoamingEnabled"

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 126
    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    goto :goto_0

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, "button_gprs_key"

    const-string v11, "button_data_enabled_key"

    const-string v8, "SUBSCRIPTION_ID"

    .line 235
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 237
    const-string v6, "onCreate"

    invoke-static {v6}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "RESOURCE_INDEX"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 244
    .local v4, resIndex:I
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mResources:[I

    array-length v6, v6

    if-ge v4, v6, :cond_0

    .line 245
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mResources:[I

    aget v6, v6, v4

    invoke-virtual {p0, v6}, Lcom/android/phone/MobileNetworkSettings;->addPreferencesFromResource(I)V

    .line 250
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 253
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 255
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const-string v6, "button_data_enabled_key"

    invoke-virtual {v3, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 256
    const-string v6, "button_roaming_key"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 258
    const-string v6, "button_settings_manage_sub"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 259
    .local v2, manageSub:Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_1

    .line 260
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 261
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "PACKAGE"

    const-string v7, "com.android.phone"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v6, "TARGET_CLASS"

    const-string v7, "com.android.phone.Settings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v6, "button_settings_manage_sub_1"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->manageSub1:Landroid/preference/PreferenceScreen;

    .line 266
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->manageSub1:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_2

    .line 267
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->manageSub1:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "SUBSCRIPTION_ID"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    :cond_2
    const-string v6, "button_settings_manage_sub_2"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->manageSub2:Landroid/preference/PreferenceScreen;

    .line 273
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->manageSub2:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_3

    .line 274
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->manageSub2:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "SUBSCRIPTION_ID"

    invoke-virtual {v6, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    :cond_3
    const-string v6, "button_gprs_key"

    invoke-virtual {p0, v12}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    const-string v7, "button_data_enabled_key"

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 282
    const-string v6, "button_gprs_key"

    invoke-virtual {v3, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGprs:Landroid/preference/CheckBoxPreference;

    .line 283
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGprs:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "moblie_data_enabled"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v7, v10

    :goto_0
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 290
    const-string v6, "throttle"

    invoke-virtual {p0, v6}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ThrottleManager;

    .line 291
    .local v5, tm:Landroid/net/ThrottleManager;
    new-instance v6, Lcom/android/phone/DataUsageListener;

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-direct {v6, p0, v7, v3}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 293
    const-string v6, "category_data_settings"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 294
    .local v1, localDateSettingCategory:Landroid/preference/PreferenceCategory;
    const-string v6, "button_data_usage_key"

    invoke-virtual {p0, v6}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 296
    return-void

    .end local v1           #localDateSettingCategory:Landroid/preference/PreferenceCategory;
    .end local v5           #tm:Landroid/net/ThrottleManager;
    :cond_4
    move v7, v9

    .line 283
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsOkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 302
    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsOkDialog:Landroid/app/Dialog;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsCancelDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsCancelDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 306
    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsCancelDialog:Landroid/app/Dialog;

    .line 308
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 309
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    const-string v2, "MobileNetworkSettings"

    .line 136
    const-string v0, "MobileNetworkSettings"

    const-string v0, "onDismiss()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsOkDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 138
    const-string v0, "MobileNetworkSettings"

    const-string v0, "onDismiss() dialog == mGprsOkDialog"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsOkClicked:Z

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGprs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 141
    const-string v0, "MobileNetworkSettings"

    const-string v0, "onDismiss() dialog == mGprsOkDialog mGprsOkClicked == false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsCancelDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 146
    const-string v0, "MobileNetworkSettings"

    const-string v0, "onDismiss() dialog == mGprsCancelDialog"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsCancelClicked:Z

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGprs:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    const-string v0, "MobileNetworkSettings"

    const-string v0, "onDismiss() dialog == mGprsCancelDialog mGprsCancelClicked == false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 350
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 351
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    .line 352
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v7, 0x1080027

    const v6, 0x1040013

    const v5, 0x1040009

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 167
    const-string v1, "onPreferenceTreeClick: preference = mButtonDataRoam"

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iput-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 173
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_0
    move v1, v4

    .line 230
    :goto_1
    return v1

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 186
    const-string v1, "onPreferenceTreeClick: preference = mButtonDataEnabled"

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 187
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 190
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    move v1, v4

    .line 191
    goto :goto_1

    .line 194
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGprs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 195
    const-string v1, "MobileNetworkSettings"

    const-string v2, "onPreferenceTreeClick() preference == mButtonGprs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGprs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    iput-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsOkClicked:Z

    .line 198
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsOkDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    .line 199
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 200
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsOkDialog:Landroid/app/Dialog;

    .line 202
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0340

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c033e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsOkDialog:Landroid/app/Dialog;

    .line 209
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 210
    const-string v1, "MobileNetworkSettings"

    const-string v2, "onPreferenceTreeClick() preference == mButtonGprs mButtonGprs.isChecked() == true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v1, v4

    .line 227
    goto :goto_1

    .line 212
    :cond_4
    iput-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsCancelClicked:Z

    .line 213
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsCancelDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_5

    .line 214
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsCancelDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 215
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsCancelDialog:Landroid/app/Dialog;

    .line 217
    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0341

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c033f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsCancelDialog:Landroid/app/Dialog;

    .line 224
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsCancelDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 225
    const-string v1, "MobileNetworkSettings"

    const-string v2, "onPreferenceTreeClick() preference == mButtonGprs mButtonGprs.isChecked() == false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move v1, v3

    .line 230
    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 313
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 317
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 319
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 322
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 326
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 327
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v2}, Lcom/android/phone/DataUsageListener;->resume()V

    .line 329
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 330
    .local v1, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getCurrentSubscriptions()Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    .line 331
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->manageSub1:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    if-ne v2, v6, :cond_2

    .line 333
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->manageSub1:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 338
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->manageSub2:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mCurrentSelSub:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    if-ne v2, v6, :cond_3

    .line 340
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->manageSub2:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 346
    :cond_1
    :goto_1
    return-void

    .line 335
    :cond_2
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->manageSub1:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 342
    :cond_3
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->manageSub2:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method
