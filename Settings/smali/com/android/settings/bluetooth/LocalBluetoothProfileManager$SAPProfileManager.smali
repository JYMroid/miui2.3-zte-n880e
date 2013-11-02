.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SAPProfileManager;
.super Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SAPProfileManager"
.end annotation


# instance fields
.field private mConnected:I

.field private mService:Landroid/bluetooth/BluetoothSap;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .locals 1
    .parameter "localManager"

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 580
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SAPProfileManager;->mConnected:I

    .line 585
    new-instance v0, Landroid/bluetooth/BluetoothSap;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothSap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SAPProfileManager;->mService:Landroid/bluetooth/BluetoothSap;

    .line 586
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public convertState(I)I
    .locals 3
    .parameter "state"

    .prologue
    .line 644
    const-string v0, "LocalBluetoothProfileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConvertState of SAP   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SAPProfileManager;->mConnected:I

    if-eq v0, p1, :cond_0

    .line 648
    iput p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SAPProfileManager;->mConnected:I

    .line 650
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 656
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 652
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 654
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 601
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Disconnect the SAP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SAPProfileManager;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSap;->disconnect()Z

    move-result v0

    return v0
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 607
    iget v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SAPProfileManager;->mConnected:I

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SAPProfileManager;->convertState(I)I

    move-result v0

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 630
    const/4 v0, -0x1

    return v0
.end method

.method public getSummary(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SAPProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 614
    .local v0, connectionStatus:I
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "SAP getSummary"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    const v1, 0x7f08014b

    .line 618
    :goto_0
    return v1

    :cond_0
    const v1, 0x7f08014b

    goto :goto_0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 625
    const/4 v0, 0x1

    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x1

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .parameter "device"
    .parameter "preferred"

    .prologue
    .line 635
    return-void
.end method
