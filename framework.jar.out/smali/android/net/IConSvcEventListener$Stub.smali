.class public abstract Landroid/net/IConSvcEventListener$Stub;
.super Landroid/os/Binder;
.source "IConSvcEventListener.java"

# interfaces
.implements Landroid/net/IConSvcEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConSvcEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConSvcEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConSvcEventListener"

.field static final TRANSACTION_onBetterLinkAvail:I = 0x2

.field static final TRANSACTION_onGetLinkFailure:I = 0x4

.field static final TRANSACTION_onLinkAvail:I = 0x1

.field static final TRANSACTION_onLinkLost:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.IConSvcEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConSvcEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConSvcEventListener;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.net.IConSvcEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConSvcEventListener;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/IConSvcEventListener;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/IConSvcEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConSvcEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v3, "android.net.IConSvcEventListener"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v1, "android.net.IConSvcEventListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "android.net.IConSvcEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/LinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkInfo;

    .local v0, _arg0:Landroid/net/LinkInfo;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/IConSvcEventListener$Stub;->onLinkAvail(Landroid/net/LinkInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Landroid/net/LinkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v1, v2

    goto :goto_0

    .end local v0           #_arg0:Landroid/net/LinkInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/LinkInfo;
    goto :goto_1

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .end local v0           #_arg0:Landroid/net/LinkInfo;
    :sswitch_2
    const-string v1, "android.net.IConSvcEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/net/LinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkInfo;

    .restart local v0       #_arg0:Landroid/net/LinkInfo;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/net/IConSvcEventListener$Stub;->onBetterLinkAvail(Landroid/net/LinkInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Landroid/net/LinkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v1, v2

    goto :goto_0

    .end local v0           #_arg0:Landroid/net/LinkInfo;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/LinkInfo;
    goto :goto_3

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .end local v0           #_arg0:Landroid/net/LinkInfo;
    :sswitch_3
    const-string v1, "android.net.IConSvcEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/net/LinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkInfo;

    .restart local v0       #_arg0:Landroid/net/LinkInfo;
    :goto_5
    invoke-virtual {p0, v0}, Landroid/net/IConSvcEventListener$Stub;->onLinkLost(Landroid/net/LinkInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Landroid/net/LinkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    move v1, v2

    goto :goto_0

    .end local v0           #_arg0:Landroid/net/LinkInfo;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/LinkInfo;
    goto :goto_5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .end local v0           #_arg0:Landroid/net/LinkInfo;
    :sswitch_4
    const-string v1, "android.net.IConSvcEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConSvcEventListener$Stub;->onGetLinkFailure(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
