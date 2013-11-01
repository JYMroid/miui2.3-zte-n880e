.class public Lcom/android/server/LinkManager;
.super Ljava/lang/Object;
.source "LinkManager.java"

# interfaces
.implements Lcom/android/server/ILinkManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LinkManager$LMHandler;,
        Lcom/android/server/LinkManager$LinkSocketInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "LinkManager"

.field private static mSocketId:I


# instance fields
.field private mActiveLinks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/LinkManager$LinkSocketInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCarrierProfile:Lcom/android/server/CarrierProfile;

.field private mConnectivityService:Lcom/android/server/ConnectivityService;

.field private mContext:Landroid/content/Context;

.field private mDefaultNetwork:I

.field private mHandler:Lcom/android/server/LinkManager$LMHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/server/LinkManager;->mSocketId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V
    .locals 7
    .parameter "context"
    .parameter "cs"

    .prologue
    const/4 v6, 0x0

    const-string v5, "LinkManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/server/LinkManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/LinkManager$1;-><init>(Lcom/android/server/LinkManager;)V

    iput-object v3, p0, Lcom/android/server/LinkManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "LinkManager"

    const-string v3, "LinkManager constructor"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/LinkManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/LinkManager;->mConnectivityService:Lcom/android/server/ConnectivityService;

    new-instance v3, Lcom/android/server/CarrierProfile;

    invoke-direct {v3}, Lcom/android/server/CarrierProfile;-><init>()V

    iput-object v3, p0, Lcom/android/server/LinkManager;->mCarrierProfile:Lcom/android/server/CarrierProfile;

    const-string v3, "persist.cne.loc.policy.op"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, carrierPolicyFilename:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LinkManager;->mCarrierProfile:Lcom/android/server/CarrierProfile;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/CarrierProfile;->parse(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/server/LinkManager;->mCarrierProfile:Lcom/android/server/CarrierProfile;

    invoke-virtual {v3, v6}, Lcom/android/server/CarrierProfile;->getPreferredNetworks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/server/LinkManager;->mDefaultNetwork:I

    const-string v3, "LinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default network = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/LinkManager;->mDefaultNetwork:I

    invoke-direct {p0, v4}, Lcom/android/server/LinkManager;->networkIntToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/LinkManager;->mConnectivityService:Lcom/android/server/ConnectivityService;

    iget v4, p0, Lcom/android/server/LinkManager;->mDefaultNetwork:I

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService;->setDefaultRoute(I)V

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "LMHandler"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/LinkManager;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/android/server/LinkManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/android/server/LinkManager$LMHandler;

    iget-object v4, p0, Lcom/android/server/LinkManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/LinkManager$LMHandler;-><init>(Lcom/android/server/LinkManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/LinkManager;->mHandler:Lcom/android/server/LinkManager$LMHandler;

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/LinkManager;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/server/LinkManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/server/LinkManager;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/LinkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .local v2, filter:Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/LinkManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .end local v2           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v3, "LinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Carrier Policy file not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/LinkManager;)Lcom/android/server/LinkManager$LMHandler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LinkManager;->mHandler:Lcom/android/server/LinkManager$LMHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LinkManager;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LinkManager;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LinkManager;->roleStringToInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/LinkManager;)Lcom/android/server/CarrierProfile;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LinkManager;->mCarrierProfile:Lcom/android/server/CarrierProfile;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LinkManager;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LinkManager;->isNetworkConnected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/LinkManager;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LinkManager;->networkIntToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/LinkManager;I)Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LinkManager;->propertiesForNetwork(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/LinkManager;)Lcom/android/server/ConnectivityService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LinkManager;->mConnectivityService:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/LinkManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/LinkManager;->mDefaultNetwork:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/LinkManager;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LinkManager;->networkStringToInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static declared-synchronized getNextSocketId()I
    .locals 3

    .prologue
    const-class v0, Lcom/android/server/LinkManager;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/LinkManager;->mSocketId:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    sput v1, Lcom/android/server/LinkManager;->mSocketId:I

    :cond_0
    sget v1, Lcom/android/server/LinkManager;->mSocketId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/server/LinkManager;->mSocketId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getWlanProperties()Landroid/net/LinkProperties;
    .locals 11

    .prologue
    const-string v10, "LinkManager"

    const-string v9, "."

    new-instance v6, Landroid/net/LinkProperties;

    invoke-direct {v6}, Landroid/net/LinkProperties;-><init>()V

    .local v6, props:Landroid/net/LinkProperties;
    const/4 v3, 0x0

    .local v3, ipAddr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/LinkManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .local v0, dhcpInfo:Landroid/net/DhcpInfo;
    if-nez v0, :cond_0

    const-string v7, "LinkManager"

    const-string v7, "DhcpInfo is null. V4 address is not yet available."

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v6

    :cond_0
    iget v4, v0, Landroid/net/DhcpInfo;->ipAddress:I

    .local v4, ipAddressInt:I
    if-eqz v4, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v8, v4, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .local v2, inetAddr:Ljava/net/InetAddress;
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v5

    .local v5, netIface:Ljava/net/NetworkInterface;
    invoke-virtual {v6, v2}, Landroid/net/LinkProperties;->addAddress(Ljava/net/InetAddress;)V

    invoke-virtual {v6, v5}, Landroid/net/LinkProperties;->setInterface(Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v2           #inetAddr:Ljava/net/InetAddress;
    .end local v5           #netIface:Ljava/net/NetworkInterface;
    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/net/UnknownHostException;
    const-string v7, "LinkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getWlanProperties: Invalid host name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/net/SocketException;
    const-string v7, "LinkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not get network interface for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getWwanProperties()Landroid/net/LinkProperties;
    .locals 10

    .prologue
    const-string v9, "default"

    const-string v8, "LinkManager"

    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    .local v5, props:Landroid/net/LinkProperties;
    iget-object v6, p0, Lcom/android/server/LinkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v6, :cond_0

    const-string v6, "LinkManager"

    const-string v6, "mTelephonyManager is null"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v5

    :cond_0
    iget-object v6, p0, Lcom/android/server/LinkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v7, "default"

    sget-object v7, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v6, v9, v7}, Landroid/telephony/TelephonyManager;->getActiveInterfaceName(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v3

    .local v3, interfaceName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/LinkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v7, "default"

    sget-object v7, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v6, v9, v7}, Landroid/telephony/TelephonyManager;->getActiveIpAddress(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Ljava/lang/String;

    move-result-object v1

    .local v1, addressString:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v4

    .local v4, networkInterface:Ljava/net/NetworkInterface;
    invoke-virtual {v5, v4}, Landroid/net/LinkProperties;->setInterface(Ljava/net/NetworkInterface;)V

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .local v0, address:Ljava/net/InetAddress;
    invoke-virtual {v5, v0}, Landroid/net/LinkProperties;->addAddress(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v0           #address:Ljava/net/InetAddress;
    .end local v4           #networkInterface:Ljava/net/NetworkInterface;
    :catch_0
    move-exception v6

    move-object v2, v6

    .local v2, e:Ljava/net/UnknownHostException;
    const-string v6, "LinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWwanProperties: Invalid host name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v6

    move-object v2, v6

    .local v2, e:Ljava/net/SocketException;
    const-string v6, "LinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not get network interface for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNetworkConnected(I)Z
    .locals 4
    .parameter "networkType"

    .prologue
    const-string v1, "LinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNetworkConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/server/LinkManager;->networkIntToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/LinkManager;->mConnectivityService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1, p1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1
.end method

.method private networkIntToString(I)Ljava/lang/String;
    .locals 2
    .parameter "network"

    .prologue
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "WiFi"

    goto :goto_0

    :pswitch_1
    const-string v0, "Mobile"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private networkStringToInt(Ljava/lang/String;)I
    .locals 4
    .parameter "network"

    .prologue
    const-string v3, "LinkManager"

    const/4 v0, -0x1

    .local v0, networkInt:I
    if-nez p1, :cond_0

    const-string v1, "LinkManager"

    const-string v1, "networkStringToInt: null string"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "LinkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkStringToInt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "WLAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "WWAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mobile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v1, "LinkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a known network name."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private propertiesForNetwork(I)Landroid/net/LinkProperties;
    .locals 1
    .parameter "assignedNetwork"

    .prologue
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/LinkManager;->getWwanProperties()Landroid/net/LinkProperties;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/LinkManager;->getWlanProperties()Landroid/net/LinkProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private roleStringToInt(Ljava/lang/String;)I
    .locals 4
    .parameter "roleString"

    .prologue
    const/4 v0, 0x0

    .local v0, roleInt:I
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "video_streaming_1080p"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "web_browser"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v1, "LinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a known role."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAvailableForwardBandwidth(I)I
    .locals 1
    .parameter "id"

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public getAvailableReverseBandwidth(I)I
    .locals 1
    .parameter "id"

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentLatency(I)I
    .locals 1
    .parameter "id"

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public getFmcStatus(Landroid/os/IBinder;)Z
    .locals 1
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getLink_LP(ILjava/util/Map;ILandroid/os/IBinder;)Z
    .locals 1
    .parameter "role"
    .parameter
    .parameter "mPid"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Landroid/net/LinkProvider$LinkRequirement;",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/IBinder;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, linkReqs:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/LinkProvider$LinkRequirement;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkType(I)I
    .locals 5
    .parameter "id"

    .prologue
    const/4 v1, -0x1

    .local v1, netType:I
    iget-object v2, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LinkManager$LinkSocketInfo;

    .local v0, info:Lcom/android/server/LinkManager$LinkSocketInfo;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/LinkManager$LinkSocketInfo;

    iget v1, p0, Lcom/android/server/LinkManager$LinkSocketInfo;->assignedNetwork:I

    :goto_0
    return v1

    .restart local p0
    :cond_0
    const-string v2, "LinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkType called with invalid id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public rejectSwitch_LP(IILandroid/net/LinkInfo;Z)Z
    .locals 1
    .parameter "role"
    .parameter "mPid"
    .parameter "info"
    .parameter "isNotifyBetterLink"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public releaseLink(I)V
    .locals 5
    .parameter "id"

    .prologue
    const-string v2, "LinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseLink id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LinkManager$LinkSocketInfo;

    .local v1, removed:Lcom/android/server/LinkManager$LinkSocketInfo;
    iget-object v2, p0, Lcom/android/server/LinkManager;->mHandler:Lcom/android/server/LinkManager$LMHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/android/server/LinkManager$LMHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public releaseLink_LP(II)Z
    .locals 1
    .parameter "role"
    .parameter "mPid"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public reportLinkSatisfaction_LP(IILandroid/net/LinkInfo;ZZ)Z
    .locals 1
    .parameter "role"
    .parameter "mPid"
    .parameter "info"
    .parameter "isSatisfied"
    .parameter "isNotifyBetterCon"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public requestLink(Landroid/net/LinkCapabilities;Landroid/os/IBinder;)I
    .locals 7
    .parameter "capabilities"
    .parameter "binder"

    .prologue
    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/LinkManager;->getNextSocketId()I

    move-result v0

    .local v0, id:I
    const-string v3, "LinkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestLink capabilities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/LinkManager$LinkSocketInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/LinkManager$LinkSocketInfo;-><init>(Lcom/android/server/LinkManager;Lcom/android/server/LinkManager$1;)V

    .local v1, info:Lcom/android/server/LinkManager$LinkSocketInfo;
    iput v0, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->id:I

    iput-object p1, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->capabilities:Landroid/net/LinkCapabilities;

    invoke-static {p2}, Landroid/net/ILinkSocketMessageHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ILinkSocketMessageHandler;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->callback:Landroid/net/ILinkSocketMessageHandler;

    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->assignedNetwork:I

    iput v6, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->status:I

    iget-object v3, p0, Lcom/android/server/LinkManager;->mActiveLinks:Ljava/util/Map;

    iget v4, v1, Lcom/android/server/LinkManager$LinkSocketInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/LinkManager;->mHandler:Lcom/android/server/LinkManager$LMHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0, v6}, Lcom/android/server/LinkManager$LMHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return v0
.end method

.method public sendDefaultNwPref2Cne(I)V
    .locals 0
    .parameter "preference"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/LinkManager;->setDefaultConnectionNwPref(I)V

    return-void
.end method

.method public setDefaultConnectionNwPref(I)V
    .locals 3
    .parameter "preference"

    .prologue
    const-string v0, "LinkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultConnectionNwPref "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ignored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startFmc(Landroid/os/IBinder;)Z
    .locals 1
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public stopFmc(Landroid/os/IBinder;)Z
    .locals 1
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public switchLink_LP(IILandroid/net/LinkInfo;Z)Z
    .locals 1
    .parameter "role"
    .parameter "mPid"
    .parameter "info"
    .parameter "isNotifyBetterLink"

    .prologue
    const/4 v0, 0x0

    return v0
.end method
