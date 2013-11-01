.class public Landroid/util/ZteEventLog/tools/HandlerWrap$ThreadHandler;
.super Landroid/util/ZteEventLog/tools/HandlerWrap;
.source "HandlerWrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/ZteEventLog/tools/HandlerWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadHandler"
.end annotation


# instance fields
.field mThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/os/HandlerThread;)V
    .locals 2
    .parameter "thread"

    .prologue
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/util/ZteEventLog/tools/HandlerWrap;-><init>(Landroid/os/Looper;Landroid/util/ZteEventLog/tools/HandlerWrap$1;)V

    iput-object p1, p0, Landroid/util/ZteEventLog/tools/HandlerWrap$ThreadHandler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    iput v0, p0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mThreadTid:I

    return-void
.end method

.method public static Create(Ljava/lang/String;I)Landroid/util/ZteEventLog/tools/HandlerWrap$ThreadHandler;
    .locals 2
    .parameter "name"
    .parameter "priority"

    .prologue
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/util/ZteEventLog/tools/HandlerWrap$ThreadHandler;

    invoke-direct {v1, v0}, Landroid/util/ZteEventLog/tools/HandlerWrap$ThreadHandler;-><init>(Landroid/os/HandlerThread;)V

    return-object v1
.end method
