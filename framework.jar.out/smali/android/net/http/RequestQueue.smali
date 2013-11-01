.class public Landroid/net/http/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Landroid/net/http/RequestFeeder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/RequestQueue$ConnectionManager;,
        Landroid/net/http/RequestQueue$SyncFeeder;,
        Landroid/net/http/RequestQueue$ActivePool;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CONNECTION_COUNT:I = 0x0

.field private static final PRE_CONNECTION_THREADS:I = 0x5


# instance fields
.field private final mActivePool:Landroid/net/http/RequestQueue$ActivePool;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mPending:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

.field private final mPriorities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/apache/http/HttpHost;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mProxyHost:Lorg/apache/http/HttpHost;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "net.http.threads"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/net/http/RequestQueue;->CONNECTION_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    sget v0, Landroid/net/http/RequestQueue;->CONNECTION_COUNT:I

    invoke-direct {p0, p1, v0}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "connectionCount"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    iput-object p1, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/LinkedHashMap;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v1, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/net/http/RequestQueue;->mPriorities:Ljava/util/HashSet;

    new-instance v1, Landroid/net/http/RequestQueue$ActivePool;

    invoke-direct {v1, p0, p2}, Landroid/net/http/RequestQueue$ActivePool;-><init>(Landroid/net/http/RequestQueue;I)V

    iput-object v1, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    iget-object v1, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v1}, Landroid/net/http/RequestQueue$ActivePool;->startup()V

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Landroid/net/http/RequestQueue;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-array v1, v3, [Landroid/net/http/PreConnectionThread;

    iput-object v1, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/net/http/RequestQueue;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/http/RequestQueue;)Lorg/apache/http/HttpHost;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/http/RequestQueue;Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/http/RequestQueue;->determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/http/RequestQueue;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->setProxyConfig()V

    return-void
.end method

.method private commitPrioritiesForList(Ljava/util/LinkedList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    new-instance v0, Landroid/net/http/RequestQueue$1;

    invoke-direct {v0, p0}, Landroid/net/http/RequestQueue$1;-><init>(Landroid/net/http/RequestQueue;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .locals 2
    .parameter "host"

    .prologue
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_0
.end method

.method private priorityList()Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v0, -0x1

    .local v0, curPri:I
    const/4 v4, 0x0

    .local v4, ret:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    iget-object v5, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    if-nez v4, :cond_1

    move-object v4, v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/http/Request;

    iget v2, p0, Landroid/net/http/Request;->mPriority:I

    .local v2, entryPri:I
    if-eq v2, v6, :cond_0

    if-eq v0, v6, :cond_2

    if-le v0, v2, :cond_0

    :cond_2
    move-object v4, v1

    move v0, v2

    goto :goto_0

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v2           #entryPri:I
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    :cond_3
    return-object v4
.end method

.method private removeFirst(Ljava/util/LinkedHashMap;)Landroid/net/http/Request;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;>;)",
            "Landroid/net/http/Request;"
        }
    .end annotation

    .prologue
    .local p1, requestQueue:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    const/4 v3, 0x0

    .local v3, ret:Landroid/net/http/Request;
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .local v2, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ret:Landroid/net/http/Request;
    check-cast v3, Landroid/net/http/Request;

    .restart local v3       #ret:Landroid/net/http/Request;
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v2           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    return-object v3
.end method

