.class Lcom/android/phone/EditPhoneNumberPreference$2;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditPhoneNumberPreference;

.field final synthetic val$radioButtonClose:Landroid/widget/RadioButton;

.field final synthetic val$radioButtonOpen:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/android/phone/EditPhoneNumberPreference;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    iput-object p2, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->val$radioButtonOpen:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->val$radioButtonClose:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const-string v3, "userChoice=1"

    const-string v2, "EditPhoneNumberPreference"

    .line 310
    const-string v0, "EditPhoneNumberPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userChoice=1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->val$radioButtonOpen:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/phone/EditPhoneNumberPreference;->userChoice:I

    .line 314
    const-string v0, "EditPhoneNumberPreference"

    const-string v0, "userChoice=1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->val$radioButtonClose:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/phone/EditPhoneNumberPreference;->userChoice:I

    .line 319
    const-string v0, "EditPhoneNumberPreference"

    const-string v0, "userChoice=2"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
