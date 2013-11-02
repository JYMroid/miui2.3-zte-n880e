.class public Lcom/android/phone/MultiSimDialerActivity;
.super Landroid/app/Activity;
.source "MultiSimDialerActivity.java"


# static fields
.field private static final DBG:Z = true

.field public static final INVALID_SUB:I = 0x63

.field public static final PHONE_SUBSCRIPTION:Ljava/lang/String; = "Subscription"

.field public static final SUB1:I = 0x0

.field public static final SUB2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MultiSimDialerActivity"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCallNumber:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mNumber:Ljava/lang/String;

.field private mPhoneCount:I

.field private mTextNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MultiSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MultiSimDialerActivity;->mPhoneCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MultiSimDialerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/MultiSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MultiSimDialerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/phone/MultiSimDialerActivity;->startOutgoingCall(I)V

    return-void
.end method

.method private getSubscriptionForEmergencyCall()I
    .locals 3

    .prologue
    .line 127
    const-string v1, "MultiSimDialerActivity"

    const-string v2, "emergency call, getVoiceSubscriptionInService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getVoiceSubscriptionInService()I

    move-result v0

    .line 129
    .local v0, sub:I
    return v0
.end method

.method private launchMSDialer()V
    .locals 13

    .prologue
    .line 133
    iget-object v10, p0, Lcom/android/phone/MultiSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    .line 134
    .local v6, isEmergency:Z
    if-eqz v6, :cond_0

    .line 135
    const-string v10, "MultiSimDialerActivity"

    const-string v11, "emergency call"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/android/phone/MultiSimDialerActivity;->getSubscriptionForEmergencyCall()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/phone/MultiSimDialerActivity;->startOutgoingCall(I)V

    .line 221
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v10, p0, Lcom/android/phone/MultiSimDialerActivity;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 141
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f03000a

    const v11, 0x7f070050

    invoke-virtual {p0, v11}, Lcom/android/phone/MultiSimDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v5, v10, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 143
    .local v7, layout:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 145
    new-instance v10, Lcom/android/phone/MultiSimDialerActivity$1;

    invoke-direct {v10, p0}, Lcom/android/phone/MultiSimDialerActivity$1;-><init>(Lcom/android/phone/MultiSimDialerActivity;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/MultiSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 174
    const v10, 0x7f070051

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MultiSimDialerActivity;->mTextNumber:Landroid/widget/TextView;

    .line 175
    iget-object v10, p0, Lcom/android/phone/MultiSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "voicemail"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 176
    .local v9, vm:Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v10, "voicemail"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 177
    iget-object v10, p0, Lcom/android/phone/MultiSimDialerActivity;->mTextNumber:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/phone/MultiSimDialerActivity;->mCallNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "VoiceMail"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const-string v10, "MultiSimDialerActivity"

    const-string v11, "its voicemail!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_1
    const v10, 0x7f070054

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 184
    .local v2, callCancel:Landroid/widget/Button;
    new-instance v10, Lcom/android/phone/MultiSimDialerActivity$2;

    invoke-direct {v10, p0}, Lcom/android/phone/MultiSimDialerActivity$2;-><init>(Lcom/android/phone/MultiSimDialerActivity;)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget v10, p0, Lcom/android/phone/MultiSimDialerActivity;->mPhoneCount:I

    new-array v1, v10, [Landroid/widget/Button;

    .line 192
    .local v1, callButton:[Landroid/widget/Button;
    const/4 v10, 0x2

    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 193
    .local v3, callMark:[I
    const/4 v10, 0x2

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    .line 194
    .local v8, subString:[I
    const/4 v4, 0x0

    .line 195
    .local v4, index:I
    const/4 v4, 0x0

    :goto_2
    iget v10, p0, Lcom/android/phone/MultiSimDialerActivity;->mPhoneCount:I

    if-ge v4, v10, :cond_2

    .line 196
    aget v10, v3, v4

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v4

    .line 197
    aget-object v10, v1, v4

    aget v11, v8, v4

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 198
    aget-object v10, v1, v4

    new-instance v11, Lcom/android/phone/MultiSimDialerActivity$3;

    invoke-direct {v11, p0}, Lcom/android/phone/MultiSimDialerActivity$3;-><init>(Lcom/android/phone/MultiSimDialerActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 180
    .end local v1           #callButton:[Landroid/widget/Button;
    .end local v2           #callCancel:Landroid/widget/Button;
    .end local v3           #callMark:[I
    .end local v4           #index:I
    .end local v8           #subString:[I
    :cond_1
    iget-object v10, p0, Lcom/android/phone/MultiSimDialerActivity;->mTextNumber:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/phone/MultiSimDialerActivity;->mCallNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/MultiSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 214
    .restart local v1       #callButton:[Landroid/widget/Button;
    .restart local v2       #callCancel:Landroid/widget/Button;
    .restart local v3       #callMark:[I
    .restart local v4       #index:I
    .restart local v8       #subString:[I
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getVoiceSubscription()I

    move-result v10

    if-nez v10, :cond_3

    .line 215
    const/4 v10, 0x0

    aget-object v10, v1, v10

    const v11, 0x7f0200ad

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 220
    :goto_3
    iget-object v10, p0, Lcom/android/phone/MultiSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 217
    :cond_3
    const/4 v10, 0x1

    aget-object v10, v1, v10

    const v11, 0x7f0200ad

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    .line 192
    nop

    :array_0
    .array-data 0x4
        0x52t 0x0t 0x7t 0x7ft
        0x53t 0x0t 0x7t 0x7ft
    .end array-data

    .line 193
    :array_1
    .array-data 0x4
        0xc7t 0x2t 0xct 0x7ft
        0xc8t 0x2t 0xct 0x7ft
    .end array-data
.end method

.method private startOutgoingCall(I)V
    .locals 3
    .parameter "subscription"

    .prologue
    const-string v2, "MultiSimDialerActivity"

    .line 234
    iget-object v0, p0, Lcom/android/phone/MultiSimDialerActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "Subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    iget-object v0, p0, Lcom/android/phone/MultiSimDialerActivity;->mIntent:Landroid/content/Intent;

    const-class v1, Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 236
    const-string v0, "MultiSimDialerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startOutgoingCall for sub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MultiSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget v0, p0, Lcom/android/phone/MultiSimDialerActivity;->mPhoneCount:I

    if-ge p1, v0, :cond_0

    .line 238
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/phone/MultiSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MultiSimDialerActivity;->setResult(ILandroid/content/Intent;)V

    .line 243
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/MultiSimDialerActivity;->finish()V

    .line 244
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/MultiSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MultiSimDialerActivity;->setResult(ILandroid/content/Intent;)V

    .line 241
    const-string v0, "MultiSimDialerActivity"

    const-string v0, "call cancelled"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method isInCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .parameter "phone"

    .prologue
    .line 224
    if-eqz p1, :cond_1

    .line 225
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/phone/MultiSimDialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MultiSimDialerActivity;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p0}, Lcom/android/phone/MultiSimDialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MultiSimDialerActivity;->mCallNumber:Ljava/lang/String;

    .line 77
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 119
    const-string v0, "MultiSimDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MultiSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/phone/MultiSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/phone/MultiSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MultiSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 124
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const-string v6, "MultiSimDialerActivity"

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    iput v4, p0, Lcom/android/phone/MultiSimDialerActivity;->mPhoneCount:I

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/MultiSimDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MultiSimDialerActivity;->mIntent:Landroid/content/Intent;

    .line 85
    const-string v4, "MultiSimDialerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MultiSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v4, p0, Lcom/android/phone/MultiSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "phoneNumber"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MultiSimDialerActivity;->mNumber:Ljava/lang/String;

    .line 88
    const-string v4, "MultiSimDialerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNumber "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MultiSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v4, p0, Lcom/android/phone/MultiSimDialerActivity;->mNumber:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 90
    iget-object v4, p0, Lcom/android/phone/MultiSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MultiSimDialerActivity;->mNumber:Ljava/lang/String;

    .line 91
    iget-object v4, p0, Lcom/android/phone/MultiSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MultiSimDialerActivity;->mNumber:Ljava/lang/String;

    .line 94
    :cond_0
    const/4 v2, 0x0

    .line 95
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x0

    .line 97
    .local v3, phoneInCall:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v4, p0, Lcom/android/phone/MultiSimDialerActivity;->mPhoneCount:I

    if-ge v0, v4, :cond_1

    .line 98
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/phone/MultiSimDialerActivity;->isInCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    .line 100
    .local v1, inCall:Z
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 101
    const/4 v3, 0x1

    .line 105
    .end local v1           #inCall:Z
    :cond_1
    if-eqz v3, :cond_3

    .line 106
    const-string v4, "MultiSimDialerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subs ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is in call"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/MultiSimDialerActivity;->startOutgoingCall(I)V

    .line 114
    :goto_1
    const-string v4, "MultiSimDialerActivity"

    const-string v4, "end of onResume()"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 97
    .restart local v1       #inCall:Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v1           #inCall:Z
    :cond_3
    const-string v4, "MultiSimDialerActivity"

    const-string v4, "launch dsdsdialer"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0}, Lcom/android/phone/MultiSimDialerActivity;->launchMSDialer()V

    goto :goto_1
.end method
