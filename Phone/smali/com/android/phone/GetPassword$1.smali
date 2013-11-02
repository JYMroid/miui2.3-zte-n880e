.class Lcom/android/phone/GetPassword$1;
.super Ljava/lang/Object;
.source "GetPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GetPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GetPassword;


# direct methods
.method constructor <init>(Lcom/android/phone/GetPassword;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/phone/GetPassword$1;->this$0:Lcom/android/phone/GetPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/GetPassword$1;->this$0:Lcom/android/phone/GetPassword;

    #getter for: Lcom/android/phone/GetPassword;->mOldPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/GetPassword;->access$000(Lcom/android/phone/GetPassword;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GetPassword$1;->this$0:Lcom/android/phone/GetPassword;

    #getter for: Lcom/android/phone/GetPassword;->mNewPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/GetPassword;->access$100(Lcom/android/phone/GetPassword;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GetPassword$1;->this$0:Lcom/android/phone/GetPassword;

    #getter for: Lcom/android/phone/GetPassword;->mConfirmPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/GetPassword;->access$200(Lcom/android/phone/GetPassword;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/phone/GetPassword$1;->this$0:Lcom/android/phone/GetPassword;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GetPassword$1;->this$0:Lcom/android/phone/GetPassword;

    #getter for: Lcom/android/phone/GetPassword;->mOldPassword:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/GetPassword;->access$000(Lcom/android/phone/GetPassword;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/GetPassword;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/GetPassword;->access$300(Lcom/android/phone/GetPassword;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/phone/GetPassword$1;->this$0:Lcom/android/phone/GetPassword;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GetPassword$1;->this$0:Lcom/android/phone/GetPassword;

    #getter for: Lcom/android/phone/GetPassword;->mNewPassword:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/GetPassword;->access$100(Lcom/android/phone/GetPassword;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/GetPassword;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/GetPassword;->access$300(Lcom/android/phone/GetPassword;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/phone/GetPassword$1;->this$0:Lcom/android/phone/GetPassword;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GetPassword$1;->this$0:Lcom/android/phone/GetPassword;

    #getter for: Lcom/android/phone/GetPassword;->mConfirmPassword:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/GetPassword;->access$200(Lcom/android/phone/GetPassword;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/GetPassword;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/GetPassword;->access$300(Lcom/android/phone/GetPassword;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/phone/GetPassword$1;->this$0:Lcom/android/phone/GetPassword;

    #getter for: Lcom/android/phone/GetPassword;->mNewPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/GetPassword;->access$100(Lcom/android/phone/GetPassword;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GetPassword$1;->this$0:Lcom/android/phone/GetPassword;

    #getter for: Lcom/android/phone/GetPassword;->mConfirmPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/GetPassword;->access$200(Lcom/android/phone/GetPassword;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/phone/GetPassword$1;->this$0:Lcom/android/phone/GetPassword;

    #calls: Lcom/android/phone/GetPassword;->returnResult()V
    invoke-static {v0}, Lcom/android/phone/GetPassword;->access$400(Lcom/android/phone/GetPassword;)V

    goto/16 :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/android/phone/GetPassword$1;->this$0:Lcom/android/phone/GetPassword;

    const-string v1, "not equal...to do"

    #calls: Lcom/android/phone/GetPassword;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/GetPassword;->access$300(Lcom/android/phone/GetPassword;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/phone/GetPassword$1;->this$0:Lcom/android/phone/GetPassword;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/GetPassword;->showDialog(I)V

    goto/16 :goto_0
.end method
