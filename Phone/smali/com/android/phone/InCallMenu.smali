.class Lcom/android/phone/InCallMenu;
.super Ljava/lang/Object;
.source "InCallMenu.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE/InCallMenu"


# instance fields
.field mAddCall:Lcom/android/phone/InCallMenuItemView;

.field mAnswer:Lcom/android/phone/InCallMenuItemView;

.field mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

.field mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

.field mBluetooth:Lcom/android/phone/InCallMenuItemView;

.field mEndCall:Lcom/android/phone/InCallMenuItemView;

.field mHold:Lcom/android/phone/InCallMenuItemView;

.field mIgnore:Lcom/android/phone/InCallMenuItemView;

.field private mInCallMenuView:Lcom/android/phone/InCallMenuView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field mManageConference:Lcom/android/phone/InCallMenuItemView;

.field mMergeCalls:Lcom/android/phone/InCallMenuItemView;

.field mMute:Lcom/android/phone/InCallMenuItemView;

.field mRecord:Lcom/android/phone/InCallMenuItemView;

.field mShowDialpad:Lcom/android/phone/InCallMenuItemView;

.field mSmsreject:Lcom/android/phone/InCallMenuItemView;

.field mSpeaker:Lcom/android/phone/InCallMenuItemView;

.field mSwapCalls:Lcom/android/phone/InCallMenuItemView;

.field wrappedContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 91
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 669
    const-string v0, "PHONE/InCallMenu"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-void
.end method


# virtual methods
.method HideMenuItemForNoProximitySensor()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 650
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 651
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v4}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 652
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v4}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 653
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v4}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 654
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 655
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 656
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 657
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 658
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 659
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v2, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 660
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v4}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 662
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 663
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 664
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v1, v3}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 665
    return-void
.end method

.method clearInCallScreenReference()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 99
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v0}, Lcom/android/phone/InCallMenuView;->clearInCallScreenReference()V

    .line 100
    :cond_0
    return-void
.end method

.method getView()Lcom/android/phone/InCallMenuView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    return-object v0
.end method

.method hideMenuItem()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 639
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 640
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 641
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 642
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 643
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 644
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 645
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 646
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 647
    return-void
.end method

.method initMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 122
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x10300a6

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    .line 126
    new-instance v2, Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v2, v3, v4}, Lcom/android/phone/InCallMenuView;-><init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    .line 132
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    .line 133
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 134
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c0046

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 136
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x10801cc

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 138
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    .line 139
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f07000a

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 140
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c0047

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 142
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0200e2

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 144
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    .line 145
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f07000b

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 146
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c0042

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 148
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0200e3

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 150
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    .line 151
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f07000c

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 152
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c0045

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 154
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x1080033

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 156
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    .line 157
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f07000d

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 158
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v6, :cond_6

    .line 163
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c0215

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 169
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0200e6

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 171
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    .line 172
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f07000e

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 173
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c0044

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 175
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0200e4

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 181
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    .line 182
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f07000f

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 183
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c003b

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 185
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 187
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mRecord:Lcom/android/phone/InCallMenuItemView;

    .line 188
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mRecord:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070017

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 189
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mRecord:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mRecord:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c0005

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 191
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mRecord:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 193
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    .line 194
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 195
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c003a

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 197
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 199
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    .line 200
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070011

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 201
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c0040

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 203
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 205
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    .line 206
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070012

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 207
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c0041

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 209
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 211
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    .line 212
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070013

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 213
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c0049

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 216
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    .line 217
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070014

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 218
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c004a

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 221
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    .line 222
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070015

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 223
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c004e

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 226
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    .line 227
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 228
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c004f

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 232
    new-instance v2, Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/InCallMenu;->mSmsreject:Lcom/android/phone/InCallMenuItemView;

    .line 233
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSmsreject:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f070018

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 234
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSmsreject:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSmsreject:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c003c

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 254
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 257
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 258
    .local v1, phoneType:I
    if-eq v1, v5, :cond_0

    invoke-static {v0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v7}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v7}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 266
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSmsreject:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 268
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 269
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 270
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 271
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 277
    if-ne v1, v6, :cond_2

    .line 278
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 279
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 281
    :cond_2
    if-eq v1, v5, :cond_3

    invoke-static {v0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 283
    :cond_3
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 284
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 285
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 287
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 288
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 289
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 292
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 295
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mRecord:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v2, v3, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 297
    :cond_5
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v2}, Lcom/android/phone/InCallMenuView;->dumpState()V

    .line 298
    return-void

    .line 165
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #phoneType:I
    :cond_6
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v3, 0x7f0c0043

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    goto/16 :goto_0
.end method

.method setCdmaHoldDisable()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 674
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v0}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 675
    return-void
.end method