.method private declared-synchronized setProxyConfig()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-string v5, "http"

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/net/http/RequestQueue;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fmc : net type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v8, :cond_3

    const-string v5, "uw_wifi"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    new-instance v4, Landroid/net/wifi/UwManager;

    invoke-static {v0}, Landroid/net/wifi/IUwManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IUwManager;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/UwManager;-><init>(Landroid/net/wifi/IUwManager;)V

    .local v4, uwManager:Landroid/net/wifi/UwManager;
    invoke-virtual {v4}, Landroid/net/wifi/UwManager;->getState()Landroid/net/wifi/UwState;

    move-result-object v3

    .local v3, state:Landroid/net/wifi/UwState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fmc : UwState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/wifi/UwState;->isTurnSetup(Landroid/net/wifi/UwState;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "fmc : UwState.isTurnSetup, setProxyConfig"

    invoke-static {v5}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .local v1, host:Ljava/lang/String;
    if-nez v1, :cond_1

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #host:Ljava/lang/String;
    .end local v3           #state:Landroid/net/wifi/UwState;
    .end local v4           #uwManager:Landroid/net/wifi/UwManager;
    :goto_0
    iget-object v5, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_5

    move v6, v8

    :goto_1
    invoke-virtual {v5, v6}, Landroid/net/http/RequestQueue$ActivePool;->setShutdownFeature(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v1       #host:Ljava/lang/String;
    .restart local v3       #state:Landroid/net/wifi/UwState;
    .restart local v4       #uwManager:Landroid/net/wifi/UwManager;
    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v5}, Landroid/net/http/RequestQueue$ActivePool;->disablePersistence()V

    new-instance v5, Lorg/apache/http/HttpHost;

    iget-object v6, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v6

    const-string v7, "http"

    invoke-direct {v5, v1, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v5, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v3           #state:Landroid/net/wifi/UwState;
    .end local v4           #uwManager:Landroid/net/wifi/UwManager;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v2       #info:Landroid/net/NetworkInfo;
    .restart local v3       #state:Landroid/net/wifi/UwState;
    .restart local v4       #uwManager:Landroid/net/wifi/UwManager;
    :cond_2
    const/4 v5, 0x0

    :try_start_2
    iput-object v5, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_0

    .end local v0           #b:Landroid/os/IBinder;
    .end local v3           #state:Landroid/net/wifi/UwState;
    .end local v4           #uwManager:Landroid/net/wifi/UwManager;
    :cond_3
    iget-object v5, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #host:Ljava/lang/String;
    if-nez v1, :cond_4

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_0

    :cond_4
    iget-object v5, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v5}, Landroid/net/http/RequestQueue$ActivePool;->disablePersistence()V

    new-instance v5, Lorg/apache/http/HttpHost;

    iget-object v6, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v6

    const-string v7, "http"

    invoke-direct {v5, v1, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v5, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v1           #host:Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public checkPageFinished()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->checkPageFinished()V

    return-void
.end method

.method public cleanPreConnectionThreadEntry(I)V
    .locals 2
    .parameter "preConnectionThreadId"

    .prologue
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_0
    return-void
.end method

.method public declared-synchronized commitRequestPriorities()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPriorities:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPriorities:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;

    .local v0, host:Lorg/apache/http/HttpHost;
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .local v2, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-direct {p0, v2}, Landroid/net/http/RequestQueue;->commitPrioritiesForList(Ljava/util/LinkedList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0           #host:Lorg/apache/http/HttpHost;
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v2           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_2
    :try_start_2
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPriorities:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized disablePlatformNotifications()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized dump()V
    .locals 12

    .prologue
    const-string v10, " "

    monitor-enter p0

    :try_start_0
    const-string v10, "dump()"

    invoke-static {v10}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, dump:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, count:I
    iget-object v10, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    move v1, v0

    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/HttpHost;

    invoke-virtual {v10}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    .local v4, hostName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "p"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v6, line:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedList;

    .local v8, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v7

    .local v7, reqIter:Ljava/util/ListIterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/http/Request;

    .local v9, request:Landroid/net/http/Request;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v0           #count:I
    .end local v2           #dump:Ljava/lang/StringBuilder;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v4           #hostName:Ljava/lang/String;
    .end local v5           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .end local v6           #line:Ljava/lang/StringBuilder;
    .end local v7           #reqIter:Ljava/util/ListIterator;
    .end local v8           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    .end local v9           #request:Landroid/net/http/Request;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .restart local v0       #count:I
    .restart local v2       #dump:Ljava/lang/StringBuilder;
    .restart local v3       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .restart local v4       #hostName:Ljava/lang/String;
    .restart local v5       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .restart local v6       #line:Ljava/lang/StringBuilder;
    .restart local v7       #reqIter:Ljava/util/ListIterator;
    .restart local v8       #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v4           #hostName:Ljava/lang/String;
    .end local v6           #line:Ljava/lang/StringBuilder;
    .end local v7           #reqIter:Ljava/util/ListIterator;
    .end local v8           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_1
    move v0, v1

    .end local v1           #count:I
    .end local v5           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .restart local v0       #count:I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized enablePlatformNotifications()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/http/RequestQueue$2;

    invoke-direct {v0, p0}, Landroid/net/http/RequestQueue$2;-><init>(Landroid/net/http/RequestQueue;)V

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->setProxyConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProxyHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public declared-synchronized getRequest()Landroid/net/http/Request;
    .locals 6

    .prologue
    monitor-enter p0

    const/4 v3, 0x0

    .local v3, ret:Landroid/net/http/Request;
    :try_start_0
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->priorityList()Ljava/util/Map$Entry;

    move-result-object v1

    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .local v2, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/net/http/Request;

    move-object v3, v0

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    monitor-exit p0

    return-object v3

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;
    .locals 4
    .parameter "host"

    .prologue
    monitor-enter p0

    const/4 v2, 0x0

    .local v2, ret:Landroid/net/http/Request;
    :try_start_0
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .local v1, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/net/http/Request;

    move-object v2, v0

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public handleConnectionRequest(Landroid/webkit/PreConnectionManager;Ljava/util/LinkedList;)I
    .locals 8
    .parameter "preConnectionMgr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/PreConnectionManager;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/Subhost;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    if-eqz p2, :cond_1

    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v0, 0x5

    if-ge v6, v0, :cond_1

    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    aget-object v0, v0, v6

    if-nez v0, :cond_0

    iget-object v7, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    new-instance v0, Landroid/net/http/PreConnectionThread;

    iget-object v2, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    move-object v1, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/net/http/PreConnectionThread;-><init>(Ljava/util/LinkedList;Landroid/net/http/RequestQueue$ConnectionManager;Landroid/content/Context;Landroid/net/http/RequestFeeder;Landroid/webkit/PreConnectionManager;)V

    aput-object v0, v7, v6

    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/net/http/PreConnectionThread;->start()V

    move v0, v6

    .end local v6           #i:I
    :goto_1
    return v0

    .restart local v6       #i:I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v6           #i:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public declared-synchronized haveRequest(Lorg/apache/http/HttpHost;)Z
    .locals 1
    .parameter "host"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized peekRequest()Landroid/net/http/Request;
    .locals 4

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, ret:Landroid/net/http/Request;
    :try_start_0
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->priorityList()Ljava/util/Map$Entry;

    move-result-object v0

    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/http/Request;

    iget v2, v2, Landroid/net/http/Request;->mPriority:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ret:Landroid/net/http/Request;
    check-cast v1, Landroid/net/http/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v1       #ret:Landroid/net/http/Request;
    :cond_0
    monitor-exit p0

    return-object v1

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v1           #ret:Landroid/net/http/Request;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;IIZ)Landroid/net/http/RequestHandle;
    .locals 16
    .parameter "url"
    .parameter "uri"
    .parameter "method"
    .parameter
    .parameter "eventHandler"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .parameter "pri"
    .parameter "commit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "IIZ)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .local p4, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p5, :cond_0

    new-instance p5, Landroid/net/http/LoggingEventHandler;

    .end local p5
    invoke-direct/range {p5 .. p5}, Landroid/net/http/LoggingEventHandler;-><init>()V

    .restart local p5
    :cond_0
    new-instance v6, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/WebAddress;->mPort:I

    move v7, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    move-object v8, v0

    invoke-direct {v6, v5, v7, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .local v6, httpHost:Lorg/apache/http/HttpHost;
    new-instance v4, Landroid/net/http/Request;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object v7, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v5, p3

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p5

    move-object/from16 v12, p4

    move/from16 v13, p8

    invoke-direct/range {v4 .. v13}, Landroid/net/http/Request;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;I)V

    .local v4, req:Landroid/net/http/Request;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move/from16 v3, p9

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/http/RequestQueue;->queueRequest(Landroid/net/http/Request;ZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    move-object v5, v0

    invoke-static {v5}, Landroid/net/http/RequestQueue$ActivePool;->access$408(Landroid/net/http/RequestQueue$ActivePool;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/net/http/RequestQueue$ActivePool;->startConnectionThread()V

    new-instance v7, Landroid/net/http/RequestHandle;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move-object v15, v4

    invoke-direct/range {v7 .. v15}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V

    return-object v7
.end method

.method public queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .locals 9
    .parameter "url"
    .parameter "method"
    .parameter
    .parameter "eventHandler"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;IIZ)Landroid/net/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;IIZ)Landroid/net/http/RequestHandle;
    .locals 10
    .parameter "url"
    .parameter "method"
    .parameter
    .parameter "eventHandler"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .parameter "pri"
    .parameter "commit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "IIZ)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/net/WebAddress;

    invoke-direct {v2, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .local v2, uri:Landroid/net/WebAddress;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;IIZ)Landroid/net/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized queueRequest(Landroid/net/http/Request;ZZ)V
    .locals 4
    .parameter "request"
    .parameter "head"
    .parameter "commit"

    .prologue
    const/4 v3, -0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p1, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    move-object v0, v2

    .local v0, host:Lorg/apache/http/HttpHost;
    :goto_0
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .local v1, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_2
    if-eqz p3, :cond_4

    iget v2, p1, Landroid/net/http/Request;->mPriority:I

    if-eq v2, v3, :cond_4

    invoke-direct {p0, v1}, Landroid/net/http/RequestQueue;->commitPrioritiesForList(Ljava/util/LinkedList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_3
    monitor-exit p0

    return-void

    .end local v0           #host:Lorg/apache/http/HttpHost;
    .end local v1           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_1
    :try_start_1
    iget-object v2, p1, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object v0, v2

    goto :goto_0

    .restart local v0       #host:Lorg/apache/http/HttpHost;
    :cond_2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .restart local v1       #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0           #host:Lorg/apache/http/HttpHost;
    .end local v1           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0       #host:Lorg/apache/http/HttpHost;
    .restart local v1       #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_3
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-nez p3, :cond_0

    iget v2, p1, Landroid/net/http/Request;->mPriority:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPriorities:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public queueSynchronousRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .locals 13
    .parameter "url"
    .parameter "uri"
    .parameter "method"
    .parameter
    .parameter "eventHandler"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .local p4, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/apache/http/HttpHost;

    iget-object v1, p2, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    iget v3, p2, Landroid/net/WebAddress;->mPort:I

    iget-object v4, p2, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .local v2, host:Lorg/apache/http/HttpHost;
    new-instance v0, Landroid/net/http/Request;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    iget-object v4, p2, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v1, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Landroid/net/http/Request;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;I)V

    .local v0, req:Landroid/net/http/Request;
    invoke-direct {p0, v2}, Landroid/net/http/RequestQueue;->determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v2

    iget-object v1, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    new-instance v4, Landroid/net/http/RequestQueue$SyncFeeder;

    invoke-direct {v4}, Landroid/net/http/RequestQueue$SyncFeeder;-><init>()V

    invoke-static {v1, v2, v3, v4}, Landroid/net/http/Connection;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;

    move-result-object v12

    .local v12, conn:Landroid/net/http/Connection;
    new-instance v3, Landroid/net/http/RequestHandle;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object v11, v0

    invoke-direct/range {v3 .. v12}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;Landroid/net/http/Connection;)V

    return-object v3
