.class public Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;
.super Ljava/lang/Object;
.source "ThreadUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/ZteEventLog/tools/ThreadUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunTimeCount"
.end annotation


# instance fields
.field mEndTime:J

.field mStartTime:J

.field mThreadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "cmd"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/util/ZteEventLog/tools/ToolKit;->GetTimeNow()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;->mStartTime:J

    iget-wide v0, p0, Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;->mStartTime:J

    iput-wide v0, p0, Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;->mEndTime:J

    iput-object p1, p0, Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;->mThreadName:Ljava/lang/String;

    const-string v0, "hubo_timeCount"

    const-string v1, "%s start at %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;->mThreadName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;->mStartTime:J

    invoke-static {v4, v5}, Landroid/util/ZteEventLog/tools/ToolKit;->Ms2Str(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public Over()V
    .locals 8

    .prologue
    invoke-static {}, Landroid/util/ZteEventLog/tools/ToolKit;->GetTimeNow()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;->mEndTime:J

    const-string v0, "hubo_timeCount"

    const-string v1, "%s end at %s use %d seconds"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;->mThreadName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;->mEndTime:J

    invoke-static {v4, v5}, Landroid/util/ZteEventLog/tools/ToolKit;->Ms2Str(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;->mEndTime:J

    iget-wide v6, p0, Landroid/util/ZteEventLog/tools/ThreadUnit$RunTimeCount;->mStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
