.class Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;
.super Landroid/bluetooth/IBluetoothGattService$Stub;
.source "BluetoothGattService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothGattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharacteristicHelper"
.end annotation


# instance fields
.field private final mService:Landroid/bluetooth/IBluetooth;

.field final synthetic this$0:Landroid/bluetooth/BluetoothGattService;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGattService;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattService$Stub;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->mService:Landroid/bluetooth/IBluetooth;

    return-void
.end method


# virtual methods
.method public declared-synchronized deregisterCharacteristicsWatcher()Z
    .locals 3

    .prologue
    const-string v1, "BluetoothGattService"

    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothGattService"

    const-string v2, "registerCharacteristicsWatcher: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattService;->access$000(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->deregisterCharacteristicsWatcher(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "BluetoothGattService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public doDiscovery()Z
    .locals 4

    .prologue
    const-string v3, "BluetoothGattService"

    const-string v1, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doDiscovery "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattService;->access$000(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattService;->access$000(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Landroid/bluetooth/IBluetooth;->discoverCharacteristics(Ljava/lang/String;Landroid/bluetooth/IBluetoothGattService;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothGattService"

    const-string v1, ""

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onCharacteristicsDiscovered([Ljava/lang/String;)V
    .locals 7
    .parameter "paths"

    .prologue
    const-string v4, "BluetoothGattService"

    monitor-enter p0

    :try_start_0
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCharacteristicsDiscovered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    array-length v0, p1

    .local v0, count:I
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discovered  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " characteristics for service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;
    invoke-static {v6}, Landroid/bluetooth/BluetoothGattService;->access$000(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mName:Ljava/lang/String;
    invoke-static {v6}, Landroid/bluetooth/BluetoothGattService;->access$100(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #setter for: Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;
    invoke-static {v4, p1}, Landroid/bluetooth/BluetoothGattService;->access$202(Landroid/bluetooth/BluetoothGattService;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    const/4 v3, 0x0

    .local v3, properties:[Ljava/lang/String;
    :try_start_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->mService:Landroid/bluetooth/IBluetooth;

    aget-object v5, p1, v2

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetooth;->getCharacteristicProperties(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_1

    :try_start_3
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    aget-object v5, p1, v2

    #calls: Landroid/bluetooth/BluetoothGattService;->addCharacteristicProperties(Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v4, v5, v3}, Landroid/bluetooth/BluetoothGattService;->access$300(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "BluetoothGattService"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .end local v0           #count:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    .end local v3           #properties:[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0       #count:I
    .restart local v2       #i:I
    :cond_2
    :try_start_4
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    const/4 v5, 0x1

    #setter for: Landroid/bluetooth/BluetoothGattService;->discoveryDone:Z
    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothGattService;->access$402(Landroid/bluetooth/BluetoothGattService;Z)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized registerCharacteristicsWatcher()Z
    .locals 3

    .prologue
    const-string v1, "BluetoothGattService"

    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothGattService"

    const-string v2, "registerCharacteristicsWatcher: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattService;->access$000(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->registerCharacteristicsWatcher(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "BluetoothGattService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized waitDiscoveryDone()V
    .locals 2

    .prologue
    monitor-enter p0

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
