.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final IN_CALL_WIDGET_TRANSITION_TIME:I = 0xfa

.field private static final LOG_TAG:Ljava/lang/String; = "InCallTouchUi"


# instance fields
.field private mAddButton:Landroid/widget/Button;

.field private mAllowInCallTouchUi:Z

.field private mAllowIncomingCallTouchUi:Z

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mBluetoothButton:Landroid/widget/ToggleButton;

.field private mCdmaMergeButton:Landroid/widget/ImageButton;

.field private mCdmaMergeButtonContainer:Landroid/view/View;

.field private mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

.field private mDialpadButton:Landroid/widget/Button;

.field private mEndButton:Landroid/widget/Button;

.field private mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mHoldButton:Landroid/widget/ImageButton;

.field private mHoldButtonContainer:Landroid/view/View;

.field private mHoldButtonLabel:Landroid/widget/TextView;

.field private mHoldIcon:Landroid/graphics/drawable/Drawable;

.field private mInCallControls:Landroid/view/View;

.field private mInCallControlsRow2:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncallTouchUiNoProximitySensor:Z

.field private mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

.field private mLastIncomingCallActionTime:J

.field private mMergeButton:Landroid/widget/Button;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mSwapButton:Landroid/widget/ImageButton;

.field private mSwapButtonContainer:Landroid/view/View;

.field private mSwapButtonLabel:Landroid/widget/TextView;

.field private mUnholdIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-string v4, "ENABLED"

    const-string v3, "DISABLED"

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    const-string v1, "InCallTouchUi constructor..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attrs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 119
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 120
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030017

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 125
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApplication:Lcom/android/phone/PhoneApp;

    .line 131
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mAllowIncomingCallTouchUi:Z

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- incoming call touch UI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InCallTouchUi;->mAllowIncomingCallTouchUi:Z

    if-eqz v2, :cond_0

    const-string v2, "ENABLED"

    move-object v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIncallTouchUiNoProximitySensor:Z

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- regular in-call touch UI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    if-eqz v2, :cond_1

    const-string v2, "ENABLED"

    move-object v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 144
    return-void

    .line 132
    :cond_0
    const-string v2, "DISABLED"

    move-object v2, v3

    goto :goto_0

    .line 142
    :cond_1
    const-string v2, "DISABLED"

    move-object v2, v3

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/internal/widget/SlidingTab;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallTouchUi;)Lcom/android/internal/widget/SlidingTab;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    return-object v0
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    .prologue
    .line 770
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 777
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 778
    new-instance v1, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 794
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SlidingTab;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1025
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    return-void
.end method

.method private showIncomingCallWidget()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 824
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 825
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 827
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab;->clearAnimation()V

    .line 829
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    .line 830
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 831
    return-void
.end method

.method private updateLeftTabResources()V
    .locals 5

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    const v1, 0x7f0200d8

    const v2, 0x1080234

    const v3, 0x108020c

    const v4, 0x108021f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 759
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    const v1, 0x7f0c039e

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 760
    const-string v0, "updateLeftTabResources..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method private updateRightTabResources()V
    .locals 6

    .prologue
    .line 743
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 744
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0200da

    :goto_0
    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v3, :cond_1

    const v3, 0x1080232

    :goto_1
    iget-boolean v4, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v4, :cond_2

    const v4, 0x108021d

    :goto_2
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v5, :cond_3

    const v5, 0x1080230

    :goto_3
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 749
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v2, :cond_4

    const v2, 0x7f0c03a0

    :goto_4
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 750
    return-void

    .line 744
    :cond_0
    const v2, 0x7f0200db

    goto :goto_0

    :cond_1
    const v3, 0x1080235

    goto :goto_1

    :cond_2
    const v4, 0x108021e

    goto :goto_2

    :cond_3
    const v5, 0x1080231

    goto :goto_3

    .line 749
    :cond_4
    const v2, 0x7f0c039f

    goto :goto_4
.end method


