.class Lcom/android/phone/SubscriptionCheckBoxPreference;
.super Landroid/preference/Preference;
.source "SetSubscription.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mCheckBox1:Landroid/widget/CheckBox;

.field mCheckBox1Status:Z

.field mCheckBox2:Landroid/widget/CheckBox;

.field mCheckBox2Status:Z

.field mOnPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field mTitle:Ljava/lang/String;

.field mTitleView:Landroid/widget/TextView;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "width"

    .prologue
    const/4 v3, 0x0

    .line 598
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 600
    const-string v0, "SubscriptionCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: ENTER: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/android/phone/SubscriptionCheckBoxPreference;->setLayoutResource(I)V

    .line 603
    iput p2, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mWidth:I

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mOnPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 605
    iput-boolean v3, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1Status:Z

    .line 606
    iput-boolean v3, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2Status:Z

    .line 607
    return-void
.end method


# virtual methods
.method public getSelectedSubscription()Lcom/android/phone/SubscriptionID;
    .locals 2

    .prologue
    .line 694
    iget-object v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_0:Lcom/android/phone/SubscriptionID;

    .line 701
    .local v0, ret:Lcom/android/phone/SubscriptionID;
    :goto_0
    return-object v0

    .line 696
    .end local v0           #ret:Lcom/android/phone/SubscriptionID;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 697
    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_1:Lcom/android/phone/SubscriptionID;

    .restart local v0       #ret:Lcom/android/phone/SubscriptionID;
    goto :goto_0

    .line 699
    .end local v0           #ret:Lcom/android/phone/SubscriptionID;
    :cond_1
    sget-object v0, Lcom/android/phone/SubscriptionID;->NONE:Lcom/android/phone/SubscriptionID;

    .restart local v0       #ret:Lcom/android/phone/SubscriptionID;
    goto :goto_0
.end method

.method public markAllUnChecked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 654
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 660
    :cond_1
    return-void
.end method

.method public markChecked(Lcom/android/phone/SubscriptionID;)V
    .locals 4
    .parameter "onSub"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "SubscriptionCheckBoxPreference"

    .line 663
    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_0:Lcom/android/phone/SubscriptionID;

    if-ne p1, v0, :cond_3

    .line 664
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    .line 665
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 667
    iput-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2Status:Z

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 690
    :cond_1
    :goto_0
    return-void

    .line 672
    :cond_2
    iput-boolean v2, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1Status:Z

    .line 673
    iput-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2Status:Z

    .line 674
    const-string v0, "SubscriptionCheckBoxPreference"

    const-string v0, "markChecked: mCheckBox1 == null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 676
    :cond_3
    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_1:Lcom/android/phone/SubscriptionID;

    if-ne p1, v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    .line 678
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 679
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 680
    iput-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1Status:Z

    .line 682
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 685
    :cond_5
    iput-boolean v2, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2Status:Z

    .line 686
    iput-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1Status:Z

    .line 687
    const-string v0, "SubscriptionCheckBoxPreference"

    const-string v0, "markChecked: mCheckBox2 == null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/16 v2, 0x4b

    const/4 v4, -0x2

    .line 618
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 620
    const v0, 0x1010002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    .line 621
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1Status:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 623
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    const v0, 0x1010003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    .line 625
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2Status:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 627
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    const v0, 0x1010001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    .line 629
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mWidth:I

    const/16 v3, 0x96

    sub-int/2addr v2, v3

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 637
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox2:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mOnPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mOnPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 651
    :cond_2
    return-void
.end method

.method public setOnSubPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .parameter "onPreferenceClickListener"

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mOnPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 705
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitle:Ljava/lang/String;

    .line 611
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/SubscriptionCheckBoxPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    :cond_0
    return-void
.end method
