.class public abstract Landroid/net/ILinkSocketMessageHandler$Stub;
.super Landroid/os/Binder;
.source "ILinkSocketMessageHandler.java"

# interfaces
.implements Landroid/net/ILinkSocketMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ILinkSocketMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ILinkSocketMessageHandler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.ILinkSocketMessageHandler"

.field static final TRANSACTION_onBetterLinkAvail:I = 0x3

.field static final TRANSACTION_onCapabilitiesChanged:I = 0x5

.field static final TRANSACTION_onGetLinkFailure:I = 0x2

.field static final TRANSACTION_onLinkAvail:I = 0x1

.field static final TRANSACTION_onLinkLost:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.ILinkSocketMessageHandler"

    invoke-virtual {p0, p0, v0}, Landroid/net/ILinkSocketMessageHandler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ILinkSocketMessageHandler;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.net.ILinkSocketMessageHandler"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/ILinkSocketMessageHandler;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/ILinkSocketMessageHandler;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/ILinkSocketMessageHandler$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/ILinkSocketMessageHandler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    const-string v3, "android.net.ILinkSocketMessageHandler"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v1, "android.net.ILinkSocketMessageHandler"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "android.net.ILinkSocketMessageHandler"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    .local v0, _arg0:Landroid/net/LinkProperties;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/ILinkSocketMessageHandler$Stub;->onLinkAvail(Landroid/net/LinkProperties;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    goto :goto_0

    .end local v0           #_arg0:Landroid/net/LinkProperties;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/LinkProperties;
    goto :goto_1

    .end local v0           #_arg0:Landroid/net/LinkProperties;
    :sswitch_2
    const-string v1, "android.net.ILinkSocketMessageHandler"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/ILinkSocketMessageHandler$Stub;->onGetLinkFailure(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    goto :goto_0

    .end local v0           #_arg0:I
    :sswitch_3
    const-string v1, "android.net.ILinkSocketMessageHandler"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/ILinkSocketMessageHandler$Stub;->onBetterLinkAvail()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    goto :goto_0

    :sswitch_4
    const-string v1, "android.net.ILinkSocketMessageHandler"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/ILinkSocketMessageHandler$Stub;->onLinkLost()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    goto :goto_0

    :sswitch_5
    const-string v1, "android.net.ILinkSocketMessageHandler"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/net/LinkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkCapabilities;

    .local v0, _arg0:Landroid/net/LinkCapabilities;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/ILinkSocketMessageHandler$Stub;->onCapabilitiesChanged(Landroid/net/LinkCapabilities;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    goto :goto_0

    .end local v0           #_arg0:Landroid/net/LinkCapabilities;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/LinkCapabilities;
    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
