.class public Lcom/android/phone/IccDepersonalizationPanel;
.super Lcom/android/phone/IccPanel;
.source "IccDepersonalizationPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IccDepersonalizationPanel$6;,
        Lcom/android/phone/IccDepersonalizationPanel$TouchInput;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DBG:Z = true

.field private static final EVENT_ICC_DCK_RETRIES_NUM_RESULT:I = 0x65

.field private static final EVENT_ICC_DEPERSONALIZATION_RESULT:I = 0x64


# instance fields
.field private final ENTRY:I

.field private final ERROR:I

.field private final IN_PROGRESS:I

.field private final SUCCESS:I

.field private mDismissButton:Landroid/widget/Button;

.field mDismissListener:Landroid/view/View$OnClickListener;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field mEmergencyCallListener:Landroid/view/View$OnClickListener;

.field private mEmergencyCallOnlyHint:Landroid/widget/TextView;

.field private mEntryPanel:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mIgnorUI:Z

.field private mMinmumEntryNum:I

.field private mPersoSubtype:I

.field private mPersoSubtypeText:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinEntry:Landroid/widget/EditText;

.field private mPinEntryWatcher:Landroid/text/TextWatcher;

.field private mRetriesNum:[I

.field private mRetryHint:Landroid/widget/TextView;

.field private mStatusPanel:Landroid/widget/LinearLayout;

.field private mStatusText:Landroid/widget/TextView;

.field private mSubscription:I

.field private mTitle:Landroid/widget/TextView;

.field private mUnlockButton:Landroid/widget/Button;

.field mUnlockListener:Landroid/view/View$OnClickListener;

.field private permanent_locked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 98
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mMinmumEntryNum:I

    .line 102
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I

    .line 103
    iput-boolean v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mIgnorUI:Z

    .line 105
    iput v1, p0, Lcom/android/phone/IccDepersonalizationPanel;->ENTRY:I

    .line 106
    iput v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->IN_PROGRESS:I

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->ERROR:I

    .line 108
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->SUCCESS:I

    .line 109
    iput-boolean v1, p0, Lcom/android/phone/IccDepersonalizationPanel;->permanent_locked:Z

    .line 112
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 143
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 436
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 453
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEmergencyCallListener:Landroid/view/View$OnClickListener;

    .line 707
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$5;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$5;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 234
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "subtype"
    .parameter "subscription"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 239
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 98
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mMinmumEntryNum:I

    .line 102
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I

    .line 103
    iput-boolean v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mIgnorUI:Z

    .line 105
    iput v1, p0, Lcom/android/phone/IccDepersonalizationPanel;->ENTRY:I

    .line 106
    iput v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->IN_PROGRESS:I

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->ERROR:I

    .line 108
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->SUCCESS:I

    .line 109
    iput-boolean v1, p0, Lcom/android/phone/IccDepersonalizationPanel;->permanent_locked:Z

    .line 112
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 143
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 436
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 453
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEmergencyCallListener:Landroid/view/View$OnClickListener;

    .line 707
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$5;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$5;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 240
    iput p2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    .line 241
    iput p3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mSubscription:I

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IccDepersonalizationPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mMinmumEntryNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/IccDepersonalizationPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->permanent_locked:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/IccDepersonalizationPanel;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/IccDepersonalizationPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/IccDepersonalizationPanel;->permanent_locked:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/IccDepersonalizationPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/IccDepersonalizationPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mIgnorUI:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/phone/IccDepersonalizationPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/IccDepersonalizationPanel;->mIgnorUI:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/IccDepersonalizationPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/IccDepersonalizationPanel;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/IccDepersonalizationPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mSubscription:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEmergencyCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/IccDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/IccDepersonalizationPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/IccDepersonalizationPanel;->displayStatus(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/IccDepersonalizationPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/IccDepersonalizationPanel;->hideAlert()V

    return-void
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 225
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 226
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 227
    return-object v0
.end method

.method private displayStatus(I)V
    .locals 13
    .parameter "type"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    const-string v10, " "

    .line 483
    const/4 v1, 0x0

    .line 484
    .local v1, label:I
    invoke-static {}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->values()[Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    aget-object v3, v6, v7

    .line 485
    .local v3, persosubtype:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    sget-object v6, Lcom/android/phone/IccDepersonalizationPanel$6;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 663
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported Perso Subtype :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    .line 666
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    .line 667
    if-nez p1, :cond_1

    .line 668
    const-string v0, ""

    .line 669
    .local v0, displayText:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 670
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/IccDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/IccDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0072

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/IccDepersonalizationPanel;->mSubscription:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    .end local v0           #displayText:Ljava/lang/String;
    :goto_1
    return-void

    .line 487
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 489
    :pswitch_1
    const v1, 0x7f0c0063

    .line 490
    goto :goto_0

    .line 492
    :pswitch_2
    const v1, 0x7f0c0075

    .line 493
    goto :goto_0

    .line 495
    :pswitch_3
    const v1, 0x7f0c0080

    .line 496
    goto :goto_0

    .line 498
    :pswitch_4
    const v1, 0x7f0c008b

    goto :goto_0

    .line 503
    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 505
    :pswitch_6
    const v1, 0x7f0c0068

    .line 506
    goto :goto_0

    .line 508
    :pswitch_7
    const v1, 0x7f0c0076

    .line 509
    goto :goto_0

    .line 511
    :pswitch_8
    const v1, 0x7f0c0081

    .line 512
    goto :goto_0

    .line 514
    :pswitch_9
    const v1, 0x7f0c008c

    goto :goto_0

    .line 519
    :pswitch_a
    packed-switch p1, :pswitch_data_3

    goto :goto_0

    .line 521
    :pswitch_b
    const v1, 0x7f0c0069

    .line 522
    goto/16 :goto_0

    .line 524
    :pswitch_c
    const v1, 0x7f0c0078

    .line 525
    goto/16 :goto_0

    .line 527
    :pswitch_d
    const v1, 0x7f0c0083

    .line 528
    goto/16 :goto_0

    .line 530
    :pswitch_e
    const v1, 0x7f0c008e

    goto/16 :goto_0

    .line 535
    :pswitch_f
    packed-switch p1, :pswitch_data_4

    goto/16 :goto_0

    .line 537
    :pswitch_10
    const v1, 0x7f0c006a

    .line 538
    goto/16 :goto_0

    .line 540
    :pswitch_11
    const v1, 0x7f0c0077

    .line 541
    goto/16 :goto_0

    .line 543
    :pswitch_12
    const v1, 0x7f0c0082

    .line 544
    goto/16 :goto_0

    .line 546
    :pswitch_13
    const v1, 0x7f0c008d

    goto/16 :goto_0

    .line 551
    :pswitch_14
    packed-switch p1, :pswitch_data_5

    goto/16 :goto_0

    .line 553
    :pswitch_15
    const v1, 0x7f0c006b

    .line 554
    goto/16 :goto_0

    .line 556
    :pswitch_16
    const v1, 0x7f0c0079

    .line 557
    goto/16 :goto_0

    .line 559
    :pswitch_17
    const v1, 0x7f0c0084

    .line 560
    goto/16 :goto_0

    .line 562
    :pswitch_18
    const v1, 0x7f0c008f

    goto/16 :goto_0

    .line 567
    :pswitch_19
    packed-switch p1, :pswitch_data_6

    goto/16 :goto_0

    .line 569
    :pswitch_1a
    const v1, 0x7f0c006c

    .line 570
    goto/16 :goto_0

    .line 572
    :pswitch_1b
    const v1, 0x7f0c007a

    .line 573
    goto/16 :goto_0

    .line 575
    :pswitch_1c
    const v1, 0x7f0c0085

    .line 576
    goto/16 :goto_0

    .line 578
    :pswitch_1d
    const v1, 0x7f0c0090

    goto/16 :goto_0

    .line 583
    :pswitch_1e
    packed-switch p1, :pswitch_data_7

    goto/16 :goto_0

    .line 585
    :pswitch_1f
    const v1, 0x7f0c006d

    .line 586
    goto/16 :goto_0

    .line 588
    :pswitch_20
    const v1, 0x7f0c007b

    .line 589
    goto/16 :goto_0

    .line 591
    :pswitch_21
    const v1, 0x7f0c0086

    .line 592
    goto/16 :goto_0

    .line 594
    :pswitch_22
    const v1, 0x7f0c0091

    goto/16 :goto_0

    .line 599
    :pswitch_23
    packed-switch p1, :pswitch_data_8

    goto/16 :goto_0

    .line 601
    :pswitch_24
    const v1, 0x7f0c006e

    .line 602
    goto/16 :goto_0

    .line 604
    :pswitch_25
    const v1, 0x7f0c007c

    .line 605
    goto/16 :goto_0

    .line 607
    :pswitch_26
    const v1, 0x7f0c0087

    .line 608
    goto/16 :goto_0

    .line 610
    :pswitch_27
    const v1, 0x7f0c0092

    goto/16 :goto_0

    .line 615
    :pswitch_28
    packed-switch p1, :pswitch_data_9

    goto/16 :goto_0

    .line 617
    :pswitch_29
    const v1, 0x7f0c006f

    .line 618
    goto/16 :goto_0

    .line 620
    :pswitch_2a
    const v1, 0x7f0c007e

    .line 621
    goto/16 :goto_0

    .line 623
    :pswitch_2b
    const v1, 0x7f0c0089

    .line 624
    goto/16 :goto_0

    .line 626
    :pswitch_2c
    const v1, 0x7f0c0094

    goto/16 :goto_0

    .line 631
    :pswitch_2d
    packed-switch p1, :pswitch_data_a

    goto/16 :goto_0

    .line 633
    :pswitch_2e
    const v1, 0x7f0c0070

    .line 634
    goto/16 :goto_0

    .line 636
    :pswitch_2f
    const v1, 0x7f0c007d

    .line 637
    goto/16 :goto_0

    .line 639
    :pswitch_30
    const v1, 0x7f0c0088

    .line 640
    goto/16 :goto_0

    .line 642
    :pswitch_31
    const v1, 0x7f0c0093

    goto/16 :goto_0

    .line 647
    :pswitch_32
    packed-switch p1, :pswitch_data_b

    goto/16 :goto_0

    .line 649
    :pswitch_33
    const v1, 0x7f0c0071

    .line 650
    goto/16 :goto_0

    .line 652
    :pswitch_34
    const v1, 0x7f0c007f

    .line 653
    goto/16 :goto_0

    .line 655
    :pswitch_35
    const v1, 0x7f0c008a

    .line 656
    goto/16 :goto_0

    .line 658
    :pswitch_36
    const v1, 0x7f0c0095

    goto/16 :goto_0

    .line 673
    .restart local v0       #displayText:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/IccDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    goto/16 :goto_1

    .line 676
    .end local v0           #displayText:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x2

    if-ne p1, v6, :cond_2

    .line 679
    invoke-virtual {p0}, Lcom/android/phone/IccDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 680
    .local v4, str:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/IccDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0252

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 681
    .local v5, str_lft:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I

    iget v8, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    const/4 v9, 0x3

    sub-int/2addr v8, v9

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 682
    .local v2, outputString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v6, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 684
    iget-object v6, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 687
    .end local v2           #outputString:Ljava/lang/String;
    .end local v4           #str:Ljava/lang/String;
    .end local v5           #str_lft:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(I)V

    .line 688
    iget-object v6, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 689
    iget-object v6, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_f
        :pswitch_14
        :pswitch_19
        :pswitch_1e
        :pswitch_23
        :pswitch_28
        :pswitch_2d
        :pswitch_32
    .end packed-switch

    .line 487
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 503
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 519
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 535
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 551
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    .line 567
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    .line 583
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch

    .line 599
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
    .end packed-switch

    .line 615
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
    .end packed-switch

    .line 631
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch

    .line 647
    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
    .end packed-switch
.end method

.method private hideAlert()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 694
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mRetriesNum:[I

    iget v1, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 701
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 705
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 716
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccDepersonalizationPanel] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    return-void
.end method

.method private reportDigit(I)V
    .locals 2
    .parameter "digit"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 325
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-super {p0, p1}, Lcom/android/phone/IccPanel;->onCreate(Landroid/os/Bundle;)V

    .line 287
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/android/phone/IccDepersonalizationPanel;->setContentView(I)V

    .line 288
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/IccDepersonalizationPanel$TouchInput;-><init>(Lcom/android/phone/IccDepersonalizationPanel;Lcom/android/phone/IccDepersonalizationPanel$1;)V

    .line 290
    const v0, 0x7f0700d3

    invoke-virtual {p0, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEmergencyCallOnlyHint:Landroid/widget/TextView;

    .line 291
    const v0, 0x7f0700d2

    invoke-virtual {p0, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mRetryHint:Landroid/widget/TextView;

    .line 292
    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    .line 293
    const v0, 0x7f0700cb

    invoke-virtual {p0, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtypeText:Landroid/widget/TextView;

    .line 294
    invoke-direct {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->displayStatus(I)V

    .line 296
    const v0, 0x7f0700c5

    invoke-virtual {p0, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    .line 297
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    const v0, 0x7f0700cf

    invoke-virtual {p0, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEmergencyCallButton:Landroid/widget/Button;

    .line 304
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEmergencyCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEmergencyCallListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    const v0, 0x7f0700cc

    invoke-virtual {p0, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    .line 308
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 309
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 312
    const v0, 0x7f0700d0

    invoke-virtual {p0, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    .line 313
    const v0, 0x7f0700d1

    invoke-virtual {p0, v0}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    .line 315
    iput v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mSubscription:I

    .line 316
    iget v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mSubscription:I

    invoke-static {v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 318
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->invokeGetDCKRetriesNum(Landroid/os/Message;)V

    .line 321
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 429
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 430
    const/4 v0, 0x1

    .line 433
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/IccPanel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 424
    invoke-super {p0}, Lcom/android/phone/IccPanel;->onStart()V

    .line 425
    return-void
.end method
