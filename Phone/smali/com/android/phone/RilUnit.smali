.class public abstract Lcom/android/phone/RilUnit;
.super Ljava/lang/Object;
.source "RilUnit.java"


# static fields
.field static final TAG:Ljava/lang/String; = "hubo_RilUnit"

.field private static final TIMEOUT_SYMBOL_FIRST:I = -0x44444445

.field private static final TIMEOUT_SYMBOL_SECOND:I = -0x22222223


# instance fields
.field protected mCode:I

.field protected mConnector:Lcom/android/phone/RilConnector;

.field protected mEnableTimeout:Z

.field protected mIsQuerrying:Z

.field protected mIsSetting:Z

.field protected mTimeoutTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->Init()V

    .line 25
    iput-boolean v0, p0, Lcom/android/phone/RilUnit;->mEnableTimeout:Z

    .line 26
    iput v0, p0, Lcom/android/phone/RilUnit;->mTimeoutTime:I

    .line 27
    return-void
.end method


# virtual methods
.method public Bind(Lcom/android/phone/RilConnector;I)V
    .locals 0
    .parameter "connector"
    .parameter "code"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/phone/RilUnit;->mConnector:Lcom/android/phone/RilConnector;

    .line 117
    iput p2, p0, Lcom/android/phone/RilUnit;->mCode:I

    .line 118
    return-void
.end method

.method CancelTimeoutProc()V
    .locals 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/phone/RilUnit;->mEnableTimeout:Z

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RilUnit;->mConnector:Lcom/android/phone/RilConnector;

    invoke-virtual {v0}, Lcom/android/phone/RilConnector;->GetHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/RilUnit;->mCode:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public DisableTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/phone/RilUnit;->mEnableTimeout:Z

    .line 75
    iput v0, p0, Lcom/android/phone/RilUnit;->mTimeoutTime:I

    .line 76
    return-void
.end method

.method abstract DoGetProc()I
.end method

.method DoSetProc()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public EnableTimeoutProc(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/RilUnit;->mEnableTimeout:Z

    .line 69
    iput p1, p0, Lcom/android/phone/RilUnit;->mTimeoutTime:I

    .line 70
    return-void
.end method

.method public Get()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/phone/RilUnit;->mConnector:Lcom/android/phone/RilConnector;

    if-nez v0, :cond_0

    move v0, v1

    .line 85
    :goto_0
    return v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->IsWaitingForResult()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 82
    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/RilUnit;->mIsQuerrying:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->DoGetProc()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->TryTimeoutProtect()V

    move v0, v2

    .line 85
    goto :goto_0
.end method

.method protected GetMessage()Landroid/os/Message;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/phone/RilUnit;->mConnector:Lcom/android/phone/RilConnector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/RilUnit;->mConnector:Lcom/android/phone/RilConnector;

    invoke-virtual {v0}, Lcom/android/phone/RilConnector;->GetHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/RilUnit;->mCode:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public GetProcCode()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/phone/RilUnit;->mCode:I

    return v0
.end method

.method protected GetTimeoutMessage()Landroid/os/Message;
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/RilUnit;->mConnector:Lcom/android/phone/RilConnector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/RilUnit;->mConnector:Lcom/android/phone/RilConnector;

    invoke-virtual {v0}, Lcom/android/phone/RilConnector;->GetHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/RilUnit;->mCode:I

    const v2, -0x44444445

    const v3, -0x22222223

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method protected Init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsQuerrying:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsSetting:Z

    .line 135
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->CancelTimeoutProc()V

    .line 136
    return-void
.end method

.method public IsQuerrying()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsQuerrying:Z

    return v0
.end method

.method public IsSetting()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsSetting:Z

    return v0
.end method

.method protected IsTimeoutMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 37
    iget v0, p1, Landroid/os/Message;->arg1:I

    const v1, -0x44444445

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->arg2:I

    const v1, -0x22222223

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected IsWaitingForResult()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsQuerrying:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsSetting:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public OnException(Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "ar"

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->Init()V

    .line 165
    return-void
.end method

.method abstract OnGetResult(Landroid/os/Message;)V
.end method

.method public OnResult(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v2, "hubo_RilUnit"

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/phone/RilUnit;->IsTimeoutMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "hubo_RilUnit"

    const-string v0, "OnTimeout"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->OnTimeout()V

    .line 112
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->IsWaitingForResult()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    const-string v0, "hubo_RilUnit"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recv unexpected msg...maybe timeout happen. msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsQuerrying:Z

    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/phone/RilUnit;->OnGetResult(Landroid/os/Message;)V

    .line 111
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->Init()V

    goto :goto_0

    .line 107
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/RilUnit;->mIsSetting:Z

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/phone/RilUnit;->OnSetResult(Landroid/os/Message;)V

    goto :goto_1
.end method

.method OnSetResult(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 155
    return-void
.end method

.method protected OnTimeout()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public Set()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/android/phone/RilUnit;->mConnector:Lcom/android/phone/RilConnector;

    if-nez v0, :cond_0

    move v0, v1

    .line 63
    :goto_0
    return v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->IsWaitingForResult()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 60
    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/RilUnit;->mIsSetting:Z

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->DoSetProc()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->TryTimeoutProtect()V

    move v0, v2

    .line 63
    goto :goto_0
.end method

.method TryTimeoutProtect()V
    .locals 4

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/phone/RilUnit;->mEnableTimeout:Z

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RilUnit;->mConnector:Lcom/android/phone/RilConnector;

    invoke-virtual {v0}, Lcom/android/phone/RilConnector;->GetHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/RilUnit;->GetTimeoutMessage()Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/RilUnit;->mTimeoutTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