# virtual methods
.method hideConnecttedCallWidget()V
    .locals 3

    .prologue
    .line 800
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 805
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 806
    new-instance v1, Lcom/android/phone/InCallTouchUi$2;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$2;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 816
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SlidingTab;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method hideInCallControls(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 411
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 412
    .local v1, phoneType:I
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 413
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 414
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 415
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 416
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 417
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 418
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 419
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 420
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 421
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v2, :cond_0

    .line 422
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f0c020e

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 423
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 430
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f0c020d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 427
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method isIncallTouchUiWithNoProximitySensor()Z
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIncallTouchUiNoProximitySensor:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isIncomingCallTouchUiEnabled()Z
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAllowIncomingCallTouchUi:Z

    return v0
.end method

.method isTouchUiEnabled()Z
    .locals 5

    .prologue
    .line 590
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 591
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 592
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 593
    .local v2, width:I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 594
    .local v1, height:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 604
    iget-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    return v3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const-string v4, ", id "

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 384
    .local v0, id:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 386
    packed-switch v0, :pswitch_data_0

    .line 403
    :pswitch_0
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :goto_0
    return-void

    .line 399
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch 0x7f070089
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const v7, 0x7f0200d8

    const v6, 0x1080234

    const v5, 0x108021f

    const v4, 0x108020c

    .line 152
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InCallTouchUi onFinishInflate(this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 158
    const v1, 0x7f070085

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SlidingTab;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    .line 159
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x7f0200d5

    const v3, 0x1080233

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 165
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x1080215

    const v3, 0x108022c

    invoke-virtual {v1, v7, v6, v2, v3}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 173
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x7f0c0250

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 174
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x7f0c0251

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 176
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 180
    const v1, 0x7f070086

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SlidingTab;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    .line 181
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v7, v6, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 187
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x7f0200db

    const v3, 0x1080235

    const v4, 0x108021e

    const v5, 0x1080231

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 193
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x7f0c039e

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 194
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x7f0c039f

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 195
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 196
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 201
    const v1, 0x7f070087

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 205
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070092

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    .line 206
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070093

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    .line 208
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070098

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    .line 210
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070099

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    .line 212
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 214
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070095

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    .line 216
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070097

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 218
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButtonContainer:Landroid/view/View;

    .line 222
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ImageButton;

    .line 223
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07008a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButtonLabel:Landroid/widget/TextView;

    .line 226
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07008b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButtonContainer:Landroid/view/View;

    .line 227
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    .line 228
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButtonLabel:Landroid/widget/TextView;

    .line 230
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButtonLabel:Landroid/widget/TextView;

    const v2, 0x7f0c0215

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 238
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButtonContainer:Landroid/view/View;

    .line 239
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/widget/ImageButton;

    .line 240
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    new-instance v0, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;-><init>(Lcom/android/phone/InCallTouchUi;)V

    .line 251
    .local v0, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 254
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 255
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 256
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 257
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 259
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldIcon:Landroid/graphics/drawable/Drawable;

    .line 264
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mUnholdIcon:Landroid/graphics/drawable/Drawable;

    .line 265
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 266
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 268
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070091

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControlsRow2:Landroid/view/View;

    .line 269
    return-void

    .line 235
    .end local v0           #smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButtonLabel:Landroid/widget/TextView;

    const v2, 0x7f0c0214

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 7
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 855
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v4, :cond_0

    .line 862
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 864
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    packed-switch p2, :pswitch_data_0

    .line 906
    const-string v4, "InCallTouchUi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGrabbedStateChange: unexpected grabbedState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v1, 0x0

    .line 909
    .local v1, hintTextResId:I
    const/4 v0, 0x0

    .line 915
    .local v0, hintColorResId:I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1, v0}, Lcom/android/phone/InCallScreen;->updateSlidingTabHint(II)V

    .line 917
    .end local v0           #hintColorResId:I
    .end local v1           #hintTextResId:I
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void

    .line 866
    .restart local v3       #phone:Lcom/android/internal/telephony/Phone;
    :pswitch_0
    const/4 v1, 0x0

    .line 867
    .restart local v1       #hintTextResId:I
    const/4 v0, 0x0

    .line 868
    .restart local v0       #hintColorResId:I
    goto :goto_0

    .line 877
    .end local v0           #hintColorResId:I
    .end local v1           #hintTextResId:I
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_1

    .line 878
    const v1, 0x7f0c03a1

    .line 879
    .restart local v1       #hintTextResId:I
    const v0, 0x7f080003

    .line 880
    .restart local v0       #hintColorResId:I
    const-string v4, "Left handle---hangup hint!"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 882
    .end local v0           #hintColorResId:I
    .end local v1           #hintTextResId:I
    :cond_1
    const v1, 0x7f0c024a

    .line 883
    .restart local v1       #hintTextResId:I
    const v0, 0x7f080001

    .line 884
    .restart local v0       #hintColorResId:I
    const-string v4, "Left handle---answer hint!"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 892
    .end local v0           #hintColorResId:I
    .end local v1           #hintTextResId:I
    :pswitch_2
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_3

    .line 893
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 894
    .local v2, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v4, v2, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v4, :cond_2

    const v4, 0x7f0c03a3

    move v1, v4

    .line 895
    .restart local v1       #hintTextResId:I
    :goto_1
    const v0, 0x7f080001

    .line 896
    .restart local v0       #hintColorResId:I
    const-string v4, "Right handle---speaker hint!"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 894
    .end local v0           #hintColorResId:I
    .end local v1           #hintTextResId:I
    :cond_2
    const v4, 0x7f0c03a2

    move v1, v4

    goto :goto_1

    .line 898
    .end local v2           #inCallControlState:Lcom/android/phone/InCallControlState;
    :cond_3
    const v1, 0x7f0c024c

    .line 899
    .restart local v1       #hintTextResId:I
    const v0, 0x7f080003

    .line 900
    .restart local v0       #hintColorResId:I
    const-string v4, "Right handle---decline hint!"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 864
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 7
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const v6, 0x7f07001a

    const v5, 0x7f070019

    const/4 v4, 0x0

    const-string v3, "reject trigger: mInCallScreen is null"

    const-string v2, "InCallTouchUi"

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 642
    packed-switch p2, :pswitch_data_0

    .line 731
    const-string v0, "InCallTouchUi"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v4, v4}, Lcom/android/phone/InCallScreen;->updateSlidingTabHint(II)V

    .line 738
    return-void

    .line 644
    :pswitch_0
    const-string v0, "LEFT_HANDLE: answer!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 646
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 650
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    .line 655
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->isIncallTouchUiWithNoProximitySensor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_2

    .line 660
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 661
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f070098

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 663
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->updateLeftTabResources()V

    goto :goto_0

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v5}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 668
    const-string v0, "LEFT_HANDLE: answer!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :cond_2
    const-string v0, "InCallTouchUi"

    const-string v0, "reject trigger: mInCallScreen is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_4

    .line 677
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v5}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 679
    :cond_4
    const-string v0, "InCallTouchUi"

    const-string v0, "answer trigger: mInCallScreen is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 685
    :pswitch_1
    const-string v0, "RIGHT_HANDLE: reject!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->isIncallTouchUiWithNoProximitySensor()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 691
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    .line 694
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_6

    .line 698
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_5

    .line 699
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 700
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->updateRightTabResources()V

    goto/16 :goto_0

    .line 701
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 703
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 704
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v6}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 705
    const-string v0, "RIGHT_HANDLE: reject!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 709
    :cond_6
    const-string v0, "InCallTouchUi"

    const-string v0, "reject trigger: mInCallScreen is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 714
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 718
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    .line 721
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_8

    .line 723
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v6}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_0

    .line 725
    :cond_8
    const-string v0, "InCallTouchUi"

    const-string v0, "reject trigger: mInCallScreen is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 642
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetHangUp()V
    .locals 1

    .prologue
    .line 1017
    const-string v0, "resetHangUp..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1018
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->updateLeftTabResources()V

    .line 1019
    return-void
