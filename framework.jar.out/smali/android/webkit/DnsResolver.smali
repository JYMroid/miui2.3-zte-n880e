.class final Landroid/webkit/DnsResolver;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "webcore"

.field private static mDnsResolverRefCount:I

.field private static mThreadPoolLock:Ljava/lang/Object;

.field private static sDnsResolver:Landroid/webkit/DnsResolver;


# instance fields
.field private final MAX_DNS_RESOLVER_THREAD_POOL_SIZE:I

.field private final MAX_PARALLEL_DNS_QUERIES_PER_PAGE:I

.field private final mContext:Landroid/content/Context;

.field private mDnsResolverThreadPool:Ljava/util/concurrent/ExecutorService;

.field private volatile mDnsResolverThreadPoolRunning:Z

.field private mHostNamesToBeResolved:Ljava/util/HashMap;

.field private volatile mShutDownInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Landroid/webkit/DnsResolver;->mDnsResolverRefCount:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/DnsResolver;->mThreadPoolLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Landroid/webkit/DnsResolver;->MAX_DNS_RESOLVER_THREAD_POOL_SIZE:I

    const/16 v0, 0x40

    iput v0, p0, Landroid/webkit/DnsResolver;->MAX_PARALLEL_DNS_QUERIES_PER_PAGE:I

    iput-boolean v1, p0, Landroid/webkit/DnsResolver;->mDnsResolverThreadPoolRunning:Z

    iput-boolean v1, p0, Landroid/webkit/DnsResolver;->mShutDownInProgress:Z

    iput-object p1, p0, Landroid/webkit/DnsResolver;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/DnsResolver;->createDnsResolverThreadPool()V

    return-void
.end method

.method static synthetic access$000(Landroid/webkit/DnsResolver;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/DnsResolver;->mDnsResolverThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$002(Landroid/webkit/DnsResolver;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/webkit/DnsResolver;->mDnsResolverThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method static synthetic access$100(Landroid/webkit/DnsResolver;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Landroid/webkit/DnsResolver;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$200(Landroid/webkit/DnsResolver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/DnsResolver;->mShutDownInProgress:Z

    return v0
.end method

.method static synthetic access$300(Landroid/webkit/DnsResolver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/DnsResolver;->mDnsResolverThreadPoolRunning:Z

    return v0
.end method

.method static synthetic access$302(Landroid/webkit/DnsResolver;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/webkit/DnsResolver;->mDnsResolverThreadPoolRunning:Z

    return p1
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/DnsResolver;->mThreadPoolLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Landroid/webkit/DnsResolver;)Landroid/webkit/DnsResolver;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Landroid/webkit/DnsResolver;->sDnsResolver:Landroid/webkit/DnsResolver;

    return-object p0
.end method

.method public static declared-synchronized createDnsResolver(Landroid/content/Context;)Landroid/webkit/DnsResolver;
    .locals 3
    .parameter "context"

    .prologue
    const-string v0, "webcore"

    const-class v0, Landroid/webkit/DnsResolver;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    const-string v1, "webcore"

    const-string v2, "Could not create DNS Resolver: NULL context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "webcore"

    const-string v2, "Creating DNS resolver"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/webkit/DnsResolver;->sDnsResolver:Landroid/webkit/DnsResolver;

    if-nez v1, :cond_1

    new-instance v1, Landroid/webkit/DnsResolver;

    invoke-direct {v1, p0}, Landroid/webkit/DnsResolver;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/webkit/DnsResolver;->sDnsResolver:Landroid/webkit/DnsResolver;

    :cond_1
    sget v1, Landroid/webkit/DnsResolver;->mDnsResolverRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/DnsResolver;->mDnsResolverRefCount:I

    sget-object v1, Landroid/webkit/DnsResolver;->sDnsResolver:Landroid/webkit/DnsResolver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private createDnsResolverThreadPool()V
    .locals 3

    .prologue
    new-instance v1, Landroid/webkit/DnsResolver$1;

    invoke-direct {v1, p0}, Landroid/webkit/DnsResolver$1;-><init>(Landroid/webkit/DnsResolver;)V

    .local v1, startDnsResolver:Ljava/lang/Runnable;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v0, dnsResolver:Ljava/lang/Thread;
    const-string v2, "DNS resolver"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getInstance()Landroid/webkit/DnsResolver;
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/DnsResolver;->sDnsResolver:Landroid/webkit/DnsResolver;

    return-object v0
.end method

.method private shouldPerformDnsPrefetch()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .local v0, status:Z
    iget-object v1, p0, Landroid/webkit/DnsResolver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/DnsResolver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    const-string v1, "webcore"

    const-string v2, "DNS prefetch not started because proxy is set"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized destroyDnsResolver()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    const-string v0, "webcore"

    const-string v1, "Destroying DNS Resolver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/webkit/DnsResolver;->mDnsResolverRefCount:I

    sub-int/2addr v0, v2

    sput v0, Landroid/webkit/DnsResolver;->mDnsResolverRefCount:I

    sget v0, Landroid/webkit/DnsResolver;->mDnsResolverRefCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/DnsResolver;->mShutDownInProgress:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/DnsResolver;->mDnsResolverThreadPoolRunning:Z

    sget-object v0, Landroid/webkit/DnsResolver;->mThreadPoolLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Landroid/webkit/DnsResolver;->mThreadPoolLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxParallelDnsQueryPerPage()I
    .locals 1

    .prologue
    const/16 v0, 0x40

    return v0
.end method

.method public pauseDnsResolverThreadPool()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/DnsResolver;->mDnsResolverThreadPoolRunning:Z

    return-void
.end method

.method public resolveDnsForHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "hostName"
    .parameter "priority"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/webkit/DnsResolver;->shouldPerformDnsPrefetch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid/webkit/DnsResolver;->resumeDnsResolverThreadPool()V

    goto :goto_0
.end method

.method public resolveDnsForHostMap(Ljava/util/HashMap;)V
    .locals 2
    .parameter "hostMap"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/webkit/DnsResolver;->shouldPerformDnsPrefetch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/webkit/DnsResolver;->resumeDnsResolverThreadPool()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resumeDnsResolverThreadPool()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/DnsResolver;->mDnsResolverThreadPoolRunning:Z

    sget-object v0, Landroid/webkit/DnsResolver;->mThreadPoolLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/DnsResolver;->mThreadPoolLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
