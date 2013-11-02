.class public Lcom/android/phone/SmartIpDialSettings;
.super Landroid/preference/PreferenceActivity;
.source "SmartIpDialSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final AREA_CODE_KEY:Ljava/lang/String; = "button_area_code_key"

.field private static DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SmartIpDialSettings"

.field private static final PHONE_AREA_CODE_ARRAY:[Ljava/lang/String; = null

.field private static final SET_IP_NUMBER_KEY:Ljava/lang/String; = "button_set_ip_number_key"

.field private static final SMART_IP_DIAL_ENABLE_ARRAY:[Ljava/lang/String; = null

.field private static final SMART_IP_DIAL_NUMBER_ARRAY:[Ljava/lang/String; = null

.field private static final SMART_IP_DIAL_SWITCH_KEY:Ljava/lang/String; = "button_smart_ip_dial_switch_key"

.field private static final TEXT_TYPE_AREA_CODE:I = 0x0

.field private static final TEXT_TYPE_SMART_IP:I = 0x1


# instance fields
.field private mAreaCode:Landroid/preference/EditTextPreference;

.field private mEnableSmartIpDial:Landroid/preference/CheckBoxPreference;

.field private mOkClicked:Z

.field private mOkDialog:Landroid/app/Dialog;

.field private mSmartIpNumber:Landroid/preference/EditTextPreference;

.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 34
    sput-boolean v2, Lcom/android/phone/SmartIpDialSettings;->DBG:Z

    .line 43
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "telecom_phone_area_code_first"

    aput-object v1, v0, v3

    const-string v1, "telecom_phone_area_code_second"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/SmartIpDialSettings;->PHONE_AREA_CODE_ARRAY:[Ljava/lang/String;

    .line 44
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "telecom_smart_ip_dial_number_first"

    aput-object v1, v0, v3

    const-string v1, "telecom_smart_ip_dial_number_second"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/SmartIpDialSettings;->SMART_IP_DIAL_NUMBER_ARRAY:[Ljava/lang/String;

    .line 45
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "telecom_smart_dial_enable_first"

    aput-object v1, v0, v3

    const-string v1, "telecom_smart_dial_enable_second"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/SmartIpDialSettings;->SMART_IP_DIAL_ENABLE_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private checkNull(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 163
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    :cond_0
    if-nez p2, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c03e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 169
    :cond_1
    if-ne v1, p2, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c03e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c03ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_3
    if-nez p2, :cond_4

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_4
    if-ne v1, p2, :cond_5

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, p1

    .line 190
    goto :goto_0
.end method

.method private checkNullOrdinary(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 150
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mOkDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public static dispInfo(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resID"

    .prologue
    .line 373
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 374
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 375
    return-void
.end method

.method public static dispInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    .line 367
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 368
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 369
    return-void
.end method

.method private getlocal(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "number"

    .prologue
    const-string v11, "SmartIpDialSettings"

    .line 321
    const-string v6, ""

    .line 322
    .local v6, areaCode:Ljava/lang/String;
    const-string v0, "content://zte.com.cn.providers.numberlocatorprovider/location"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 326
    .local v1, numlocatorUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 330
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 332
    if-eqz v9, :cond_2

    .line 334
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "areacode"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 338
    .local v8, areaCodeColumn:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 354
    .end local v8           #areaCodeColumn:I
    :cond_0
    if-eqz v9, :cond_1

    .line 356
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_1
    :goto_0
    const-string v0, "SmartIpDialSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "areaCode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 362
    .end local v6           #areaCode:Ljava/lang/String;
    .local v7, areaCode:Ljava/lang/String;
    :goto_1
    return-object v7

    .line 343
    .end local v7           #areaCode:Ljava/lang/String;
    .restart local v6       #areaCode:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, "SmartIpDialSettings"

    const-string v2, "cursor == null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 354
    if-eqz v9, :cond_3

    .line 356
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, v6

    .end local v6           #areaCode:Ljava/lang/String;
    .restart local v7       #areaCode:Ljava/lang/String;
    goto :goto_1

    .line 347
    .end local v7           #areaCode:Ljava/lang/String;
    .restart local v6       #areaCode:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 349
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    if-eqz v9, :cond_1

    .line 356
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 354
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_4

    .line 356
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 232
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 234
    iput-boolean v3, p0, Lcom/android/phone/SmartIpDialSettings;->mOkClicked:Z

    .line 235
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/SmartIpDialSettings;->SMART_IP_DIAL_ENABLE_ARRAY:[Ljava/lang/String;

    iget v2, p0, Lcom/android/phone/SmartIpDialSettings;->mSubscription:I

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    iget-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mEnableSmartIpDial:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c03e9

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mEnableSmartIpDial:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f05001e

    invoke-virtual {p0, v0}, Lcom/android/phone/SmartIpDialSettings;->addPreferencesFromResource(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SUBSCRIPTION_ID"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/SmartIpDialSettings;->mSubscription:I

    .line 70
    const-string v0, "SmartIpDialSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/SmartIpDialSettings;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget v0, p0, Lcom/android/phone/SmartIpDialSettings;->mSubscription:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 74
    iput v3, p0, Lcom/android/phone/SmartIpDialSettings;->mSubscription:I

    .line 77
    :cond_0
    const-string v0, "button_area_code_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/SmartIpDialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mAreaCode:Landroid/preference/EditTextPreference;

    .line 78
    iget-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    const-string v0, "button_set_ip_number_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/SmartIpDialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mSmartIpNumber:Landroid/preference/EditTextPreference;

    .line 81
    iget-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mSmartIpNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    const-string v0, "button_smart_ip_dial_switch_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/SmartIpDialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mEnableSmartIpDial:Landroid/preference/CheckBoxPreference;

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/phone/SmartIpDialSettings;->dismissDialog()V

    .line 257
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 258
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/phone/SmartIpDialSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mEnableSmartIpDial:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 252
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "SmartIpDialSettings"

    const-string v8, ""

    .line 262
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mAreaCode:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_4

    .line 264
    const-string v0, ""

    .line 266
    .local v0, checkedNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, strAreaCode:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/SmartIpDialSettings;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SmartIpDialSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EditText strAreaCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 272
    invoke-direct {p0, v1}, Lcom/android/phone/SmartIpDialSettings;->getlocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    sget-boolean v3, Lcom/android/phone/SmartIpDialSettings;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "SmartIpDialSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkedNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/SmartIpDialSettings;->PHONE_AREA_CODE_ARRAY:[Ljava/lang/String;

    iget v5, p0, Lcom/android/phone/SmartIpDialSettings;->mSubscription:I

    aget-object v4, v4, v5

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 279
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v0, v6}, Lcom/android/phone/SmartIpDialSettings;->checkNull(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 296
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->updateSmartIpSwitchState()V

    move v3, v7

    .line 315
    .end local v0           #checkedNumber:Ljava/lang/String;
    .end local v1           #strAreaCode:Ljava/lang/String;
    :goto_1
    return v3

    .line 283
    .restart local v0       #checkedNumber:Ljava/lang/String;
    .restart local v1       #strAreaCode:Ljava/lang/String;
    :cond_2
    const v3, 0x7f0c03ed

    invoke-static {p0, v3}, Lcom/android/phone/SmartIpDialSettings;->dispInfo(Landroid/content/Context;I)V

    .line 285
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/SmartIpDialSettings;->PHONE_AREA_CODE_ARRAY:[Ljava/lang/String;

    iget v5, p0, Lcom/android/phone/SmartIpDialSettings;->mSubscription:I

    aget-object v4, v4, v5

    const-string v5, ""

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 286
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mAreaCode:Landroid/preference/EditTextPreference;

    const-string v4, ""

    invoke-direct {p0, v8, v6}, Lcom/android/phone/SmartIpDialSettings;->checkNull(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 291
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/SmartIpDialSettings;->PHONE_AREA_CODE_ARRAY:[Ljava/lang/String;

    iget v5, p0, Lcom/android/phone/SmartIpDialSettings;->mSubscription:I

    aget-object v4, v4, v5

    const-string v5, ""

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1, v6}, Lcom/android/phone/SmartIpDialSettings;->checkNull(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 301
    .end local v0           #checkedNumber:Ljava/lang/String;
    .end local v1           #strAreaCode:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mSmartIpNumber:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_6

    .line 303
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mSmartIpNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, strSmartIpNumber:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/SmartIpDialSettings;->SMART_IP_DIAL_NUMBER_ARRAY:[Ljava/lang/String;

    iget v5, p0, Lcom/android/phone/SmartIpDialSettings;->mSubscription:I

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 306
    sget-boolean v3, Lcom/android/phone/SmartIpDialSettings;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "SmartIpDialSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strSmartIpNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_5
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mSmartIpNumber:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v2, v7}, Lcom/android/phone/SmartIpDialSettings;->checkNull(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->updateSmartIpSwitchState()V

    move v3, v7

    .line 312
    goto/16 :goto_1

    .end local v2           #strSmartIpNumber:Ljava/lang/String;
    :cond_6
    move v3, v6

    .line 315
    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 199
    iget-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mEnableSmartIpDial:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mEnableSmartIpDial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iput-boolean v3, p0, Lcom/android/phone/SmartIpDialSettings;->mOkClicked:Z

    .line 204
    iget-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/SmartIpDialSettings;->dismissDialog()V

    .line 205
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c03eb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c03c6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mOkDialog:Landroid/app/Dialog;

    .line 212
    iget-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 221
    :cond_1
    :goto_0
    return v3

    .line 216
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/SmartIpDialSettings;->SMART_IP_DIAL_ENABLE_ARRAY:[Ljava/lang/String;

    iget v2, p0, Lcom/android/phone/SmartIpDialSettings;->mSubscription:I

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    iget-object v0, p0, Lcom/android/phone/SmartIpDialSettings;->mEnableSmartIpDial:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c03ea

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, "SmartIpDialSettings"

    .line 90
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 92
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mAreaCode:Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/SmartIpDialSettings;->PHONE_AREA_CODE_ARRAY:[Ljava/lang/String;

    iget v5, p0, Lcom/android/phone/SmartIpDialSettings;->mSubscription:I

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, strAreaCode:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/SmartIpDialSettings;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SmartIpDialSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on Resume,strAreaCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mAreaCode:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/phone/SmartIpDialSettings;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/android/phone/SmartIpDialSettings;->checkNull(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    .end local v1           #strAreaCode:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mSmartIpNumber:Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/SmartIpDialSettings;->SMART_IP_DIAL_NUMBER_ARRAY:[Ljava/lang/String;

    iget v5, p0, Lcom/android/phone/SmartIpDialSettings;->mSubscription:I

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, strSmartIpNumber:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/SmartIpDialSettings;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "SmartIpDialSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on Resume, strSmartIpNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_2
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mSmartIpNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 108
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mSmartIpNumber:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/phone/SmartIpDialSettings;->mSmartIpNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v8}, Lcom/android/phone/SmartIpDialSettings;->checkNull(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    .end local v2           #strSmartIpNumber:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mEnableSmartIpDial:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_4

    .line 113
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/SmartIpDialSettings;->SMART_IP_DIAL_ENABLE_ARRAY:[Ljava/lang/String;

    iget v5, p0, Lcom/android/phone/SmartIpDialSettings;->mSubscription:I

    aget-object v4, v4, v5

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 116
    .local v0, isChecked:I
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mEnableSmartIpDial:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    move v4, v8

    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 118
    iget-object v3, p0, Lcom/android/phone/SmartIpDialSettings;->mEnableSmartIpDial:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    const v4, 0x7f0c03e9

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 122
    sget-boolean v3, Lcom/android/phone/SmartIpDialSettings;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "SmartIpDialSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEnableSmartIpDial status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v0           #isChecked:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->updateSmartIpSwitchState()V

    .line 128
    return-void

    .restart local v0       #isChecked:I
    :cond_5
    move v4, v6

    .line 116
    goto :goto_0

    .line 118
    :cond_6
    const v4, 0x7f0c03ea

    goto :goto_1
.end method

.method public updateSmartIpSwitchState()V
    .locals 6

    .prologue
    const-string v5, "SmartIpDialSettings"

    .line 132
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/SmartIpDialSettings;->PHONE_AREA_CODE_ARRAY:[Ljava/lang/String;

    iget v4, p0, Lcom/android/phone/SmartIpDialSettings;->mSubscription:I

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, strAreaCode:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/SmartIpDialSettings;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SmartIpDialSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateState,strAreaCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SmartIpDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/SmartIpDialSettings;->SMART_IP_DIAL_NUMBER_ARRAY:[Ljava/lang/String;

    iget v4, p0, Lcom/android/phone/SmartIpDialSettings;->mSubscription:I

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, strSmartIpNumber:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/SmartIpDialSettings;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "SmartIpDialSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateState, strSmartIpNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/SmartIpDialSettings;->checkNullOrdinary(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/phone/SmartIpDialSettings;->checkNullOrdinary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/android/phone/SmartIpDialSettings;->mEnableSmartIpDial:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_3
    iget-object v2, p0, Lcom/android/phone/SmartIpDialSettings;->mEnableSmartIpDial:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
