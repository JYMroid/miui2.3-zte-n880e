.class public Lcom/android/phone/CallCard;
.super Landroid/widget/FrameLayout;
.source "CallCard.java"

# interfaces
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/phone/CallRecordTime$OnTickListener;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CallCard"

.field private static mSettingsKeyArray:[Ljava/lang/String;


# instance fields
.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mCall:Lcom/android/internal/telephony/Call;

.field private mCallRecordTime:Lcom/android/phone/CallRecordTime;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mDensity:F

.field private mElapsedTime:Landroid/widget/TextView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallNumber:Ljava/lang/String;

.field private mIncomingSub:I

.field private mLabel:Landroid/widget/TextView;

.field private mManageConferencePhotoButton:Landroid/widget/Button;

.field private mMenuButtonHint:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

.field private mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mRecordelapsedTime:Landroid/widget/TextView;

.field private mRecording:Landroid/widget/TextView;

.field private mRotarySelectorHintColorResId:I

.field private mRotarySelectorHintTextResId:I

.field private mSecondaryCallInfo:Landroid/view/ViewGroup;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallPhoto:Landroid/widget/ImageView;

.field private mSecondaryCallStatus:Landroid/widget/TextView;

.field private mSocialStatus:Landroid/widget/TextView;

.field private mSubInfo:Landroid/widget/TextView;

.field private mTextColorCallTypeSip:I

.field private mTextColorConnected:I

.field private mTextColorConnectedBluetooth:I

.field private mTextColorDefaultPrimary:I

.field private mTextColorDefaultSecondary:I

.field private mTextColorEnded:I

.field private mTextColorOnHold:I

.field private mUpperTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SMART_IP_DIAL_ENABLED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "IP_NUMBER"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LOCAL_NUMBER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PHONE_NUMBER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "LOCATION_DISPLAY_ENABLED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallCard;->mSettingsKeyArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 155
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    const-string v1, "CallCard constructor..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 159
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

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 164
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030003

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 176
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 178
    new-instance v1, Lcom/android/phone/CallTime;

    invoke-direct {v1, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 179
    new-instance v1, Lcom/android/phone/CallRecordTime;

    invoke-direct {v1, p0}, Lcom/android/phone/CallRecordTime;-><init>(Lcom/android/phone/CallRecordTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    .line 182
    new-instance v1, Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    .line 184
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallCard;->mDensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 186
    return-void

    .line 169
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 170
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030002

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method private clearUpperTitle()V
    .locals 3

    .prologue
    .line 1935
    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 1936
    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 2075
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 2076
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2077
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2079
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2080
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2082
    :cond_0
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 19
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 424
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "displayMainCallStatus(call "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")..."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 426
    if-nez p2, :cond_1

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 433
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    .line 434
    .local v13, state:Lcom/android/internal/telephony/Call$State;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "  - call.state: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 435
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mCall:Lcom/android/internal/telephony/Call;

    .line 436
    sget-object v16, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 504
    const-string v16, "CallCard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "displayMainCallStatus: unexpected call state: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSubInfo:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 510
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getSubscription()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateSubInfo(I)V

    .line 513
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 515
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 517
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 648
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 653
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mRotarySelectorHintTextResId:I

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mRotarySelectorHintTextResId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mRotarySelectorHintColorResId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 440
    :pswitch_0
    const-string v16, "displayMainCallStatus: start periodicUpdateTimer"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->reset()V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    goto/16 :goto_1

    .line 449
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 455
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 462
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 474
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 493
    :pswitch_5
    const-string v16, "CallCard"

    const-string v17, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 521
    :cond_3
    const/4 v6, 0x0

    .line 522
    .local v6, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    .line 523
    .local v10, phoneType:I
    const/16 v16, 0x2

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 524
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 532
    :goto_3
    if-nez v6, :cond_7

    .line 533
    const-string v16, "displayMainCallStatus: connection is null, using default values."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v7

    .line 539
    .local v7, info:Lcom/android/internal/telephony/CallerInfo;
    sget v16, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 525
    .end local v7           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_4
    const/16 v16, 0x1

    move v0, v10

    move/from16 v1, v16

    if-eq v0, v1, :cond_5

    const/16 v16, 0x3

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 527
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_3

    .line 529
    :cond_6
    new-instance v16, Ljava/lang/IllegalStateException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unexpected phone type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 541
    :cond_7
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "  - CONN: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", state = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v11

    .line 546
    .local v11, presentation:I
    const/4 v12, 0x1

    .line 547
    .local v12, runQuery:Z
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v8

    .line 548
    .local v8, o:Ljava/lang/Object;
    move-object v0, v8

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v16, v0

    move-object v0, v8

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v9, v0

    move-object v0, v9

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v12

    .line 557
    :goto_4
    const/16 v16, 0x2

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 558
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v9

    .line 559
    .local v9, obj:Ljava/lang/Object;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 560
    .local v15, updatedNumber:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v14

    .line 561
    .local v14, updatedCnapName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 562
    .restart local v7       #info:Lcom/android/internal/telephony/CallerInfo;
    move-object v0, v9

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v16, v0

    if-eqz v16, :cond_c

    .line 563
    move-object v0, v8

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v9, v0

    .end local v9           #obj:Ljava/lang/Object;
    iget-object v7, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 568
    :cond_8
    :goto_5
    if-eqz v7, :cond_a

    .line 569
    if-eqz v15, :cond_9

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 570
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "- displayMainCallStatus: updatedNumber = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 572
    const/4 v12, 0x1

    .line 574
    :cond_9
    if-eqz v14, :cond_a

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 575
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "- displayMainCallStatus: updatedCnapName = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 577
    const/4 v12, 0x1

    .line 582
    .end local v7           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v14           #updatedCnapName:Ljava/lang/String;
    .end local v15           #updatedNumber:Ljava/lang/String;
    :cond_a
    if-eqz v12, :cond_e

    .line 583
    const-string v16, "- displayMainCallStatus: starting CallerInfo query..."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v7

    .line 586
    .local v7, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object v0, v7

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v16, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v11

    move/from16 v3, v17

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 552
    .end local v7           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v12

    goto/16 :goto_4

    .line 564
    .local v7, info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v9       #obj:Ljava/lang/Object;
    .restart local v14       #updatedCnapName:Ljava/lang/String;
    .restart local v15       #updatedNumber:Ljava/lang/String;
    :cond_c
    move-object v0, v8

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 565
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v7, v0

    goto/16 :goto_5

    .line 586
    .end local v9           #obj:Ljava/lang/Object;
    .end local v14           #updatedCnapName:Ljava/lang/String;
    .end local v15           #updatedNumber:Ljava/lang/String;
    .local v7, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_d
    const/16 v17, 0x0

    goto :goto_6

    .line 591
    .end local v7           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_e
    const-string v16, "- displayMainCallStatus: using data we already have..."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 592
    move-object v0, v8

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_10

    .line 593
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v5, v0

    .line 609
    .local v5, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 610
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v16

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 611
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v16

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 614
    invoke-virtual {v5}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 615
    const-string v16, "CallCard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "before set, ci.name = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f0c009d

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 617
    const-string v16, "CallCard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "set the voivamail name:ci.name = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_f
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", Number/Name Presentation="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v5

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", Number="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 624
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "   ==> Got CallerInfo; updating display: ci = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 625
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v11

    move/from16 v3, v16

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 626
    .end local v5           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_10
    move-object v0, v8

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v16, v0

    if-eqz v16, :cond_11

    .line 627
    check-cast v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v8           #o:Ljava/lang/Object;
    iget-object v5, v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 628
    .restart local v5       #ci:Lcom/android/internal/telephony/CallerInfo;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", Number/Name Presentation="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v5

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 631
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "   ==> Got CallerInfoToken; updating display: ci = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 632
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v11

    move/from16 v3, v16

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_2

    .line 634
    .end local v5           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v8       #o:Ljava/lang/Object;
    :cond_11
    const-string v16, "CallCard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 13
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 1190
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "displayOnHoldCallStatus(call ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1192
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1193
    :cond_0
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1327
    :goto_0
    return-void

    .line 1196
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 1197
    .local v7, phone:Lcom/android/internal/telephony/Phone;
    const/4 v8, 0x0

    .line 1198
    .local v8, showSecondaryCallInfo:Z
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .line 1199
    .local v9, state:Lcom/android/internal/telephony/Call$State;
    sget-object v10, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 1300
    :pswitch_0
    const/4 v8, 0x0

    .line 1304
    :goto_1
    if-eqz v8, :cond_a

    .line 1307
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1320
    iget-object v10, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 1321
    .local v6, okToShowLabels:Z
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz v6, :cond_8

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1322
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    if-eqz v6, :cond_9

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1208
    .end local v6           #okToShowLabels:Z
    :pswitch_1
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1209
    const-string v10, "==> conference call."

    invoke-direct {p0, v10}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1210
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c0031

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v11, 0x7f0200fe

    invoke-static {v10, v11}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1236
    :goto_4
    const/4 v8, 0x1

    .line 1238
    goto :goto_1

    .line 1216
    :cond_2
    const-string v10, "==> NOT a conf call; call startGetCallerInfo..."

    invoke-direct {p0, v10}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v10, p2, p0, v11}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 1219
    .local v4, infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v11, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1229
    iget-boolean v10, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v10, :cond_3

    .line 1230
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    iget-object v11, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v10, v11}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto :goto_4

    .line 1232
    :cond_3
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v11, 0x7f020102

    invoke-static {v10, v11}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_4

    .line 1244
    .end local v4           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :pswitch_2
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    .line 1245
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1246
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_4

    .line 1251
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c01e0

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v11, 0x7f020102

    invoke-static {v10, v11}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1287
    :goto_5
    const/4 v8, 0x1

    .line 1289
    goto/16 :goto_1

    .line 1257
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1258
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v10, v0, p0, v11}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 1264
    .restart local v4       #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v3, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1266
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1267
    .local v5, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1268
    .local v2, forceGenericPhoto:Z
    if-eqz v3, :cond_5

    iget v10, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v11, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v10, v11, :cond_5

    .line 1270
    iget v10, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-direct {p0, v10}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v5

    .line 1271
    const/4 v2, 0x1

    .line 1273
    :cond_5
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1281
    if-nez v2, :cond_6

    iget-boolean v10, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v10, :cond_6

    .line 1282
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v10, v3}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto :goto_5

    .line 1284
    :cond_6
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v11, 0x7f020102

    invoke-static {v10, v11}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_5

    .line 1291
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2           #forceGenericPhoto:Z
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v5           #name:Ljava/lang/String;
    :cond_7
    const-string v10, "CallCard"

    const-string v11, "displayOnHoldCallStatus: ACTIVE state on non-CDMA device"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const/4 v8, 0x0

    .line 1294
    goto/16 :goto_1

    .line 1321
    .restart local v6       #okToShowLabels:Z
    :cond_8
    const/4 v11, 0x4

    goto/16 :goto_2

    .line 1322
    :cond_9
    const/4 v11, 0x4

    goto/16 :goto_3

    .line 1325
    .end local v6           #okToShowLabels:Z
    :cond_a
    iget-object v10, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 1199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .parameter "call"

    .prologue
    .line 1330
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1333
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 1334
    const-string v3, "getCallFailedString: connection is null, using default values."

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1337
    const v2, 0x7f0c01dd

    .line 1410
    .local v2, resID:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1340
    .end local v2           #resID:I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1346
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1406
    const v2, 0x7f0c01dd

    .restart local v2       #resID:I
    goto :goto_0

    .line 1348
    .end local v2           #resID:I
    :pswitch_0
    const v2, 0x7f0c0012

    .line 1349
    .restart local v2       #resID:I
    goto :goto_0

    .line 1352
    .end local v2           #resID:I
    :pswitch_1
    const v2, 0x7f0c0013

    .line 1353
    .restart local v2       #resID:I
    goto :goto_0

    .line 1356
    .end local v2           #resID:I
    :pswitch_2
    const v2, 0x7f0c0014

    .line 1357
    .restart local v2       #resID:I
    goto :goto_0

    .line 1360
    .end local v2           #resID:I
    :pswitch_3
    const v2, 0x7f0c0015

    .line 1361
    .restart local v2       #resID:I
    goto :goto_0

    .line 1364
    .end local v2           #resID:I
    :pswitch_4
    const v2, 0x7f0c0016

    .line 1365
    .restart local v2       #resID:I
    goto :goto_0

    .line 1368
    .end local v2           #resID:I
    :pswitch_5
    const v2, 0x7f0c0017

    .line 1369
    .restart local v2       #resID:I
    goto :goto_0

    .line 1372
    .end local v2           #resID:I
    :pswitch_6
    const v2, 0x7f0c0019

    .line 1373
    .restart local v2       #resID:I
    goto :goto_0

    .line 1376
    .end local v2           #resID:I
    :pswitch_7
    const v2, 0x7f0c0018

    .line 1377
    .restart local v2       #resID:I
    goto :goto_0

    .line 1381
    .end local v2           #resID:I
    :pswitch_8
    const v2, 0x7f0c001a

    .line 1382
    .restart local v2       #resID:I
    goto :goto_0

    .line 1385
    .end local v2           #resID:I
    :pswitch_9
    const v2, 0x7f0c001b

    .line 1386
    .restart local v2       #resID:I
    goto :goto_0

    .line 1389
    .end local v2           #resID:I
    :pswitch_a
    const v2, 0x7f0c001c

    .line 1390
    .restart local v2       #resID:I
    goto :goto_0

    .line 1393
    .end local v2           #resID:I
    :pswitch_b
    const v2, 0x7f0c001d

    .line 1394
    .restart local v2       #resID:I
    goto :goto_0

    .line 1397
    .end local v2           #resID:I
    :pswitch_c
    const v2, 0x7f0c001e

    .line 1398
    .restart local v2       #resID:I
    goto :goto_0

    .line 1402
    .end local v2           #resID:I
    :pswitch_d
    const v2, 0x7f0c0030

    .line 1403
    .restart local v2       #resID:I
    goto :goto_0

    .line 1346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getCityName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "number"

    .prologue
    .line 1637
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1638
    .local v0, content:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 1639
    .local v1, numlocatorUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1640
    .local v8, cursor:Landroid/database/Cursor;
    const-string v6, ""

    .line 1642
    .local v6, cityname:Ljava/lang/String;
    :try_start_0
    const-string v2, "content://zte.com.cn.providers.numberlocatorprovider/location"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1644
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1645
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1646
    const-string v2, "cityname"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1647
    .local v7, citynameColumn:I
    new-instance v2, Ljava/lang/String;

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1648
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CityName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1654
    .end local v7           #citynameColumn:I
    :cond_0
    if-eqz v8, :cond_1

    .line 1655
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1658
    :cond_1
    :goto_0
    return-object v6

    .line 1650
    :catch_0
    move-exception v2

    move-object v9, v2

    .line 1651
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "getCityName error"

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1652
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1654
    if-eqz v8, :cond_1

    .line 1655
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1654
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_2

    .line 1655
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "phone"

    .prologue
    .line 1943
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 1945
    .local v1, rawNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1946
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1950
    .local v0, formattedNumber:Ljava/lang/String;
    :goto_0
    const v3, 0x7f0c01e1

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1951
    .local v2, titleFormat:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1948
    .end local v0           #formattedNumber:Ljava/lang/String;
    .end local v2           #titleFormat:Ljava/lang/String;
    :cond_0
    const v3, 0x7f0c000d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #formattedNumber:Ljava/lang/String;
    goto :goto_0
