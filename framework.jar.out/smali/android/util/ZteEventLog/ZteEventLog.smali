.class public Landroid/util/ZteEventLog/ZteEventLog;
.super Ljava/lang/Object;
.source "ZteEventLog.java"


# static fields
.field private static final ANR:Ljava/lang/String; = "ANR"

.field public static final ANR_TAG:Ljava/lang/String; = "ANR_"

.field public static final BOOT_COMPLETE:Ljava/lang/String; = "Boot complete"

.field public static final EVENT_DETAIL:Ljava/lang/String; = "EVENT_DETAIL"

.field public static final EVENT_NAME:Ljava/lang/String; = "EVENT_NAME"

.field public static final EventBasePath:Ljava/lang/String; = "/data/system/dropbox/"

.field public static final EventLogFileName:Ljava/lang/String; = "/data/system/dropbox/ZteEventLog/EventLog.txt"

.field public static final EventLogFileName_bak:Ljava/lang/String; = "/data/system/dropbox/ZteEventLog/EventLog_bak.txt"

.field public static final EventLogPath:Ljava/lang/String; = "/data/system/dropbox/ZteEventLog/"

.field public static final EventLogTagFileName:Ljava/lang/String; = "/data/system/dropbox/ZteEventLog/timestamp.txt"

.field public static final Exception:Ljava/lang/String; = "Exception"

.field public static final MAX_ANR_COUNT:I = 0x5

.field public static final MAX_FILE_SIZE:J = 0x80000L

.field public static final SPLIT_TAG:Ljava/lang/String; = "======================================"

.field public static final TAG:Ljava/lang/String; = "hubo_EventLog"

.field public static final THRESHOLD_TIME:J = 0xea60L

.field static instance:Landroid/util/ZteEventLog/ZteEventLog;


# instance fields
.field fileIndex:I

.field mHandler:Landroid/util/ZteEventLog/tools/HandlerWrap$ThreadHandler;