.end method

.method public resetSpeaker()V
    .locals 0

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->updateRightTabResources()V

    .line 1013
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 148
    return-void
.end method

.method showConnecttedCallWidget()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 836
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 837
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 839
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1}, Lcom/android/internal/widget/SlidingTab;->clearAnimation()V

    .line 841
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    .line 842
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 843
    return-void
.end method

.method showInCallControls(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 846
    return-void

    .line 845
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method showInCallControlsRow2(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControlsRow2:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1031
    return-void

    .line 1030
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method updateInCallControls(Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x8

    const-string v7, "InCallTouchUi"

    .line 438
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 451
    .local v1, phoneType:I
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 456
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v2, :cond_5

    .line 457
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 458
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 459
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 476
    :goto_0
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v2, :cond_1

    .line 477
    if-eq v1, v6, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 484
    :cond_0
    const-string v2, "InCallTouchUi"

    const-string v2, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 500
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 502
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v2, :cond_9

    .line 504
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f0c020e

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 505
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 515
    :goto_2
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 516
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 519
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 520
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 523
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 524
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v3, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 534
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHoldButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mSwapButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v2, :cond_2

    .line 550
    const-string v2, "InCallTouchUi"

    const-string v2, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 554
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v2, :cond_3

    .line 560
    const-string v2, "InCallTouchUi"

    const-string v2, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->isIncallTouchUiWithNoProximitySensor()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 571
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->updateRightTabResources()V

    .line 572
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->updateLeftTabResources()V

    .line 576
    :cond_4
    return-void

    .line 460
    :cond_5
    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v2, :cond_6

    .line 461
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 462
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 463
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 472
    :cond_6
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 473
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 474
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 486
    :cond_7
    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 489
    const-string v2, "updateInCallControls: CDMA: Add and Merge both enabled"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 491
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 509
    :cond_9
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f0c020d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 510
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 10
    .parameter "cm"

    .prologue
    .line 276
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v6, :cond_0

    .line 277
    const-string v6, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 379
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    .line 282
    .local v5, state:Lcom/android/internal/telephony/Phone$State;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- updateState: CallManager state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 284
    const/4 v4, 0x0

    .line 285
    .local v4, showIncomingCallControls:Z
    const/4 v3, 0x0

    .line 287
    .local v3, showInCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 293
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-nez v6, :cond_4

    .line 296
    iget-boolean v6, p0, Lcom/android/phone/InCallTouchUi;->mAllowIncomingCallTouchUi:Z

    if-eqz v6, :cond_2

    .line 302
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 303
    const-string v6, "- updateState: RINGING!  Showing incoming call controls..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 304
    const/4 v4, 0x1

    .line 311
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 312
    .local v0, now:J
    iget-wide v6, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    .line 313
    const-string v6, "updateState: Too soon after last action; not drawing!"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 314
    const/4 v4, 0x0

    .line 337
    .end local v0           #now:J
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 339
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/Phone;)V

    .line 342
    :cond_3
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 343
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 326
    :cond_4
    iget-boolean v6, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    if-eqz v6, :cond_2

    .line 329
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->okToShowInCallTouchUi()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 330
    const/4 v3, 0x1

    goto :goto_1

    .line 332
    :cond_5
    const-string v6, "- updateState: NOT OK to show touch UI; disabling..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 349
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->isIncallTouchUiWithNoProximitySensor()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 350
    if-eqz v3, :cond_7

    .line 351
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallTouchUi;->hideInCallControls(Lcom/android/internal/telephony/Phone;)V

    .line 352
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->allowShowCallWidget()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 353
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->showConnecttedCallWidget()V

    .line 354
    const-string v6, "showConnecttedCallWidget..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 361
    :cond_7
    if-eqz v4, :cond_9

    .line 365
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->isIncallTouchUiWithNoProximitySensor()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 366
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->hideConnecttedCallWidget()V

    .line 369
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget()V

    .line 374
    :goto_2
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    if-eqz v3, :cond_a

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 371
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    goto :goto_2

    .line 374
    :cond_a
    const/16 v7, 0x8

    goto :goto_3
.end method
