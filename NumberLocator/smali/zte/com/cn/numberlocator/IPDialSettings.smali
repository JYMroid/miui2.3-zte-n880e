.class public Lzte/com/cn/numberlocator/IPDialSettings;
.super Landroid/preference/PreferenceActivity;
.source "IPDialSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/numberlocator/IPDialSettings$1;,
        Lzte/com/cn/numberlocator/IPDialSettings$PhonenumberChangedBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final IP_NUMBER:Ljava/lang/String; = "IP_NUMBER"

.field private static final LOCAL_NUMBER:Ljava/lang/String; = "LOCAL_NUMBER"

.field private static final PHONE_NUMBER:Ljava/lang/String; = "PHONE_NUMBER"

.field private static final SMART_IP_DIAL_ENABLED:Ljava/lang/String; = "SMART_IP_DIAL_ENABLED"


# instance fields
.field private ipdial:Landroid/app/AlertDialog;

.field private local:Ljava/lang/String;

.field private mButton1:Landroid/preference/CheckBoxPreference;

.field private mIPNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

.field private mOkClicked:Z

.field private mPhoneNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mb1:Z

.field private mfnum:Ljava/lang/String;

.field private mipnum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 55
    new-instance v0, Lzte/com/cn/numberlocator/IPDialSettings$PhonenumberChangedBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzte/com/cn/numberlocator/IPDialSettings$PhonenumberChangedBroadcastReceiver;-><init>(Lzte/com/cn/numberlocator/IPDialSettings;Lzte/com/cn/numberlocator/IPDialSettings$1;)V

    iput-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 373
    return-void
.end method