.end method

.method declared-synchronized requestsPending()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requeueRequest(Landroid/net/http/Request;)V
    .locals 1
    .parameter "request"

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Landroid/net/http/RequestQueue;->requeueRequest(Landroid/net/http/Request;ZZ)V

    return-void
.end method

.method public requeueRequest(Landroid/net/http/Request;ZZ)V
    .locals 1
    .parameter "request"
    .parameter "commit"
    .parameter "notif"

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/net/http/RequestQueue;->queueRequest(Landroid/net/http/Request;ZZ)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->startConnectionThread()V

    :cond_0
    return-void
.end method

.method public setPageFinished(Z)V
    .locals 1
    .parameter "done"

    .prologue
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestQueue$ActivePool;->setPageFinished(Z)V

    return-void
.end method

.method public declared-synchronized setRequestPriority(Landroid/net/WebAddress;I)Z
    .locals 8
    .parameter "uri"
    .parameter "priority"

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v4, p1, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    iget v5, p1, Landroid/net/WebAddress;->mPort:I

    iget-object v6, p1, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .local v0, host:Lorg/apache/http/HttpHost;
    iget-object v4, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .local v2, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .local v1, iter:Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/http/Request;

    .local v3, request:Landroid/net/http/Request;
    iget-object v4, v3, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    iget-object v5, p1, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput p2, v3, Landroid/net/http/Request;->mPriority:I

    iget-object v4, p0, Landroid/net/http/RequestQueue;->mPriorities:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    .end local v1           #iter:Ljava/util/ListIterator;
    .end local v2           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    .end local v3           #request:Landroid/net/http/Request;
    :goto_0
    monitor-exit p0

    return v4

    :cond_1
    move v4, v7

    goto :goto_0

    .end local v0           #host:Lorg/apache/http/HttpHost;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public shutdown()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->shutdown()V

    return-void
.end method

.method public startTiming()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->startTiming()V

    return-void
.end method

.method public stopConnectionRequest(I)V
    .locals 2
    .parameter "preConnectionThreadId"

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/http/PreConnectionThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/http/PreConnectionThread;->Stop()V

    :cond_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    const/4 v1, 0x0

    aput-object v1, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopTiming()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->stopTiming()V

    return-void
.end method
