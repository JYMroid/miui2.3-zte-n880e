.class Lcom/android/phone/PhoneRestrictSetting$1;
.super Lcom/android/phone/RilConnector;
.source "PhoneRestrictSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneRestrictSetting;
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
    .line 107
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-direct {p0}, Lcom/android/phone/RilConnector;-><init>()V

    return-void
.end method


# virtual methods
.method protected FinalHandleWhenMsgCome(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/phone/RilConnector;->FinalHandleWhenMsgCome(Landroid/os/Message;)V

    .line 112
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-virtual {v0}, Lcom/android/phone/PhoneRestrictSetting;->IsQuerryOver()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #getter for: Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z
    invoke-static {v0}, Lcom/android/phone/PhoneRestrictSetting;->access$000(Lcom/android/phone/PhoneRestrictSetting;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-virtual {v0}, Lcom/android/phone/PhoneRestrictSetting;->QuerryRecord()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/PhoneRestrictSetting;->mIsQuerrying:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->access$002(Lcom/android/phone/PhoneRestrictSetting;Z)Z

    .line 120
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    iget-boolean v0, v0, Lcom/android/phone/PhoneRestrictSetting;->mIsForeground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    #getter for: Lcom/android/phone/PhoneRestrictSetting;->mCmdRemaining:Z
    invoke-static {v0}, Lcom/android/phone/PhoneRestrictSetting;->access$100(Lcom/android/phone/PhoneRestrictSetting;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const-string v0, "hubo_PhoneRestrictSetting"

    const-string v1, "dismiss wait Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->DismissMyDialog(I)V

    goto :goto_0
.end method

.method GetErrorCode(Landroid/os/AsyncResult;)I
    .locals 2
    .parameter "ar"

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    .line 132
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object p0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    aget v0, p0, v1

    goto :goto_0
.end method

.method HandlePasswordError(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    const-string v2, "hubo_RilConnector"

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneRestrictSetting$1;->GetErrorCode(Landroid/os/AsyncResult;)I

    move-result v0

    .line 150
    .local v0, err:I
    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-virtual {v1}, Lcom/android/phone/PhoneRestrictSetting;->OnPasswordError()V

    .line 153
    const-string v1, "hubo_RilConnector"

    const-string v1, "call barring password error"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-virtual {v1}, Lcom/android/phone/PhoneRestrictSetting;->OnPasswordLocked()V

    .line 158
    const-string v1, "hubo_RilConnector"

    const-string v1, "call barring password Lock"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method IsPasswordError(Landroid/os/AsyncResult;)Z
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 137
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    move v1, v4

    .line 142
    :goto_0
    return v1

    .line 138
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v1, v2, :cond_2

    move v1, v4

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneRestrictSetting$1;->GetErrorCode(Landroid/os/AsyncResult;)I

    move-result v0

    .line 141
    .local v0, err:I
    const-string v1, "hubo_RilConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " call barring ERROR type ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/16 v1, 0x25

    if-eq v0, v1, :cond_3

    const/16 v1, 0x26

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_0
.end method

.method protected OnException(Landroid/os/AsyncResult;I)V
    .locals 2
    .parameter "ar"
    .parameter "code"

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Lcom/android/phone/RilConnector;->OnException(Landroid/os/AsyncResult;I)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneRestrictSetting$1;->IsPasswordError(Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneRestrictSetting$1;->HandlePasswordError(Landroid/os/AsyncResult;)V

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$1;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    invoke-virtual {v0}, Lcom/android/phone/PhoneRestrictSetting;->OnExecuteException()V

    .line 176
    const-string v0, "hubo_RilConnector"

    const-string v1, "----OnExecuteException---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
