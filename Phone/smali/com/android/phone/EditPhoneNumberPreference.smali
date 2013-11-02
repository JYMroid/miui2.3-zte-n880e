.class public Lcom/android/phone/EditPhoneNumberPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPhoneNumberPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;,
        Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;
    }
.end annotation


# static fields
.field private static final CM_ACTIVATION:I = 0x1

.field private static final CM_CONFIRM:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "EditPhoneNumberPreference"

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final VALUE_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private mButtonClicked:I

.field private mChangeNumberText:Ljava/lang/CharSequence;

.field private mChecked:Z

.field private mConfirmationMode:I

.field private mContactListIntent:Landroid/content/Intent;

.field private mContactPickButton:Landroid/widget/ImageButton;

.field private mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

.field private mDisableText:Ljava/lang/CharSequence;

.field private mEnableText:Ljava/lang/CharSequence;

.field private mEncodedText:Ljava/lang/String;

.field private mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

.field private mParentActivity:Landroid/app/Activity;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPrefId:I

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field private mode:I

.field private radioGroup:Landroid/widget/RadioGroup;

.field public userChoice:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v4, "EditPhoneNumberPreference"

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    iput v6, p0, Lcom/android/phone/EditPhoneNumberPreference;->mode:I

    .line 100
    iput v5, p0, Lcom/android/phone/EditPhoneNumberPreference;->userChoice:I

    .line 547
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 134
    const-string v1, "EditPhoneNumberPreference"

    const-string v1, "EditPhoneNumberPreference"

    invoke-static {v4, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const-string v1, "EditPhoneNumberPreference"

    const-string v1, "CDMA"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const v1, 0x7f03001d

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogLayoutResource(I)V

    .line 148
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    sget-object v1, Lcom/android/phone/R$styleable;->EditPhoneNumberPreference:[I

    const v2, 0x7f0e000d

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 154
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    .line 155
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    .line 156
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    .line 157
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    .line 158
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    sget-object v1, Landroid/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 163
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 164
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    return-void

    .line 142
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_0
    const-string v1, "EditPhoneNumberPreference"

    const-string v1, "GSM"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const v1, 0x7f03001e

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogLayoutResource(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EditPhoneNumberPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    return v0
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRawPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method protected getStringValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isToggled()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    return v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    .line 338
    const v1, 0x7f0700bf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 342
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 343
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 346
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const v7, 0x7f090018

    const/16 v6, 0x8

    const-string v5, "EditPhoneNumberPreference"

    .line 232
    const/4 v4, -0x2

    iput v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    .line 234
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 240
    .local v1, editText:Landroid/widget/EditText;
    const-string v4, "EditPhoneNumberPreference"

    const-string v4, "onBindDialogView"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    const-string v4, "EditPhoneNumberPreference"

    const-string v4, "CDMA"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 251
    :cond_0
    const v4, 0x7f0700c0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    .line 254
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mode:I

    if-nez v4, :cond_3

    .line 256
    const-string v4, "EditPhoneNumberPreference"

    const-string v4, "onBindDialogView, CDMA call waiting"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 260
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 294
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 296
    const v4, 0x7f0700bb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->radioGroup:Landroid/widget/RadioGroup;

    .line 297
    const v4, 0x7f0700bc

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 298
    .local v3, radioButtonOpen:Landroid/widget/RadioButton;
    const v4, 0x7f0700bd

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 299
    .local v2, radioButtonClose:Landroid/widget/RadioButton;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 300
    iget v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 302
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v6}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 303
    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 304
    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 326
    .end local v2           #radioButtonClose:Landroid/widget/RadioButton;
    .end local v3           #radioButtonOpen:Landroid/widget/RadioButton;
    :cond_2
    :goto_1
    return-void

    .line 266
    :cond_3
    if-eqz v1, :cond_5

    .line 269
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    if-eqz v4, :cond_4

    .line 270
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    invoke-interface {v4, p0}, Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;->onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, defaultNumber:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 272
    iput-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 275
    .end local v0           #defaultNumber:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 277
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 278
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 282
    :cond_5
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_1

    .line 283
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/phone/EditPhoneNumberPreference$1;

    invoke-direct {v5, p0}, Lcom/android/phone/EditPhoneNumberPreference$1;-><init>(Lcom/android/phone/EditPhoneNumberPreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 308
    .restart local v2       #radioButtonClose:Landroid/widget/RadioButton;
    .restart local v3       #radioButtonOpen:Landroid/widget/RadioButton;
    :cond_6
    iget-object v4, p0, Lcom/android/phone/EditPhoneNumberPreference;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v5, Lcom/android/phone/EditPhoneNumberPreference$2;

    invoke-direct {v5, p0, v3, v2}, Lcom/android/phone/EditPhoneNumberPreference$2;-><init>(Lcom/android/phone/EditPhoneNumberPreference;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto :goto_1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    .line 178
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    .line 181
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 182
    .local v1, summaryView:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 187
    iget v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v3, v5, :cond_5

    .line 188
    iget-boolean v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v3, :cond_3

    .line 189
    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    .line 197
    .local v0, sum:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_6

    .line 198
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const/4 v2, 0x0

    .line 205
    .local v2, vis:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    iget v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mode:I

    if-ne v3, v5, :cond_0

    .line 209
    const-string v3, "EditPhoneNumberPreference"

    const-string v4, "CDMA call waiting mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/16 v2, 0x8

    .line 215
    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 216
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    .end local v0           #sum:Ljava/lang/CharSequence;
    .end local v2           #vis:I
    :cond_1
    return-void

    .line 189
    :cond_2
    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    move-object v0, v3

    goto :goto_0

    .line 191
    :cond_3
    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    .restart local v0       #sum:Ljava/lang/CharSequence;
    :goto_2
    goto :goto_0

    .end local v0           #sum:Ljava/lang/CharSequence;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    move-object v0, v3

    goto :goto_2

    .line 194
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #sum:Ljava/lang/CharSequence;
    goto :goto_0

    .line 201
    :cond_6
    const/16 v2, 0x8

    .restart local v2       #vis:I
    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 437
    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 442
    :cond_0
    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    .line 443
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 444
    return-void

    .line 439
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 451
    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 454
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 455
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 461
    :goto_0
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

    iget v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;->onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V

    .line 464
    :cond_1
    return-void

    .line 457
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    goto :goto_0
.end method

.method public onPickActivityResult(Ljava/lang/String;)V
    .locals 3
    .parameter "pickedValue"

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 418
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    const-string v1, "EditPhoneNumberPreference"

    const-string v2, "onPickActivityResult, CDMA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 431
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v2, 0x0

    const-string v3, "EditPhoneNumberPreference"

    .line 354
    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 355
    iget-boolean v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 359
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const-string v0, "EditPhoneNumberPreference"

    const-string v0, "onPrepareDialogBuilder, CDMA"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    :cond_0
    :goto_0
    const v0, 0x7f0200bc

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 381
    return-void

    .line 370
    :cond_1
    const-string v0, "EditPhoneNumberPreference"

    const-string v0, "onPrepareDialogBuilder, GSM"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual {p1, v2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 376
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 517
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setValueFromString(Ljava/lang/String;)V

    .line 519
    return-void

    .line 517
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 551
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

    .line 395
    return-void
.end method

.method public setDialogOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 390
    return-void
.end method

.method public setModeNo(I)V
    .locals 3
    .parameter "modeno"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mode:I

    .line 224
    const-string v0, "EditPhoneNumberPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModeNo, mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;I)V
    .locals 1
    .parameter "parent"
    .parameter "identifier"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 400
    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 402
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V
    .locals 0
    .parameter "parent"
    .parameter "identifier"
    .parameter "l"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 408
    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    .line 409
    iput-object p3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 410
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1
    .parameter "number"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 504
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    .line 507
    return-object p0
.end method

.method public setSummaryOff(I)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummaryOff(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    move-result-object v0

    return-object v0
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1
    .parameter "summary"

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 585
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    .line 588
    :cond_0
    return-object p0
.end method

.method public setSummaryOn(I)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    move-result-object v0

    return-object v0
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1
    .parameter "summary"

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 561
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    .line 564
    :cond_0
    return-object p0
.end method

.method public setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1
    .parameter "checked"

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    .line 479
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    .line 482
    return-object p0
.end method

.method protected setValueFromString(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 608
    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, inValues:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 610
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 611
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 533
    const/4 v1, 0x0

    .line 534
    .local v1, shouldDisable:Z
    iget v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 535
    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    const-string v3, ":"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, inValues:[Ljava/lang/String;
    aget-object v2, v0, v5

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 540
    .end local v0           #inValues:[Ljava/lang/String;
    :goto_0
    return v1

    .line 538
    :cond_0
    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-nez v2, :cond_1

    move v1, v3

    :goto_1
    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1
.end method

.method public showPhoneNumberDialog()V
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->showDialog(Landroid/os/Bundle;)V

    .line 625
    return-void
.end method
