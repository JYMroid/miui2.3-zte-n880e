.class Landroid/hardware/fmradio/FmTxEventListner$1;
.super Ljava/lang/Thread;
.source "FmTxEventListner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fmradio/FmTxEventListner;->startListner(ILandroid/hardware/fmradio/FmTransmitterCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fmradio/FmTxEventListner;

.field final synthetic val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

.field final synthetic val$fd:I


# direct methods
.method constructor <init>(Landroid/hardware/fmradio/FmTxEventListner;ILandroid/hardware/fmradio/FmTransmitterCallbacks;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->this$0:Landroid/hardware/fmradio/FmTxEventListner;

    iput p2, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$fd:I

    iput-object p3, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-string v7, "FMTxEventListner"

    const-string v4, "FMTxEventListner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting Tx Event listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$fd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .local v3, index:I
    const/16 v4, 0x80

    :try_start_0
    new-array v0, v4, [B

    .local v0, buff:[B
    const-string v4, "FMTxEventListner"

    const-string v5, "getBufferNative called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$fd:I

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    move-result v1

    .local v1, eventCount:I
    const-string v4, "FMTxEventListner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received event. Count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    const-string v4, "FMTxEventListner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte v4, v0, v3

    sparse-switch v4, :sswitch_data_0

    const-string v4, "FMTxEventListner"

    const-string v5, "Unknown event"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :sswitch_0
    const-string v4, "FMTxEventListner"

    const-string v5, "Got TUNE_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

    iget v5, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$fd:I

    invoke-static {v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/hardware/fmradio/FmTransmitterCallbacks;->onTuneStatusChange(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v0           #buff:[B
    .end local v1           #eventCount:I
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "FMTxEventListner"

    const-string v4, "RunningThread InterruptedException"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #buff:[B
    .restart local v1       #eventCount:I
    :sswitch_1
    :try_start_1
    const-string v4, "FMTxEventListner"

    const-string v5, "Got TXRDSDAT_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmTransmitterCallbacks;->onRDSGroupsAvailable()V

    goto :goto_2

    :sswitch_2
    const-string v4, "FMTxEventListner"

    const-string v5, "Got TXRDSDONE_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmTransmitterCallbacks;->onContRDSGroupsComplete()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v0           #buff:[B
    .end local v1           #eventCount:I
    .end local v3           #index:I
    :cond_1
    const-string v4, "FMTxEventListner"

    const-string v4, "Came out of the while loop"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method
