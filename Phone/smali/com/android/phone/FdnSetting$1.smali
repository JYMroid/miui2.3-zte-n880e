.class Lcom/android/phone/FdnSetting$1;
.super Landroid/os/Handler;
.source "FdnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FdnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 221
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 297
    :goto_0
    return-void

    .line 226
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 227
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 229
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 230
    .local v2, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_1

    .line 233
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0c01b4

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    .line 234
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 239
    .end local v2           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)V

    goto :goto_0

    .line 236
    .restart local v2       #ce:Lcom/android/internal/telephony/CommandException;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0c0192

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    goto :goto_1

    .line 247
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #ce:Lcom/android/internal/telephony/CommandException;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 248
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_6

    .line 249
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 250
    .restart local v2       #ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_2

    .line 254
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c01b5

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 259
    .local v0, a:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 261
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 264
    .end local v0           #a:Landroid/app/AlertDialog;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mPinChangeState:I
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 265
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getIccPuk2Blocked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 266
    const-string v3, "FdnSetting"

    const-string v4, "PUK2 Blocked while changing PIN2.Options \'Enable FDN\' & \'Change PIN2\' disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0c01b6

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    .line 268
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 269
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 278
    :goto_2
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 279
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 271
    :cond_3
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0c01ad

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    goto :goto_2

    .line 274
    :cond_4
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0c01ae

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    goto :goto_2

    .line 281
    :cond_5
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 285
    .end local v2           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_6
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mPinChangeState:I
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 286
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0c01a7

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    .line 291
    :goto_3
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3, v5}, Lcom/android/phone/FdnSetting;->access$702(Lcom/android/phone/FdnSetting;Z)Z

    .line 292
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 288
    :cond_7
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0c01b2

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    goto :goto_3

    .line 221
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
