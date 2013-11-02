.class public Lcom/android/phone/EmergencyDialer;
.super Landroid/app/Activity;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/text/TextWatcher;


# static fields
.field public static final ACTION_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final BAD_EMERGENCY_NUMBER_DIALOG:I = 0x0

.field private static final DBG:Z = true

.field private static final DIAL_TONE_STREAM_TYPE:I = 0x3

.field private static final LAST_NUMBER:Ljava/lang/String; = "lastNumber"

.field private static final LOG_TAG:Ljava/lang/String; = "EmergencyDialer"

.field private static final NO_NETWORK_COVERAGE_DIALOG:I = 0x1

.field private static final TONE_LENGTH_MS:I = 0x96

.field private static final TONE_RELATIVE_VOLUME:I = 0x50

.field private static outgoingCallProcessing:Z


# instance fields
.field private isPlaceCallNow:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/widget/ImageButton;

.field private mDialButton2:Landroid/widget/ImageButton;

.field mDigits:Landroid/widget/EditText;

.field private mDigitsBackground:Landroid/graphics/drawable/Drawable;

.field private mDigitsEmptyBackground:Landroid/graphics/drawable/Drawable;

.field private mHaptic:Lcom/android/phone/HapticFeedback;

.field private mLastNumber:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mVoicemailDialAndDeleteRow:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/EmergencyDialer;->outgoingCallProcessing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 138
    new-instance v0, Lcom/android/phone/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    .line 144
    new-instance v0, Lcom/android/phone/EmergencyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$1;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->isPlaceCallNow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyDialer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->isPlaceCallNow:Z

    return v0
.end method

.method private createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "number"

    .prologue
    .line 697
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    const v0, 0x7f0c0202

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EmergencyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 700
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0c0203

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 405
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 406
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 407
    return-void
.end method

.method private setMultiSimLayout()V
    .locals 4

    .prologue
    .line 803
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDialButton2:Landroid/widget/ImageButton;

    const v3, 0x7f0200b6

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 804
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/widget/ImageButton;

    const v3, 0x7f0200b5

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 808
    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_0

    .line 810
    const/16 v1, 0x78

    .line 811
    .local v1, width:I
    const/16 v0, 0x5a

    .line 816
    .local v0, height:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/widget/ImageButton;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDialButton2:Landroid/widget/ImageButton;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    const v3, 0x7f0700dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 821
    return-void

    .line 813
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    const/16 v1, 0x46

    .line 814
    .restart local v1       #width:I
    const/16 v0, 0x30

    .restart local v0       #height:I
    goto :goto_0
.end method

.method private setupKeypad()V
    .locals 2

    .prologue
    .line 361
    const v1, 0x7f070057

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    const v1, 0x7f070058

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    const v1, 0x7f070059

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    const v1, 0x7f07005b

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    const v1, 0x7f07005c

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    const v1, 0x7f07005d

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    const v1, 0x7f07005e

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    const v1, 0x7f07005f

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    const v1, 0x7f070060

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 373
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 376
    const v1, 0x7f070062

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    return-void
.end method

