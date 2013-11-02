.class Lcom/android/phone/IccDepersonalizationPanel$TouchInput;
.super Ljava/lang/Object;
.source "IccDepersonalizationPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/phone/IccDepersonalizationPanel;


# direct methods
.method private constructor <init>(Lcom/android/phone/IccDepersonalizationPanel;)V
    .locals 2
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const v0, 0x7f070061

    invoke-virtual {p1, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mZero:Landroid/widget/TextView;

    .line 343
    const v0, 0x7f070057

    invoke-virtual {p1, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mOne:Landroid/widget/TextView;

    .line 344
    const v0, 0x7f070058

    invoke-virtual {p1, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 345
    const v0, 0x7f070059

    invoke-virtual {p1, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mThree:Landroid/widget/TextView;

    .line 346
    const v0, 0x7f07005a

    invoke-virtual {p1, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mFour:Landroid/widget/TextView;

    .line 347
    const v0, 0x7f07005b

    invoke-virtual {p1, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mFive:Landroid/widget/TextView;

    .line 348
    const v0, 0x7f07005c

    invoke-virtual {p1, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mSix:Landroid/widget/TextView;

    .line 349
    const v0, 0x7f07005d

    invoke-virtual {p1, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 350
    const v0, 0x7f07005e

    invoke-virtual {p1, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mEight:Landroid/widget/TextView;

    .line 351
    const v0, 0x7f07005f

    invoke-virtual {p1, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mNine:Landroid/widget/TextView;

    .line 352
    const v0, 0x7f0700c6

    invoke-virtual {p1, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 354
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/IccDepersonalizationPanel;Lcom/android/phone/IccDepersonalizationPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 395
    const/4 v0, -0x1

    .line 396
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 397
    const/4 v0, 0x0

    .line 417
    :cond_0
    :goto_0
    return v0

    .line 398
    :cond_1
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 399
    const/4 v0, 0x1

    goto :goto_0

    .line 400
    :cond_2
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 401
    const/4 v0, 0x2

    goto :goto_0

    .line 402
    :cond_3
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 403
    const/4 v0, 0x3

    goto :goto_0

    .line 404
    :cond_4
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 405
    const/4 v0, 0x4

    goto :goto_0

    .line 406
    :cond_5
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 407
    const/4 v0, 0x5

    goto :goto_0

    .line 408
    :cond_6
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 409
    const/4 v0, 0x6

    goto :goto_0

    .line 410
    :cond_7
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 411
    const/4 v0, 0x7

    goto :goto_0

    .line 412
    :cond_8
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 413
    const/16 v0, 0x8

    goto :goto_0

    .line 414
    :cond_9
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 415
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 380
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_1

    .line 381
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/IccDepersonalizationPanel;->access$300(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, pin:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/IccDepersonalizationPanel;->access$300(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 392
    .end local v1           #pin:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 389
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 390
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->reportDigit(I)V
    invoke-static {v2, v0}, Lcom/android/phone/IccDepersonalizationPanel;->access$1400(Lcom/android/phone/IccDepersonalizationPanel;I)V

    goto :goto_0
.end method
