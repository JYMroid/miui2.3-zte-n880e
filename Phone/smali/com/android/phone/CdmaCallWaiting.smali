.class public Lcom/android/phone/CdmaCallWaiting;
.super Lcom/android/phone/EditPhoneNumberPreference;
.source "CdmaCallWaiting.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallWaitingCheckBoxPreference"


# instance fields
.field private final DBG:Z

.field private mButtonClicked:I

.field mContext:Landroid/content/Context;

.field private mServiceClass:I

.field private mode:I

.field phone:Lcom/android/internal/telephony/Phone;

.field reason:I

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaCallWaiting;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallWaiting;->DBG:Z

    .line 38
    iput v3, p0, Lcom/android/phone/CdmaCallWaiting;->mode:I

    .line 48
    const-string v1, "mq"

    const-string v2, "CallForwardEditPreference"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p1, p0, Lcom/android/phone/CdmaCallWaiting;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaCallWaiting;->phone:Lcom/android/internal/telephony/Phone;

    .line 54
    sget-object v1, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    const v2, 0x7f0e000d

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CdmaCallWaiting;->mServiceClass:I

    .line 58
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CdmaCallWaiting;->reason:I

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method private cdmaSetCallWaiting(I)V
    .locals 5
    .parameter "action"

    .prologue
    .line 128
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 130
    const-string v0, "*74"

    .line 136
    .local v0, dialnumber:Ljava/lang/String;
    :goto_0
    const-string v2, "mq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cdmaSetCallWaiting: dialnumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 140
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaiting;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    return-void

    .line 134
    .end local v0           #dialnumber:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v0, "*740"

    .restart local v0       #dialnumber:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 83
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/phone/CdmaCallWaiting;->mButtonClicked:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->userChoice:I

    .line 85
    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 76
    iput p2, p0, Lcom/android/phone/CdmaCallWaiting;->mButtonClicked:I

    .line 77
    const-string v0, "CallWaitingCheckBoxPreference"

    const-string v1, "mqnew~~~~onclick!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 8
    .parameter "positiveResult"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onDialogClosed(Z)V

    .line 93
    iget v3, p0, Lcom/android/phone/CdmaCallWaiting;->mButtonClicked:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaiting;->isToggled()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/phone/CdmaCallWaiting;->mButtonClicked:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    :cond_0
    move v1, v5

    .line 102
    .local v1, choice:Z
    :goto_0
    if-ne v1, v5, :cond_3

    iget v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->userChoice:I

    if-ne v3, v5, :cond_3

    .line 103
    const/4 v0, 0x3

    .line 113
    .local v0, action:I
    :goto_1
    iget v3, p0, Lcom/android/phone/CdmaCallWaiting;->reason:I

    if-eq v3, v7, :cond_4

    move v2, v6

    .line 116
    .local v2, time:I
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaiting;->cdmaSetCallWaiting(I)V

    .line 117
    const-string v3, "CallWaitingCheckBoxPreference"

    const-string v4, "mq~~~~cdmaSetCallWaiting()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v3, p0, Lcom/android/phone/CdmaCallWaiting;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/android/phone/CdmaCallWaiting;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v3, p0, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 123
    .end local v0           #action:I
    .end local v1           #choice:Z
    .end local v2           #time:I
    :cond_1
    return-void

    :cond_2
    move v1, v6

    .line 100
    goto :goto_0

    .line 105
    .restart local v1       #choice:Z
    :cond_3
    if-ne v1, v5, :cond_1

    iget v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->userChoice:I

    if-ne v3, v7, :cond_1

    .line 106
    const/4 v0, 0x0

    .restart local v0       #action:I
    goto :goto_1

    .line 113
    :cond_4
    const/16 v3, 0x14

    move v2, v3

    goto :goto_2
.end method

.method public setMode()V
    .locals 3

    .prologue
    .line 70
    const-string v0, "CallWaitingCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mq~~~~setmode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CdmaCallWaiting;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget v0, p0, Lcom/android/phone/CdmaCallWaiting;->mode:I

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaiting;->setModeNo(I)V

    .line 72
    return-void
.end method
