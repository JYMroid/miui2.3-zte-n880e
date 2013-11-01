.class public Landroid/webkit/PreConnectionManager;
.super Ljava/lang/Object;
.source "PreConnectionManager.java"


# static fields
.field public static final MAX_PRE_CONNECTION_THREADS:I = 0x5

.field public static final PRE_CONNECTION_THREAD_UNDEFINED:I = -0x1


# instance fields
.field private TCP_PRE_CONNECT:Z

.field private mCurrentMainURL:Ljava/lang/String;

.field private final mNetwork:Landroid/webkit/Network;

.field private mPreConnectionThreadId:I

.field private mRequestQueue:Landroid/net/http/RequestQueue;

.field private mSubResorcesHistory:Landroid/webkit/SubResourcesHistory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "net.http.preconnect"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/PreConnectionManager;->TCP_PRE_CONNECT:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/webkit/PreConnectionManager;->mCurrentMainURL:Ljava/lang/String;

    invoke-static {p1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/PreConnectionManager;->mNetwork:Landroid/webkit/Network;

    invoke-static {p1}, Landroid/webkit/SubResourcesHistory;->getInstance(Landroid/content/Context;)Landroid/webkit/SubResourcesHistory;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/PreConnectionManager;->mSubResorcesHistory:Landroid/webkit/SubResourcesHistory;

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/PreConnectionManager;->mPreConnectionThreadId:I

    return-void
.end method

.method private preConnect()V
    .locals 5

    .prologue
    iget-boolean v2, p0, Landroid/webkit/PreConnectionManager;->TCP_PRE_CONNECT:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .local v0, subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    iget-object v2, p0, Landroid/webkit/PreConnectionManager;->mSubResorcesHistory:Landroid/webkit/SubResourcesHistory;

    iget-object v3, p0, Landroid/webkit/PreConnectionManager;->mCurrentMainURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/SubResourcesHistory;->getSubhostsToConnect(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/webkit/SubResourcesHistory;->mSubResourcesHistoryLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v3, p0, Landroid/webkit/PreConnectionManager;->mSubResorcesHistory:Landroid/webkit/SubResourcesHistory;

    iget-object v4, p0, Landroid/webkit/PreConnectionManager;->mCurrentMainURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/webkit/SubResourcesHistory;->getSubhostsToConnect(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0           #subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    .local v1, subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1           #subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    .restart local v0       #subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkit/PreConnectionManager;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v2, p0, v0}, Landroid/webkit/Network;->requestNetworkConnections(Landroid/webkit/PreConnectionManager;Ljava/util/LinkedList;)I

    move-result v2

    iput v2, p0, Landroid/webkit/PreConnectionManager;->mPreConnectionThreadId:I

    .end local v0           #subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    :cond_1
    :goto_0
    return-void

    .restart local v0       #subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    :catchall_0
    move-exception v3

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TCP pre-connection: preConnect() subhost is zero "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/PreConnectionManager;->mCurrentMainURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    .restart local v1       #subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1           #subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    .restart local v0       #subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    goto :goto_1
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/PreConnectionManager;->TCP_PRE_CONNECT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/PreConnectionManager;->mSubResorcesHistory:Landroid/webkit/SubResourcesHistory;

    invoke-virtual {v0}, Landroid/webkit/SubResourcesHistory;->decrementReferenceCount()V

    :cond_0
    return-void
.end method

.method public onLoadFinished()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    iget-boolean v0, p0, Landroid/webkit/PreConnectionManager;->TCP_PRE_CONNECT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/PreConnectionManager;->mSubResorcesHistory:Landroid/webkit/SubResourcesHistory;

    iget-object v1, p0, Landroid/webkit/PreConnectionManager;->mCurrentMainURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/SubResourcesHistory;->onLoadFinished(Ljava/lang/String;)V

    iget v0, p0, Landroid/webkit/PreConnectionManager;->mPreConnectionThreadId:I

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/PreConnectionManager;->mNetwork:Landroid/webkit/Network;

    iget v1, p0, Landroid/webkit/PreConnectionManager;->mPreConnectionThreadId:I

    invoke-virtual {v0, v1}, Landroid/webkit/Network;->stopNetworkConnections(I)V

    :cond_0
    iput v2, p0, Landroid/webkit/PreConnectionManager;->mPreConnectionThreadId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/PreConnectionManager;->mCurrentMainURL:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onLoadStarted(Ljava/lang/String;)V
    .locals 2
    .parameter "mainUrl"

    .prologue
    const/4 v1, -0x1

    iget-boolean v0, p0, Landroid/webkit/PreConnectionManager;->TCP_PRE_CONNECT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/PreConnectionManager;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v0}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/webkit/PreConnectionManager;->mPreConnectionThreadId:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/webkit/PreConnectionManager;->mCurrentMainURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/PreConnectionManager;->mNetwork:Landroid/webkit/Network;

    iget v1, p0, Landroid/webkit/PreConnectionManager;->mPreConnectionThreadId:I

    invoke-virtual {v0, v1}, Landroid/webkit/Network;->stopNetworkConnections(I)V

    iput-object p1, p0, Landroid/webkit/PreConnectionManager;->mCurrentMainURL:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/PreConnectionManager;->preConnect()V

    iget-object v0, p0, Landroid/webkit/PreConnectionManager;->mSubResorcesHistory:Landroid/webkit/SubResourcesHistory;

    iget-object v1, p0, Landroid/webkit/PreConnectionManager;->mCurrentMainURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/SubResourcesHistory;->updateUrlHistory(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/webkit/PreConnectionManager;->mPreConnectionThreadId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/PreConnectionManager;->mCurrentMainURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/webkit/PreConnectionManager;->mCurrentMainURL:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/PreConnectionManager;->preConnect()V

    iget-object v0, p0, Landroid/webkit/PreConnectionManager;->mSubResorcesHistory:Landroid/webkit/SubResourcesHistory;

    iget-object v1, p0, Landroid/webkit/PreConnectionManager;->mCurrentMainURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/SubResourcesHistory;->updateUrlHistory(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResourceLoad(Ljava/lang/String;)V
    .locals 2
    .parameter "subHost"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/PreConnectionManager;->TCP_PRE_CONNECT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/PreConnectionManager;->mCurrentMainURL:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroid/webkit/PreConnectionManager;->mCurrentMainURL:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/webkit/PreConnectionManager;->mSubResorcesHistory:Landroid/webkit/SubResourcesHistory;

    iget-object v1, p0, Landroid/webkit/PreConnectionManager;->mCurrentMainURL:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/SubResourcesHistory;->addSubHost(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setPreConnectionThreadId(I)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    if-ne v2, p1, :cond_0

    iget v0, p0, Landroid/webkit/PreConnectionManager;->mPreConnectionThreadId:I

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/PreConnectionManager;->mNetwork:Landroid/webkit/Network;

    iget v1, p0, Landroid/webkit/PreConnectionManager;->mPreConnectionThreadId:I

    invoke-virtual {v0, v1}, Landroid/webkit/Network;->cleanPreConnectionThreadEntry(I)V

    :cond_0
    if-eq v2, p1, :cond_1

    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    :cond_1
    iput p1, p0, Landroid/webkit/PreConnectionManager;->mPreConnectionThreadId:I

    :cond_2
    return-void
.end method
