.class public Lcom/android/phone/EmergencyCallHandler;
.super Landroid/app/Activity;
.source "EmergencyCallHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyCallHandler$1;,
        Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;,
        Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final EMERGENCY_CALL_RETRY_KEY:Ljava/lang/String; = "emergency_call_retry_count"

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x64

.field private static final EVENT_TIMEOUT_EMERGENCY_CALL:I = 0xc8

.field public static final INITIAL_ATTEMPT:I = -0x1

.field public static final NUMBER_OF_RETRIES:I = 0x6

.field public static final SUBSCRIPTION:Ljava/lang/String; = "Subscription"

.field private static final TAG:Ljava/lang/String; = "EmergencyCallHandler"

.field public static final TIME_BETWEEN_RETRIES_MS:I = 0x1388

.field private static sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    return-void
.end method

.method private constructDialog(I)Landroid/app/ProgressDialog;
    .locals 4
    .parameter "retryCount"

    .prologue
    .line 237
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const v2, 0x7f0c0200

    move v0, v2

    .line 242
    .local v0, msgId:I
    :goto_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 243
    .local v1, pd:Landroid/app/ProgressDialog;
    const v2, 0x7f0c01ff

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallHandler;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHandler;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 245
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 246
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 247
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 248
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 251
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 253
    return-object v1

    .line 237
    .end local v0           #msgId:I
    .end local v1           #pd:Landroid/app/ProgressDialog;
    :cond_0
    const v2, 0x7f0c0201

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v11, "emergency_call_retry_count"

    const-string v8, "EmergencyCallHandler"

    .line 135
    const-string v6, "EmergencyCallHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate()...  intent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const-string v6, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 148
    const-string v6, "EmergencyCallHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected intent action!  Should be ACTION_CALL_EMERGENCY, but instead got: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 154
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "emergency_call_retry_count"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 157
    .local v4, retryCount:I
    new-instance v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;

    invoke-direct {v0, v10}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;-><init>(Lcom/android/phone/EmergencyCallHandler$1;)V

    .line 158
    .local v0, eci:Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;
    iput-object v3, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 159
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getApplication()Landroid/app/Application;

    move-result-object v6

    iput-object v6, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->app:Landroid/app/Application;

    .line 160
    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHandler;->constructDialog(I)Landroid/app/ProgressDialog;

    move-result-object v6

    iput-object v6, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->dialog:Landroid/app/ProgressDialog;

    .line 165
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    .line 169
    iget-object v6, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    const-string v6, "EmergencyCallHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- initial eci.intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object v6, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    if-nez v6, :cond_1

    .line 174
    new-instance v6, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    invoke-direct {v6, v10}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;-><init>(Lcom/android/phone/EmergencyCallHandler$1;)V

    sput-object v6, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    .line 186
    :cond_1
    if-ne v4, v12, :cond_3

    .line 188
    iget-object v6, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const-string v7, "emergency_call_retry_count"

    const/4 v7, 0x6

    invoke-virtual {v6, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getVoiceSubscriptionInService()I

    move-result v5

    .line 190
    .local v5, sub:I
    iget-object v6, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const-string v7, "Subscription"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v6, "EmergencyCallHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempting emergency call on sub :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v6, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    const/16 v7, 0x64

    invoke-interface {v3, v6, v7, v0}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_2

    .line 201
    const-string v6, "EmergencyCallHandler"

    const-string v6, "Turning off airplane mode..."

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "state"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyCallHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    .end local v1           #intent:Landroid/content/Intent;
    .end local v5           #sub:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->finish()V

    .line 230
    return-void

    .line 214
    .restart local v5       #sub:I
    :cond_2
    const-string v6, "EmergencyCallHandler"

    const-string v6, "Manually powering radio on..."

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v6, 0x1

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0

    .line 220
    .end local v5           #sub:I
    :cond_3
    const-string v6, "EmergencyCallHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry attempt...  retryCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v6, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const-string v7, "emergency_call_retry_count"

    const/4 v7, 0x1

    sub-int v7, v4, v7

    invoke-virtual {v6, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    sget-object v6, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    const/16 v7, 0xc8

    invoke-virtual {v6, v7}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 226
    .local v2, m:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    sget-object v6, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v2, v7, v8}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 260
    const-string v0, "EmergencyCallHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected call to onNewIntent(): intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 262
    return-void
.end method
