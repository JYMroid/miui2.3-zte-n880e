.class abstract Landroid/net/http/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field private static final DONE:I = 0x3

.field private static final DRAIN:I = 0x2

.field private static final HTTP_CONNECTION:Ljava/lang/String; = "http.connection"

.field private static final MAX_PIPE:I = 0x3

.field private static final MAX_PRIORITY:I = 0x3e8

.field private static final MIN_PIPE:I = 0x2

.field private static final PRIO:I = 0x4

.field private static final READ:I = 0x1

.field private static final RETRY_REQUEST_LIMIT:I = 0x2

.field private static final SEND:I = 0x0

.field static final SOCKET_TIMEOUT:I = 0xea60

.field private static STATE_CANCEL_REQUESTED:I

.field private static STATE_NORMAL:I

.field private static final states:[Ljava/lang/String;


# instance fields
.field private mActive:I

.field private mBuf:[B

.field private mCanPersist:Z

.field protected mCertificate:Landroid/net/http/SslCertificate;

.field private mConnectionThread:Landroid/net/http/ConnectionThread;

.field mContext:Landroid/content/Context;

.field mHost:Lorg/apache/http/HttpHost;

.field protected mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

.field private mHttpContext:Lorg/apache/http/protocol/HttpContext;

.field private mIsTcpPreConnect:Z

.field mRequestFeeder:Landroid/net/http/RequestFeeder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SEND"

    aput-object v1, v0, v3

    const-string v1, "READ"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "DRAIN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DONE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PRIO"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/http/Connection;->states:[Ljava/lang/String;

    sput v3, Landroid/net/http/Connection;->STATE_NORMAL:I

    sput v4, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .locals 3
    .parameter "context"
    .parameter "host"
    .parameter "requestFeeder"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    iput-object v1, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    sget v0, Landroid/net/http/Connection;->STATE_NORMAL:I

    iput v0, p0, Landroid/net/http/Connection;->mActive:I

    iput-object p1, p0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    iput-object p3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iput-boolean v2, p0, Landroid/net/http/Connection;->mCanPersist:Z

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    iput-object v1, p0, Landroid/net/http/Connection;->mConnectionThread:Landroid/net/http/ConnectionThread;

    iput-boolean v2, p0, Landroid/net/http/Connection;->mIsTcpPreConnect:Z

    return-void
.end method

.method private clearPipe(Ljava/util/LinkedList;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pipe:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x1

    .local v0, empty:Z
    iget-object v2, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v2

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/http/Request;

    .local v1, tReq:Landroid/net/http/Request;
    iget-object v3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v1, v4, v5}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;ZZ)V

    const/4 v0, 0x0

    goto :goto_0

    .end local v1           #tReq:Landroid/net/http/Request;
    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v4, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v3, v4}, Landroid/net/http/RequestFeeder;->haveRequest(Lorg/apache/http/HttpHost;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v7

    :cond_1
    :goto_1
    monitor-exit v2

    return v0

    :cond_2
    move v0, v6

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;
    .locals 2
    .parameter "context"
    .parameter "host"
    .parameter "proxy"
    .parameter "requestFeeder"

    .prologue
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/net/http/HttpConnection;

    invoke-direct {v0, p0, p1, p3}, Landroid/net/http/HttpConnection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/net/http/HttpsConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/http/HttpsConnection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    goto :goto_0
.end method

.method private httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z
    .locals 6
    .parameter "req"
    .parameter "errorId"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .local v2, ret:Z
    iget v3, p1, Landroid/net/http/Request;->mFailCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/net/http/Request;->mFailCount:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v2, 0x0

    if-gez p2, :cond_1

    iget-object v3, p0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/net/http/EventHandler;->errorStringResources:[I

    neg-int v5, p2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, error:Ljava/lang/String;
    :goto_0
    iget-object v3, p1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v3, p2, v1}, Landroid/net/http/EventHandler;->error(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/http/Request;->complete()V

    .end local v1           #error:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    iget-object v3, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v4, "http.connection"

    invoke-interface {v3, v4}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    return v2

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .local v0, cause:Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .restart local v1       #error:Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v1           #error:Ljava/lang/String;
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_1
.end method

.method private keepAlive(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 7
    .parameter "entity"
    .parameter "ver"
    .parameter "connType"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v1, "http.connection"

    invoke-interface {p4, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpConnection;

    .local v0, conn:Lorg/apache/http/HttpConnection;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v5

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, v1}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    if-ne p3, v6, :cond_3

    move v1, v5

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p3, v1, :cond_4

    move v1, v6

    goto :goto_0

    :cond_4
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, v1}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v6

    goto :goto_0

    :cond_5
    move v1, v5

    goto :goto_0
.end method

.method private openHttpConnection(Landroid/net/http/Request;)Z
    .locals 11
    .parameter "req"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .local v3, now:J
    const/4 v1, 0x0

    .local v1, error:I
    const/4 v2, 0x0

    .local v2, exception:Ljava/lang/Exception;
    const/4 v5, 0x0

    :try_start_0
    iput-object v5, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-virtual {p0, p1}, Landroid/net/http/Connection;->openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;

    move-result-object v5

    iput-object v5, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    iget-object v5, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    const v6, 0xea60

    invoke-virtual {v5, v6}, Landroid/net/http/AndroidHttpClientConnection;->setSocketTimeout(I)V

    iget-object v5, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v6, "http.connection"

    iget-object v7, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-interface {v5, v6, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v1, :cond_1

    move v5, v10

    :goto_1
    return v5

    :cond_0
    const/4 v5, 0x2

    iput v5, p1, Landroid/net/http/Request;->mFailCount:I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/net/http/SSLConnectionClosedByUserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move v5, v9

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v1, -0x2

    move-object v2, v0

    goto :goto_0

    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, -0x6

    iput v8, p1, Landroid/net/http/Request;->mFailCount:I

    move-object v2, v0

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v5

    move-object v0, v5

    .local v0, e:Landroid/net/http/SSLConnectionClosedByUserException;
    iput v8, p1, Landroid/net/http/Request;->mFailCount:I

    move v5, v9

    goto :goto_1

    .end local v0           #e:Landroid/net/http/SSLConnectionClosedByUserException;
    :catch_3
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljavax/net/ssl/SSLHandshakeException;
    iput v8, p1, Landroid/net/http/Request;->mFailCount:I

    const/16 v1, -0xb

    move-object v2, v0

    goto :goto_0

    .end local v0           #e:Ljavax/net/ssl/SSLHandshakeException;
    :catch_4
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/io/IOException;
    const/4 v1, -0x6

    move-object v2, v0

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    iget v5, p1, Landroid/net/http/Request;->mFailCount:I

    if-ge v5, v8, :cond_2

    iget-object v5, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v5, p1, v10, v9}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;ZZ)V

    iget v5, p1, Landroid/net/http/Request;->mFailCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Landroid/net/http/Request;->mFailCount:I

    :goto_2
    if-nez v1, :cond_3

    move v5, v10

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v1, v2}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    goto :goto_2

    :cond_3
    move v5, v9

    goto :goto_1
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    sget v0, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    iput v0, p0, Landroid/net/http/Connection;->mActive:I

    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    return-void
.end method

.method abstract closeConnection()V
.end method

.method getBuf()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    :cond_0
    iget-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    return-object v0
.end method

.method getCanPersist()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    return v0
.end method

.method getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method getHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method abstract getScheme()Ljava/lang/String;
.end method

.method public getTcpPreConnect()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/http/Connection;->mIsTcpPreConnect:Z

    return v0
.end method

.method abstract openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method processRequests(Landroid/net/http/Request;)V
    .locals 20
    .parameter "firstRequest"

    .prologue
    const/4 v15, 0x0

    .local v15, req:Landroid/net/http/Request;
    const/4 v11, 0x0

    .local v11, peek:Landroid/net/http/Request;
    const/4 v6, 0x0

    .local v6, error:I
    const/4 v7, 0x0

    .local v7, exception:Ljava/lang/Exception;
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .local v12, pipe:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v9, 0x2

    .local v9, minPipe:I
    const/4 v8, 0x3

    .local v8, maxPipe:I
    const/16 v16, 0x0

    .local v16, state:I
    :cond_0
    :goto_0
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/http/Connection;->mActive:I

    move/from16 v17, v0

    sget v18, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const-wide/16 v17, 0x64

    :try_start_0
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    sget v17, Landroid/net/http/Connection;->STATE_NORMAL:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/http/Connection;->mActive:I

    :cond_1
    packed-switch v16, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-ne v0, v1, :cond_2

    const/16 v16, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Landroid/net/http/RequestFeeder;->getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;

    move-result-object v15

    :goto_2
    if-nez v15, :cond_4

    const/16 v16, 0x2

    goto :goto_0

    :cond_3
    move-object/from16 v15, p1

    const/16 p1, 0x0

    goto :goto_2

    :cond_4
    move-object v0, v15

    iget v0, v0, Landroid/net/http/Request;->mPriority:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    move-object v0, v15

    iget v0, v0, Landroid/net/http/Request;->mPriority:I

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/net/http/RequestFeeder;->peekRequest()Landroid/net/http/Request;

    move-result-object v11

    if-eqz v11, :cond_9

    iget v14, v11, Landroid/net/http/Request;->mPriority:I

    .local v14, ppri:I
    move-object v0, v15

    iget v0, v0, Landroid/net/http/Request;->mPriority:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    if-gez v14, :cond_7

    :cond_6
    move-object v0, v15

    iget v0, v0, Landroid/net/http/Request;->mPriority:I

    move/from16 v17, v0

    if-ltz v17, :cond_9

    move-object v0, v15

    iget v0, v0, Landroid/net/http/Request;->mPriority:I

    move/from16 v17, v0

    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/net/http/RequestFeeder;->getRequest()Landroid/net/http/Request;

    move-result-object v10

    .local v10, newreq:Landroid/net/http/Request;
    if-eqz v10, :cond_9

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object v0, v11

    iget v0, v0, Landroid/net/http/Request;->mPriority:I

    move/from16 v17, v0

    move/from16 v0, v17

    move v1, v14

    if-eq v0, v1, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object v1, v10

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;ZZ)V

    .end local v10           #newreq:Landroid/net/http/Request;
    .end local v14           #ppri:I
    :cond_9
    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/net/http/Request;->setConnection(Landroid/net/http/Connection;)V

    move-object v0, v15

    iget-boolean v0, v0, Landroid/net/http/Request;->mCancelled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    invoke-virtual {v15}, Landroid/net/http/Request;->complete()V

    goto/16 :goto_0

    .restart local v10       #newreq:Landroid/net/http/Request;
    .restart local v14       #ppri:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mConnectionThread:Landroid/net/http/ConnectionThread;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/net/http/ConnectionThread;->setNewRequest(Landroid/net/http/Request;)V

    const/16 v16, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object v1, v15

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;ZZ)V

    goto/16 :goto_0

    .end local v10           #newreq:Landroid/net/http/Request;
    .end local v14           #ppri:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v17

    if-nez v17, :cond_d

    :cond_c
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/net/http/Connection;->openHttpConnection(Landroid/net/http/Request;)Z

    move-result v17

    if-nez v17, :cond_d

    const/16 v16, 0x3

    goto/16 :goto_0

    :cond_d
    move-object v0, v15

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Landroid/net/http/EventHandler;->certificate(Landroid/net/http/SslCertificate;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/http/Request;->sendRequest(Landroid/net/http/AndroidHttpClientConnection;)V
    :try_end_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    move-result v17

    if-eqz v17, :cond_e

    move-object v0, v15

    iget-boolean v0, v0, Landroid/net/http/Request;->mCancelled:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    invoke-virtual {v12, v15}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_e
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Landroid/net/http/Connection;->clearPipe(Ljava/util/LinkedList;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/16 v16, 0x3

    :cond_f
    :goto_4
    const/4 v8, 0x1

    move v9, v8

    goto/16 :goto_0

    :catch_0
    move-exception v17

    move-object/from16 v4, v17

    .local v4, e:Lorg/apache/http/HttpException;
    move-object v7, v4

    const/4 v6, -0x1

    goto :goto_3

    .end local v4           #e:Lorg/apache/http/HttpException;
    :catch_1
    move-exception v17

    move-object/from16 v4, v17

    .local v4, e:Ljava/io/IOException;
    move-object v7, v4

    const/4 v6, -0x7

    goto :goto_3

    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v17

    move-object/from16 v4, v17

    .local v4, e:Ljava/lang/IllegalStateException;
    move-object v7, v4

    const/4 v6, -0x7

    goto :goto_3

    .end local v4           #e:Ljava/lang/IllegalStateException;
    :cond_10
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    const/16 v16, 0x0

    goto :goto_4

    :cond_11
    invoke-virtual {v12, v15}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/Connection;->mCanPersist:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    const/16 v16, 0x1

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Landroid/net/http/RequestFeeder;->haveRequest(Lorg/apache/http/HttpHost;)Z

    move-result v17

    if-nez v17, :cond_12

    const/16 v17, 0x1

    move/from16 v5, v17

    .local v5, empty:Z
    :goto_5
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v13

    .local v13, pipeSize:I
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_13

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_13

    if-ge v13, v9, :cond_13

    if-nez v5, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/Connection;->mCanPersist:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    const/16 v16, 0x0

    goto/16 :goto_0

    .end local v5           #empty:Z
    .end local v13           #pipeSize:I
    :cond_12
    const/16 v17, 0x0

    move/from16 v5, v17

    goto :goto_5

    .restart local v5       #empty:Z
    .restart local v13       #pipeSize:I
    :cond_13
    if-nez v13, :cond_16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    const/16 v16, 0x3

    goto/16 :goto_0

    :cond_14
    if-eqz v5, :cond_15

    const/16 v17, 0x3

    move/from16 v16, v17

    :goto_6
    goto/16 :goto_0

    :cond_15
    const/16 v17, 0x0

    move/from16 v16, v17

    goto :goto_6

    :cond_16
    invoke-virtual {v12}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v15

    .end local v15           #req:Landroid/net/http/Request;
    check-cast v15, Landroid/net/http/Request;

    .restart local v15       #req:Landroid/net/http/Request;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/http/Request;->readResponse(Landroid/net/http/AndroidHttpClientConnection;)V
    :try_end_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_7
    if-eqz v7, :cond_18

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    move-result v17

    if-eqz v17, :cond_17

    move-object v0, v15

    iget-boolean v0, v0, Landroid/net/http/Request;->mCancelled:Z

    move/from16 v17, v0

    if-nez v17, :cond_17

    invoke-virtual {v15}, Landroid/net/http/Request;->reset()V

    invoke-virtual {v12, v15}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_17
    const/4 v7, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/Connection;->mCanPersist:Z

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/Connection;->mCanPersist:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Connection;->closeConnection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v17, v0

    const-string v18, "http.connection"

    invoke-interface/range {v17 .. v18}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Landroid/net/http/Connection;->clearPipe(Ljava/util/LinkedList;)Z

    const/4 v8, 0x1

    move v9, v8

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    const/16 v16, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v17

    move-object/from16 v4, v17

    .local v4, e:Lorg/apache/http/ParseException;
    move-object v7, v4

    const/4 v6, -0x7

    goto :goto_7

    .end local v4           #e:Lorg/apache/http/ParseException;
    :catch_4
    move-exception v17

    move-object/from16 v4, v17

    .local v4, e:Ljava/io/IOException;
    move-object v7, v4

    const/4 v6, -0x7

    goto :goto_7

    .end local v4           #e:Ljava/io/IOException;
    :catch_5
    move-exception v17

    move-object/from16 v4, v17

    .local v4, e:Ljava/lang/IllegalStateException;
    move-object v7, v4

    const/4 v6, -0x7

    goto :goto_7

    .end local v4           #e:Ljava/lang/IllegalStateException;
    .end local v5           #empty:Z
    .end local v13           #pipeSize:I
    :catch_6
    move-exception v17

    goto/16 :goto_1

    :cond_19
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setCanPersist(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V
    .locals 1
    .parameter "entity"
    .parameter "ver"
    .parameter "connType"

    .prologue
    iget-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/http/Connection;->keepAlive(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    return-void
.end method

.method setCanPersist(Z)V
    .locals 0
    .parameter "canPersist"

    .prologue
    iput-boolean p1, p0, Landroid/net/http/Connection;->mCanPersist:Z

    return-void
.end method

.method setConnectionThread(Landroid/net/http/ConnectionThread;)V
    .locals 0
    .parameter "thread"

    .prologue
    iput-object p1, p0, Landroid/net/http/Connection;->mConnectionThread:Landroid/net/http/ConnectionThread;

    return-void
.end method

.method public setTcpPreConnect(Z)V
    .locals 0
    .parameter "isTcpPreConnect"

    .prologue
    iput-boolean p1, p0, Landroid/net/http/Connection;->mIsTcpPreConnect:Z

    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
