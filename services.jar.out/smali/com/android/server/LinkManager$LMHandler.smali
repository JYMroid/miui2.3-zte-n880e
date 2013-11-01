.class Lcom/android/server/LinkManager$LMHandler;
.super Landroid/os/Handler;
.source "LinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LMHandler"
.end annotation


# static fields
.field static final CONNECTION_TIMED_OUT:I = 0x5

.field static final CONNECTION_TIMEOUT:I = 0x2710

.field static final NETWORK_CONNECTED:I = 0x3

.field static final NETWORK_DISCONNECTED:I = 0x4

.field static final RELEASE_LINK:I = 0x2

.field static final REQUEST_LINK:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/LinkManager;


# direct methods
.method public constructor <init>(Lcom/android/server/LinkManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private anotherNetworkIsAvailable(I)Z
    .locals 2
    .parameter "network"

    .prologue
    const/4 v0, -0x1

    .local v0, otherNetwork:I
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #calls: Lcom/android/server/LinkManager;->isNetworkConnected(I)Z
    invoke-static {v1, v0}, Lcom/android/server/LinkManager;->access$400(Lcom/android/server/LinkManager;I)Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private applyCapabilitiesToNetworks(Landroid/net/LinkCapabilities;Ljava/util/List;)V
    .locals 9
    .parameter "capabilities"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkCapabilities;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, preferredNetworks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v7, 0xd

    const/16 v6, 0xc

    const-string v8, "LinkManager"

    const-string v4, "LinkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyCapabilitiesToNetworks: caps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "nets"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v6}, Landroid/net/LinkCapabilities;->containsKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v6}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v0

    .local v0, allowed:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/LinkManager$LMHandler;->csNetworkStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .local v1, allowedNetworks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .end local v0           #allowed:Ljava/lang/String;
    .end local v1           #allowedNetworks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {p1, v7}, Landroid/net/LinkCapabilities;->containsKey(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v7}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .local v2, prohibited:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/LinkManager$LMHandler;->csNetworkStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .local v3, prohibitedNetworks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .end local v2           #prohibited:Ljava/lang/String;
    .end local v3           #prohibitedNetworks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    const-string v4, "LinkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyCapabilitiesToNetworks resulting nets: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private bringDownUnusedNetworks()V
    .locals 9

    .prologue
    const-string v8, "LinkManager"

    const-string v6, "LinkManager"

    const-string v6, "bringDownUnusedNetworks() EX"

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    .local v0, allNetworks:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_4

    aget v4, v0, v1

    .local v4, network:I
    iget-object v6, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mDefaultNetwork:I
    invoke-static {v6}, Lcom/android/server/LinkManager;->access$800(Lcom/android/server/LinkManager;)I

    move-result v6

    if-ne v4, v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/LinkManager$LMHandler;->anotherNetworkIsAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    .local v5, networkInUse:Z
    iget-object v6, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/server/LinkManager;->access$100(Lcom/android/server/LinkManager;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LinkManager$LinkSocketInfo;

    .local v3, lsInfo:Lcom/android/server/LinkManager$LinkSocketInfo;
    iget v6, v3, Lcom/android/server/LinkManager$LinkSocketInfo;->assignedNetwork:I

    if-ne v6, v4, :cond_2

    const/4 v5, 0x1

    .end local v3           #lsInfo:Lcom/android/server/LinkManager$LinkSocketInfo;
    :cond_3
    if-nez v5, :cond_0

    const-string v6, "LinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bringing down unused network: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #calls: Lcom/android/server/LinkManager;->networkIntToString(I)Ljava/lang/String;
    invoke-static {v7, v4}, Lcom/android/server/LinkManager;->access$500(Lcom/android/server/LinkManager;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mConnectivityService:Lcom/android/server/ConnectivityService;
    invoke-static {v6}, Lcom/android/server/LinkManager;->access$700(Lcom/android/server/LinkManager;)Lcom/android/server/ConnectivityService;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/ConnectivityService;->teardown(I)Z

    goto :goto_1

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #network:I
    .end local v5           #networkInUse:Z
    :cond_4
    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private csNetworkStringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "networks"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v7, ",\\s?"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, netNames:[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    array-length v7, v5

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .local v4, netList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #calls: Lcom/android/server/LinkManager;->networkStringToInt(Ljava/lang/String;)I
    invoke-static {v7, v3}, Lcom/android/server/LinkManager;->access$900(Lcom/android/server/LinkManager;Ljava/lang/String;)I

    move-result v6

    .local v6, network:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #name:Ljava/lang/String;
    .end local v6           #network:I
    :cond_1
    return-object v4
.end method

.method private handleConnectionTimedOut(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const-string v7, " net: "

    const-string v5, "LinkManager"

    iget v1, p1, Landroid/os/Message;->arg1:I

    .local v1, id:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .local v2, network:I
    const-string v3, "LinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleConnectionTimedOut (possibly) id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " net: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/LinkManager;->access$100(Lcom/android/server/LinkManager;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LinkManager$LinkSocketInfo;

    iget v3, v3, Lcom/android/server/LinkManager$LinkSocketInfo;->status:I

    if-ne v3, v6, :cond_0

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :cond_0
    const-string v3, "LinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleConnectionTimedOut actual timeout id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " net: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mDefaultNetwork:I
    invoke-static {v3}, Lcom/android/server/LinkManager;->access$800(Lcom/android/server/LinkManager;)I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mConnectivityService:Lcom/android/server/ConnectivityService;
    invoke-static {v3}, Lcom/android/server/LinkManager;->access$700(Lcom/android/server/LinkManager;)Lcom/android/server/ConnectivityService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/ConnectivityService;->teardown(I)Z

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/LinkManager;->access$100(Lcom/android/server/LinkManager;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/LinkManager$LinkSocketInfo;

    iget-object v3, p0, Lcom/android/server/LinkManager$LinkSocketInfo;->callback:Landroid/net/ILinkSocketMessageHandler;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/net/ILinkSocketMessageHandler;->onGetLinkFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "LinkManager"

    const-string v3, "RemoteException sending onGetLinkFailure()"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleNetworkConnected(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-string v7, "LinkManager"

    iget v3, p1, Landroid/os/Message;->arg1:I

    .local v3, network:I
    const-string v4, "LinkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleNetworkConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #calls: Lcom/android/server/LinkManager;->networkIntToString(I)Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/android/server/LinkManager;->access$500(Lcom/android/server/LinkManager;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/LinkManager;->access$100(Lcom/android/server/LinkManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LinkManager$LinkSocketInfo;

    .local v2, lsInfo:Lcom/android/server/LinkManager$LinkSocketInfo;
    iget v4, v2, Lcom/android/server/LinkManager$LinkSocketInfo;->status:I

    if-nez v4, :cond_0

    iget v4, v2, Lcom/android/server/LinkManager$LinkSocketInfo;->assignedNetwork:I

    if-ne v4, v3, :cond_0

    const/4 v4, 0x1

    iput v4, v2, Lcom/android/server/LinkManager$LinkSocketInfo;->status:I

    :try_start_0
    iget-object v4, v2, Lcom/android/server/LinkManager$LinkSocketInfo;->callback:Landroid/net/ILinkSocketMessageHandler;

    iget-object v5, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    iget v6, v2, Lcom/android/server/LinkManager$LinkSocketInfo;->assignedNetwork:I

    #calls: Lcom/android/server/LinkManager;->propertiesForNetwork(I)Landroid/net/LinkProperties;
    invoke-static {v5, v6}, Lcom/android/server/LinkManager;->access$600(Lcom/android/server/LinkManager;I)Landroid/net/LinkProperties;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/net/ILinkSocketMessageHandler;->onLinkAvail(Landroid/net/LinkProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "LinkManager"

    const-string v4, "RemoteException sending onLinkAvail()"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #lsInfo:Lcom/android/server/LinkManager$LinkSocketInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/LinkManager$LMHandler;->bringDownUnusedNetworks()V

    return-void
.end method

.method private handleNetworkDisconnected(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-string v6, "LinkManager"

    iget v3, p1, Landroid/os/Message;->arg1:I

    .local v3, network:I
    const-string v4, "LinkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleNetworkDisconnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #calls: Lcom/android/server/LinkManager;->networkIntToString(I)Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/android/server/LinkManager;->access$500(Lcom/android/server/LinkManager;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/LinkManager;->access$100(Lcom/android/server/LinkManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LinkManager$LinkSocketInfo;

    .local v2, lsInfo:Lcom/android/server/LinkManager$LinkSocketInfo;
    iget v4, v2, Lcom/android/server/LinkManager$LinkSocketInfo;->assignedNetwork:I

    if-ne v4, v3, :cond_0

    const/4 v4, 0x2

    iput v4, v2, Lcom/android/server/LinkManager$LinkSocketInfo;->status:I

    :try_start_0
    iget-object v4, v2, Lcom/android/server/LinkManager$LinkSocketInfo;->callback:Landroid/net/ILinkSocketMessageHandler;

    invoke-interface {v4}, Landroid/net/ILinkSocketMessageHandler;->onLinkLost()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/server/LinkManager$LMHandler;->anotherNetworkIsAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_1
    iget-object v4, v2, Lcom/android/server/LinkManager$LinkSocketInfo;->callback:Landroid/net/ILinkSocketMessageHandler;

    invoke-interface {v4}, Landroid/net/ILinkSocketMessageHandler;->onBetterLinkAvail()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "LinkManager"

    const-string v4, "RemoteException sending onBetterLinkAvail()"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v4, "LinkManager"

    const-string v4, "RemoteException sending onLinkLost()"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #lsInfo:Lcom/android/server/LinkManager$LinkSocketInfo;
    :cond_1
    return-void
.end method

.method private handleReleaseLink(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-string v7, "LinkManager"

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/LinkManager$LinkSocketInfo;

    .local v2, released:Lcom/android/server/LinkManager$LinkSocketInfo;
    iget v3, v2, Lcom/android/server/LinkManager$LinkSocketInfo;->assignedNetwork:I

    .local v3, releasedNetwork:I
    const-string v5, "LinkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleReleaseLink net: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/server/LinkManager$LMHandler;->anotherNetworkIsAvailable(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mDefaultNetwork:I
    invoke-static {v5}, Lcom/android/server/LinkManager;->access$800(Lcom/android/server/LinkManager;)I

    move-result v5

    if-eq v3, v5, :cond_2

    const/4 v4, 0x1

    .local v4, shouldBringDownNetwork:Z
    iget-object v5, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/LinkManager;->access$100(Lcom/android/server/LinkManager;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LinkManager$LinkSocketInfo;

    .local v1, lsInfo:Lcom/android/server/LinkManager$LinkSocketInfo;
    iget v5, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->assignedNetwork:I

    if-ne v5, v3, :cond_0

    const/4 v4, 0x0

    .end local v1           #lsInfo:Lcom/android/server/LinkManager$LinkSocketInfo;
    :cond_1
    if-eqz v4, :cond_2

    const-string v5, "LinkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bringing down network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mConnectivityService:Lcom/android/server/ConnectivityService;
    invoke-static {v5}, Lcom/android/server/LinkManager;->access$700(Lcom/android/server/LinkManager;)Lcom/android/server/ConnectivityService;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/ConnectivityService;->teardown(I)Z

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #shouldBringDownNetwork:Z
    :cond_2
    return-void
.end method

.method private handleRequestLink(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, 0x1

    const/4 v11, 0x0

    const-string v12, "LinkManager"

    iget v3, p1, Landroid/os/Message;->arg1:I

    .local v3, id:I
    iget-object v9, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;
    invoke-static {v9}, Lcom/android/server/LinkManager;->access$100(Lcom/android/server/LinkManager;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LinkManager$LinkSocketInfo;

    .local v4, lsInfo:Lcom/android/server/LinkManager$LinkSocketInfo;
    iget-object v0, v4, Lcom/android/server/LinkManager$LinkSocketInfo;->capabilities:Landroid/net/LinkCapabilities;

    .local v0, capabilities:Landroid/net/LinkCapabilities;
    iget-object v9, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    invoke-virtual {v0, v11}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/server/LinkManager;->roleStringToInt(Ljava/lang/String;)I
    invoke-static {v9, v10}, Lcom/android/server/LinkManager;->access$200(Lcom/android/server/LinkManager;Ljava/lang/String;)I

    move-result v7

    .local v7, role:I
    iget-object v9, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mCarrierProfile:Lcom/android/server/CarrierProfile;
    invoke-static {v9}, Lcom/android/server/LinkManager;->access$300(Lcom/android/server/LinkManager;)Lcom/android/server/CarrierProfile;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/server/CarrierProfile;->getPreferredNetworks(I)Ljava/util/List;

    move-result-object v6

    .local v6, preferredNetworks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0, v6}, Lcom/android/server/LinkManager$LMHandler;->applyCapabilitiesToNetworks(Landroid/net/LinkCapabilities;Ljava/util/List;)V

    const-string v9, "LinkManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleRequestLink id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " role: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, network:I
    iget-object v9, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #calls: Lcom/android/server/LinkManager;->isNetworkConnected(I)Z
    invoke-static {v9, v5}, Lcom/android/server/LinkManager;->access$400(Lcom/android/server/LinkManager;I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    invoke-virtual {v9, v5}, Lcom/android/server/LinkManager;->getAvailableForwardBandwidth(I)I

    const-string v9, "LinkManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "assigning id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/server/LinkManager$LinkSocketInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to network "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #calls: Lcom/android/server/LinkManager;->networkIntToString(I)Ljava/lang/String;
    invoke-static {v10, v5}, Lcom/android/server/LinkManager;->access$500(Lcom/android/server/LinkManager;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, v4, Lcom/android/server/LinkManager$LinkSocketInfo;->assignedNetwork:I

    iput v13, v4, Lcom/android/server/LinkManager$LinkSocketInfo;->status:I

    .end local v5           #network:I
    :cond_1
    iget v9, v4, Lcom/android/server/LinkManager$LinkSocketInfo;->status:I

    if-ne v9, v13, :cond_2

    :try_start_0
    iget-object v9, v4, Lcom/android/server/LinkManager$LinkSocketInfo;->callback:Landroid/net/ILinkSocketMessageHandler;

    iget-object v10, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    iget v11, v4, Lcom/android/server/LinkManager$LinkSocketInfo;->assignedNetwork:I

    #calls: Lcom/android/server/LinkManager;->propertiesForNetwork(I)Landroid/net/LinkProperties;
    invoke-static {v10, v11}, Lcom/android/server/LinkManager;->access$600(Lcom/android/server/LinkManager;I)Landroid/net/LinkProperties;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/net/ILinkSocketMessageHandler;->onLinkAvail(Landroid/net/LinkProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v9

    move-object v1, v9

    .local v1, e:Landroid/os/RemoteException;
    const-string v9, "LinkManager"

    const-string v9, "RemoteException sending onLinkAvail()"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .restart local v5       #network:I
    iput v5, v4, Lcom/android/server/LinkManager$LinkSocketInfo;->assignedNetwork:I

    const-string v9, "LinkManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot assign to available networks - bringing up "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #calls: Lcom/android/server/LinkManager;->networkIntToString(I)Ljava/lang/String;
    invoke-static {v10, v5}, Lcom/android/server/LinkManager;->access$500(Lcom/android/server/LinkManager;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mConnectivityService:Lcom/android/server/ConnectivityService;
    invoke-static {v9}, Lcom/android/server/LinkManager;->access$700(Lcom/android/server/LinkManager;)Lcom/android/server/ConnectivityService;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/server/ConnectivityService;->reconnect(I)Z

    iget-object v9, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mHandler:Lcom/android/server/LinkManager$LMHandler;
    invoke-static {v9}, Lcom/android/server/LinkManager;->access$000(Lcom/android/server/LinkManager;)Lcom/android/server/LinkManager$LMHandler;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10, v3, v5}, Lcom/android/server/LinkManager$LMHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .local v8, timeoutMsg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/server/LinkManager$LMHandler;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mHandler:Lcom/android/server/LinkManager$LMHandler;
    invoke-static {v9}, Lcom/android/server/LinkManager;->access$000(Lcom/android/server/LinkManager;)Lcom/android/server/LinkManager$LMHandler;

    move-result-object v9

    const-wide/16 v10, 0x2710

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/LinkManager$LMHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "LinkManager"

    const-string v1, "LMHandler handleMessage: unknown message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/LinkManager$LMHandler;->handleRequestLink(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/LinkManager$LMHandler;->handleReleaseLink(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/LinkManager$LMHandler;->handleNetworkConnected(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/LinkManager$LMHandler;->handleNetworkDisconnected(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/LinkManager$LMHandler;->handleConnectionTimedOut(Landroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
