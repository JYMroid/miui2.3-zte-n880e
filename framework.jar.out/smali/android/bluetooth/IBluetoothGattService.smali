.class public interface abstract Landroid/bluetooth/IBluetoothGattService;
.super Ljava/lang/Object;
.source "IBluetoothGattService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattService$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCharacteristicsDiscovered([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
