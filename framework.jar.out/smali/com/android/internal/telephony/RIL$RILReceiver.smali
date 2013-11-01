.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v7, 0x0

    .local v7, retryCount:I
    const-string v8, "rild"

    .local v8, rilSocket:Ljava/lang/String;
    :goto_0
    const/4 v9, 0x0

    .local v9, s:Landroid/net/LocalSocket;
    :try_start_0
    const-string v12, "ro.multi.rild"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, multiRild:Z
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v12, Lcom/android/internal/telephony/RIL;->mInstanceId:I

    if-eqz v12, :cond_0

    if-nez v4, :cond_2

    :cond_0
    const-string v8, "rild"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    new-instance v10, Landroid/net/LocalSocket;

    invoke-direct {v10}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .end local v9           #s:Landroid/net/LocalSocket;
    .local v10, s:Landroid/net/LocalSocket;
    :try_start_2
    new-instance v2, Landroid/net/LocalSocketAddress;

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v8, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v2, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v10, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v7, 0x0

    :try_start_3
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v10, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Connected to \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' socket"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v3, 0x0

    .local v3, length:I
    :try_start_4
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .local v1, is:Ljava/io/InputStream;
    :goto_2
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    #calls: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v1, v12}, Lcom/android/internal/telephony/RIL;->access$300(Ljava/io/InputStream;[B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-result v3

    if-gez v3, :cond_6

    .end local v1           #is:Ljava/io/InputStream;
    :goto_3
    :try_start_5
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Disconnected from \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' socket"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "persist.dsds.enabled"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .local v5, multiSimEnabled:Z
    if-eqz v5, :cond_1

    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x1

    #setter for: Lcom/android/internal/telephony/RIL;->mRilPowerOff:Z
    invoke-static {v12, v13}, Lcom/android/internal/telephony/RIL;->access$502(Lcom/android/internal/telephony/RIL;Z)Z

    :cond_1
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v13, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    :try_start_7
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x1

    const/4 v14, 0x0

    #calls: Lcom/android/internal/telephony/RIL;->clearRequestsList(IZ)V
    invoke-static {v12, v13, v14}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    .end local v5           #multiSimEnabled:Z
    :catch_0
    move-exception v12

    move-object v11, v12

    move-object v9, v10

    .end local v4           #multiRild:Z
    .end local v10           #s:Landroid/net/LocalSocket;
    .restart local v9       #s:Landroid/net/LocalSocket;
    .local v11, tr:Ljava/lang/Throwable;
    :goto_5
    const-string v12, "RILJ"

    const-string v13, "Uncaught exception"

    invoke-static {v12, v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .end local v11           #tr:Ljava/lang/Throwable;
    .restart local v4       #multiRild:Z
    :cond_2
    :try_start_8
    const-string v8, "rild1"
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v12

    move-object v0, v12

    .local v0, ex:Ljava/io/IOException;
    :goto_6
    if-eqz v9, :cond_3

    :try_start_9
    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    :cond_3
    :goto_7
    const/16 v12, 0x8

    if-ne v7, v12, :cond_5

    :try_start_a
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t find \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' socket after "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " times, continuing to retry silently"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    :cond_4
    :goto_8
    const-wide/16 v12, 0xfa0

    :try_start_b
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_5
    if-lez v7, :cond_4

    const/16 v12, 0x8

    if-ge v7, v12, :cond_4

    :try_start_c
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t find \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' socket; retrying after timeout"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_8

    .end local v0           #ex:Ljava/io/IOException;
    .end local v4           #multiRild:Z
    :catch_2
    move-exception v12

    move-object v11, v12

    goto :goto_5

    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #l:Landroid/net/LocalSocketAddress;
    .restart local v3       #length:I
    .restart local v4       #multiRild:Z
    .restart local v10       #s:Landroid/net/LocalSocket;
    :cond_6
    :try_start_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .local v6, p:Landroid/os/Parcel;
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v12, v6}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_2

    .end local v1           #is:Ljava/io/InputStream;
    .end local v6           #p:Landroid/os/Parcel;
    :catch_3
    move-exception v12

    move-object v0, v12

    .restart local v0       #ex:Ljava/io/IOException;
    :try_start_e
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' socket closed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .end local v0           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v12

    move-object v11, v12

    .restart local v11       #tr:Ljava/lang/Throwable;
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Uncaught exception read length="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_3

    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    .end local v10           #s:Landroid/net/LocalSocket;
    .end local v11           #tr:Ljava/lang/Throwable;
    .restart local v0       #ex:Ljava/io/IOException;
    .restart local v9       #s:Landroid/net/LocalSocket;
    :catch_5
    move-exception v12

    goto/16 :goto_7

    :catch_6
    move-exception v12

    goto/16 :goto_9

    .end local v0           #ex:Ljava/io/IOException;
    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v2       #l:Landroid/net/LocalSocketAddress;
    .restart local v3       #length:I
    .restart local v5       #multiSimEnabled:Z
    .restart local v10       #s:Landroid/net/LocalSocket;
    :catch_7
    move-exception v12

    goto/16 :goto_4

    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    .end local v5           #multiSimEnabled:Z
    :catch_8
    move-exception v12

    move-object v0, v12

    move-object v9, v10

    .end local v10           #s:Landroid/net/LocalSocket;
    .restart local v9       #s:Landroid/net/LocalSocket;
    goto/16 :goto_6
.end method
