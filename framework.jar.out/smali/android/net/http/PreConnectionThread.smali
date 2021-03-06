.class Landroid/net/http/PreConnectionThread;
.super Ljava/lang/Thread;
.source "PreConnectionThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/PreConnectionThread$SocketEntry;
    }
.end annotation


# static fields
.field private static final CONNECTION_WEIGHT:D = 0.8

.field private static final FIRST_LEVEL_NUM_CONNECTIONS:I = 0x1

.field private static final FIRST_LEVEL_PRE_CONNECT:I = 0xa

.field private static final MAX_CONNECTION_TIME:I = 0x1f4

.field private static final MAX_PENDING_CONNECTONS:I = 0x19

.field private static final SECOND_LEVEL_NUM_CONNECTIONS:I = 0x2

.field private static final SECOND_LEVEL_PRE_CONNECT:I = 0x14

.field private static final SLEEP_TIME:I = 0x64


# instance fields
.field private mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

.field private mContext:Landroid/content/Context;

.field private mOpenedConnections:I

.field private mPendingConnections:I

.field private mPreConnectionMgr:Landroid/webkit/PreConnectionManager;

.field private mRequestFeeder:Landroid/net/http/RequestFeeder;

.field private mSocketChannels:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/PreConnectionThread$SocketEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mStopped:Z

