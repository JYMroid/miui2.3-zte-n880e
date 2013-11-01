.class public Landroid/util/ZteEventLog/tools/ThreadUnit;
.super Landroid/util/ZteEventLog/tools/HandlerUnit;
.source "ThreadUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/ZteEventLog/tools/ThreadUnit$ThreadImpl;,
        Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;
    }
.end annotation


# instance fields
.field mImpl:Landroid/util/ZteEventLog/tools/ThreadUnit$ThreadImpl;

.field mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/util/ZteEventLog/tools/ThreadUnit$ThreadImpl;)V
    .locals 2
    .parameter "impl"

    .prologue
    invoke-static {}, Landroid/util/ZteEventLog/tools/HandlerWrap;->Main()Landroid/util/ZteEventLog/tools/HandlerWrap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/ZteEventLog/tools/HandlerUnit;-><init>(Landroid/util/ZteEventLog/tools/HandlerWrap;)V

    iput-object p1, p0, Landroid/util/ZteEventLog/tools/ThreadUnit;->mImpl:Landroid/util/ZteEventLog/tools/ThreadUnit$ThreadImpl;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/util/ZteEventLog/tools/ThreadUnit$1;

    invoke-direct {v1, p0}, Landroid/util/ZteEventLog/tools/ThreadUnit$1;-><init>(Landroid/util/ZteEventLog/tools/ThreadUnit;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/util/ZteEventLog/tools/ThreadUnit;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "cmd"

    .prologue
    invoke-static {}, Landroid/util/ZteEventLog/tools/HandlerWrap;->Main()Landroid/util/ZteEventLog/tools/HandlerWrap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/ZteEventLog/tools/HandlerUnit;-><init>(Landroid/util/ZteEventLog/tools/HandlerWrap;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/util/ZteEventLog/tools/ThreadUnit;->mThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public OnResult(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/ThreadUnit;->mImpl:Landroid/util/ZteEventLog/tools/ThreadUnit$ThreadImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/ZteEventLog/tools/ThreadUnit;->mImpl:Landroid/util/ZteEventLog/tools/ThreadUnit$ThreadImpl;

    invoke-interface {v0}, Landroid/util/ZteEventLog/tools/ThreadUnit$ThreadImpl;->OnThreadOver()V

    :cond_0
    return-void
.end method

.method public Start()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/util/ZteEventLog/tools/ThreadUnit;->Start(I)V

    return-void
.end method

.method public Start(I)V
    .locals 1
    .parameter "priority"

    .prologue
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/ThreadUnit;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Landroid/util/ZteEventLog/tools/ThreadUnit;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