.end method

.method private getPresentationString(I)Ljava/lang/String;
    .locals 3
    .parameter "presentation"

    .prologue
    .line 1663
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1664
    .local v0, name:Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 1665
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c000e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1669
    :cond_0
    :goto_0
    return-object v0

    .line 1666
    :cond_1
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 1667
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c000f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSuppSvcNotification()Ljava/lang/String;
    .locals 5

    .prologue
    const v3, 0x7f0c01ca

    .line 937
    invoke-static {}, Lcom/android/phone/CallNotifier;->getSuppSvcNotification()Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    move-result-object v1

    .line 939
    .local v1, suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    const-string v0, ""

    .line 940
    .local v0, callForwardTxt:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 941
    iget v2, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    packed-switch v2, :pswitch_data_0

    .line 1066
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received invalid Notification Type :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    :goto_0
    return-object v0

    .line 944
    :pswitch_0
    iget v2, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v2, :pswitch_data_1

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unsupported MO SS Notification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 948
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01c6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 949
    goto :goto_0

    .line 954
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 955
    goto :goto_0

    .line 959
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01c8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 960
    goto :goto_0

    .line 965
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01c9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 966
    goto :goto_0

    .line 971
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 972
    goto :goto_0

    .line 976
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01cb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 977
    goto :goto_0

    .line 981
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01cc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 982
    goto :goto_0

    .line 986
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01cd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 987
    goto :goto_0

    .line 991
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 992
    goto/16 :goto_0

    .line 1002
    :pswitch_a
    iget v2, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v2, :pswitch_data_2

    .line 1060
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unsupported MT SS Notification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1005
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1006
    goto/16 :goto_0

    .line 1011
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1012
    goto/16 :goto_0

    .line 1016
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01d1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1017
    goto/16 :goto_0

    .line 1021
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01d2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1022
    goto/16 :goto_0

    .line 1026
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01d3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1027
    goto/16 :goto_0

    .line 1031
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1032
    goto/16 :goto_0

    .line 1036
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01d5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1037
    goto/16 :goto_0

    .line 1041
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01d6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1042
    goto/16 :goto_0

    .line 1046
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01d7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1047
    goto/16 :goto_0

    .line 1051
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01d8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1052
    goto/16 :goto_0

    .line 1056
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1057
    goto/16 :goto_0

    .line 941
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_a
    .end packed-switch

    .line 944
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 1002
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 8
    .parameter "call"

    .prologue
    const v7, 0x7f0c01d9

    const v6, 0x7f0c01c4

    .line 1125
    const/4 v2, 0x0

    .line 1126
    .local v2, retVal:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 1127
    .local v3, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1129
    .local v0, context:Landroid/content/Context;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- getTitleForCallCard(Call "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1131
    sget-object v4, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1178
    :goto_0
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ==> result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1179
    return-object v2

    .line 1138
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 1139
    .local v1, phoneType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 1140
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1141
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1143
    :cond_0
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1145
    :cond_1
    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 1147
    :cond_2
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1149
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1154
    .end local v1           #phoneType:I
    :pswitch_2
    const v4, 0x7f0c01de

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1157
    goto :goto_0

    .line 1161
    :pswitch_3
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1162
    goto :goto_0

    .line 1166
    :pswitch_4
    const v4, 0x7f0c01db

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1167
    goto :goto_0

    .line 1170
    :pswitch_5
    const v4, 0x7f0c01df

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1171
    goto :goto_0

    .line 1174
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2093
    const-string v0, "CallCard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    return-void
.end method

.method private setSideMargins(Landroid/view/ViewGroup;I)V
    .locals 1
    .parameter "vg"
    .parameter "margin"

    .prologue
    .line 1900
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1903
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1904
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1905
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1906
    return-void
.end method

.method private setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V
    .locals 4
    .parameter "title"
    .parameter "color"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 1914
    iget-object v1, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1915
    iget-object v1, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1917
    const/4 v0, 0x0

    .line 1918
    .local v0, bluetoothIconId:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq p3, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p3, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1923
    const v0, 0x7f0200d3

    .line 1926
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1927
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mDensity:F

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1928
    :cond_2
    return-void
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter "view"
    .parameter "ci"

    .prologue
    .line 1860
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 1861
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1862
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1866
    :goto_0
    const/4 v0, 0x1

    .line 1868
    :goto_1
    return v0

    .line 1864
    :cond_0
    const v0, 0x7f020102

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 1868
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 1873
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1874
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1875
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 1879
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1880
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1881
    return-void
.end method

.method private updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V
    .locals 6
    .parameter "call"

    .prologue
    const v5, 0x7f0c01fe

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1965
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    move v0, v1

    .line 1966
    .local v0, phoneType:I
    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1967
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1968
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1969
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1975
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1976
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1977
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1978
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1983
    :goto_1
    return-void

    .end local v0           #phoneType:I
    :cond_0
    move v0, v3

    .line 1965
    goto :goto_0

    .line 1981
    .restart local v0       #phoneType:I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .locals 19
    .parameter "phone"
    .parameter "call"

    .prologue
    .line 741
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateCardTitleWidgets(call "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")..."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    .line 743
    .local v15, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 754
    .local v9, context:Landroid/content/Context;
    const-string v5, ""

    .line 757
    .local v5, callForwardTxt:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    .line 758
    .local v14, phoneType:I
    const/16 v16, 0x2

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 759
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v16

    if-nez v16, :cond_0

    .line 760
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v6

    .line 770
    .local v6, cardTitle:Ljava/lang/String;
    :goto_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateCardTitleWidgets: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 772
    const/16 v16, 0x2

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v12

    .line 774
    .local v12, inCallControlState:Lcom/android/phone/InCallControlState;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "yangliu,getCurrentCallState: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 775
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "yangliu,inCallControlState.onHold: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v12

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 776
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v16

    sget-object v17, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_4

    move-object v0, v12

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f0c01de

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorOnHold:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorOnHold:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 784
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "yangliu,onhold,updateCardTitleWidgets: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 934
    .end local v12           #inCallControlState:Lcom/android/phone/InCallControlState;
    :goto_1
    return-void

    .line 762
    .end local v6           #cardTitle:Ljava/lang/String;
    :cond_0
    const v16, 0x7f0c01c5

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #cardTitle:Ljava/lang/String;
    goto/16 :goto_0

    .line 764
    .end local v6           #cardTitle:Ljava/lang/String;
    :cond_1
    const/16 v16, 0x1

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    const/16 v16, 0x3

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 766
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #cardTitle:Ljava/lang/String;
    goto/16 :goto_0

    .line 768
    .end local v6           #cardTitle:Ljava/lang/String;
    :cond_3
    new-instance v16, Ljava/lang/IllegalStateException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unexpected phone type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 790
    .restart local v6       #cardTitle:Ljava/lang/String;
    :cond_4
    sget-object v16, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 925
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorDefaultPrimary:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v16

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 793
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v4

    .line 794
    .local v4, bluetoothActive:Z
    if-eqz v4, :cond_6

    const v16, 0x7f0200d1

    move/from16 v13, v16

    .line 796
    .local v13, ongoingCallIcon:I
    :goto_2
    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorConnectedBluetooth:I

    move/from16 v16, v0

    move/from16 v8, v16

    .line 799
    .local v8, connectedTextColor:I
    :goto_3
    const/16 v16, 0x2

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 805
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorDefaultPrimary:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v16

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 845
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 851
    invoke-static/range {p2 .. p2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v10

    .line 852
    .local v10, duration:J
    const-wide/16 v16, 0x3e8

    div-long v16, v10, v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_1

    .line 794
    .end local v8           #connectedTextColor:I
    .end local v10           #duration:J
    .end local v13           #ongoingCallIcon:I
    :cond_6
    const v16, 0x7f0200d0

    move/from16 v13, v16

    goto :goto_2

    .line 796
    .restart local v13       #ongoingCallIcon:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    move/from16 v16, v0

    move/from16 v8, v16

    goto :goto_3

    .line 806
    .restart local v8       #connectedTextColor:I
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 807
    const-string v16, "zhangmin...Phone is ECM mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 810
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v6

    .line 811
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorDefaultPrimary:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v16

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    goto :goto_4

    .line 813
    :cond_9
    const-string v16, "zhangmin...clearUpperTitle()"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 815
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    goto/16 :goto_4

    .line 818
    :cond_a
    const/16 v16, 0x1

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_b

    const/16 v16, 0x3

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 828
    :cond_b
    sget-object v16, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_c

    .line 830
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorDefaultPrimary:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v16

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    goto/16 :goto_4

    .line 833
    :cond_c
    const-string v16, ""

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_d

    sget-object v16, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_d

    .line 834
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorDefaultPrimary:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v16

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    goto/16 :goto_4

    .line 838
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    goto/16 :goto_4

    .line 864
    .end local v4           #bluetoothActive:Z
    .end local v8           #connectedTextColor:I
    .end local v13           #ongoingCallIcon:I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v16

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 872
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 873
    .local v7, cn:Lcom/android/internal/telephony/Connection;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DISCONNECTED: connection is:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " cause is:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v16

    sget-object v17, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 881
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 884
    invoke-static {}, Lcom/android/phone/CallNotifier;->getSuppSvcNotification()Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    move-result-object v16

    if-eqz v16, :cond_f

    .line 885
    invoke-static {}, Lcom/android/phone/CallNotifier;->clearSuppSvcNotification()V

    .line 888
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 903
    .end local v7           #cn:Lcom/android/internal/telephony/Connection;
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorOnHold:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorOnHold:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 918
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorDefaultPrimary:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v16

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 919
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_1

    .line 790
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private updateDisplayForConference(Lcom/android/internal/telephony/Call;)V
    .locals 6
    .parameter "call"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1680
    const-string v1, "updateDisplayForConference()..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1683
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1690
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f0200ff

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1691
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f0c01e0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1709
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1715
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1716
    iget-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1719
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1720
    invoke-direct {p0, v3, v3, v3}, Lcom/android/phone/CallCard;->updateSocialStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/internal/telephony/Call;)V

    .line 1731
    return-void

    .line 1692
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1694
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isTouchUiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1696
    iget-object v1, p0, Lcom/android/phone/CallCard;->mManageConferencePhotoButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1697
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1704
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f0c01da

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1702
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f0200fe

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 1706
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V
    .locals 19
    .parameter "info"
    .parameter "presentation"
    .parameter "isTemporary"
    .parameter "call"

    .prologue
    .line 1424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayForPerson("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")\npresentation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isTemporary:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object v4, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1433
    const/4 v13, 0x0

    .line 1434
    .local v13, displayNumber:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1435
    .local v15, label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1436
    .local v10, personUri:Landroid/net/Uri;
    const/16 v18, 0x0

    .line 1437
    .local v18, socialStatusText:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1439
    .local v17, socialStatusBadge:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_c

    .line 1462
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1463
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mIncomingCallNumber:Ljava/lang/String;

    .line 1464
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallCard;->mIncomingSub:I

    .line 1465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get incoming call number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mIncomingCallNumber:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIncomingSub is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mIncomingSub:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1469
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1470
    .local v16, number:Ljava/lang/String;
    if-eqz v16, :cond_1

    const-string v4, "sip:"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1471
    const/4 v4, 0x4

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 1474
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1479
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1480
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v12

    .line 1507
    .local v12, displayName:Ljava/lang/String;
    :goto_0
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 1508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- got personUri: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', based on info.person_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1514
    .end local v16           #number:Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object v4, v0

    const v5, 0x7f0c01e0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1519
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zhangmin...isTemporary="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1532
    if-nez p1, :cond_2

    .line 1533
    const-string v4, "zhangmin...info = null"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1535
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zhangmin...info.isCachedPhotoCurrent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1536
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move v4, v0

    if-eqz v4, :cond_3

    .line 1537
    const-string v4, "zhangmin...info.photoResource != 0"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1540
    :cond_3
    if-eqz p3, :cond_e

    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    move v4, v0

    if-nez v4, :cond_e

    .line 1543
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v4, v0

    const v5, 0x7f020102

    invoke-static {v4, v5}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1555
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mManageConferencePhotoButton:Landroid/widget/Button;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1557
    if-eqz v13, :cond_10

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mTextColorDefaultSecondary:I

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1565
    :goto_4
    if-eqz v15, :cond_11

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1573
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1576
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->isNumberLocationSwitchEnabled()I

    move-result v14

    .line 1577
    .local v14, isChecked:I
    const/4 v4, 0x1

    if-ne v14, v4, :cond_6

    .line 1578
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getCityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isChecked=1, socialStatusText = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1583
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->updateSocialStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/internal/telephony/Call;)V

    .line 1584
    return-void

    .line 1481
    .end local v12           #displayName:Ljava/lang/String;
    .end local v14           #isChecked:I
    .restart local v16       #number:Ljava/lang/String;
    :cond_7
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    move v1, v4

    if-eq v0, v1, :cond_8

    .line 1485
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #displayName:Ljava/lang/String;
    goto/16 :goto_0

    .line 1486
    .end local v12           #displayName:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1487
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object v12, v0

    .line 1488
    .restart local v12       #displayName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1489
    move-object/from16 v13, v16

    goto/16 :goto_0

    .line 1491
    .end local v12           #displayName:Ljava/lang/String;
    :cond_9
    move-object/from16 v12, v16

    .restart local v12       #displayName:Ljava/lang/String;
    goto/16 :goto_0

    .line 1496
    .end local v12           #displayName:Ljava/lang/String;
    :cond_a
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    move v1, v4

    if-eq v0, v1, :cond_b

    .line 1500
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #displayName:Ljava/lang/String;
    goto/16 :goto_0

    .line 1502
    .end local v12           #displayName:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v12, v0

    .line 1503
    .restart local v12       #displayName:Ljava/lang/String;
    move-object/from16 v13, v16

    .line 1504
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-object v15, v0

    goto/16 :goto_0

    .line 1511
    .end local v12           #displayName:Ljava/lang/String;
    .end local v16           #number:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1517
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1545
    :cond_e
    if-eqz p1, :cond_f

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move v4, v0

    if-eqz v4, :cond_f

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move v5, v0

    invoke-static {v4, v5}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 1547
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1550
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v9, v0

    const v11, 0x7f020102

    move-object/from16 v4, p1

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    invoke-static/range {v4 .. v11}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto/16 :goto_3

    .line 1562
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1569
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 5
    .parameter "timeElapsed"

    .prologue
    const-wide/16 v2, 0x0

    const-string v4, ""

    .line 1078
    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeElapsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1103
    :goto_0
    return-void

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCall:Lcom/android/internal/telephony/Call;

    if-nez v0, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1092
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const v1, 0x7f0c01fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1093
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1094
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1096
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCall:Lcom/android/internal/telephony/Call;

    invoke-static {v0}, Lcom/android/phone/CallTime;->getCdmaLineCtrlDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallCard;->mCall:Lcom/android/internal/telephony/Call;

    invoke-static {v0}, Lcom/android/phone/CallTime;->isIncomming(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1097
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const v1, 0x7f0c03bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1099
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const v1, 0x7f0c03be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    .line 335
    const-string v4, "updateForegroundCall()..."

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 339
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 341
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 342
    const-string v4, "updateForegroundCall: no active call, show holding call"

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 349
    move-object v1, v0

    .line 352
    const/4 v0, 0x0

    .line 355
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 357
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 359
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 360
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 361
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 364
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 374
    :cond_1
    :goto_0
    return-void

    .line 368
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 370
    :cond_3
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 372
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "cm"

    .prologue
    const/4 v1, 0x0

    .line 404
    const-string v0, "updateNoCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 407
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 408
    return-void
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 14
    .parameter "call"

    .prologue
    const/4 v13, -0x2

    const/4 v12, -0x1

    .line 1744
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updatePhotoForCallState("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1745
    const/4 v7, 0x0

    .line 1749
    .local v7, photoImageResource:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 1750
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    sget-object v9, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1790
    const/4 v3, 0x0

    .line 1792
    .local v3, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v4, 0x0

    .line 1793
    .local v4, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 1794
    .local v6, phoneType:I
    const/4 v9, 0x2

    if-ne v6, v9, :cond_6

    .line 1795
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 1803
    :goto_0
    if-eqz v4, :cond_0

    .line 1804
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v5

    .line 1805
    .local v5, o:Ljava/lang/Object;
    instance-of v9, v5, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_9

    .line 1806
    move-object v0, v5

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v3, v0

    .line 1813
    .end local v5           #o:Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1814
    iget v7, v3, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 1828
    :cond_1
    if-nez v7, :cond_a

    .line 1829
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1830
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v9, v3}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v9

    if-ne v9, v13, :cond_2

    .line 1832
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v11}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v3, v9, v10, v11, v12}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 1834
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9, v12}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1846
    .end local v3           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #conn:Lcom/android/internal/telephony/Connection;
    .end local v6           #phoneType:I
    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    .line 1847
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- overrriding photo image: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1848
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v9, v7}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1850
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9, v13}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1852
    :cond_3
    :goto_3
    return-void

    .line 1755
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1758
    .local v1, c:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_5

    .line 1759
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 1760
    .local v2, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v9, :cond_4

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v9, :cond_2

    .line 1762
    :cond_4
    const v7, 0x7f0200fd

    goto :goto_2

    .line 1765
    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_5
    const-string v9, "updatePhotoForCallState: connection is null, ignoring."

    invoke-direct {p0, v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1796
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .restart local v3       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v4       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v6       #phoneType:I
    :cond_6
    const/4 v9, 0x1

    if-eq v6, v9, :cond_7

    const/4 v9, 0x3

    if-ne v6, v9, :cond_8

    .line 1798
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    goto/16 :goto_0

    .line 1800
    :cond_8
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1807
    .restart local v5       #o:Ljava/lang/Object;
    :cond_9
    instance-of v9, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v9, :cond_0

    .line 1808
    check-cast v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v5           #o:Ljava/lang/Object;
    iget-object v3, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_1

    .line 1839
    :cond_a
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v9, v7}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1840
    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9, v12}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_3

    .line 1750
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private updateRecordingElapsedTimeWidget(J)V
    .locals 2
    .parameter "timeElapsed"

    .prologue
    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRecordingElapsedTimeWidget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1109
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecording:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1110
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecordelapsedTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1111
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecordelapsedTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    :goto_0
    return-void

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecordelapsedTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "cm"

    .prologue
    .line 381
    const-string v1, "updateRingingCall()..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 386
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 392
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 393
    return-void
