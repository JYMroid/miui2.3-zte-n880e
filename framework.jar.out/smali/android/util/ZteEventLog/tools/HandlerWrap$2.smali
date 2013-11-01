.class Landroid/util/ZteEventLog/tools/HandlerWrap$2;
.super Landroid/os/Handler;
.source "HandlerWrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/ZteEventLog/tools/HandlerWrap;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/ZteEventLog/tools/HandlerWrap;


# direct methods
.method constructor <init>(Landroid/util/ZteEventLog/tools/HandlerWrap;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Landroid/util/ZteEventLog/tools/HandlerWrap$2;->this$0:Landroid/util/ZteEventLog/tools/HandlerWrap;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Landroid/util/ZteEventLog/tools/HandlerWrap$2;->this$0:Landroid/util/ZteEventLog/tools/HandlerWrap;

    invoke-virtual {v0, p1}, Landroid/util/ZteEventLog/tools/HandlerWrap;->MyHandleMessage(Landroid/os/Message;)V

    return-void
.end method
