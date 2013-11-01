.class public Landroid/util/ZteEventLog/tools/HandlerWrap;
.super Ljava/lang/Object;
.source "HandlerWrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/ZteEventLog/tools/HandlerWrap$ThreadHandler;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "hubo_HandlerWrap"

.field public static mainThread:Landroid/util/ZteEventLog/tools/HandlerWrap;


# instance fields
.field private mCodePool:I

.field private mHandler:Landroid/os/Handler;

.field mThreadTid:I

.field private mUnits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/ZteEventLog/tools/HandlerUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mUnits:Ljava/util/HashMap;

    const/16 v0, 0x6f

    iput v0, p0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mCodePool:I

    new-instance v0, Landroid/util/ZteEventLog/tools/HandlerWrap$1;

    invoke-direct {v0, p0}, Landroid/util/ZteEventLog/tools/HandlerWrap$1;-><init>(Landroid/util/ZteEventLog/tools/HandlerWrap;)V

    iput-object v0, p0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mThreadTid:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mUnits:Ljava/util/HashMap;

    const/16 v0, 0x6f

    iput v0, p0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mCodePool:I

    new-instance v0, Landroid/util/ZteEventLog/tools/HandlerWrap$2;

    invoke-direct {v0, p0, p1}, Landroid/util/ZteEventLog/tools/HandlerWrap$2;-><init>(Landroid/util/ZteEventLog/tools/HandlerWrap;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Landroid/util/ZteEventLog/tools/HandlerWrap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/util/ZteEventLog/tools/HandlerWrap;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static Main()Landroid/util/ZteEventLog/tools/HandlerWrap;
    .locals 1

    .prologue
    sget-object v0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mainThread:Landroid/util/ZteEventLog/tools/HandlerWrap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ZteEventLog/tools/HandlerWrap;

    invoke-direct {v0}, Landroid/util/ZteEventLog/tools/HandlerWrap;-><init>()V

    sput-object v0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mainThread:Landroid/util/ZteEventLog/tools/HandlerWrap;

    :cond_0
    sget-object v0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mainThread:Landroid/util/ZteEventLog/tools/HandlerWrap;

    return-object v0
.end method


# virtual methods
.method public AddUnit(Landroid/util/ZteEventLog/tools/HandlerUnit;)V
    .locals 2
    .parameter "unit"

    .prologue
    iget v0, p0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mCodePool:I

    invoke-virtual {p1, p0, v0}, Landroid/util/ZteEventLog/tools/HandlerUnit;->Bind(Landroid/util/ZteEventLog/tools/HandlerWrap;I)V

    iget-object v0, p0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mUnits:Ljava/util/HashMap;

    iget v1, p0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mCodePool:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mCodePool:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mCodePool:I

    return-void
.end method

.method public GetHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected GetHandlerUnit(I)Landroid/util/ZteEventLog/tools/HandlerUnit;
    .locals 2
    .parameter "code"

    .prologue
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/util/ZteEventLog/tools/HandlerUnit;

    return-object p0
.end method

.method public IsCurrentRunning()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/util/ZteEventLog/tools/HandlerWrap;->mThreadTid:I

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected MyHandleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1}, Landroid/util/ZteEventLog/tools/HandlerWrap;->GetHandlerUnit(I)Landroid/util/ZteEventLog/tools/HandlerUnit;

    move-result-object v0

    .local v0, unit:Landroid/util/ZteEventLog/tools/HandlerUnit;
    if-nez v0, :cond_0

    const-string v1, "hubo_HandlerWrap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find handler = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #unit:Landroid/util/ZteEventLog/tools/HandlerUnit;
    :goto_0
    return-void

    .restart local v0       #unit:Landroid/util/ZteEventLog/tools/HandlerUnit;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ZteEventLog/tools/HandlerUnit;->OnResult(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #unit:Landroid/util/ZteEventLog/tools/HandlerUnit;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public Quit()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/util/ZteEventLog/tools/HandlerWrap;->GetHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
