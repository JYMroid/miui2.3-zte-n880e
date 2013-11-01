.class public abstract Landroid/util/ZteEventLog/tools/HandlerUnit;
.super Ljava/lang/Object;
.source "HandlerUnit.java"


# static fields
.field static final TAG:Ljava/lang/String; = "hubo_HandlerUnit"


# instance fields
.field protected mCode:I

.field protected mOwner:Landroid/util/ZteEventLog/tools/HandlerWrap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/util/ZteEventLog/tools/HandlerUnit;->Init()V

    return-void
.end method

.method public constructor <init>(Landroid/util/ZteEventLog/tools/HandlerWrap;)V
    .locals 0
    .parameter "owner"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/util/ZteEventLog/tools/HandlerUnit;->Init()V

    invoke-virtual {p1, p0}, Landroid/util/ZteEventLog/tools/HandlerWrap;->AddUnit(Landroid/util/ZteEventLog/tools/HandlerUnit;)V

    return-void
.end method


# virtual methods
.method public Bind(Landroid/util/ZteEventLog/tools/HandlerWrap;I)V
    .locals 0
    .parameter "owner"
    .parameter "code"

    .prologue
    iput-object p1, p0, Landroid/util/ZteEventLog/tools/HandlerUnit;->mOwner:Landroid/util/ZteEventLog/tools/HandlerWrap;

    iput p2, p0, Landroid/util/ZteEventLog/tools/HandlerUnit;->mCode:I

    return-void
.end method

.method public Deactive()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/HandlerUnit;->mOwner:Landroid/util/ZteEventLog/tools/HandlerWrap;

    invoke-virtual {v0}, Landroid/util/ZteEventLog/tools/HandlerWrap;->GetHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Landroid/util/ZteEventLog/tools/HandlerUnit;->mCode:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method GetMessage()Landroid/os/Message;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/HandlerUnit;->mOwner:Landroid/util/ZteEventLog/tools/HandlerWrap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/HandlerUnit;->mOwner:Landroid/util/ZteEventLog/tools/HandlerWrap;

    invoke-virtual {v0}, Landroid/util/ZteEventLog/tools/HandlerWrap;->GetHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Landroid/util/ZteEventLog/tools/HandlerUnit;->mCode:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public GetProcCode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/util/ZteEventLog/tools/HandlerUnit;->mCode:I

    return v0
.end method

.method protected Init()V
    .locals 0

    .prologue
    return-void
.end method

.method public abstract OnResult(Landroid/os/Message;)V
.end method

.method public Send()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/HandlerUnit;->mOwner:Landroid/util/ZteEventLog/tools/HandlerWrap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/ZteEventLog/tools/HandlerUnit;->mOwner:Landroid/util/ZteEventLog/tools/HandlerWrap;

    invoke-virtual {v0}, Landroid/util/ZteEventLog/tools/HandlerWrap;->GetHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/ZteEventLog/tools/HandlerUnit;->GetMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public SendDelayed(J)V
    .locals 2
    .parameter "timeMs"

    .prologue
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/HandlerUnit;->mOwner:Landroid/util/ZteEventLog/tools/HandlerWrap;

    if-eqz v0, :cond_0

    const-string v0, "hubo_HandlerUnit"

    const-string v1, "SendDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/util/ZteEventLog/tools/HandlerUnit;->mOwner:Landroid/util/ZteEventLog/tools/HandlerWrap;

    invoke-virtual {v0}, Landroid/util/ZteEventLog/tools/HandlerWrap;->GetHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/ZteEventLog/tools/HandlerUnit;->GetMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