.method static synthetic access$100(Lzte/com/cn/numberlocator/IPDialSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->local:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lzte/com/cn/numberlocator/IPDialSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mipnum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lzte/com/cn/numberlocator/IPDialSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private static checkKeyValid(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 86
    const-string v0, "SMART_IP_DIAL_ENABLED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IP_NUMBER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LOCAL_NUMBER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PHONE_NUMBER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-static {p1}, Lzte/com/cn/numberlocator/IPDialSettings;->checkKeyValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    .line 125
    :goto_0
    return-object v0

    .line 99
    :cond_0
    const-string v0, "content://zte.com.cn.providers.numberlocatorprovider/get_value"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 100
    .local v1, url:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 102
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 103
    .local v9, ret:Ljava/lang/String;
    if-nez v6, :cond_1

    move-object v0, v2

    .line 105
    goto :goto_0

    .line 109
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 113
    invoke-interface {v6, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 114
    .local v8, index:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 124
    .end local v8           #index:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    .line 125
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 120
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    const/4 v9, 0x0

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    .line 125
    goto :goto_0

    .line 124
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    .line 125
    goto :goto_0
.end method

.method private getlocal(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    const-string v10, "mq"

    .line 254
    const-string v6, ""

    .line 255
    .local v6, areaCode:Ljava/lang/String;
    const-string v0, "content://zte.com.cn.providers.numberlocatorprovider/location"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 256
    .local v1, numlocatorUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/IPDialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 257
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 258
    const-string v0, "mq"

    const-string v0, "cursor == null"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 283
    .end local v6           #areaCode:Ljava/lang/String;
    .local v7, areaCode:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 261
    .end local v7           #areaCode:Ljava/lang/String;
    .restart local v6       #areaCode:Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    const-string v0, "mq"

    const-string v0, "!cursor.moveToFirst()"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v6

    .line 264
    .end local v6           #areaCode:Ljava/lang/String;
    .restart local v7       #areaCode:Ljava/lang/String;
    goto :goto_0

    .line 266
    .end local v7           #areaCode:Ljava/lang/String;
    .restart local v6       #areaCode:Ljava/lang/String;
    :cond_2
    const-string v0, "areacode"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 280
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

    move-result-object v6

    .line 281
    const-string v0, "mq"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "areaCode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, v6

    .line 283
    .end local v6           #areaCode:Ljava/lang/String;
    .restart local v7       #areaCode:Ljava/lang/String;
    goto :goto_0
.end method

.method public static putValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-static {p1}, Lzte/com/cn/numberlocator/IPDialSettings;->checkKeyValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "content://zte.com.cn.providers.numberlocatorprovider/put_value"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 139
    .local v0, url:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendIntent()V
    .locals 3

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Intent_ACTION_SMART_IP_DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, myNumBroadcast:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/IPDialSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    const-string v1, "mq"

    const-string v2, "sendIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method private setIPNumberSummary()V
    .locals 5

    .prologue
    .line 293
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mipnum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mIPNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    const v1, 0x7f06001b

    invoke-virtual {v0, v1}, Lzte/com/cn/numberlocator/EditTextNumberPreference;->setSummary(I)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mIPNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    const v1, 0x7f06001c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mipnum:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lzte/com/cn/numberlocator/IPDialSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/numberlocator/EditTextNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPhoneNumberSummary()V
    .locals 5

    .prologue
    .line 286
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->local:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mPhoneNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Lzte/com/cn/numberlocator/EditTextNumberPreference;->setSummary(I)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mPhoneNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    const v1, 0x7f06001a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lzte/com/cn/numberlocator/IPDialSettings;->local:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lzte/com/cn/numberlocator/IPDialSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/numberlocator/EditTextNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-string v2, "mq"

    .line 397
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mOkClicked:Z

    .line 399
    const-string v0, "SMART_IP_DIAL_ENABLED"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lzte/com/cn/numberlocator/IPDialSettings;->putValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lzte/com/cn/numberlocator/IPDialSettings;->sendIntent()V

    .line 401
    const-string v0, "mq"

    const-string v0, "mq~~~~DialogInterface.BUTTON1"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :goto_0
    return-void

    .line 403
    :cond_0
    const-string v0, "mq"

    const-string v0, "mq~~~~not DialogInterface.BUTTON1"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 407
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/high16 v3, 0x7f04

    invoke-virtual {p0, v3}, Lzte/com/cn/numberlocator/IPDialSettings;->addPreferencesFromResource(I)V

    .line 60
    const-string v3, "ip_dial1"

    invoke-virtual {p0, v3}, Lzte/com/cn/numberlocator/IPDialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lzte/com/cn/numberlocator/EditTextNumberPreference;

    iput-object v3, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mPhoneNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    .line 61
    iget-object v3, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mPhoneNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    invoke-virtual {v3}, Lzte/com/cn/numberlocator/EditTextNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 62
    .local v2, phoneEdit:Landroid/widget/EditText;
    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 64
    const-string v3, "ip_dial2"

    invoke-virtual {p0, v3}, Lzte/com/cn/numberlocator/IPDialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lzte/com/cn/numberlocator/EditTextNumberPreference;

    iput-object v3, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mIPNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    .line 65
    iget-object v3, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mIPNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    invoke-virtual {v3}, Lzte/com/cn/numberlocator/EditTextNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 66
    .local v1, ipEdit:Landroid/widget/EditText;
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 67
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 68
    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 70
    const-string v3, "button_ipdial_key"

    invoke-virtual {p0, v3}, Lzte/com/cn/numberlocator/IPDialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "Intent_ACTION_SMART_IP_DIAL"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lzte/com/cn/numberlocator/IPDialSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 412
    iget-boolean v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 413
    const-string v0, "mq"

    const-string v1, "mq~~~~onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 415
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 417
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 191
    const-string v0, "mq"

    const-string v1, "**********onPause***********"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/IPDialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 194
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->ipdial:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->ipdial:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 196
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const-string v4, "button_ipdial_key"

    const-string v3, "mq"

    .line 301
    const-string v0, "mq"

    const-string v0, "**********onPreferenceTreeClick***********"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "button_ipdial_key"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    const-string v0, "mq"

    const-string v0, "button_ipdial_key"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 307
    iput-boolean v2, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mOkClicked:Z

    .line 308
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lzte/com/cn/numberlocator/IPDialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

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

    iput-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->ipdial:Landroid/app/AlertDialog;

    .line 315
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->ipdial:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 317
    const-string v0, "mq"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copcheck!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_0
    invoke-direct {p0}, Lzte/com/cn/numberlocator/IPDialSettings;->sendIntent()V

    .line 330
    const/4 v0, 0x1

    .line 371
    :goto_1
    return v0

    .line 319
    :cond_0
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 320
    const-string v0, "SMART_IP_DIAL_ENABLED"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lzte/com/cn/numberlocator/IPDialSettings;->putValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v0, "mq"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copnotcheck!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 371
    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "mq"

    .line 146
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 147
    const-string v0, "mq"

    const-string v0, "**********onResume***********"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/IPDialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 149
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mPhoneNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "LOCAL_NUMBER"

    invoke-static {p0, v0}, Lzte/com/cn/numberlocator/IPDialSettings;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->local:Ljava/lang/String;

    .line 151
    const-string v0, "PHONE_NUMBER"

    invoke-static {p0, v0}, Lzte/com/cn/numberlocator/IPDialSettings;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mfnum:Ljava/lang/String;

    .line 152
    const-string v0, "mq"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mfnum ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mfnum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v0, "mq"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/numberlocator/IPDialSettings;->local:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mPhoneNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    iget-object v1, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mfnum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzte/com/cn/numberlocator/EditTextNumberPreference;->setText(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lzte/com/cn/numberlocator/IPDialSettings;->setPhoneNumberSummary()V

    .line 158
    :cond_0
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mIPNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    if-eqz v0, :cond_1

    .line 159
    const-string v0, "IP_NUMBER"

    invoke-static {p0, v0}, Lzte/com/cn/numberlocator/IPDialSettings;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mipnum:Ljava/lang/String;

    .line 160
    const-string v0, "mq"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mipnum ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mipnum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mIPNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    iget-object v1, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mipnum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzte/com/cn/numberlocator/EditTextNumberPreference;->setText(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lzte/com/cn/numberlocator/IPDialSettings;->setIPNumberSummary()V

    .line 165
    :cond_1
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 166
    const-string v0, "0"

    const-string v1, "SMART_IP_DIAL_ENABLED"

    invoke-static {p0, v1}, Lzte/com/cn/numberlocator/IPDialSettings;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mb1:Z

    .line 167
    const-string v0, "mq"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mb1 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mb1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mb1:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 169
    iget-boolean v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mb1:Z

    if-eqz v0, :cond_5

    .line 170
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 176
    :cond_2
    :goto_1
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->local:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mipnum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 177
    :cond_3
    const-string v0, "mq"

    const-string v0, "setEnabled(false)"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 187
    :goto_2
    return-void

    :cond_4
    move v0, v3

    .line 166
    goto :goto_0

    .line 172
    :cond_5
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 182
    :cond_6
    const-string v0, "mq"

    const-string v0, "setEnabled(true)"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mButton1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 13
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const v11, 0x7f060017

    const/4 v9, 0x0

    const-string v12, "IP_NUMBER"

    const-string v10, "PHONE_NUMBER"

    const-string v8, "mq"

    .line 199
    const-string v6, "mq"

    const-string v6, "**********onSharedPreferenceChanged***********"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v6, "ip_dial1"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 201
    const-string v0, ""

    .line 202
    .local v0, myLocal:Ljava/lang/String;
    iget-object v6, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mPhoneNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    invoke-virtual {v6}, Lzte/com/cn/numberlocator/EditTextNumberPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, num:Ljava/lang/String;
    const-string v6, "mq"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mPhoneNumber text is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 205
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 206
    const-string v6, "mq"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "myLocal "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v1}, Lzte/com/cn/numberlocator/IPDialSettings;->getlocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0, v1}, Lzte/com/cn/numberlocator/IPDialSettings;->getlocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 209
    const-string v6, "PHONE_NUMBER"

    invoke-static {p0, v10}, Lzte/com/cn/numberlocator/IPDialSettings;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, oldNum1:Ljava/lang/String;
    iget-object v6, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mPhoneNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    invoke-virtual {v6, v2}, Lzte/com/cn/numberlocator/EditTextNumberPreference;->setText(Ljava/lang/String;)V

    .line 211
    invoke-static {p0, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 245
    .end local v0           #myLocal:Ljava/lang/String;
    .end local v1           #num:Ljava/lang/String;
    .end local v2           #oldNum1:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 214
    .restart local v0       #myLocal:Ljava/lang/String;
    .restart local v1       #num:Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lzte/com/cn/numberlocator/IPDialSettings;->local:Ljava/lang/String;

    .line 224
    :goto_1
    const-string v6, "mq"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " local text is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lzte/com/cn/numberlocator/IPDialSettings;->local:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v6, "mq"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mfnum text is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mfnum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput-object v1, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mfnum:Ljava/lang/String;

    .line 227
    invoke-direct {p0}, Lzte/com/cn/numberlocator/IPDialSettings;->setPhoneNumberSummary()V

    .line 228
    const-string v6, "PHONE_NUMBER"

    iget-object v6, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mfnum:Ljava/lang/String;

    invoke-static {p0, v10, v6}, Lzte/com/cn/numberlocator/IPDialSettings;->putValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v6, "LOCAL_NUMBER"

    iget-object v7, p0, Lzte/com/cn/numberlocator/IPDialSettings;->local:Ljava/lang/String;

    invoke-static {p0, v6, v7}, Lzte/com/cn/numberlocator/IPDialSettings;->putValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lzte/com/cn/numberlocator/IPDialSettings;->sendIntent()V

    goto :goto_0

    .line 216
    :cond_2
    const-string v6, ""

    iput-object v6, p0, Lzte/com/cn/numberlocator/IPDialSettings;->local:Ljava/lang/String;

    goto :goto_1

    .line 219
    :cond_3
    const-string v6, "PHONE_NUMBER"

    invoke-static {p0, v10}, Lzte/com/cn/numberlocator/IPDialSettings;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, oldNum2:Ljava/lang/String;
    iget-object v6, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mPhoneNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    invoke-virtual {v6, v3}, Lzte/com/cn/numberlocator/EditTextNumberPreference;->setText(Ljava/lang/String;)V

    .line 221
    invoke-static {p0, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 231
    .end local v0           #myLocal:Ljava/lang/String;
    .end local v1           #num:Ljava/lang/String;
    .end local v3           #oldNum2:Ljava/lang/String;
    :cond_4
    const-string v6, "ip_dial2"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 232
    iget-object v6, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mIPNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    invoke-virtual {v6}, Lzte/com/cn/numberlocator/EditTextNumberPreference;->getText()Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, pnum:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 234
    const-string v6, "IP_NUMBER"

    invoke-static {p0, v12}, Lzte/com/cn/numberlocator/IPDialSettings;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, oldNum3:Ljava/lang/String;
    iget-object v6, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mIPNumber:Lzte/com/cn/numberlocator/EditTextNumberPreference;

    invoke-virtual {v6, v4}, Lzte/com/cn/numberlocator/EditTextNumberPreference;->setText(Ljava/lang/String;)V

    .line 236
    const v6, 0x7f060018

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 239
    .end local v4           #oldNum3:Ljava/lang/String;
    :cond_5
    iput-object v5, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mipnum:Ljava/lang/String;

    .line 240
    invoke-direct {p0}, Lzte/com/cn/numberlocator/IPDialSettings;->setIPNumberSummary()V

    .line 241
    const-string v6, "mq"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mIPNumber text is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mipnum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v6, "IP_NUMBER"

    iget-object v6, p0, Lzte/com/cn/numberlocator/IPDialSettings;->mipnum:Ljava/lang/String;

    invoke-static {p0, v12, v6}, Lzte/com/cn/numberlocator/IPDialSettings;->putValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lzte/com/cn/numberlocator/IPDialSettings;->sendIntent()V

    goto/16 :goto_0
.end method