.field private mSubhosts:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/Subhost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/LinkedList;Landroid/net/http/RequestQueue$ConnectionManager;Landroid/content/Context;Landroid/net/http/RequestFeeder;Landroid/webkit/PreConnectionManager;)V
    .locals 1
    .parameter
    .parameter "connectionManager"
    .parameter "context"
    .parameter "requestFeeder"
    .parameter "preConnectionMgr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/Subhost;",
            ">;",
            "Landroid/net/http/RequestQueue$ConnectionManager;",
            "Landroid/content/Context;",
            "Landroid/net/http/RequestFeeder;",
            "Landroid/webkit/PreConnectionManager;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Landroid/net/http/PreConnectionThread;->mStopped:Z

    iput-object p3, p0, Landroid/net/http/PreConnectionThread;->mContext:Landroid/content/Context;

    iput-object p4, p0, Landroid/net/http/PreConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iput-object p5, p0, Landroid/net/http/PreConnectionThread;->mPreConnectionMgr:Landroid/webkit/PreConnectionManager;

    iput-object p2, p0, Landroid/net/http/PreConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    iput-object p1, p0, Landroid/net/http/PreConnectionThread;->mSubhosts:Ljava/util/LinkedList;

    iput v0, p0, Landroid/net/http/PreConnectionThread;->mPendingConnections:I

    iput v0, p0, Landroid/net/http/PreConnectionThread;->mOpenedConnections:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/http/PreConnectionThread;->mSocketChannels:Ljava/util/LinkedList;

    const-string v0, "tcp pre-connection"

    invoke-virtual {p0, v0}, Landroid/net/http/PreConnectionThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private initiateConnectionsExtraLevel()V
    .locals 12

    .prologue
    const-string v8, "http"

    const-string v9, "TCP pre-connection: initiate connect second level "

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Landroid/net/http/PreConnectionThread;->mSubhosts:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, iter:Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Landroid/net/http/PreConnectionThread;->mStopped:Z

    if-eqz v8, :cond_2

    invoke-direct {p0}, Landroid/net/http/PreConnectionThread;->stopConnecting()V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/webkit/Subhost;

    .local v7, subhost:Landroid/webkit/Subhost;
    invoke-virtual {v7}, Landroid/webkit/Subhost;->getWeight()D

    move-result-wide v8

    const-wide v10, 0x3fe999999999999aL

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    .local v4, res:I
    if-ltz v4, :cond_0

    const/4 v3, 0x0

    .local v3, numOfConnections:I
    const/16 v8, 0x14

    invoke-virtual {v7}, Landroid/webkit/Subhost;->getNumberOfReferences()I

    move-result v9

    if-ge v8, v9, :cond_4

    const/4 v3, 0x2

    :cond_3
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v5

    .local v5, sChannel:Ljava/nio/channels/SocketChannel;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/nio/channels/UnresolvedAddressException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/nio/channels/UnsupportedAddressTypeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-virtual {v7}, Landroid/webkit/Subhost;->getHost()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x50

    invoke-direct {v8, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v8}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    new-instance v6, Landroid/net/http/PreConnectionThread$SocketEntry;

    invoke-direct {v6, p0}, Landroid/net/http/PreConnectionThread$SocketEntry;-><init>(Landroid/net/http/PreConnectionThread;)V

    .local v6, sEntry:Landroid/net/http/PreConnectionThread$SocketEntry;
    invoke-virtual {v7}, Landroid/webkit/Subhost;->getHost()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Landroid/net/http/PreConnectionThread$SocketEntry;->mSubhost:Ljava/lang/String;

    iput-object v5, v6, Landroid/net/http/PreConnectionThread$SocketEntry;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v8, p0, Landroid/net/http/PreConnectionThread;->mSocketChannels:Ljava/util/LinkedList;

    invoke-virtual {v8, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v8, p0, Landroid/net/http/PreConnectionThread;->mPendingConnections:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/net/http/PreConnectionThread;->mPendingConnections:I

    iget v8, p0, Landroid/net/http/PreConnectionThread;->mPendingConnections:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/nio/channels/UnresolvedAddressException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/nio/channels/UnsupportedAddressTypeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v9, 0x19

    if-eq v8, v9, :cond_1

    .end local v5           #sChannel:Ljava/nio/channels/SocketChannel;
    .end local v6           #sEntry:Landroid/net/http/PreConnectionThread$SocketEntry;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    :cond_4
    const/16 v8, 0xa

    invoke-virtual {v7}, Landroid/webkit/Subhost;->getNumberOfReferences()I

    move-result v9

    if-ge v8, v9, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    .restart local v1       #i:I
    .restart local v5       #sChannel:Ljava/nio/channels/SocketChannel;
    :catch_0
    move-exception v8

    move-object v0, v8

    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/channels/UnresolvedAddressException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/nio/channels/UnsupportedAddressTypeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_1
    move-exception v8

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    .end local v5           #sChannel:Ljava/nio/channels/SocketChannel;
    :catch_2
    move-exception v8

    goto :goto_2

    :catch_3
    move-exception v8

    goto :goto_2

    :catch_4
    move-exception v8

    goto :goto_2

    :catch_5
    move-exception v8

    goto :goto_2
.end method

.method private initiateConnectionsFirstLevel()V
    .locals 10

    .prologue
    const-string v6, "http"

    const-string v7, "TCP pre-connection: initiate connect first level "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/net/http/PreConnectionThread;->mSubhosts:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, iter:Ljava/util/ListIterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Landroid/net/http/PreConnectionThread;->mStopped:Z

    if-eqz v6, :cond_2

    invoke-direct {p0}, Landroid/net/http/PreConnectionThread;->stopConnecting()V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/Subhost;

    .local v5, subhost:Landroid/webkit/Subhost;
    invoke-virtual {v5}, Landroid/webkit/Subhost;->getWeight()D

    move-result-wide v6

    const-wide v8, 0x3fe999999999999aL

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    .local v2, res:I
    if-ltz v2, :cond_0

    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    .local v3, sChannel:Ljava/nio/channels/SocketChannel;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/nio/channels/UnresolvedAddressException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/nio/channels/UnsupportedAddressTypeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Landroid/webkit/Subhost;->getHost()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v6}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    new-instance v4, Landroid/net/http/PreConnectionThread$SocketEntry;

    invoke-direct {v4, p0}, Landroid/net/http/PreConnectionThread$SocketEntry;-><init>(Landroid/net/http/PreConnectionThread;)V

    .local v4, sEntry:Landroid/net/http/PreConnectionThread$SocketEntry;
    invoke-virtual {v5}, Landroid/webkit/Subhost;->getHost()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/net/http/PreConnectionThread$SocketEntry;->mSubhost:Ljava/lang/String;

    iput-object v3, v4, Landroid/net/http/PreConnectionThread$SocketEntry;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v6, p0, Landroid/net/http/PreConnectionThread;->mSocketChannels:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v6, p0, Landroid/net/http/PreConnectionThread;->mPendingConnections:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/net/http/PreConnectionThread;->mPendingConnections:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/nio/channels/UnresolvedAddressException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/nio/channels/UnsupportedAddressTypeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .end local v4           #sEntry:Landroid/net/http/PreConnectionThread$SocketEntry;
    :catch_0
    move-exception v6

    move-object v0, v6

    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/channels/UnresolvedAddressException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/nio/channels/UnsupportedAddressTypeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #sChannel:Ljava/nio/channels/SocketChannel;
    :catch_2
    move-exception v6

    goto :goto_0

    :catch_3
    move-exception v6

    goto :goto_0

    :catch_4
    move-exception v6

    goto :goto_0

    :catch_5
    move-exception v6

    goto :goto_0
.end method

.method private stopConnecting()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/net/http/PreConnectionThread;->mSocketChannels:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, sChannelIter:Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/http/PreConnectionThread$SocketEntry;

    iget-object v1, v1, Landroid/net/http/PreConnectionThread$SocketEntry;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/http/PreConnectionThread;->mStopped:Z

    iget-object v1, p0, Landroid/net/http/PreConnectionThread;->mPreConnectionMgr:Landroid/webkit/PreConnectionManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/PreConnectionManager;->setPreConnectionThreadId(I)V

    return-void
