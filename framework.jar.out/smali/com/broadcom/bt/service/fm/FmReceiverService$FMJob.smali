.class Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
.super Ljava/lang/Object;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FMJob"
.end annotation


# instance fields
.field arg1:I

.field arg2:I

.field arg3:I

.field arg4:I

.field b_arg1:Z

.field final command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

.field timeSent:J


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;)V
    .locals 2
    .parameter "command"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V
    .locals 2
    .parameter "command"
    .parameter "arg1"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;II)V
    .locals 2
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;III)V
    .locals 2
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    iput p4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg3:I

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;IIII)V
    .locals 2
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    iput p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    iput p4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg3:I

    iput p5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg4:I

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;Z)V
    .locals 2
    .parameter "command"
    .parameter "b_arg1"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    iput-boolean p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->b_arg1:Z

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;ZI)V
    .locals 2
    .parameter "command"
    .parameter "b_arg1"
    .parameter "arg2"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    iput-boolean p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->b_arg1:Z

    iput p3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TimeSent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

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

    iget-wide v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