.method updateItems(Lcom/android/internal/telephony/CallManager;)Z
    .locals 18
    .parameter "cm"

    .prologue
    .line 317
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v15

    sget-object v16, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 319
    const/4 v15, 0x0

    .line 634
    :goto_0
    return v15

    .line 322
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v6

    .line 323
    .local v6, hasRingingCall:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    .line 324
    .local v4, hasActiveCall:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 325
    .local v3, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    .line 328
    .local v5, hasHoldingCall:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const v16, 0x7f0c0215

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 339
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    const/16 v16, 0x3

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    const/4 v15, 0x1

    move v11, v15

    .line 342
    .local v11, isSipPhone:Z
    :goto_2
    if-eqz v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-static {v15}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mRecord:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v8

    .line 362
    .local v8, inConferenceCall:Z
    if-nez v8, :cond_3

    const/4 v15, 0x1

    move v13, v15

    .line 363
    .local v13, showShowDialpad:Z
    :goto_3
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    move v2, v15

    .line 364
    .local v2, enableShowDialpad:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    invoke-virtual {v15, v13}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    invoke-virtual {v15, v2}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v9

    .line 367
    .local v9, isDtmfDialerOpened:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    if-eqz v9, :cond_5

    const v16, 0x7f0c0048

    :goto_5
    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v14

    .line 377
    .local v14, speakerOn:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    invoke-virtual {v15, v14}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 380
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 333
    .end local v2           #enableShowDialpad:Z
    .end local v8           #inConferenceCall:Z
    .end local v9           #isDtmfDialerOpened:Z
    .end local v11           #isSipPhone:Z
    .end local v13           #showShowDialpad:Z
    .end local v14           #speakerOn:Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const v16, 0x7f0c0043

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    goto/16 :goto_1

    .line 339
    :cond_2
    const/4 v15, 0x0

    move v11, v15

    goto/16 :goto_2

    .line 362
    .restart local v8       #inConferenceCall:Z
    .restart local v11       #isSipPhone:Z
    :cond_3
    const/4 v15, 0x0

    move v13, v15

    goto/16 :goto_3

    .line 363
    .restart local v13       #showShowDialpad:Z
    :cond_4
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_4

    .line 367
    .restart local v2       #enableShowDialpad:Z
    .restart local v9       #isDtmfDialerOpened:Z
    :cond_5
    const v16, 0x7f0c0047

    goto :goto_5

    .line 384
    .end local v2           #enableShowDialpad:Z
    .end local v8           #inConferenceCall:Z
    .end local v9           #isDtmfDialerOpened:Z
    .end local v13           #showShowDialpad:Z
    :cond_6
    if-eqz v6, :cond_d

    .line 389
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    .line 392
    .local v12, phoneType:I
    const/4 v15, 0x2

    if-ne v12, v15, :cond_7

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 417
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mRecord:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 428
    if-nez v11, :cond_a

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSmsreject:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSmsreject:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 439
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 441
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 401
    :cond_7
    const/4 v15, 0x1

    if-eq v12, v15, :cond_8

    const/4 v15, 0x3

    if-ne v12, v15, :cond_9

    .line 403
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto/16 :goto_6

    .line 414
    :cond_9
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unexpected phone type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 432
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSmsreject:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSmsreject:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    goto/16 :goto_7

    .line 446
    .end local v12           #phoneType:I
    :cond_b
    if-nez v11, :cond_c

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSmsreject:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSmsreject:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mRecord:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 468
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 470
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 482
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v7

    .line 487
    .local v7, inCallControlState:Lcom/android/phone/InCallControlState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 500
    iget-boolean v15, v7, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-nez v15, :cond_11

    const/4 v15, 0x1

    move v13, v15

    .line 501
    .restart local v13       #showShowDialpad:Z
    :goto_8
    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v15

    if-eqz v15, :cond_12

    const/4 v15, 0x1

    move v2, v15

    .line 502
    .restart local v2       #enableShowDialpad:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    invoke-virtual {v15, v13}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    invoke-virtual {v15, v2}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    move/from16 v16, v0

    if-eqz v16, :cond_13

    const v16, 0x7f0c0048

    :goto_a
    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 533
    const/4 v10, 0x0

    .line 537
    .local v10, isNowSipPhone:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    const/16 v16, 0x3

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    const/16 v16, 0x3

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_f

    .line 539
    :cond_e
    const/4 v10, 0x1

    .line 545
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->wrappedContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090014

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    if-eqz v15, :cond_14

    if-nez v10, :cond_14

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mRecord:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mRecord:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->recordEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mRecord:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->recordIndicatorOn:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 558
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 570
    const-string v15, "PHONE/InCallMenu"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "yangliu33, inCallControlState.supportsHold = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v15, "PHONE/InCallMenu"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "yangliu33, inCallControlState.onHold = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v15, "PHONE/InCallMenu"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "yangliu33, inCallControlState.canHold = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSmsreject:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSmsreject:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 598
    if-nez v10, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_16

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/phone/InCallScreen;->isIncallTouchUiWithNoProximitySensor()Z

    move-result v15

    if-eqz v15, :cond_15

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallMenu;->HideMenuItemForNoProximitySensor()V

    .line 632
    :cond_10
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 634
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 500
    .end local v2           #enableShowDialpad:Z
    .end local v10           #isNowSipPhone:Z
    .end local v13           #showShowDialpad:Z
    :cond_11
    const/4 v15, 0x0

    move v13, v15

    goto/16 :goto_8

    .line 501
    .restart local v13       #showShowDialpad:Z
    :cond_12
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_9

    .line 504
    .restart local v2       #enableShowDialpad:Z
    :cond_13
    const v16, 0x7f0c0047

    goto/16 :goto_a

    .line 550
    .restart local v10       #isNowSipPhone:Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mRecord:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mRecord:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    goto/16 :goto_b

    .line 605
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/phone/InCallScreen;->isTouchUiEnabled()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallMenu;->hideMenuItem()V

    goto :goto_c

    .line 610
    :cond_16
    if-nez v10, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_19

    .line 613
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/phone/InCallScreen;->isIncallTouchUiWithNoProximitySensor()Z

    move-result v15

    if-eqz v15, :cond_18

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto/16 :goto_c

    .line 622
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/phone/InCallScreen;->isTouchUiEnabled()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallMenu;->hideMenuItem()V

    goto/16 :goto_c

    .line 627
    :cond_19
    const-string v15, "Wrong Phone type..."

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    goto/16 :goto_c
.end method
