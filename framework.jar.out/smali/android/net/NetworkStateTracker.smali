.class public abstract Landroid/net/NetworkStateTracker;
.super Landroid/os/Handler;
.source "NetworkStateTracker.java"


# static fields
.field private static DBG:Z = false

.field public static final EVENT_CONFIGURATION_CHANGED:I = 0x4

.field public static final EVENT_NETWORK_SUBTYPE_CHANGED:I = 0x6

.field public static final EVENT_NOTIFICATION_CHANGED:I = 0x3

.field public static final EVENT_ROAMING_CHANGED:I = 0x5

.field public static final EVENT_SCAN_RESULTS_AVAILABLE:I = 0x2

.field public static final EVENT_STATE_CHANGED:I = 0x1

.field private static final MAX_NETWORK_STATE_TRACKER_EVENT:I = 0x64

.field private static final MIN_NETWORK_STATE_TRACKER_EVENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStateTracker"

.field private static v4RouteIdCtr:I

.field private static v6RouteIdCtr:I


# instance fields
.field private V4RouteId:I

.field private V6RouteId:I

.field protected mContext:Landroid/content/Context;

.field protected mNetworkInfo:Landroid/net/NetworkInfo;

.field mPrivateDnsRouteSet:[Z

.field protected mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/NetworkStateTracker;->DBG:Z

    sput v0, Landroid/net/NetworkStateTracker;->v4RouteIdCtr:I

    const/16 v0, 0x7f

    sput v0, Landroid/net/NetworkStateTracker;->v6RouteIdCtr:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "target"
    .parameter "networkType"
    .parameter "subType"
    .parameter "typeName"
    .parameter "subtypeName"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput v1, p0, Landroid/net/NetworkStateTracker;->V4RouteId:I

    iput v1, p0, Landroid/net/NetworkStateTracker;->V6RouteId:I

    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:[Z

    iput-object p1, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    iput-boolean v1, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    invoke-direct {p0}, Landroid/net/NetworkStateTracker;->acquireV4RId()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStateTracker;->V4RouteId:I

    invoke-direct {p0}, Landroid/net/NetworkStateTracker;->acquireV6RId()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStateTracker;->V6RouteId:I

    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-void

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method private declared-synchronized acquireV4RId()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/net/NetworkStateTracker;->v4RouteIdCtr:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/NetworkStateTracker;->v4RouteIdCtr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized acquireV6RId()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/net/NetworkStateTracker;->v6RouteIdCtr:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/NetworkStateTracker;->v6RouteIdCtr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static getNameServerList([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "propertyNames"

    .prologue
    array-length v5, p0

    new-array v0, v5, [Ljava/lang/String;

    .local v0, dnsAddresses:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    aget-object v5, p0, v1

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0.0.0.0"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    aput-object v4, v0, v2

    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #value:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private setBufferSize(Ljava/lang/String;)V
    .locals 7
    .parameter "bufferSizes"

    .prologue
    const-string v6, "NetworkStateTracker"

    :try_start_0
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, values:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    const-string v1, "/sys/kernel/ipv4/tcp_"

    .local v1, prefix:Ljava/lang/String;
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_min"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :goto_0
    return-void

    .restart local v2       #values:[Ljava/lang/String;
    :cond_0
    const-string v3, "NetworkStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid buffersize string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2           #values:[Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/io/IOException;
    const-string v3, "NetworkStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set tcp buffer sizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .local v0, out:Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method


# virtual methods
.method public addDefaultRoute()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->addDefaultRoute(Lcom/android/internal/net/IPVersion;)V

    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->addDefaultRoute(Lcom/android/internal/net/IPVersion;)V

    return-void
.end method

.method public addDefaultRoute(Lcom/android/internal/net/IPVersion;)V
    .locals 10
    .parameter "ipv"

    .prologue
    const-string v9, "NetworkStateTracker"

    invoke-virtual {p0, p1}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v4

    .local v4, interfaceName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/net/NetworkStateTracker;->getGateway(Lcom/android/internal/net/IPVersion;)Ljava/net/InetAddress;

    move-result-object v1

    .local v1, gateway:Ljava/net/InetAddress;
    sget-object v7, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p1, v7, :cond_1

    const/4 v7, 0x0

    move v3, v7

    .local v3, index:I
    :goto_0
    if-nez v1, :cond_2

    const-string v7, "0"

    move-object v2, v7

    .local v2, gwString:Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_0

    const-string v7, "NetworkStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addDefaultRoute ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), GatewayAddr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, result:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v5

    .local v5, nms:Landroid/os/INetworkManagementService;
    if-nez v5, :cond_3

    const-string v7, "NetworkStateTracker"

    const-string v8, "could not acquire NetworkManagementService."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #nms:Landroid/os/INetworkManagementService;
    .end local v6           #result:Z
    :cond_0
    :goto_2
    return-void

    .end local v2           #gwString:Ljava/lang/String;
    .end local v3           #index:I
    :cond_1
    const/4 v7, 0x1

    move v3, v7

    goto :goto_0

    .restart local v3       #index:I
    :cond_2
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    goto :goto_1

    .restart local v2       #gwString:Ljava/lang/String;
    .restart local v5       #nms:Landroid/os/INetworkManagementService;
    .restart local v6       #result:Z
    :cond_3
    if-nez v3, :cond_4

    :try_start_1
    invoke-interface {v5, v4, v2}, Landroid/os/INetworkManagementService;->replaceV4DefaultRoute(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .end local v5           #nms:Landroid/os/INetworkManagementService;
    :goto_3
    if-nez v6, :cond_0

    const-string v7, "NetworkStateTracker"

    const-string v7, "  Unable to add default route."

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v5       #nms:Landroid/os/INetworkManagementService;
    :cond_4
    :try_start_2
    invoke-interface {v5, v4, v2}, Landroid/os/INetworkManagementService;->replaceV6DefaultRoute(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    goto :goto_3

    .end local v5           #nms:Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v7

    move-object v0, v7

    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "NetworkStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  NetworkManagementService was unable to add default route. Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public addPrivateDnsRoutes()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->addPrivateDnsRoutes(Lcom/android/internal/net/IPVersion;)V

    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->addPrivateDnsRoutes(Lcom/android/internal/net/IPVersion;)V

    return-void
.end method

.method public addPrivateDnsRoutes(Lcom/android/internal/net/IPVersion;)V
    .locals 12
    .parameter "ipv"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v6

    .local v6, interfaceName:Ljava/lang/String;
    sget-object v9, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p1, v9, :cond_1

    const/4 v9, 0x0

    move v4, v9

    .local v4, index:I
    :goto_0
    if-eqz v6, :cond_0

    iget-object v9, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:[Z

    aget-boolean v9, v9, v4

    if-nez v9, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v7, :cond_5

    aget-object v0, v1, v3

    .local v0, addrString:Ljava/lang/String;
    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .local v5, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v8

    .local v8, nms:Landroid/os/INetworkManagementService;
    if-nez v8, :cond_2

    const-string v9, "NetworkStateTracker"

    const-string v10, "could not acquire NetworkManagementService."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #addrString:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #inetAddress:Ljava/net/InetAddress;
    .end local v7           #len$:I
    .end local v8           #nms:Landroid/os/INetworkManagementService;
    :cond_0
    :goto_2
    return-void

    .end local v4           #index:I
    :cond_1
    const/4 v9, 0x1

    move v4, v9

    goto :goto_0

    .restart local v0       #addrString:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #index:I
    .restart local v5       #inetAddress:Ljava/net/InetAddress;
    .restart local v7       #len$:I
    .restart local v8       #nms:Landroid/os/INetworkManagementService;
    :cond_2
    sget-object v9, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p1, v9, :cond_4

    instance-of v9, v5, Ljava/net/Inet4Address;

    if-eqz v9, :cond_4

    const-string v9, "NetworkStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adding ipv4 dns "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " through "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v6, v9, v10}, Landroid/os/INetworkManagementService;->addDstRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .end local v5           #inetAddress:Ljava/net/InetAddress;
    .end local v8           #nms:Landroid/os/INetworkManagementService;
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .restart local v5       #inetAddress:Ljava/net/InetAddress;
    .restart local v8       #nms:Landroid/os/INetworkManagementService;
    :cond_4
    sget-object v9, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    if-ne p1, v9, :cond_3

    instance-of v9, v5, Ljava/net/Inet6Address;

    if-eqz v9, :cond_3

    const-string v9, "NetworkStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adding ipv6 dns "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " through "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v6, v9, v10}, Landroid/os/INetworkManagementService;->addDstRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .end local v5           #inetAddress:Ljava/net/InetAddress;
    .end local v8           #nms:Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v9

    move-object v2, v9

    .local v2, e:Ljava/net/UnknownHostException;
    const-string v9, "NetworkStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " DNS address "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v2           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v9

    move-object v2, v9

    .local v2, e:Landroid/os/RemoteException;
    const-string v9, "NetworkStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " DNS address "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0           #addrString:Ljava/lang/String;
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_5
    iget-object v9, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:[Z

    const/4 v10, 0x1

    aput-boolean v10, v9, v4

    goto/16 :goto_2
.end method

.method public addSrcRoute(Lcom/android/internal/net/IPVersion;)V
    .locals 2
    .parameter "ipv"

    .prologue
    const-string v1, "NetworkStateTracker"

    if-nez p1, :cond_0

    const-string v0, "NetworkStateTracker"

    const-string v0, "ipversion is null; cannot add src route"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->replaceV6SrcRoute()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->replaceV4SrcRoute()V

    goto :goto_0

    :cond_2
    const-string v0, "NetworkStateTracker"

    const-string v0, "ipversion not recognized; cannot add src route"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addSrcRoutes()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->replaceV4SrcRoute()V

    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->replaceV6SrcRoute()V

    return-void
.end method

.method public delSrcRoute(Lcom/android/internal/net/IPVersion;)V
    .locals 2
    .parameter "ipv"

    .prologue
    const-string v1, "NetworkStateTracker"

    if-nez p1, :cond_0

    const-string v0, "NetworkStateTracker"

    const-string v0, "ipversion is null; cannot delete src route"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->delV6SrcRoute()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->delV4SrcRoute()V

    goto :goto_0

    :cond_2
    const-string v0, "NetworkStateTracker"

    const-string v0, "ipversion is not recognized; cannot delete src route"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public delSrcRoutes()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->delV4SrcRoute()V

    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->delV6SrcRoute()V

    return-void
.end method

.method public delV4SrcRoute()V
    .locals 7

    .prologue
    const-string v6, "NetworkStateTracker"

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v4}, Landroid/net/NetworkStateTracker;->getIpAdress(Lcom/android/internal/net/IPVersion;)Ljava/net/InetAddress;

    move-result-object v2

    .local v2, ipAddr:Ljava/net/InetAddress;
    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v4}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v1

    .local v1, interfaceName:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const-string v4, "NetworkStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delV4SrcRoute for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",InterfaceName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",IPAddr ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",V4RouteId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/NetworkStateTracker;->V4RouteId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v3

    .local v3, nms:Landroid/os/INetworkManagementService;
    if-nez v3, :cond_1

    const-string v4, "NetworkStateTracker"

    const-string v5, "could not acquire NetworkManagementService."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #nms:Landroid/os/INetworkManagementService;
    :goto_0
    return-void

    .restart local v3       #nms:Landroid/os/INetworkManagementService;
    :cond_1
    iget v4, p0, Landroid/net/NetworkStateTracker;->V4RouteId:I

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->delV4SrcRoute(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3           #nms:Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "NetworkStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete v4 source route. Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public delV6SrcRoute()V
    .locals 7

    .prologue
    const-string v6, "NetworkStateTracker"

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v4}, Landroid/net/NetworkStateTracker;->getIpAdress(Lcom/android/internal/net/IPVersion;)Ljava/net/InetAddress;

    move-result-object v2

    .local v2, ipAddr:Ljava/net/InetAddress;
    sget-object v4, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v4}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v1

    .local v1, interfaceName:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const-string v4, "NetworkStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delV6SrcRoute for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",InterfaceName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",IPAddr ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",V6RouteId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/NetworkStateTracker;->V6RouteId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v3

    .local v3, nms:Landroid/os/INetworkManagementService;
    if-nez v3, :cond_1

    const-string v4, "NetworkStateTracker"

    const-string v5, "could not acquire NetworkManagementService."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #nms:Landroid/os/INetworkManagementService;
    :goto_0
    return-void

    .restart local v3       #nms:Landroid/os/INetworkManagementService;
    :cond_1
    iget v4, p0, Landroid/net/NetworkStateTracker;->V6RouteId:I

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->delV6SrcRoute(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3           #nms:Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "NetworkStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete v6 source route. Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract getGateway(Lcom/android/internal/net/IPVersion;)Ljava/net/InetAddress;
.end method

.method public abstract getInterfaceName(Lcom/android/internal/net/IPVersion;)Ljava/lang/String;
.end method

.method public abstract getIpAdress(Lcom/android/internal/net/IPVersion;)Ljava/net/InetAddress;
.end method

.method public abstract getNameServers()[Ljava/lang/String;
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method protected getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    .prologue
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    return-object v1
.end method

.method public abstract getTcpBufferSizesPropName()Ljava/lang/String;
.end method

.method public interpretScanResultsAvailable()V
    .locals 0

    .prologue
    return-void
.end method

.method public abstract isAvailable()Z
.end method

.method public isTeardownRequested()Z
    .locals 3

    .prologue
    const-string v0, "NetworkStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTeardownRequested()-->mTeardownRequested ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method protected notifySubtypeChanged(II)V
    .locals 5
    .parameter "subtype"
    .parameter "oldSubtype"

    .prologue
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eq p1, p2, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x6

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public abstract reconnect()Z
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    return-void
.end method

.method public removeDefaultRoute()V
    .locals 0

    .prologue
    return-void
.end method

.method public removePrivateDnsRoutes()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->removePrivateDnsRoutes(Lcom/android/internal/net/IPVersion;)V

    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->removePrivateDnsRoutes(Lcom/android/internal/net/IPVersion;)V

    return-void
.end method

.method public removePrivateDnsRoutes(Lcom/android/internal/net/IPVersion;)V
    .locals 6
    .parameter "ipv"

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v1

    .local v1, interfaceName:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p1, v2, :cond_1

    move v0, v5

    .local v0, index:I
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    const-string v2, "NetworkStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dns routes for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/net/NetworkUtils;->removeHostRoutes(Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:[Z

    aput-boolean v5, v2, v0

    return-void

    .end local v0           #index:I
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public replaceV4SrcRoute()V
    .locals 9

    .prologue
    const-string v8, "NetworkStateTracker"

    sget-object v6, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v6}, Landroid/net/NetworkStateTracker;->getIpAdress(Lcom/android/internal/net/IPVersion;)Ljava/net/InetAddress;

    move-result-object v4

    .local v4, ipAddr:Ljava/net/InetAddress;
    sget-object v6, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v6}, Landroid/net/NetworkStateTracker;->getGateway(Lcom/android/internal/net/IPVersion;)Ljava/net/InetAddress;

    move-result-object v1

    .local v1, gatewayAddr:Ljava/net/InetAddress;
    sget-object v6, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v6}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v3

    .local v3, interfaceName:Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v6, "0"

    move-object v2, v6

    .local v2, gwString:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    const-string v6, "NetworkStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replaceV4SrcRoute for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), GatewayAddr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IPAddr ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "V4RouteId ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/NetworkStateTracker;->V4RouteId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v5

    .local v5, nms:Landroid/os/INetworkManagementService;
    if-nez v5, :cond_2

    const-string v6, "NetworkStateTracker"

    const-string v7, "could not acquire NetworkManagementService."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #nms:Landroid/os/INetworkManagementService;
    :cond_0
    :goto_1
    return-void

    .end local v2           #gwString:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    goto :goto_0

    .restart local v2       #gwString:Ljava/lang/String;
    .restart local v5       #nms:Landroid/os/INetworkManagementService;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Landroid/net/NetworkStateTracker;->V4RouteId:I

    invoke-interface {v5, v3, v6, v2, v7}, Landroid/os/INetworkManagementService;->replaceV4SrcRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v5           #nms:Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v6

    move-object v0, v6

    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "NetworkStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to replace V4 srouce route. Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public replaceV6SrcRoute()V
    .locals 9

    .prologue
    const-string v8, "NetworkStateTracker"

    sget-object v6, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v6}, Landroid/net/NetworkStateTracker;->getIpAdress(Lcom/android/internal/net/IPVersion;)Ljava/net/InetAddress;

    move-result-object v4

    .local v4, ipAddr:Ljava/net/InetAddress;
    sget-object v6, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v6}, Landroid/net/NetworkStateTracker;->getGateway(Lcom/android/internal/net/IPVersion;)Ljava/net/InetAddress;

    move-result-object v1

    .local v1, gatewayAddr:Ljava/net/InetAddress;
    sget-object v6, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v6}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v3

    .local v3, interfaceName:Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v6, "0"

    move-object v2, v6

    .local v2, gwString:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    const-string v6, "NetworkStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replaceV6SrcRoute for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), GatewayAddr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IPAddr ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "V6RouteId ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/NetworkStateTracker;->V6RouteId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v5

    .local v5, nms:Landroid/os/INetworkManagementService;
    if-nez v5, :cond_2

    const-string v6, "NetworkStateTracker"

    const-string v7, "could not acquire NetworkManagementService."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #nms:Landroid/os/INetworkManagementService;
    :cond_0
    :goto_1
    return-void

    .end local v2           #gwString:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    goto :goto_0

    .restart local v2       #gwString:Ljava/lang/String;
    .restart local v5       #nms:Landroid/os/INetworkManagementService;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Landroid/net/NetworkStateTracker;->V6RouteId:I

    invoke-interface {v5, v3, v6, v2, v7}, Landroid/os/INetworkManagementService;->replaceV6SrcRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v5           #nms:Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v6

    move-object v0, v6

    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "NetworkStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to replace V6 srouce route. Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public requestRouteToHost(Ljava/net/InetAddress;)Z
    .locals 1
    .parameter "hostAddress"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public abstract resetTornDownbyConnMgr()V
