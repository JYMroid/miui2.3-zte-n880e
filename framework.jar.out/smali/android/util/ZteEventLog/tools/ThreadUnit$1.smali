.class Landroid/util/ZteEventLog/tools/ThreadUnit$1;
.super Ljava/lang/Object;
.source "ThreadUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/ZteEventLog/tools/ThreadUnit;-><init>(Landroid/util/ZteEventLog/tools/ThreadUnit$ThreadImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/ZteEventLog/tools/ThreadUnit;


# direct methods
.method constructor <init>(Landroid/util/ZteEventLog/tools/ThreadUnit;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/util/ZteEventLog/tools/ThreadUnit$1;->this$0:Landroid/util/ZteEventLog/tools/ThreadUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    new-instance v0, Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;

    const-string v1, "Thread"

    invoke-direct {v0, v1}, Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;-><init>(Ljava/lang/String;)V

    .local v0, timeCount:Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;
    iget-object v1, p0, Landroid/util/ZteEventLog/tools/ThreadUnit$1;->this$0:Landroid/util/ZteEventLog/tools/ThreadUnit;

    iget-object v1, v1, Landroid/util/ZteEventLog/tools/ThreadUnit;->mImpl:Landroid/util/ZteEventLog/tools/ThreadUnit$ThreadImpl;

    invoke-interface {v1}, Landroid/util/ZteEventLog/tools/ThreadUnit$ThreadImpl;->TheadRun()V

    invoke-virtual {v0}, Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;->Over()V

    iget-object v1, p0, Landroid/util/ZteEventLog/tools/ThreadUnit$1;->this$0:Landroid/util/ZteEventLog/tools/ThreadUnit;

    invoke-virtual {v1}, Landroid/util/ZteEventLog/tools/ThreadUnit;->Send()V

    return-void
.end method