.method private updateDialAndDeleteButtonStateEnabledAttr()V
    .locals 2

    .prologue
    .line 788
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 789
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 791
    .local v0, notEmpty:Z
    :goto_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 792
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 794
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton2:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 799
    .end local v0           #notEmpty:Z
    :cond_0
    return-void

    .line 789
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "input"

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleCharsForLockedDevice(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 181
    .local v0, notEmpty:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 182
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigitsBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    .line 188
    return-void

    .line 180
    .end local v0           #notEmpty:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 184
    .restart local v0       #notEmpty:Z
    :cond_2
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigitsEmptyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 158
    return-void
.end method

.method protected maybeAddNumberFormatting()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v3, 0x7

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 427
    :sswitch_0
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 428
    invoke-direct {p0, v6}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 432
    :sswitch_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 433
    invoke-direct {p0, v7}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 437
    :sswitch_2
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 438
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 442
    :sswitch_3
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 443
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 447
    :sswitch_4
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 448
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 452
    :sswitch_5
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 453
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 457
    :sswitch_6
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 458
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 462
    :sswitch_7
    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 463
    const/16 v2, 0xf

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 467
    :sswitch_8
    invoke-virtual {p0, v7}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 468
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 472
    :sswitch_9
    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 473
    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 477
    :sswitch_a
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 478
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    .line 480
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, Emodenumber:Ljava/lang/String;
    const-string v2, "*983*987#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, EmodeIntent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Deblock"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 486
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 488
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 489
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 496
    .end local v0           #EmodeIntent:Landroid/content/Intent;
    .end local v1           #Emodenumber:Ljava/lang/String;
    :sswitch_b
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 497
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto/16 :goto_0

    .line 501
    :sswitch_c
    const/16 v2, 0x43

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto/16 :goto_0

    .line 505
    :sswitch_d
    const-string v2, "EmergencyDialer"

    const-string v3, "onClick-dialButton"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v2}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 508
    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    goto/16 :goto_0

    .line 514
    :sswitch_e
    const-string v2, "EmergencyDialer"

    const-string v3, "onClick-dialButton2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v2}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 516
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    goto/16 :goto_0

    .line 521
    :sswitch_f
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 425
    :sswitch_data_0
    .sparse-switch
        0x7f070057 -> :sswitch_0
        0x7f070058 -> :sswitch_1
        0x7f070059 -> :sswitch_2
        0x7f07005a -> :sswitch_3
        0x7f07005b -> :sswitch_4
        0x7f07005c -> :sswitch_5
        0x7f07005d -> :sswitch_6
        0x7f07005e -> :sswitch_7
        0x7f07005f -> :sswitch_8
        0x7f070060 -> :sswitch_b
        0x7f070061 -> :sswitch_9
        0x7f070062 -> :sswitch_a
        0x7f07006b -> :sswitch_f
        0x7f0700de -> :sswitch_d
        0x7f0700df -> :sswitch_e
        0x7f0700e0 -> :sswitch_c
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/high16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 198
    const v9, 0x7f03000f

    invoke-virtual {p0, v9}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    .line 201
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 202
    .local v7, r:Landroid/content/res/Resources;
    const v9, 0x7f020024

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDigitsBackground:Landroid/graphics/drawable/Drawable;

    .line 203
    const v9, 0x7f020022

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDigitsEmptyBackground:Landroid/graphics/drawable/Drawable;

    .line 205
    const v9, 0x7f07006b

    invoke-virtual {p0, v9}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    .line 206
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 207
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 209
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->maybeAddNumberFormatting()V

    .line 213
    const v9, 0x7f070057

    invoke-virtual {p0, v9}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 214
    .local v8, view:Landroid/view/View;
    if-eqz v8, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->setupKeypad()V

    .line 218
    :cond_0
    const v9, 0x7f0700dc

    invoke-virtual {p0, v9}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    .line 221
    const v9, 0x7f09000e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 227
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    const v10, 0x7f0700dd

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 230
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    const v10, 0x7f0700de

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/widget/ImageButton;

    .line 232
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    const v10, 0x7f0700e0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    .line 235
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 239
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    const v10, 0x7f0700df

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDialButton2:Landroid/widget/ImageButton;

    .line 240
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 241
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDialButton2:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->setMultiSimLayout()V

    .line 246
    :goto_0
    const-string v9, "EmergencyDialer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate-isMultiSimEnabled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_1
    if-eqz p1, :cond_1

    .line 256
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 262
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_2

    const-string v9, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-static {v9, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 264
    .local v6, number:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 265
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v9, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .end local v6           #number:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 270
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v9, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v9, p0, Lcom/android/phone/EmergencyDialer;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 276
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v9

    .line 277
    :try_start_0
    iget-object v10, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_3

    .line 282
    :try_start_1
    new-instance v10, Landroid/media/ToneGenerator;

    const/4 v11, 0x3

    const/16 v12, 0x50

    invoke-direct {v10, v11, v12}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v10, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 283
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/android/phone/EmergencyDialer;->setVolumeControlStream(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    :cond_3
    :goto_2
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 292
    .local v4, intentFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v4}, Lcom/android/phone/EmergencyDialer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    :try_start_3
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    const v10, 0x7f090007

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    invoke-virtual {v9, p0, v10}, Lcom/android/phone/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 301
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 302
    .local v3, emIntent:Landroid/content/Intent;
    if-eqz v3, :cond_4

    const-string v9, "number"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 303
    const-string v9, "place_now"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/phone/EmergencyDialer;->isPlaceCallNow:Z

    .line 304
    const-string v9, "number"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 305
    .restart local v6       #number:Ljava/lang/String;
    const-string v9, "EmergencyDialer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "yangliu,placeNow = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/phone/EmergencyDialer;->isPlaceCallNow:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " number = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v9, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 309
    iget-boolean v9, p0, Lcom/android/phone/EmergencyDialer;->isPlaceCallNow:Z

    if-eqz v9, :cond_4

    .line 310
    const-string v9, "EmergencyDialer"

    const-string v10, "isPlaceCallNow"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    .line 315
    .end local v6           #number:Ljava/lang/String;
    :cond_4
    return-void

    .line 244
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #data:Landroid/net/Uri;
    .end local v3           #emIntent:Landroid/content/Intent;
    .end local v4           #intentFilter:Landroid/content/IntentFilter;
    :cond_5
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDialButton2:Landroid/widget/ImageButton;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 250
    :cond_6
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 251
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    goto/16 :goto_1

    .line 284
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #data:Landroid/net/Uri;
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 285
    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v10, "EmergencyDialer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught while creating local tone generator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_2

    .line 289
    .end local v2           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 297
    .restart local v4       #intentFilter:Landroid/content/IntentFilter;
    :catch_1
    move-exception v9

    move-object v5, v9

    .line 298
    .local v5, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v9, "EmergencyDialer"

    const-string v10, "Vibrate control bool missing."

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0x7f0c004b

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 706
    const/4 v0, 0x0

    .line 709
    .local v0, dialog:Landroid/app/AlertDialog;
    const v1, 0x7f0c01ff

    .line 713
    .local v1, emergencyDialogTitle:I
    if-nez p1, :cond_1

    .line 715
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/EmergencyDialer$3;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyDialer$3;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/EmergencyDialer$2;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyDialer$2;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 740
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 772
    :cond_0
    :goto_0
    return-object v0

    .line 756
    :cond_1
    if-ne p1, v4, :cond_0

    .line 757
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c01ff

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c035c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/EmergencyDialer$4;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyDialer$4;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 320
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 323
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 325
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 327
    return-void

    .line 325
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v0, v3

    .line 421
    :goto_0
    return v0

    .line 413
    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 414
    const-string v0, "EmergencyDialer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKey-KEYCODE_ENTER-event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    .line 416
    const/4 v0, 0x1

    goto :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x7f07006b
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 384
    packed-switch p1, :pswitch_data_0

    .line 400
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 386
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    .line 397
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 394
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    goto :goto_1

    .line 384
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 533
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 534
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    move v1, v2

    .line 548
    :goto_0
    return v1

    .line 536
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 540
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    move v1, v3

    .line 541
    goto :goto_0

    .line 544
    :sswitch_1
    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    move v1, v3

    .line 545
    goto :goto_0

    .line 534
    :sswitch_data_0
    .sparse-switch
        0x7f070061 -> :sswitch_1
        0x7f0700e0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 599
    const-string v1, "EmergencyDialer"

    const-string v2, "reenabling status bar and closing the dialer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 601
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->reenableStatusBar()V

    .line 602
    sget-object v1, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 604
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 607
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->ndpPanel:Lcom/android/phone/IccDepersonalizationPanel;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/phone/EmergencyDialer;->outgoingCallProcessing:Z

    if-nez v1, :cond_0

    .line 609
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->ndpPanel:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-virtual {v1}, Lcom/android/phone/IccDepersonalizationPanel;->show()V

    .line 614
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 615
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v2, :cond_1

    .line 616
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v2}, Landroid/media/ToneGenerator;->release()V

    .line 617
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 619
    :cond_1
    monitor-exit v1

    .line 620
    return-void

    .line 619
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 350
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 356
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 357
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 777
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 778
    if-nez p1, :cond_0

    .line 779
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 780
    .local v1, alert:Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 782
    .end local v1           #alert:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 331
    const-string v0, "lastNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 332
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v7, "EmergencyDialer"

    .line 553
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 556
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    .line 560
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v2}, Lcom/android/phone/HapticFeedback;->checkSystemSetting()V

    .line 564
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 565
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 567
    :try_start_1
    new-instance v3, Landroid/media/ToneGenerator;

    const/16 v4, 0x8

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 574
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 578
    const-string v2, "EmergencyDialer"

    const-string v2, "disabling status bar, set to long timeout"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 580
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->disableStatusBar()V

    .line 581
    sget-object v2, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 584
    sput-boolean v6, Lcom/android/phone/EmergencyDialer;->outgoingCallProcessing:Z

    .line 586
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    .line 588
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccPersoActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->ndpPanel:Lcom/android/phone/IccDepersonalizationPanel;

    if-eqz v2, :cond_1

    .line 590
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->ndpPanel:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-virtual {v2}, Lcom/android/phone/IccDepersonalizationPanel;->hide()V

    .line 593
    :cond_1
    return-void

    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_2
    move v2, v6

    .line 556
    goto :goto_0

    .line 569
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 570
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while creating local tone generator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1

    .line 574
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 337
    const-string v0, "lastNumber"

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 162
    return-void
.end method

.method placeCall(I)V
    .locals 5
    .parameter "subId"

    .prologue
    const/4 v3, 0x0

    const-string v4, "EmergencyDialer"

    .line 626
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 627
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 628
    const-string v1, "EmergencyDialer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placing call to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 633
    :cond_0
    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 655
    :goto_0
    return-void

    .line 636
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 639
    const-string v1, "Subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 642
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    .line 645
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/EmergencyDialer;->outgoingCallProcessing:Z

    .line 647
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto :goto_0

    .line 649
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const-string v1, "EmergencyDialer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejecting bad requested number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 653
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->showDialog(I)V

    goto :goto_0
.end method

.method playTone(I)V
    .locals 6
    .parameter "tone"

    .prologue
    .line 669
    iget-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    if-nez v2, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 679
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 680
    .local v1, ringerMode:I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 685
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 686
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v3, :cond_2

    .line 687
    const-string v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    monitor-exit v2

    goto :goto_0

    .line 693
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 692
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x96

    invoke-virtual {v3, p1, v4}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 693
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
