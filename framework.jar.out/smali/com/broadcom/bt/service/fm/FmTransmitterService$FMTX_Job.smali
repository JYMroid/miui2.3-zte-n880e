.class Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
.super Ljava/lang/Object;
.source "FmTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmTransmitterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FMTX_Job"
.end annotation


# instance fields
.field arg1:I

.field arg2:I

.field arg3:I

.field arg4:I

.field arg5:I

.field arg6:I

.field arg7:I

.field arg8:I

.field b_arg1:Z

.field final command:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

.field timeSent:J


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;)V
    .locals 2
    .parameter "command"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->command:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V
    .locals 2
    .parameter "command"
    .parameter "arg1"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->command:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    iput p2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;IZ)V
    .locals 2
    .parameter "command"
    .parameter "arg1"
    .parameter "b_arg1"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->command:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    iput-boolean p3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->b_arg1:Z

    iput p2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;Z)V
    .locals 2
    .parameter "command"
    .parameter "b_arg1"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->command:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    iput-boolean p2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->b_arg1:Z

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;ZIIIIIIII)V
    .locals 2
    .parameter "command"
    .parameter "b_arg1"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"
    .parameter "arg6"
    .parameter "arg7"
    .parameter "arg8"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->command:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    iput-boolean p2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->b_arg1:Z

    iput p3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    iput p4, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg2:I

    iput p5, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg3:I

    iput p6, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg4:I

    iput p7, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg5:I

    iput p8, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg6:I

    iput p9, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg7:I

    iput p10, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg8:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->command:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TimeSent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v1, "not yet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