.end method

.method private updateSocialStatus(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "socialStatusText"
    .parameter "socialStatusBadge"
    .parameter "call"

    .prologue
    const/4 v2, 0x0

    .line 1994
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1997
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1998
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1999
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2001
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    const/high16 v2, 0x40c0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 2005
    :goto_0
    return-void

    .line 2003
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSubInfo(I)V
    .locals 2
    .parameter "subscription"

    .prologue
    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSubInfo   subscription is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSubInfo   display name is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getDisplayCardNameOnSub(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSubInfo:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getDisplayCardNameOnSub(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2059
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2060
    iget-object v0, p0, Lcom/android/phone/CallCard;->mManageConferencePhotoButton:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2061
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2062
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2063
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2064
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2065
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2066
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2067
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2068
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSubInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2069
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSubInfo:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2071
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCallRecordTime()Lcom/android/phone/CallRecordTime;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallRecordTime:Lcom/android/phone/CallRecordTime;

    return-object v0
.end method

.method public getIncomingPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/phone/CallCard;->mIncomingCallNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getIncomingSub()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/android/phone/CallCard;->mIncomingSub:I

    return v0
.end method

.method getMenuButtonHint()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMenuButtonHint:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideCallCardElements()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2021
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2022
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2023
    return-void
.end method

.method public isNumberLocationSwitchEnabled()I
    .locals 11

    .prologue
    const-string v2, "CallCard"

    .line 1589
    const-string v2, "content://zte.com.cn.providers.numberlocatorprovider/get_value"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1590
    .local v1, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 1591
    .local v9, enabled:I
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1592
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1596
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1597
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1599
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    const-string v8, ""

    .line 1602
    .local v8, enableVal:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v10, v2, :cond_2

    .line 1604
    const/4 v2, 0x4

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1605
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/phone/CallCard;->mSettingsKeyArray:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1609
    const-string v2, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1611
    const/4 v9, 0x1

    .line 1618
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1602
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1615
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 1628
    .end local v8           #enableVal:Ljava/lang/String;
    .end local v10           #i:I
    :cond_2
    if-eqz v6, :cond_3

    .line 1630
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1633
    :cond_3
    :goto_2
    return v9

    .line 1622
    :catch_0
    move-exception v2

    move-object v7, v2

    .line 1624
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1628
    if-eqz v6, :cond_3

    .line 1630
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1628
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_4

    .line 1630
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const-string v4, ", id "

    .line 2036
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2037
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

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2039
    packed-switch v0, :pswitch_data_0

    .line 2047
    const-string v1, "CallCard"

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

    .line 2050
    :goto_0
    return-void

    .line 2043
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 2039
    :pswitch_data_0
    .packed-switch 0x7f07002e
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 223
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallCard onFinishInflate(this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 227
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 228
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewGroup;

    .line 231
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    .line 232
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 233
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mRecording:Landroid/widget/TextView;

    .line 234
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    .line 235
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecording:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mRecordelapsedTime:Landroid/widget/TextView;

    .line 240
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorDefaultPrimary:I

    .line 242
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorDefaultSecondary:I

    .line 244
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    .line 245
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorConnectedBluetooth:I

    .line 247
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    .line 248
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorOnHold:I

    .line 249
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    .line 252
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    .line 253
    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mManageConferencePhotoButton:Landroid/widget/Button;

    .line 254
    iget-object v0, p0, Lcom/android/phone/CallCard;->mManageConferencePhotoButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    .line 258
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    .line 259
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSocialStatus:Landroid/widget/TextView;

    .line 262
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    .line 263
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallStatus:Landroid/widget/TextView;

    .line 264
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    .line 266
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSubInfo:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mMenuButtonHint:Landroid/widget/TextView;

    .line 269
    return-void
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "iView"
    .parameter "imagePresent"

    .prologue
    .line 719
    if-eqz p2, :cond_0

    .line 720
    check-cast p2, Lcom/android/internal/telephony/Call;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 722
    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v8, 0x0

    .line 671
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQueryComplete: token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cookie "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ci "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 673
    instance-of v6, p2, Lcom/android/internal/telephony/Call;

    if-eqz v6, :cond_6

    .line 677
    const-string v6, "callerinfo query complete, updating ui from displayMainCallStatus()"

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 678
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Call;

    move-object v1, v0

    .line 679
    .local v1, call:Lcom/android/internal/telephony/Call;
    const/4 v3, 0x0

    .line 680
    .local v3, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 681
    .local v4, phoneType:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 682
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 689
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v3, p0, v7}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 692
    .local v2, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 693
    .local v5, presentation:I
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    .line 694
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- onQueryComplete: presentation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", contactExists="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 700
    iget-boolean v6, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v6, :cond_5

    .line 701
    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    invoke-direct {p0, p3, v6, v8, v1}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    .line 705
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 711
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #phoneType:I
    .end local v5           #presentation:I
    .end local p2
    :cond_1
    :goto_2
    return-void

    .line 683
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    .restart local v3       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v4       #phoneType:I
    .restart local p2
    :cond_2
    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    .line 685
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 687
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 703
    .restart local v2       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v5       #presentation:I
    :cond_5
    iget-object v6, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {p0, v6, v5, v8, v1}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 707
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #phoneType:I
    .end local v5           #presentation:I
    :cond_6
    instance-of v6, p2, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 708
    const-string v6, "callerinfo query complete, updating ui from ongoing or onhold"

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 709
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v6, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v6}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onTickForCallRecordTimeElapsed(J)V
    .locals 0
    .parameter "timeElapsed"

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateRecordingElapsedTimeWidget(J)V

    .line 215
    return-void
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .parameter "timeElapsed"

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 209
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 190
    return-void
.end method

.method setMenuButtonHintText(I)V
    .locals 1
    .parameter "hinttext"

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMenuButtonHint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2087
    return-void
.end method

.method public setRecordingInvisible()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 411
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecording:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecordelapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    return-void
.end method

.method public setRecordingVisible()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 416
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecording:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecordelapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    return-void
.end method

.method setRotarySelectorHint(II)V
    .locals 0
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    .line 2030
    iput p1, p0, Lcom/android/phone/CallCard;->mRotarySelectorHintTextResId:I

    .line 2031
    iput p2, p0, Lcom/android/phone/CallCard;->mRotarySelectorHintColorResId:I

    .line 2032
    return-void
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 219
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateState("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 286
    .local v3, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 287
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 288
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 295
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 299
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 329
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    .line 310
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 327
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0
.end method
