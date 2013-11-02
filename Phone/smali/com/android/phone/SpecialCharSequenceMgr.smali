.class public Lcom/android/phone/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# static fields
.field private static final DBG:Z = false

.field private static final MMI_IMEI_DISPLAY:Ljava/lang/String; = "*#06#"

.field private static final TAG:Ljava/lang/String; = "PhoneApp"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 156
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    .line 175
    :goto_0
    return v3

    .line 160
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 161
    .local v2, len:I
    if-le v2, v6, :cond_1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    const/4 v3, 0x0

    sub-int v4, v2, v6

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 164
    .local v0, index:I
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.SimContacts"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    const-string v3, "index"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    .line 172
    goto :goto_0

    .line 173
    .end local v0           #index:I
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    :cond_1
    move v3, v5

    .line 175
    goto :goto_0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "input"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 2
    .parameter "context"
    .parameter "input"
    .parameter "pukInputActivity"

    .prologue
    .line 88
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, dialString:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0, p2}, Lcom/android/phone/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    :cond_0
    const/4 v1, 0x1

    .line 97
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handleCharsForLockedDevice(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 2
    .parameter "context"
    .parameter "input"
    .parameter "pukInputActivity"

    .prologue
    .line 112
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, dialString:Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/android/phone/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const/4 v1, 0x1

    .line 124
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v2, 0x1

    .line 228
    const-string v1, "*#06#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 230
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 231
    invoke-static {p0}, Lcom/android/phone/SpecialCharSequenceMgr;->showMEIDPanel(Landroid/content/Context;)V

    move v1, v2

    .line 239
    .end local v0           #phoneType:I
    :goto_0
    return v1

    .line 233
    .restart local v0       #phoneType:I
    :cond_0
    if-ne v0, v2, :cond_1

    .line 234
    invoke-static {p0}, Lcom/android/phone/SpecialCharSequenceMgr;->showIMEIPanel(Landroid/content/Context;)V

    move v1, v2

    .line 235
    goto :goto_0

    .line 239
    .end local v0           #phoneType:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 10
    .parameter "context"
    .parameter "input"
    .parameter "pukInputActivity"

    .prologue
    const-string v9, "**05"

    .line 183
    const-string v7, "**04"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "**05"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_0
    const-string v7, "#"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 185
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 186
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v5, 0x0

    .line 187
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x0

    .line 188
    .local v3, isPukRequired:Z
    const-string v7, "**05"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 194
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 195
    .local v4, numPhones:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 196
    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->isSimPukLocked(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 197
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending PUK on subscription :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/SpecialCharSequenceMgr;->log(Ljava/lang/String;)V

    .line 202
    :cond_1
    if-nez v5, :cond_2

    .line 203
    const-string v7, "No Subscription is PUK-Locked..Using default phone"

    invoke-static {v7}, Lcom/android/phone/SpecialCharSequenceMgr;->log(Ljava/lang/String;)V

    .line 204
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 211
    .end local v1           #i:I
    .end local v4           #numPhones:I
    :cond_2
    :goto_1
    invoke-interface {v5, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v2

    .line 218
    .local v2, isMMIHandled:Z
    if-eqz v2, :cond_3

    const-string v7, "**05"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 219
    invoke-virtual {v0, p2}, Lcom/android/phone/PhoneApp;->setPukEntryActivity(Landroid/app/Activity;)V

    :cond_3
    move v7, v2

    .line 223
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #isMMIHandled:Z
    .end local v3           #isPukRequired:Z
    .end local v5           #phone:Lcom/android/internal/telephony/Phone;
    :goto_2
    return v7

    .line 195
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #i:I
    .restart local v3       #isPukRequired:Z
    .restart local v4       #numPhones:I
    .restart local v5       #phone:Lcom/android/internal/telephony/Phone;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v1           #i:I
    .end local v4           #numPhones:I
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getVoiceSubscription()I

    move-result v6

    .line 209
    .local v6, voiceSub:I
    invoke-static {v6}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    goto :goto_1

    .line 223
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v3           #isPukRequired:Z
    .end local v5           #phone:Lcom/android/internal/telephony/Phone;
    .end local v6           #voiceSub:I
    :cond_6
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v5, 0x4

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 139
    .local v1, len:I
    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    const-string v2, "*#*#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "#*#*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_secret_code://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, v1, v5

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    const/4 v2, 0x1

    .line 146
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 273
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpecialCharSequenceMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method private static showIMEIPanel(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 247
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, imeiStr:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0096

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c004b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 255
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d7

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 256
    return-void
.end method

.method private static showMEIDPanel(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 261
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, meidStr:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0097

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c004b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 269
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d7

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 270
    return-void
.end method
