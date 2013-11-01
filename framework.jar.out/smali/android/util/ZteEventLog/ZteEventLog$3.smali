.class Landroid/util/ZteEventLog/ZteEventLog$3;
.super Landroid/util/ZteEventLog/tools/HandlerUnit;
.source "ZteEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/ZteEventLog/ZteEventLog;->ProcessAnrFile(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/ZteEventLog/ZteEventLog;

.field final synthetic val$anrFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/util/ZteEventLog/ZteEventLog;Landroid/util/ZteEventLog/tools/HandlerWrap;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    iput-object p1, p0, Landroid/util/ZteEventLog/ZteEventLog$3;->this$0:Landroid/util/ZteEventLog/ZteEventLog;

    iput-object p3, p0, Landroid/util/ZteEventLog/ZteEventLog$3;->val$anrFile:Ljava/io/File;

    invoke-direct {p0, p2}, Landroid/util/ZteEventLog/tools/HandlerUnit;-><init>(Landroid/util/ZteEventLog/tools/HandlerWrap;)V

    return-void
.end method


# virtual methods
.method public OnResult(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    iget-object v2, p0, Landroid/util/ZteEventLog/ZteEventLog$3;->this$0:Landroid/util/ZteEventLog/ZteEventLog;

    iget-object v3, p0, Landroid/util/ZteEventLog/ZteEventLog$3;->val$anrFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Landroid/util/ZteEventLog/ZteEventLog;->GetMainProcessInfo(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .local v1, mainProcessInfo:Ljava/lang/String;
    iget-object v2, p0, Landroid/util/ZteEventLog/ZteEventLog$3;->this$0:Landroid/util/ZteEventLog/ZteEventLog;

    invoke-virtual {v2}, Landroid/util/ZteEventLog/ZteEventLog;->GetAnrFileName()Ljava/lang/String;

    move-result-object v0

    .local v0, anrFileName:Ljava/lang/String;
    invoke-static {v0}, Landroid/util/ZteEventLog/tools/FileTools;->AuthFileOrDir(Ljava/lang/String;)Z

    invoke-static {v0, v1}, Landroid/util/ZteEventLog/tools/FileTools;->Write(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Landroid/util/ZteEventLog/ZteEventLog$3;->this$0:Landroid/util/ZteEventLog/ZteEventLog;

    iget-object v3, p0, Landroid/util/ZteEventLog/ZteEventLog$3;->this$0:Landroid/util/ZteEventLog/ZteEventLog;

    iget-object v4, p0, Landroid/util/ZteEventLog/ZteEventLog$3;->this$0:Landroid/util/ZteEventLog/ZteEventLog;

    invoke-virtual {v4, v0}, Landroid/util/ZteEventLog/ZteEventLog;->GetAnrEvent(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ZteEventLog/ZteEventLog;->GetEventStr(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ZteEventLog/ZteEventLog;->Save(Ljava/lang/String;)V

    return-void
.end method
