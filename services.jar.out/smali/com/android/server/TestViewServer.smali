.class Lcom/android/server/TestViewServer;
.super Ljava/lang/Object;
.source "TestViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TestViewServer"

.field private static final REMOTE_COMMAND_DUMP:Ljava/lang/String; = "DUMP"

.field private static final REMOTE_COMMAND_DUMP2:Ljava/lang/String; = "DUMP2"

.field private static final REMOTE_COMMAND_GETCOORBYCLASS:Ljava/lang/String; = "GETCOORBYCLASS"

.field private static final REMOTE_COMMAND_GETSTR:Ljava/lang/String; = "GETSTR"

.field private static final REMOTE_COMMAND_GETTYPENUM:Ljava/lang/String; = "GETTYPENUM"

.field public static final VIEW_SERVER_DEFAULT_PORT:I = 0x22b8


# instance fields
.field private final mPort:I

.field private mServer:Ljava/net/ServerSocket;

.field private mThread:Ljava/lang/Thread;

.field private final mWindowManager:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;)V
    .locals 1
    .parameter "windowManager"

    .prologue
    const/16 v0, 0x22b8

    invoke-direct {p0, p1, v0}, Lcom/android/server/TestViewServer;-><init>(Lcom/android/server/WindowManagerService;I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/WindowManagerService;I)V
    .locals 0
    .parameter "windowManager"
    .parameter "port"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/TestViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;

    iput p2, p0, Lcom/android/server/TestViewServer;->mPort:I

    return-void
.end method

.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 7
    .parameter "client"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v4, 0x1

    .local v4, result:Z
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return v4

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_0

    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catch_1
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/Exception;
    :goto_1
    const/4 v4, 0x0

    .restart local v4       #result:Z
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_0

    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_3
    throw v5

    :catch_3
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    goto :goto_3

    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v5

    move-object v1, v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v4       #result:Z
    :cond_2
    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_0
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/TestViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TestViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    const-string v9, "TestViewServer"

    iget-object v8, p0, Lcom/android/server/TestViewServer;->mServer:Ljava/net/ServerSocket;

    .local v8, server:Ljava/net/ServerSocket;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/TestViewServer;->mThread:Ljava/lang/Thread;

    if-ne v9, v10, :cond_a

    const/4 v0, 0x0

    .local v0, client:Ljava/net/Socket;
    :try_start_0
    invoke-virtual {v8}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    const/4 v3, 0x0

    .local v3, in:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v10, 0x400

    invoke-direct {v4, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3           #in:Ljava/io/BufferedReader;
    .local v4, in:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, request:Ljava/lang/String;
    const-string v9, "TestViewServer"

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .local v5, index:I
    const/4 v9, -0x1

    if-ne v5, v9, :cond_7

    move-object v1, v7

    .local v1, command:Ljava/lang/String;
    const-string v6, ""

    .local v6, parameters:Ljava/lang/String;
    :goto_1
    const-string v9, "DUMP"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/TestViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v9, v0, v1, v6}, Lcom/android/server/WindowManagerService;->testViewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    const-string v9, "DUMP2"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/TestViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v9, v0, v1, v6}, Lcom/android/server/WindowManagerService;->testViewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    const-string v9, "GETSTR"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/TestViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v9, v0, v1, v6}, Lcom/android/server/WindowManagerService;->testViewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    const-string v9, "GETTYPENUM"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/TestViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v9, v0, v1, v6}, Lcom/android/server/WindowManagerService;->testViewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    const-string v9, "GETCOORBYCLASS"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/TestViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v9, v0, v1, v6}, Lcom/android/server/WindowManagerService;->testViewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_5
    if-eqz v4, :cond_6

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .end local v1           #command:Ljava/lang/String;
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #parameters:Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v7, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #command:Ljava/lang/String;
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v6

    .restart local v6       #parameters:Ljava/lang/String;
    goto :goto_1

    .end local v1           #command:Ljava/lang/String;
    .end local v4           #in:Ljava/io/BufferedReader;
    .end local v5           #index:I
    .end local v6           #parameters:Ljava/lang/String;
    .end local v7           #request:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v3, :cond_8

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_8
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .end local v3           #in:Ljava/io/BufferedReader;
    :catch_1
    move-exception v9

    move-object v2, v9

    .local v2, e:Ljava/lang/Exception;
    :try_start_7
    const-string v9, "TestViewServer"

    const-string v10, "Connection error: "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_0

    :try_start_8
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    if-eqz v0, :cond_9

    :try_start_9
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_9
    :goto_3
    throw v9

    :catch_3
    move-exception v2

    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v0           #client:Ljava/net/Socket;
    .end local v2           #e:Ljava/io/IOException;
    :cond_a
    return-void

    .restart local v0       #client:Ljava/net/Socket;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method start()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/TestViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lcom/android/server/TestViewServer;->mPort:I

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/android/server/TestViewServer;->mServer:Ljava/net/ServerSocket;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote View Server [port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/TestViewServer;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/TestViewServer;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/TestViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v0, v3

    goto :goto_0
.end method

.method stop()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/TestViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/TestViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/android/server/TestViewServer;->mThread:Ljava/lang/Thread;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/TestViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/TestViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    const-string v1, "TestViewServer"

    const-string v2, "Could not close the view server"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