.end method

.method protected sendScanResultsAvailable()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, v5

    move v3, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "state"
    .parameter "isIpv4Connected"
    .parameter "isIpv6Connected"
    .parameter "reason"
    .parameter "extraInfo"
    .parameter "ipv4Apn"
    .parameter "ipv6Apn"

    .prologue
    sget-boolean v0, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDetailed state, old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    move v12, v0

    .local v12, wasConnecting:Z
    :goto_0
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v10

    .local v10, lastReason:Ljava/lang/String;
    if-eqz v12, :cond_1

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    if-nez p4, :cond_1

    if-eqz v10, :cond_1

    move-object/from16 p4, v10

    :cond_1
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v8

    .local v8, v4int:Ljava/lang/String;
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v9

    .local v9, v6int:Ljava/lang/String;
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .local v11, msg:Landroid/os/Message;
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    return-void

    .end local v8           #v4int:Ljava/lang/String;
    .end local v9           #v6int:Ljava/lang/String;
    .end local v10           #lastReason:Ljava/lang/String;
    .end local v11           #msg:Landroid/os/Message;
    .end local v12           #wasConnecting:Z
    :cond_2
    const/4 v0, 0x0

    move v12, v0

    goto :goto_0
.end method

.method protected setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 22
    .parameter "state"

    .prologue
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p1

    move-object v1, v2

    if-ne v0, v1, :cond_0

    sget-object v2, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v10

    .local v10, v4int:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v11

    .local v11, v6int:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object v2, v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v10           #v4int:Ljava/lang/String;
    .end local v11           #v6int:Ljava/lang/String;
    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object v12, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v13, p1

    invoke-virtual/range {v12 .. v21}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract setRadio(Z)Z
.end method

.method protected setRoamingStatus(Z)V
    .locals 4
    .parameter "isRoaming"

    .prologue
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected setSubtype(ILjava/lang/String;)V
    .locals 6
    .parameter "subtype"
    .parameter "subtypeName"

    .prologue
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .local v1, oldSubtype:I
    if-eq p1, v1, :cond_0

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, p1, p2}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setTeardownRequested(Z)V
    .locals 3
    .parameter "isRequested"

    .prologue
    iput-boolean p1, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    const-string v0, "NetworkStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTeardownRequested()-->mTeardownRequested ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract startMonitoring()V
.end method

.method public abstract startUsingNetworkFeature(Ljava/lang/String;II)I
.end method

.method public abstract stopUsingNetworkFeature(Ljava/lang/String;II)I
.end method

.method public abstract teardown()Z
.end method

.method public updateNetworkSettings()V
    .locals 5

    .prologue
    const-string v4, "NetworkStateTracker"

    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getTcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v1

    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, bufferSizes:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NetworkStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in system properties. Using defaults"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "net.tcp.buffersize.default"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "NetworkStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting TCP values: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] which comes from ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v0}, Landroid/net/NetworkStateTracker;->setBufferSize(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
