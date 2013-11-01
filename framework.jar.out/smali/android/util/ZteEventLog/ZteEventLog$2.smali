.class Landroid/util/ZteEventLog/ZteEventLog$2;
.super Landroid/util/ZteEventLog/tools/HandlerUnit;
.source "ZteEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/ZteEventLog/ZteEventLog;->ProcessAnrInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/ZteEventLog/ZteEventLog;

.field final synthetic val$detail:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/util/ZteEventLog/ZteEventLog;Landroid/util/ZteEventLog/tools/HandlerWrap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    iput-object p1, p0, Landroid/util/ZteEventLog/ZteEventLog$2;->this$0:Landroid/util/ZteEventLog/ZteEventLog;

    iput-object p3, p0, Landroid/util/ZteEventLog/ZteEventLog$2;->val$detail:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/util/ZteEventLog/tools/HandlerUnit;-><init>(Landroid/util/ZteEventLog/tools/HandlerWrap;)V

    return-void
.end method


# virtual methods
.method public OnResult(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget-object v0, p0, Landroid/util/ZteEventLog/ZteEventLog$2;->this$0:Landroid/util/ZteEventLog/ZteEventLog;

    iget-object v1, p0, Landroid/util/ZteEventLog/ZteEventLog$2;->this$0:Landroid/util/ZteEventLog/ZteEventLog;

    iget-object v2, p0, Landroid/util/ZteEventLog/ZteEventLog$2;->this$0:Landroid/util/ZteEventLog/ZteEventLog;

    iget-object v3, p0, Landroid/util/ZteEventLog/ZteEventLog$2;->val$detail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ZteEventLog/ZteEventLog;->GetAnrInfoEvent(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ZteEventLog/ZteEventLog;->GetEventStr(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ZteEventLog/ZteEventLog;->Save(Ljava/lang/String;)V

    return-void
.end method