.field mTimeCreated:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/ZteEventLog/ZteEventLog;->fileIndex:I

    const-string v0, "/data/system/dropbox/"

    const-string v1, "701"

    invoke-static {v0, v1}, Landroid/util/ZteEventLog/tools/FileTools;->AuthFileOrDir(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "/data/system/dropbox/ZteEventLog/"

    invoke-static {v0}, Landroid/util/ZteEventLog/tools/FileTools;->MakeDir(Ljava/lang/String;)Z

    const-string v0, "EventLog"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/ZteEventLog/tools/HandlerWrap$ThreadHandler;->Create(Ljava/lang/String;I)Landroid/util/ZteEventLog/tools/HandlerWrap$ThreadHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/util/ZteEventLog/ZteEventLog;->mHandler:Landroid/util/ZteEventLog/tools/HandlerWrap$ThreadHandler;

    invoke-virtual {p0}, Landroid/util/ZteEventLog/ZteEventLog;->GetFileCreated()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/ZteEventLog/ZteEventLog;->mTimeCreated:J

    return-void
.end method

.method static Instance()Landroid/util/ZteEventLog/ZteEventLog;
    .locals 1

    .prologue
    sget-object v0, Landroid/util/ZteEventLog/ZteEventLog;->instance:Landroid/util/ZteEventLog/ZteEventLog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ZteEventLog/ZteEventLog;

    invoke-direct {v0}, Landroid/util/ZteEventLog/ZteEventLog;-><init>()V

    sput-object v0, Landroid/util/ZteEventLog/ZteEventLog;->instance:Landroid/util/ZteEventLog/ZteEventLog;

    :cond_0
    sget-object v0, Landroid/util/ZteEventLog/ZteEventLog;->instance:Landroid/util/ZteEventLog/ZteEventLog;

    return-object v0
.end method

.method public static OnAnrFileUpdate(Ljava/io/File;)V
    .locals 2
    .parameter "anrFile"

    .prologue
    :try_start_0
    const-string v0, "hubo_EventLog"

    const-string v1, "OnAnrFileUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/util/ZteEventLog/ZteEventLog;->Instance()Landroid/util/ZteEventLog/ZteEventLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ZteEventLog/ZteEventLog;->ProcessAnrFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static OnAnrInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "info"

    .prologue
    :try_start_0
    const-string v0, "hubo_EventLog"

    const-string v1, "OnAnrInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/util/ZteEventLog/ZteEventLog;->Instance()Landroid/util/ZteEventLog/ZteEventLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ZteEventLog/ZteEventLog;->ProcessAnrInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static OnException(Ljava/lang/String;)V
    .locals 2
    .parameter "detail"

    .prologue
    :try_start_0
    const-string v0, "hubo_EventLog"

    const-string v1, "OnException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/util/ZteEventLog/ZteEventLog;->Instance()Landroid/util/ZteEventLog/ZteEventLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ZteEventLog/ZteEventLog;->ProcessException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static SaveToFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "content"

    .prologue
    const-string v0, "/data/system/dropbox/ZteEventLog/EventLog.txt"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/util/ZteEventLog/tools/FileTools;->Write(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method CheckSize()V
    .locals 6

    .prologue
    const-string v5, "/data/system/dropbox/ZteEventLog/EventLog.txt"

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/dropbox/ZteEventLog/EventLog.txt"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x80000

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const-string v1, "/data/system/dropbox/ZteEventLog/EventLog.txt"

    const-string v1, "/data/system/dropbox/ZteEventLog/EventLog_bak.txt"

    invoke-static {v5, v1}, Landroid/util/ZteEventLog/tools/FileTools;->RenameFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method CheckTime()V
    .locals 7

    .prologue
    const-string v6, "/data/system/dropbox/ZteEventLog/EventLog.txt"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, timeNow:J
    iget-wide v2, p0, Landroid/util/ZteEventLog/ZteEventLog;->mTimeCreated:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Landroid/util/ZteEventLog/ZteEventLog;->mTimeCreated:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-string v2, "/data/system/dropbox/ZteEventLog/EventLog.txt"

    invoke-static {v6}, Landroid/util/ZteEventLog/tools/FileTools;->IsFileOrDirExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "/data/system/dropbox/ZteEventLog/EventLog.txt"

    const-string v2, "/data/system/dropbox/ZteEventLog/EventLog_bak.txt"

    invoke-static {v6, v2}, Landroid/util/ZteEventLog/tools/FileTools;->RenameFile(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/ZteEventLog/ZteEventLog;->RefreshCreateTime()V

    goto :goto_0
.end method

.method GetAnrEvent(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "fileName"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/util/ZteEventLog/tools/ToolKit;->GetTimeNowStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nSave to file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, anrDetail:Ljava/lang/String;
    const-string v1, "ANR"

    invoke-virtual {p0, v1, v0}, Landroid/util/ZteEventLog/ZteEventLog;->MakeEventInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method GetAnrFileName()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v2, "%s%03d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ANR_"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Landroid/util/ZteEventLog/ZteEventLog;->fileIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, fileName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/dropbox/ZteEventLog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, wholeName:Ljava/lang/String;
    invoke-static {v1}, Landroid/util/ZteEventLog/tools/FileTools;->AuthFileOrDir(Ljava/lang/String;)Z

    iget v2, p0, Landroid/util/ZteEventLog/ZteEventLog;->fileIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x5

    iput v2, p0, Landroid/util/ZteEventLog/ZteEventLog;->fileIndex:I

    return-object v1
.end method

.method GetAnrInfoEvent(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "detail"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/util/ZteEventLog/tools/ToolKit;->GetTimeNowStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, exceptionDetail:Ljava/lang/String;
    const-string v1, "ANR"

    invoke-virtual {p0, v1, v0}, Landroid/util/ZteEventLog/ZteEventLog;->MakeEventInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method GetEventStr(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .parameter "eventInfo"

    .prologue
    const-string v4, "======================================"

    const-string v0, "%s\n%s:\n%s\n%s\n\n"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "======================================"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const-string v3, "EVENT_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "EVENT_DETAIL"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "======================================"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method GetExceptionEvent(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "detail"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/util/ZteEventLog/tools/ToolKit;->GetTimeNowStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, exceptionDetail:Ljava/lang/String;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Landroid/util/ZteEventLog/ZteEventLog;->MakeEventInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method GetFileCreated()J
    .locals 5

    .prologue
    const-string v4, "/data/system/dropbox/ZteEventLog/timestamp.txt"

    const-wide/16 v1, 0x0

    .local v1, fileCreated:J
    const-string v3, "/data/system/dropbox/ZteEventLog/timestamp.txt"

    invoke-static {v4}, Landroid/util/ZteEventLog/tools/FileTools;->IsFileOrDirExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "/data/system/dropbox/ZteEventLog/timestamp.txt"

    invoke-static {v4}, Landroid/util/ZteEventLog/tools/FileTools;->ReadContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .end local v0           #content:Ljava/lang/String;
    :cond_0
    return-wide v1
.end method

.method GetMainProcessInfo(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .parameter "anrFile"

    .prologue
    const/4 v4, -0x1

    invoke-static {p1}, Landroid/util/ZteEventLog/tools/FileTools;->ReadContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .local v0, content:Ljava/lang/String;
    const-string v3, "----- pid "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, start:I
    const-string v3, "----- end "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, end:I
    if-eq v2, v4, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    move-object v3, v0

    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method MakeEventInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "event"
    .parameter "eventDetail"

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, info:Landroid/os/Bundle;
    const-string v1, "EVENT_DETAIL"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EVENT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public ProcessAnrFile(Ljava/io/File;)V
    .locals 2
    .parameter "anrFile"

    .prologue
    new-instance v0, Landroid/util/ZteEventLog/ZteEventLog$3;

    iget-object v1, p0, Landroid/util/ZteEventLog/ZteEventLog;->mHandler:Landroid/util/ZteEventLog/tools/HandlerWrap$ThreadHandler;

    invoke-direct {v0, p0, v1, p1}, Landroid/util/ZteEventLog/ZteEventLog$3;-><init>(Landroid/util/ZteEventLog/ZteEventLog;Landroid/util/ZteEventLog/tools/HandlerWrap;Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/ZteEventLog/ZteEventLog$3;->Send()V

    return-void
.end method

.method public ProcessAnrInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "detail"

    .prologue
    new-instance v0, Landroid/util/ZteEventLog/ZteEventLog$2;

    iget-object v1, p0, Landroid/util/ZteEventLog/ZteEventLog;->mHandler:Landroid/util/ZteEventLog/tools/HandlerWrap$ThreadHandler;

    invoke-direct {v0, p0, v1, p1}, Landroid/util/ZteEventLog/ZteEventLog$2;-><init>(Landroid/util/ZteEventLog/ZteEventLog;Landroid/util/ZteEventLog/tools/HandlerWrap;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/ZteEventLog/ZteEventLog$2;->Send()V

    return-void
.end method

.method public ProcessException(Ljava/lang/String;)V
    .locals 2
    .parameter "exceptionDetail"

    .prologue
    new-instance v0, Landroid/util/ZteEventLog/ZteEventLog$1;

    iget-object v1, p0, Landroid/util/ZteEventLog/ZteEventLog;->mHandler:Landroid/util/ZteEventLog/tools/HandlerWrap$ThreadHandler;

    invoke-direct {v0, p0, v1, p1}, Landroid/util/ZteEventLog/ZteEventLog$1;-><init>(Landroid/util/ZteEventLog/ZteEventLog;Landroid/util/ZteEventLog/tools/HandlerWrap;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/ZteEventLog/ZteEventLog$1;->Send()V

    return-void
.end method

.method RefreshCreateTime()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/ZteEventLog/ZteEventLog;->mTimeCreated:J

    const-string v0, "/data/system/dropbox/ZteEventLog/timestamp.txt"

    iget-wide v1, p0, Landroid/util/ZteEventLog/ZteEventLog;->mTimeCreated:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/ZteEventLog/tools/FileTools;->Write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method Save(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    invoke-virtual {p0}, Landroid/util/ZteEventLog/ZteEventLog;->CheckSize()V

    invoke-static {p1}, Landroid/util/ZteEventLog/ZteEventLog;->SaveToFile(Ljava/lang/String;)Z

    return-void
.end method