.end method

.method private storeConnectionsExtraLevel()V
    .locals 22

    .prologue
    const-string v18, "http"

    const-string v19, "TCP pre-connection: finish connect second level "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .local v13, startTime:J
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/PreConnectionThread;->mSocketChannels:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    .local v10, sChannelIter:Ljava/util/ListIterator;
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/PreConnectionThread;->mStopped:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/net/http/PreConnectionThread;->stopConnecting()V

    :goto_2
    return-void

    :cond_1
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/http/PreConnectionThread$SocketEntry;

    .local v11, sEntry:Landroid/net/http/PreConnectionThread$SocketEntry;
    new-instance v17, Landroid/net/WebAddress;

    move-object v0, v11

    iget-object v0, v0, Landroid/net/http/PreConnectionThread$SocketEntry;->mSubhost:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .local v17, uri:Landroid/net/WebAddress;
    new-instance v6, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/WebAddress;->mPort:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v6

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .local v6, httpHost:Lorg/apache/http/HttpHost;
    :try_start_0
    move-object v0, v11

    iget-object v0, v0, Landroid/net/http/PreConnectionThread$SocketEntry;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v18

    if-eqz v18, :cond_0

    new-instance v4, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct {v4}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    .local v4, conn:Landroid/net/http/AndroidHttpClientConnection;
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v7, params:Lorg/apache/http/params/BasicHttpParams;
    move-object v0, v11

    iget-object v0, v0, Landroid/net/http/PreConnectionThread$SocketEntry;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v12

    .local v12, sock:Ljava/net/Socket;
    const-string v18, "http.socket.buffer-size"

    const/16 v19, 0x2000

    move-object v0, v7

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    invoke-virtual {v4, v12, v7}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    move-object v0, v11

    iget-object v0, v0, Landroid/net/http/PreConnectionThread$SocketEntry;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/PreConnectionThread;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/PreConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object v1, v6

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/net/http/Connection;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;

    move-result-object v5

    .local v5, connection:Landroid/net/http/Connection;
    iput-object v4, v5, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    const/16 v18, 0x1

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/http/Connection;->setTcpPreConnect(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/PreConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/net/http/RequestQueue$ConnectionManager;->recycleConnection(Landroid/net/http/Connection;)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/net/http/PreConnectionThread;->stopConnecting()V

    goto/16 :goto_2

    .end local v4           #conn:Landroid/net/http/AndroidHttpClientConnection;
    .end local v5           #connection:Landroid/net/http/Connection;
    .end local v7           #params:Lorg/apache/http/params/BasicHttpParams;
    .end local v12           #sock:Ljava/net/Socket;
    :catch_0
    move-exception v18

    goto/16 :goto_1

    .restart local v4       #conn:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v5       #connection:Landroid/net/http/Connection;
    .restart local v7       #params:Lorg/apache/http/params/BasicHttpParams;
    .restart local v12       #sock:Ljava/net/Socket;
    :cond_2
    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/http/PreConnectionThread;->mOpenedConnections:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/http/PreConnectionThread;->mOpenedConnections:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .end local v4           #conn:Landroid/net/http/AndroidHttpClientConnection;
    .end local v5           #connection:Landroid/net/http/Connection;
    .end local v6           #httpHost:Lorg/apache/http/HttpHost;
    .end local v7           #params:Lorg/apache/http/params/BasicHttpParams;
    .end local v11           #sEntry:Landroid/net/http/PreConnectionThread$SocketEntry;
    .end local v12           #sock:Ljava/net/Socket;
    .end local v17           #uri:Landroid/net/WebAddress;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .local v15, time:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/PreConnectionThread;->mSocketChannels:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v18

    if-eqz v18, :cond_4

    sub-long v18, v15, v13

    const-wide/16 v20, 0x1f4

    cmp-long v18, v18, v20

    if-gez v18, :cond_4

    sub-long v8, v15, v13

    .local v8, passedTime:J
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v18, 0x64

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v18

    goto/16 :goto_0

    .end local v8           #passedTime:J
    :cond_4
    sub-long v8, v15, v13

    .restart local v8       #passedTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/PreConnectionThread;->mSocketChannels:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v18

    if-eqz v18, :cond_5

    const-string v18, "http"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TCP pre-connection: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/PreConnectionThread;->mSocketChannels:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " connections not opened"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Landroid/net/http/PreConnectionThread;->stopConnecting()V

    goto/16 :goto_2

    :cond_5
    const-string v18, "http"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TCP pre-connection: total number of opened connections: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/http/PreConnectionThread;->mOpenedConnections:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private storeConnectionsFirstLevel()V
    .locals 13

    .prologue
    const-string v10, "http"

    const-string v11, "TCP pre-connection: finish connect first level "

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .local v7, startTime:J
    iget-object v10, p0, Landroid/net/http/PreConnectionThread;->mSocketChannels:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .local v4, sChannelIter:Ljava/util/ListIterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-boolean v10, p0, Landroid/net/http/PreConnectionThread;->mStopped:Z

    if-eqz v10, :cond_2

    invoke-direct {p0}, Landroid/net/http/PreConnectionThread;->stopConnecting()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/http/PreConnectionThread$SocketEntry;

    .local v5, sEntry:Landroid/net/http/PreConnectionThread$SocketEntry;
    new-instance v9, Landroid/net/WebAddress;

    iget-object v10, v5, Landroid/net/http/PreConnectionThread$SocketEntry;->mSubhost:Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .local v9, uri:Landroid/net/WebAddress;
    new-instance v2, Lorg/apache/http/HttpHost;

    iget-object v10, v9, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    iget v11, v9, Landroid/net/WebAddress;->mPort:I

    iget-object v12, v9, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-direct {v2, v10, v11, v12}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .local v2, httpHost:Lorg/apache/http/HttpHost;
    :try_start_0
    iget-object v10, v5, Landroid/net/http/PreConnectionThread$SocketEntry;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v10}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v0, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct {v0}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    .local v0, conn:Landroid/net/http/AndroidHttpClientConnection;
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v3, params:Lorg/apache/http/params/BasicHttpParams;
    iget-object v10, v5, Landroid/net/http/PreConnectionThread$SocketEntry;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v10}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    .local v6, sock:Ljava/net/Socket;
    const-string v10, "http.socket.buffer-size"

    const/16 v11, 0x2000

    invoke-virtual {v3, v10, v11}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    invoke-virtual {v0, v6, v3}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    iget-object v10, v5, Landroid/net/http/PreConnectionThread$SocketEntry;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v10, p0, Landroid/net/http/PreConnectionThread;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/net/http/PreConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-static {v10, v2, v11, v12}, Landroid/net/http/Connection;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;

    move-result-object v1

    .local v1, connection:Landroid/net/http/Connection;
    iput-object v0, v1, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/net/http/Connection;->setTcpPreConnect(Z)V

    iget-object v10, p0, Landroid/net/http/PreConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    invoke-interface {v10, v1}, Landroid/net/http/RequestQueue$ConnectionManager;->recycleConnection(Landroid/net/http/Connection;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-direct {p0}, Landroid/net/http/PreConnectionThread;->stopConnecting()V

    goto :goto_1

    .end local v0           #conn:Landroid/net/http/AndroidHttpClientConnection;
    .end local v1           #connection:Landroid/net/http/Connection;
    .end local v3           #params:Lorg/apache/http/params/BasicHttpParams;
    .end local v6           #sock:Ljava/net/Socket;
    :catch_0
    move-exception v10

    goto :goto_0

    .restart local v0       #conn:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v1       #connection:Landroid/net/http/Connection;
    .restart local v3       #params:Lorg/apache/http/params/BasicHttpParams;
    .restart local v6       #sock:Ljava/net/Socket;
    :cond_3
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    iget v10, p0, Landroid/net/http/PreConnectionThread;->mOpenedConnections:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/net/http/PreConnectionThread;->mOpenedConnections:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public Stop()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/PreConnectionThread;->mStopped:Z

    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/http/PreConnectionThread;->mStopped:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/net/http/PreConnectionThread;->stopConnecting()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/net/http/PreConnectionThread;->initiateConnectionsFirstLevel()V

    iget-boolean v0, p0, Landroid/net/http/PreConnectionThread;->mStopped:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/net/http/PreConnectionThread;->stopConnecting()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/net/http/PreConnectionThread;->storeConnectionsFirstLevel()V

    iget-boolean v0, p0, Landroid/net/http/PreConnectionThread;->mStopped:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/net/http/PreConnectionThread;->stopConnecting()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/net/http/PreConnectionThread;->initiateConnectionsExtraLevel()V

    iget-boolean v0, p0, Landroid/net/http/PreConnectionThread;->mStopped:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/net/http/PreConnectionThread;->stopConnecting()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/net/http/PreConnectionThread;->storeConnectionsExtraLevel()V

    invoke-direct {p0}, Landroid/net/http/PreConnectionThread;->stopConnecting()V

    goto :goto_0
.end method
