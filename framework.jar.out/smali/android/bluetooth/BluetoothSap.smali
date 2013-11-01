.class public Landroid/bluetooth/BluetoothSap;
.super Ljava/lang/Object;
.source "BluetoothSap.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothSap"


# instance fields
.field private mService:Landroid/bluetooth/IBluetooth;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "bluetooth"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetooth;

    :goto_0
    return-void

    :cond_0
    const-string v1, "BluetoothSap"

    const-string v2, "Failed to get the Bluetooth Interface"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public disconnect()Z
    .locals 3

    .prologue
    const-string v2, "BluetoothSap"

    const-string v1, "BluetoothSap"

    const-string v1, "->disconnect"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disconnectSap()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothSap"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
