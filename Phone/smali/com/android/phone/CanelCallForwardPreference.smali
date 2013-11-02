.class public Lcom/android/phone/CanelCallForwardPreference;
.super Landroid/preference/DialogPreference;
.source "CanelCallForwardPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CanelCallForwardPreference$1;,
        Lcom/android/phone/CanelCallForwardPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CanelCallForwardPreference"

.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field private mButtonClicked:I

.field mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/phone/CanelCallForwardPreference$MyHandler;

.field private mServiceClass:I

.field private mSummaryOnTemplate:Ljava/lang/CharSequence;

.field mode:I

.field phone:Lcom/android/internal/telephony/Phone;

.field reason:I

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "{0}"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CanelCallForwardPreference;->SRC_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CanelCallForwardPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
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
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v1, Lcom/android/phone/CanelCallForwardPreference$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CanelCallForwardPreference$MyHandler;-><init>(Lcom/android/phone/CanelCallForwardPreference;Lcom/android/phone/CanelCallForwardPreference$1;)V

    iput-object v1, p0, Lcom/android/phone/CanelCallForwardPreference;->mHandler:Lcom/android/phone/CanelCallForwardPreference$MyHandler;

    .line 48
    iput-object p1, p0, Lcom/android/phone/CanelCallForwardPreference;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CanelCallForwardPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 54
    sget-object v1, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    const v2, 0x7f0e000d

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CanelCallForwardPreference;->mServiceClass:I

    .line 58
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CanelCallForwardPreference;->reason:I

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CanelCallForwardPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/android/phone/CanelCallForwardPreference;->mServiceClass:I

    return v0
.end method

.method private cdmaSetCallForwardingOption(IILjava/lang/String;)V
    .locals 5
    .parameter "action"
    .parameter "reason"
    .parameter "number"

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, dialnumber:Ljava/lang/String;
    const-string v2, "mq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cdmaSetCallForwardingOption: action, reason"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 152
    packed-switch p2, :pswitch_data_0

    .line 198
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v0, :cond_2

    .line 207
    :goto_1
    return-void

    .line 155
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*72"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    goto :goto_0

    .line 158
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*90"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    goto :goto_0

    .line 161
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*92"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    goto :goto_0

    .line 164
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*68"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    goto :goto_0

    .line 167
    :pswitch_5
    const-string v0, "*730"

    .line 168
    goto :goto_0

    .line 174
    :cond_1
    if-nez p1, :cond_0

    .line 175
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 178
    :pswitch_6
    const-string v0, "*720"

    .line 179
    goto :goto_0

    .line 181
    :pswitch_7
    const-string v0, "*900"

    .line 182
    goto :goto_0

    .line 184
    :pswitch_8
    const-string v0, "*920"

    .line 185
    goto :goto_0

    .line 187
    :pswitch_9
    const-string v0, "*680"

    .line 188
    goto :goto_0

    .line 201
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    iget-object v2, p0, Lcom/android/phone/CanelCallForwardPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 175
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/phone/CanelCallForwardPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 130
    return-void
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 6
    .parameter "listener"
    .parameter "skipReading"

    .prologue
    const/4 v5, 0x0

    .line 71
    iput-object p1, p0, Lcom/android/phone/CanelCallForwardPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 72
    if-nez p2, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/phone/CanelCallForwardPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/CanelCallForwardPreference;->reason:I

    iget-object v2, p0, Lcom/android/phone/CanelCallForwardPreference;->mHandler:Lcom/android/phone/CanelCallForwardPreference$MyHandler;

    iget v3, p0, Lcom/android/phone/CanelCallForwardPreference;->reason:I

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/android/phone/CanelCallForwardPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 76
    iget-object v0, p0, Lcom/android/phone/CanelCallForwardPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/phone/CanelCallForwardPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 80
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 84
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/phone/CanelCallForwardPreference;->mButtonClicked:I

    .line 85
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 92
    iput p2, p0, Lcom/android/phone/CanelCallForwardPreference;->mButtonClicked:I

    .line 93
    const-string v0, "CanelCallForwardPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mq~~~~onclick!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CanelCallForwardPreference;->mButtonClicked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 6
    .parameter "positiveResult"

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 102
    iget v2, p0, Lcom/android/phone/CanelCallForwardPreference;->mButtonClicked:I

    if-eq v2, v5, :cond_0

    .line 103
    iget v2, p0, Lcom/android/phone/CanelCallForwardPreference;->mButtonClicked:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x3

    move v0, v2

    .line 106
    .local v0, action:I
    :goto_0
    iget v2, p0, Lcom/android/phone/CanelCallForwardPreference;->reason:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    move v1, v4

    .line 112
    .local v1, time:I
    :goto_1
    iget v2, p0, Lcom/android/phone/CanelCallForwardPreference;->reason:I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/phone/CanelCallForwardPreference;->cdmaSetCallForwardingOption(IILjava/lang/String;)V

    .line 113
    const-string v2, "CanelCallForwardPreference"

    const-string v3, "mq~~~~CdmaCallForwardOptions11111111="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, Lcom/android/phone/CanelCallForwardPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/phone/CanelCallForwardPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v2, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 120
    .end local v0           #action:I
    .end local v1           #time:I
    :cond_0
    iput v5, p0, Lcom/android/phone/CanelCallForwardPreference;->mButtonClicked:I

    .line 121
    return-void

    :cond_1
    move v0, v4

    .line 103
    goto :goto_0

    .line 106
    .restart local v0       #action:I
    :cond_2
    const/16 v2, 0x14

    move v1, v2

    goto :goto_1
.end method
