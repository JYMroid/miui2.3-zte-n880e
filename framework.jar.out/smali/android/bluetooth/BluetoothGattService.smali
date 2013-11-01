.class public Landroid/bluetooth/BluetoothGattService;
.super Ljava/lang/Object;
.source "BluetoothGattService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothGattService"


# instance fields
.field private characteristicPaths:[Ljava/lang/String;

.field private discoveryDone:Z

.field private final mCharacteristicProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mHelper:Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;

.field private mName:Ljava/lang/String;

.field private mObjPath:Ljava/lang/String;

.field private mUuid:Landroid/os/ParcelUuid;

.field private watcherRegistered:Z


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 2
    .parameter "device"
    .parameter "uuid"
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mName:Ljava/lang/String;

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->watcherRegistered:Z

    iput-object v1, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->discoveryDone:Z

    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Landroid/os/ParcelUuid;

    iput-object p3, p0, Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristicProperties:Ljava/util/HashMap;

    new-instance v0, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;-><init>(Landroid/bluetooth/BluetoothGattService;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->doDiscovery()Z

    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothGattService;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothGattService;->addCharacteristicProperties(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Landroid/bluetooth/BluetoothGattService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothGattService;->discoveryDone:Z

    return p1
.end method

.method private addCharacteristicProperties(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "path"
    .parameter "properties"

    .prologue
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristicProperties:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .local v3, propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    .end local v3           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .restart local v3       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_2

    aget-object v1, p2, v0

    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, newValue:Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Gatt Characterisitc Property at index"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    aget-object v2, p2, v0

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v1           #name:Ljava/lang/String;
    .end local v2           #newValue:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristicProperties:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .parameter "property"

    .prologue
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristicProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .local v0, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deregisterWatcher()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->watcherRegistered:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->watcherRegistered:Z

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->deregisterCharacteristicsWatcher()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getCharacteristicDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->discoveryDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->waitDiscoveryDone()V

    :cond_0
    const-string v0, "Description"

    invoke-direct {p0, p1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharacteristicUuid(Ljava/lang/String;)Landroid/os/ParcelUuid;
    .locals 5
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .local v0, uuid:Landroid/os/ParcelUuid;
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothGattService;->discoveryDone:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->waitDiscoveryDone()V

    :cond_0
    const-string v2, "UUID"

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Characteristic UUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public getCharacteristicUuids()[Landroid/os/ParcelUuid;
    .locals 8

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, uuidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    iget-boolean v5, p0, Landroid/bluetooth/BluetoothGattService;->discoveryDone:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->waitDiscoveryDone()V

    :cond_0
    iget-object v5, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    iget-object v5, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    array-length v0, v5

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v5, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "UUID"

    invoke-direct {p0, v5, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v5, "BluetoothGattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Characteristic UUID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4           #value:Ljava/lang/String;
    :cond_3
    new-array v3, v0, [Landroid/os/ParcelUuid;

    .local v3, uuids:[Landroid/os/ParcelUuid;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v5, v3

    goto :goto_0
.end method

.method public getCharacteristics()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->discoveryDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->waitDiscoveryDone()V

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mName:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v1

    .local v1, service:Landroid/bluetooth/IBluetooth;
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->getGattServiceName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getServiceUuid()Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public readCharacteristicRaw(Ljava/lang/String;)[B
    .locals 3
    .parameter "path"

    .prologue
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothGattService;->discoveryDone:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->waitDiscoveryDone()V

    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const-string v2, "Value"

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, ret:[B
    move-object v2, v0

    goto :goto_0
.end method

.method public readCharacteristicString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothGattService;->discoveryDone:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->waitDiscoveryDone()V

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const-string v1, "Representation"

    invoke-direct {p0, p1, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, value:Ljava/lang/String;
    move-object v1, v0

    goto :goto_0
.end method

.method public registerWatcher()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->watcherRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService$CharacteristicHelper;->registerCharacteristicsWatcher()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->watcherRegistered:Z

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->watcherRegistered:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
