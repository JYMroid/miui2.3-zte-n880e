.class public abstract Lcom/android/internal/atfwd/IAtCmdFwd$Stub;
.super Landroid/os/Binder;
.source "IAtCmdFwd.java"

# interfaces
.implements Lcom/android/internal/atfwd/IAtCmdFwd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/atfwd/IAtCmdFwd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/atfwd/IAtCmdFwd$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.atfwd.IAtCmdFwd"

.field static final TRANSACTION_processAtCmd:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.atfwd.IAtCmdFwd"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/atfwd/IAtCmdFwd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/atfwd/IAtCmdFwd;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.android.internal.atfwd.IAtCmdFwd"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/atfwd/IAtCmdFwd;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/atfwd/IAtCmdFwd;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/atfwd/IAtCmdFwd$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/atfwd/IAtCmdFwd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const-string v4, "com.android.internal.atfwd.IAtCmdFwd"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v2, "com.android.internal.atfwd.IAtCmdFwd"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "com.android.internal.atfwd.IAtCmdFwd"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/atfwd/AtCmd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/atfwd/AtCmd;

    .local v0, _arg0:Lcom/android/internal/atfwd/AtCmd;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/atfwd/IAtCmdFwd$Stub;->processAtCmd(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;

    move-result-object v1

    .local v1, _result:Lcom/android/internal/atfwd/AtCmdResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v3}, Lcom/android/internal/atfwd/AtCmdResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v2, v3

    goto :goto_0

    .end local v0           #_arg0:Lcom/android/internal/atfwd/AtCmd;
    .end local v1           #_result:Lcom/android/internal/atfwd/AtCmdResponse;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/internal/atfwd/AtCmd;
    goto :goto_1

    .restart local v1       #_result:Lcom/android/internal/atfwd/AtCmdResponse;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
