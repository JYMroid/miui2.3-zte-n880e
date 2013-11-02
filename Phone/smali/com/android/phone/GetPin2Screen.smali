.class public Lcom/android/phone/GetPin2Screen;
.super Landroid/app/Activity;
.source "GetPin2Screen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/GetPin2Screen$MySupplyPin2Cmd;
    }
.end annotation


# static fields
.field private static DEFAULT_LEFTTIMES:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneApp"

.field private static mSubscription:I


# instance fields
.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonOk:Landroid/widget/Button;

.field private mCancel:Landroid/view/View$OnClickListener;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mConnector:Lcom/android/phone/RilConnector;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin2Field:Landroid/widget/EditText;

.field private mRetryTimes:I

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x3

    sput v0, Lcom/android/phone/GetPin2Screen;->DEFAULT_LEFTTIMES:I

    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/GetPin2Screen;->mSubscription:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    .line 218
    new-instance v0, Lcom/android/phone/GetPin2Screen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/GetPin2Screen$1;-><init>(Lcom/android/phone/GetPin2Screen;)V

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mClicked:Landroid/view/View$OnClickListener;

    .line 236
    new-instance v0, Lcom/android/phone/GetPin2Screen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/GetPin2Screen$2;-><init>(Lcom/android/phone/GetPin2Screen;)V

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mCancel:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private CheckResult()V
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string v1, "hubo"

    const-string v2, "CheckResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Lcom/android/phone/GetPin2Screen$MySupplyPin2Cmd;

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->getPin2()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/phone/GetPin2Screen$MySupplyPin2Cmd;-><init>(Lcom/android/phone/GetPin2Screen;Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 201
    .local v0, unit:Lcom/android/phone/GetPin2Screen$MySupplyPin2Cmd;
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mConnector:Lcom/android/phone/RilConnector;

    invoke-virtual {v1, v0}, Lcom/android/phone/RilConnector;->AddRilUnit(Lcom/android/phone/RilUnit;)V

    .line 202
    invoke-virtual {v0}, Lcom/android/phone/GetPin2Screen$MySupplyPin2Cmd;->Get()Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/GetPin2Screen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->getPin2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/GetPin2Screen;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/GetPin2Screen;->validatePin2(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/GetPin2Screen;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/GetPin2Screen;->showStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/GetPin2Screen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->CheckResult()V

    return-void
.end method

.method private getPin2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 260
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GetPin2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method

.method private returnResult()V
    .locals 6

    .prologue
    .line 206
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v2, map:Landroid/os/Bundle;
    const-string v4, "pin2"

    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->getPin2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 210
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 212
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v0, action:Landroid/content/Intent;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    :cond_0
    const/4 v4, -0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/GetPin2Screen;->setResult(ILandroid/content/Intent;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->finish()V

    .line 216
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 173
    const-string v0, "hubo"

    const-string v1, "setupView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const v0, 0x7f070077

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mTitle:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->GetTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const v0, 0x7f07006c

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    .line 179
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 181
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 184
    :cond_0
    const v0, 0x7f070078

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mButtonOk:Landroid/widget/Button;

    .line 185
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mButtonOk:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v0, 0x7f070079

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mButtonCancel:Landroid/widget/Button;

    .line 188
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mButtonCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mCancel:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "statusMsg"

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    :cond_0
    return-void
.end method

.method private validatePin2(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 248
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 250
    :cond_0
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method GetTitle()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const-string v4, " "

    .line 154
    iget-object v2, p0, Lcom/android/phone/GetPin2Screen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccPin2RetryCount()I

    move-result v2

    iput v2, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    .line 155
    iget v2, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    if-lez v2, :cond_1

    .line 157
    iget v2, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const v2, 0x7f0c0305

    move v0, v2

    .line 158
    .local v0, endSymbol:I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c0303

    invoke-virtual {p0, v3}, Lcom/android/phone/GetPin2Screen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, title:Ljava/lang/String;
    const-string v2, "hubo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 164
    .end local v0           #endSymbol:I
    .end local v1           #title:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 157
    :cond_0
    const v2, 0x7f0c0304

    move v0, v2

    goto :goto_0

    .line 164
    :cond_1
    const v2, 0x7f0c01a9

    invoke-virtual {p0, v2}, Lcom/android/phone/GetPin2Screen;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method OnCorrectPin2Code()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "hubo"

    const-string v1, "OnCorrectPin2Code"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->returnResult()V

    .line 150
    return-void
.end method

.method OnErrorPin2Code()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "hubo"

    const-string v1, "OnErrorPin2Code"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin2RetryCount()I

    move-result v0

    iput v0, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    .line 133
    iget v0, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/GetPin2Screen;->showStatus(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->OnGetPinFailed()V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/GetPin2Screen;->showStatus(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->GetTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method OnGetPinFailed()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->setResult(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->finish()V

    .line 126
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sub_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/phone/GetPin2Screen;->mSubscription:I

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/GetPin2Screen;->mSubscription:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/GetPin2Screen;->log(Ljava/lang/String;)V

    .line 104
    sget v0, Lcom/android/phone/GetPin2Screen;->mSubscription:I

    invoke-static {v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 105
    new-instance v0, Lcom/android/phone/RilConnector;

    invoke-direct {v0}, Lcom/android/phone/RilConnector;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mConnector:Lcom/android/phone/RilConnector;

    .line 106
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin2RetryCount()I

    move-result v0

    iput v0, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    .line 113
    iget v0, p0, Lcom/android/phone/GetPin2Screen;->mRetryTimes:I

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/GetPin2Screen;->showStatus(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->OnGetPinFailed()V

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->setupView()V

    goto :goto_0
.end method
