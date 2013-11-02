.class public Lzte/com/cn/numberlocator/EditPhoneNumberPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/numberlocator/EditPhoneNumberPreference$GetDefaultNumberListener;,
        Lzte/com/cn/numberlocator/EditPhoneNumberPreference$OnDialogClosedListener;
    }
.end annotation


# static fields
.field private static final CM_ACTIVATION:I = 0x1

.field private static final CM_CONFIRM:I = 0x0

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

.field private mDialogOnClosedListener:Lzte/com/cn/numberlocator/EditPhoneNumberPreference$OnDialogClosedListener;

.field private mDisableText:Ljava/lang/CharSequence;

.field private mEnableText:Ljava/lang/CharSequence;

.field private mEncodedText:Ljava/lang/String;

.field private mGetDefaultNumberListener:Lzte/com/cn/numberlocator/EditPhoneNumberPreference$GetDefaultNumberListener;

.field private mParentActivity:Landroid/app/Activity;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPrefId:I

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 126
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->setDialogLayoutResource(I)V

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v0, "enable"

    iput-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    .line 148
    const-string v0, "disable"

    iput-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    .line 149
    const-string v0, "Change number"

    iput-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    .line 150
    const/4 v0, 0x1

    iput v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mConfirmationMode:I

    .line 152
    const-string v0, "on"

    iput-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 153
    const-string v0, "off"

    iput-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lzte/com/cn/numberlocator/EditPhoneNumberPreference;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lzte/com/cn/numberlocator/EditPhoneNumberPreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lzte/com/cn/numberlocator/EditPhoneNumberPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mPrefId:I

    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 535
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 536
    .local v0, d:Landroid/app/Dialog;
    instance-of v1, v0, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 537
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 539
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 544
    return-void
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRawPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method protected getStringValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->isToggled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

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
    .line 505
    iget-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isToggled()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mChecked:Z

    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    .line 264
    const v1, 0x7f07000f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 268
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 269
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 272
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 205
    const/4 v4, -0x2

    iput v4, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mButtonClicked:I

    .line 207
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 210
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    .line 212
    .local v3, editText:Landroid/widget/EditText;
    const v4, 0x7f070010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    .line 215
    if-eqz v3, :cond_1

    .line 218
    iget-object v4, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lzte/com/cn/numberlocator/EditPhoneNumberPreference$GetDefaultNumberListener;

    if-eqz v4, :cond_0

    .line 219
    iget-object v4, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lzte/com/cn/numberlocator/EditPhoneNumberPreference$GetDefaultNumberListener;

    invoke-interface {v4, p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference$GetDefaultNumberListener;->onGetDefaultNumber(Lzte/com/cn/numberlocator/EditPhoneNumberPreference;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, defaultNumber:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 221
    iput-object v2, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 224
    .end local v2           #defaultNumber:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 226
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 227
    iget-object v4, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 231
    :cond_1
    iget-object v4, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_2

    .line 232
    iget-object v4, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    new-instance v5, Lzte/com/cn/numberlocator/EditPhoneNumberPreference$1;

    invoke-direct {v5, p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference$1;-><init>(Lzte/com/cn/numberlocator/EditPhoneNumberPreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    :cond_2
    if-eqz v3, :cond_3

    .line 244
    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 245
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 246
    .local v1, d:Landroid/app/Dialog;
    instance-of v4, v1, Landroid/app/AlertDialog;

    if-eqz v4, :cond_3

    .line 247
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #d:Landroid/app/Dialog;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 249
    .local v0, b:Landroid/widget/Button;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 252
    .end local v0           #b:Landroid/widget/Button;
    :cond_3
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    .line 172
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 173
    .local v1, summaryView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 178
    iget v3, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 179
    iget-boolean v3, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v3, :cond_2

    .line 180
    iget-object v3, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    .line 188
    .local v0, sum:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_5

    .line 189
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const/4 v2, 0x0

    .line 195
    .local v2, vis:I
    :goto_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 196
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    .end local v0           #sum:Ljava/lang/CharSequence;
    .end local v2           #vis:I
    :cond_0
    return-void

    .line 180
    :cond_1
    iget-object v3, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    move-object v0, v3

    goto :goto_0

    .line 182
    :cond_2
    iget-object v3, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    .restart local v0       #sum:Ljava/lang/CharSequence;
    :goto_2
    goto :goto_0

    .end local v0           #sum:Ljava/lang/CharSequence;
    :cond_3
    iget-object v3, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    move-object v0, v3

    goto :goto_2

    .line 185
    :cond_4
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #sum:Ljava/lang/CharSequence;
    goto :goto_0

    .line 192
    :cond_5
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

    .line 337
    iget v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->setToggled(Z)Lzte/com/cn/numberlocator/EditPhoneNumberPreference;

    .line 342
    :cond_0
    iput p2, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mButtonClicked:I

    .line 343
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 344
    return-void

    .line 339
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 6
    .parameter "positiveResult"

    .prologue
    const-string v5, ""

    .line 351
    iget v2, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_2

    .line 354
    :cond_0
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, numberInput:Ljava/lang/String;
    const-string v2, ";"

    const-string v3, ""

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, numberInput1:Ljava/lang/String;
    const-string v2, "+++++++++++++setPhoneNumber"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {p0, v1}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lzte/com/cn/numberlocator/EditPhoneNumberPreference;

    .line 360
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 361
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 367
    .end local v0           #numberInput:Ljava/lang/String;
    .end local v1           #numberInput1:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mDialogOnClosedListener:Lzte/com/cn/numberlocator/EditPhoneNumberPreference$OnDialogClosedListener;

    if-eqz v2, :cond_1

    .line 368
    iget-object v2, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mDialogOnClosedListener:Lzte/com/cn/numberlocator/EditPhoneNumberPreference$OnDialogClosedListener;

    iget v3, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mButtonClicked:I

    invoke-interface {v2, p0, v3}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference$OnDialogClosedListener;->onDialogClosed(Lzte/com/cn/numberlocator/EditPhoneNumberPreference;I)V

    .line 370
    :cond_1
    return-void

    .line 363
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    goto :goto_0
.end method

.method public onPickActivityResult(Ljava/lang/String;)V
    .locals 1
    .parameter "pickedValue"

    .prologue
    .line 327
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 328
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 331
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    const/4 v2, 0x0

    .line 280
    iget v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 281
    iget-boolean v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    iget-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    :cond_0
    :goto_0
    const v0, 0x7f020001

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 291
    return-void

    .line 285
    :cond_1
    invoke-virtual {p1, v2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 286
    iget-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 423
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->setValueFromString(Ljava/lang/String;)V

    .line 425
    return-void

    .line 423
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 549
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 456
    iput-object p1, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 457
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDialogOnClosedListener(Lzte/com/cn/numberlocator/EditPhoneNumberPreference$OnDialogClosedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 304
    iput-object p1, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mDialogOnClosedListener:Lzte/com/cn/numberlocator/EditPhoneNumberPreference$OnDialogClosedListener;

    .line 305
    return-void
.end method

.method public setDialogOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 299
    iput-object p1, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 300
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;I)V
    .locals 1
    .parameter "parent"
    .parameter "identifier"

    .prologue
    .line 309
    iput-object p1, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 310
    iput p2, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mPrefId:I

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lzte/com/cn/numberlocator/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 312
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;ILzte/com/cn/numberlocator/EditPhoneNumberPreference$GetDefaultNumberListener;)V
    .locals 0
    .parameter "parent"
    .parameter "identifier"
    .parameter "l"

    .prologue
    .line 317
    iput-object p1, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 318
    iput p2, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mPrefId:I

    .line 319
    iput-object p3, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lzte/com/cn/numberlocator/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 320
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lzte/com/cn/numberlocator/EditPhoneNumberPreference;
    .locals 1
    .parameter "number"

    .prologue
    .line 409
    iput-object p1, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 410
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->notifyChanged()V

    .line 413
    return-object p0
.end method

.method public setSummaryOff(I)Lzte/com/cn/numberlocator/EditPhoneNumberPreference;
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 500
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->setSummaryOff(Ljava/lang/CharSequence;)Lzte/com/cn/numberlocator/EditPhoneNumberPreference;

    move-result-object v0

    return-object v0
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)Lzte/com/cn/numberlocator/EditPhoneNumberPreference;
    .locals 1
    .parameter "summary"

    .prologue
    .line 490
    iput-object p1, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 491
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->notifyChanged()V

    .line 494
    :cond_0
    return-object p0
.end method

.method public setSummaryOn(I)Lzte/com/cn/numberlocator/EditPhoneNumberPreference;
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 476
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lzte/com/cn/numberlocator/EditPhoneNumberPreference;

    move-result-object v0

    return-object v0
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)Lzte/com/cn/numberlocator/EditPhoneNumberPreference;
    .locals 1
    .parameter "summary"

    .prologue
    .line 466
    iput-object p1, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 467
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->notifyChanged()V

    .line 470
    :cond_0
    return-object p0
.end method

.method public setToggled(Z)Lzte/com/cn/numberlocator/EditPhoneNumberPreference;
    .locals 1
    .parameter "checked"

    .prologue
    .line 384
    iput-boolean p1, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mChecked:Z

    .line 385
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->notifyChanged()V

    .line 388
    return-object p0
.end method

.method protected setValueFromString(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 514
    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, inValues:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->setToggled(Z)Lzte/com/cn/numberlocator/EditPhoneNumberPreference;

    .line 516
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lzte/com/cn/numberlocator/EditPhoneNumberPreference;

    .line 517
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 439
    const/4 v1, 0x0

    .line 440
    .local v1, shouldDisable:Z
    iget v2, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 441
    iget-object v2, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    const-string v3, ":"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, inValues:[Ljava/lang/String;
    aget-object v2, v0, v5

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 446
    .end local v0           #inValues:[Ljava/lang/String;
    :goto_0
    return v1

    .line 444
    :cond_0
    iget-object v2, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->mConfirmationMode:I

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
    .line 530
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzte/com/cn/numberlocator/EditPhoneNumberPreference;->showDialog(Landroid/os/Bundle;)V

    .line 531
    return-void
.end method
