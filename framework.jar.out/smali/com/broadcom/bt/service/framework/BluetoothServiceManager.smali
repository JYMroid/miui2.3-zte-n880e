.class public Lcom/broadcom/bt/service/framework/BluetoothServiceManager;
.super Ljava/lang/Object;
.source "BluetoothServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BluetoothServiceManager"

.field private static _DBG:Z

.field private static mBtServiceMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static mInitialized:Z

.field private static mIsFactoryTest:Z

.field private static mLastBluetoothState:I

.field private static mSystemContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mInitialized:Z

    const/4 v0, -0x1

    sput v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V
    .locals 6
    .parameter "svcName"
    .parameter "svc"

    .prologue
    const-string v5, "null"

    const-string v4, "BluetoothServiceManager"

    const-string v3, ": "

    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    .local v0, isSupported:Z
    sget-boolean v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const-string v1, "BluetoothServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****Bluetooth Service not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_3

    const-string v2, "null"

    move-object v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...Skipping. ****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "BluetoothServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****Registering Bluetooth Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_4

    const-string v2, "null"

    move-object v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;-><init>(Lcom/broadcom/bt/service/framework/IBtService;Z)V

    invoke-virtual {v2, p0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static _startService(Ljava/lang/String;)V
    .locals 6
    .parameter "svcName"

    .prologue
    const-string v5, "***"

    const-string v4, "BluetoothServiceManager"

    if-eqz p0, :cond_0

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Bluetooth service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_2

    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not enabled. Skipping start...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v3, p0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .local v1, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    move-object v1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Unable to find service record for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Skipping...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_4
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not managed by BluetoothServiceManager. Skipping...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    #setter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$102(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;Z)Z

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createBtSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "***"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    monitor-enter v1

    :try_start_2
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->init()V

    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->start()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Done starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "***"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private static _stopService(Ljava/lang/String;)V
    .locals 5
    .parameter "svcName"

    .prologue
    const-string v4, "BluetoothServiceManager"

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***stopService(): Stopping service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    .local v1, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    move-object v1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***stopService(): Unable to find service record for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Skipping...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_3
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***stopService(): Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not managed by Bleutooth Service Manager. Skipping...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    #setter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$102(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;Z)Z

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createBtSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***stopService(): Stop service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-enter v1

    :try_start_2
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->stop()V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public static disableService(Ljava/lang/String;)V
    .locals 5
    .parameter "svcName"

    .prologue
    const-string v3, "BluetoothServiceManager"

    const-string v1, "BluetoothServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***disableService() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "***"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    const-string v2, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***disableService() Service not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_stopService(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static enableService(Ljava/lang/String;)V
    .locals 5
    .parameter "svcName"

    .prologue
    const-string v3, "BluetoothServiceManager"

    const-string v1, "BluetoothServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableService() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    const-string v2, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***enableService(): Service not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_startService(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static declared-synchronized getLastProcessedBtState()I
    .locals 2

    .prologue
    const-class v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;
    .locals 3
    .parameter "svcName"

    .prologue
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v1

    return-object v2

    :cond_0
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    goto :goto_0

    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getServiceEventLoop(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;
    .locals 3
    .parameter "svcName"

    .prologue
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v1

    return-object v2

    :cond_0
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    goto :goto_0

    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getServiceState(Ljava/lang/String;)I
    .locals 2
    .parameter "svcName"

    .prologue
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z
    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$100(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .parameter "systemContext"

    .prologue
    const-class v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mInitialized:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothServiceManager"

    const-string v2, "Bluetooth Service Manager already initialized.....Skipping init()..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sput-object p0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->initSettings()V

    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->registerServices()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static initSettings()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "bt_svcst_init"

    const-string v8, "bt_svcst_"

    const-string v7, "BluetoothServiceManager"

    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "bt_svcst_init"

    invoke-static {v0, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, settingsExist:I
    if-nez v2, :cond_2

    const-string v3, "BluetoothServiceManager"

    const-string v3, "*********Initializing Bluetooth Service Settings*******"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    move v4, v6

    :goto_1
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: isServiceSupported=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";  SERVICES_STARTUP_ENABLED= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    const-string v3, "bt_svcst_init"

    invoke-static {v0, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #i:I
    .end local v2           #settingsExist:I
    :cond_2
    return-void
.end method

.method public static declared-synchronized isInitialized()Z
    .locals 2

    .prologue
    const-class v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static onBluetoothDisabled()V
    .locals 5

    .prologue
    const/16 v4, 0xd

    const-string v3, "BluetoothServiceManager"

    const-string v2, "BluetoothServiceManager"

    const-string v2, "onBluetoothDisabled()"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I

    if-ne v2, v4, :cond_0

    const-string v2, "BluetoothServiceManager"

    const-string v2, "Already processed Bluetooth STATE_TURNING_OFF event..Skipping"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_stopService(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #svcName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput v4, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I

    goto :goto_0
.end method

.method public static declared-synchronized onBluetoothEnabled()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const-string v2, "BluetoothServiceManager"

    const-class v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;

    monitor-enter v2

    :try_start_0
    const-string v3, "BluetoothServiceManager"

    const-string v4, "onBluetoothEnabled()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mIsFactoryTest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    sget v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I

    if-ne v3, v5, :cond_1

    const-string v3, "BluetoothServiceManager"

    const-string v4, "Already processed Bluetooth STATE_ON event..Skipping"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_1
    :try_start_2
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_startService(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #svcName:Ljava/lang/String;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v0       #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v3, 0xc

    :try_start_6
    sput v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mLastBluetoothState:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public static onBluetoothServiceStateChanged(Ljava/lang/String;I)V
    .locals 7
    .parameter "svcName"
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    const-string v5, "BluetoothServiceManager"

    const/4 v1, 0x0

    .local v1, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    move-object v1, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    sget-boolean v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***onBluetoothServiceStateChanged(): Unable to find service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_1
    monitor-enter v1

    const/4 v3, 0x2

    if-ne v3, p1, :cond_3

    const/4 v3, 0x1

    :try_start_2
    #setter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$102(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;Z)Z

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_3
    if-ne v6, p1, :cond_2

    const/4 v3, 0x0

    :try_start_3
    #setter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z
    invoke-static {v1, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$102(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v3, "BluetoothServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finishing service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v3

    if-eqz v3, :cond_2

    #getter for: Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mSvc:Lcom/broadcom/bt/service/framework/IBtService;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v3

    invoke-interface {v3}, Lcom/broadcom/bt/service/framework/IBtService;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, t:Ljava/lang/Throwable;
    :try_start_5
    const-string v3, "BluetoothServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error finishing service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method private static registerServices()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v0, "bluetooth_opp_service"

    new-instance v1, Lcom/broadcom/bt/service/opp/OppEventLoop;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/opp/OppEventLoop;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    const-string v0, "bluetooth_flick"

    invoke-static {v0, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    const-string v0, "bluetooth_ftp"

    new-instance v1, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    const-string v0, "bluetooth_pbap"

    new-instance v1, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    const-string v0, "bluetooth_dun"

    new-instance v1, Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    const-string v0, "bluetooth_sap"

    new-instance v1, Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    const-string v0, "bluetooth_test"

    new-instance v1, Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    const-string v0, "bluetooth_map"

    new-instance v1, Lcom/broadcom/bt/service/map/MapEventLoop;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/map/MapEventLoop;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    const-string v0, "bluetooth_bpp_service"

    invoke-static {v0, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    const-string v0, "bluetooth_avrcp"

    new-instance v1, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    return-void
.end method
