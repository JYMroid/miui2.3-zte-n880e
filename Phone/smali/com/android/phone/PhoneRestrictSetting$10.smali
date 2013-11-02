.class Lcom/android/phone/PhoneRestrictSetting$10;
.super Ljava/lang/Object;
.source "PhoneRestrictSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneRestrictSetting;->GetSetNewPasswordListener()Landroid/content/DialogInterface$OnClickListener;
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
    .line 777
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$10;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$10;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #getter for: Lcom/android/phone/PhoneRestrictSetting;->mChangePassword:Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;
    invoke-static {v0}, Lcom/android/phone/PhoneRestrictSetting;->access$600(Lcom/android/phone/PhoneRestrictSetting;)Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting$10;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #getter for: Lcom/android/phone/PhoneRestrictSetting;->mNetworkPassWord:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/PhoneRestrictSetting;->access$400(Lcom/android/phone/PhoneRestrictSetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->SetNewPassword(Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$10;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #getter for: Lcom/android/phone/PhoneRestrictSetting;->mNetworkPassWord:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/PhoneRestrictSetting;->access$400(Lcom/android/phone/PhoneRestrictSetting;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 782
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$10;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #getter for: Lcom/android/phone/PhoneRestrictSetting;->mChangePassword:Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;
    invoke-static {v0}, Lcom/android/phone/PhoneRestrictSetting;->access$600(Lcom/android/phone/PhoneRestrictSetting;)Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->Set()Z

    .line 783
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$10;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    .line 784
    return-void
.end method
