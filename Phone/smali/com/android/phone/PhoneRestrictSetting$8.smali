.class Lcom/android/phone/PhoneRestrictSetting$8;
.super Ljava/lang/Object;
.source "PhoneRestrictSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneRestrictSetting;->GetSetPasswordListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneRestrictSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneRestrictSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$8;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 751
    const-string v0, "hubo_PhoneRestrictSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OK mNetworkPassWord =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting$8;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #getter for: Lcom/android/phone/PhoneRestrictSetting;->mNetworkPassWord:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/PhoneRestrictSetting;->access$400(Lcom/android/phone/PhoneRestrictSetting;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$8;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #getter for: Lcom/android/phone/PhoneRestrictSetting;->mClickedUnit:Lcom/android/phone/FacilityLockCmd;
    invoke-static {v0}, Lcom/android/phone/PhoneRestrictSetting;->access$500(Lcom/android/phone/PhoneRestrictSetting;)Lcom/android/phone/FacilityLockCmd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 757
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$8;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #getter for: Lcom/android/phone/PhoneRestrictSetting;->mClickedUnit:Lcom/android/phone/FacilityLockCmd;
    invoke-static {v0}, Lcom/android/phone/PhoneRestrictSetting;->access$500(Lcom/android/phone/PhoneRestrictSetting;)Lcom/android/phone/FacilityLockCmd;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting$8;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #getter for: Lcom/android/phone/PhoneRestrictSetting;->mNetworkPassWord:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/PhoneRestrictSetting;->access$400(Lcom/android/phone/PhoneRestrictSetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/FacilityLockCmd;->SetPassword(Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$8;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #getter for: Lcom/android/phone/PhoneRestrictSetting;->mNetworkPassWord:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/PhoneRestrictSetting;->access$400(Lcom/android/phone/PhoneRestrictSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 755
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$8;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #getter for: Lcom/android/phone/PhoneRestrictSetting;->mClickedUnit:Lcom/android/phone/FacilityLockCmd;
    invoke-static {v0}, Lcom/android/phone/PhoneRestrictSetting;->access$500(Lcom/android/phone/PhoneRestrictSetting;)Lcom/android/phone/FacilityLockCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/FacilityLockCmd;->Set()Z

    .line 756
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$8;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    goto :goto_0
.end method
