.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x3

.field static final TRANSACTION_getAllNetworkInfo:I = 0x5

.field static final TRANSACTION_getBackgroundDataSetting:I = 0xc

.field static final TRANSACTION_getFmcStatus:I = 0x25

.field static final TRANSACTION_getLastTetherError:I = 0x12

.field static final TRANSACTION_getLink_LP:I = 0x1e

.field static final TRANSACTION_getMobileDataEnabled:I = 0xe

.field static final TRANSACTION_getNetworkInfo:I = 0x4

.field static final TRANSACTION_getNetworkPreference:I = 0x2

.field static final TRANSACTION_getTetherableIfaces:I = 0x14

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x17

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x18

.field static final TRANSACTION_getTetheredIfaces:I = 0x15

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x16

.field static final TRANSACTION_isTetheringSupported:I = 0x13

.field static final TRANSACTION_rejectSwitch_LP:I = 0x22

.field static final TRANSACTION_releaseLink:I = 0x1b

.field static final TRANSACTION_releaseLink_LP:I = 0x20

.field static final TRANSACTION_reportInetCondition:I = 0x19

.field static final TRANSACTION_reportLinkSatisfaction_LP:I = 0x1f

.field static final TRANSACTION_requestCapabilities:I = 0x1c

.field static final TRANSACTION_requestLink:I = 0x1a

.field static final TRANSACTION_requestRouteToHost:I = 0xa

.field static final TRANSACTION_requestRouteToHostAddress:I = 0xb

.field static final TRANSACTION_setBackgroundDataSetting:I = 0xd

.field static final TRANSACTION_setMobileDataEnabled:I = 0xf

.field static final TRANSACTION_setNetworkPreference:I = 0x1

.field static final TRANSACTION_setRadio:I = 0x7

.field static final TRANSACTION_setRadios:I = 0x6

.field static final TRANSACTION_setTrackedCapabilities:I = 0x1d

.field static final TRANSACTION_startFmc:I = 0x23

.field static final TRANSACTION_startUsingNetworkFeature:I = 0x8

.field static final TRANSACTION_stopFmc:I = 0x24

.field static final TRANSACTION_stopUsingNetworkFeature:I = 0x9

.field static final TRANSACTION_switchLink_LP:I = 0x21

.field static final TRANSACTION_tether:I = 0x10

.field static final TRANSACTION_untether:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/IConnectivityManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/IConnectivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v9, "android.net.IConnectivityManager"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    goto :goto_0

    :sswitch_1
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setNetworkPreference(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto :goto_0

    .end local v1           #_arg0:I
    :sswitch_2
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getNetworkPreference()I

    move-result v6

    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto :goto_0

    .end local v6           #_result:I
    :sswitch_3
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .local v6, _result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_0

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v8}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v8

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v6           #_result:Landroid/net/NetworkInfo;
    :sswitch_4
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .restart local v6       #_result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v8}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v8

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .end local v1           #_arg0:I
    .end local v6           #_result:Landroid/net/NetworkInfo;
    :sswitch_5
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v6

    .local v6, _result:[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v0, v8

    goto :goto_0

    .end local v6           #_result:[Landroid/net/NetworkInfo;
    :sswitch_6
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v8

    .local v1, _arg0:Z
    :goto_3
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setRadios(Z)Z

    move-result v6

    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_3

    move v0, v8

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_2
    move v1, v10

    goto :goto_3

    .restart local v1       #_arg0:Z
    .restart local v6       #_result:Z
    :cond_3
    move v0, v10

    goto :goto_4

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :sswitch_7
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v2, v8

    .local v2, _arg1:Z
    :goto_5
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setRadio(IZ)Z

    move-result v6

    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_5

    move v0, v8

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_4
    move v2, v10

    goto :goto_5

    .restart local v2       #_arg1:Z
    .restart local v6       #_result:Z
    :cond_5
    move v0, v10

    goto :goto_6

    .end local v1           #_arg0:I
    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :sswitch_8
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v6

    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/IBinder;
    .end local v6           #_result:I
    :sswitch_9
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v6

    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHost(II)Z

    move-result v6

    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_6

    move v0, v8

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    :cond_6
    move v0, v10

    goto :goto_7

    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(ILjava/lang/String;)Z

    move-result v6

    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_7

    move v0, v8

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    :cond_7
    move v0, v10

    goto :goto_8

    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getBackgroundDataSetting()Z

    move-result v6

    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_8

    move v0, v8

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    :cond_8
    move v0, v10

    goto :goto_9

    .end local v6           #_result:Z
    :sswitch_d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v1, v8

    .local v1, _arg0:Z
    :goto_a
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setBackgroundDataSetting(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_9
    move v1, v10

    goto :goto_a

    :sswitch_e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabled()Z

    move-result v6

    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_a

    move v0, v8

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    :cond_a
    move v0, v10

    goto :goto_b

    .end local v6           #_result:Z
    :sswitch_f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v1, v8

    .restart local v1       #_arg0:Z
    :goto_c
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->setMobileDataEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_b
    move v1, v10

    goto :goto_c

    :sswitch_10
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v6

    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_11
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v6

    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_12
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v6

    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_13
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v6

    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_c

    move v0, v8

    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    :cond_c
    move v0, v10

    goto :goto_d

    .end local v6           #_result:Z
    :sswitch_14
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v6

    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    goto/16 :goto_0

    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_15
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    goto/16 :goto_0

    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_16
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    goto/16 :goto_0

    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_17
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    goto/16 :goto_0

    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_18
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    goto/16 :goto_0

    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_19
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_1a
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroid/net/LinkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkCapabilities;

    .local v1, _arg0:Landroid/net/LinkCapabilities;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestLink(Landroid/net/LinkCapabilities;Landroid/os/IBinder;)I

    move-result v6

    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/net/LinkCapabilities;
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v6           #_result:I
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/LinkCapabilities;
    goto :goto_e

    .end local v1           #_arg0:Landroid/net/LinkCapabilities;
    :sswitch_1b
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->releaseLink(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    .end local v1           #_arg0:I
    :sswitch_1c
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .local v2, _arg1:[I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestCapabilities(I[I)Landroid/net/LinkCapabilities;

    move-result-object v6

    .local v6, _result:Landroid/net/LinkCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_e

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v8}, Landroid/net/LinkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_f
    move v0, v8

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .end local v1           #_arg0:I
    .end local v2           #_arg1:[I
    .end local v6           #_result:Landroid/net/LinkCapabilities;
    :sswitch_1d
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .restart local v2       #_arg1:[I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setTrackedCapabilities(I[I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v2           #_arg1:[I
    :sswitch_1e
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .local v7, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .local v2, _arg1:Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .local v4, _arg3:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->getLink_LP(ILjava/util/Map;ILandroid/os/IBinder;)Z

    move-result v6

    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_f

    move v0, v8

    :goto_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    :cond_f
    move v0, v10

    goto :goto_10

    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/util/Map;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Landroid/os/IBinder;
    .end local v6           #_result:Z
    .end local v7           #cl:Ljava/lang/ClassLoader;
    :sswitch_1f
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Landroid/net/LinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkInfo;

    .local v3, _arg2:Landroid/net/LinkInfo;
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    move v4, v8

    .local v4, _arg3:Z
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    move v5, v8

    .local v5, _arg4:Z
    :goto_13
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/IConnectivityManager$Stub;->reportLinkSatisfaction_LP(IILandroid/net/LinkInfo;ZZ)Z

    move-result v6

    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_13

    move v0, v8

    :goto_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    .end local v3           #_arg2:Landroid/net/LinkInfo;
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v6           #_result:Z
    :cond_10
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/net/LinkInfo;
    goto :goto_11

    :cond_11
    move v4, v10

    goto :goto_12

    .restart local v4       #_arg3:Z
    :cond_12
    move v5, v10

    goto :goto_13

    .restart local v5       #_arg4:Z
    .restart local v6       #_result:Z
    :cond_13
    move v0, v10

    goto :goto_14

    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/net/LinkInfo;
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v6           #_result:Z
    :sswitch_20
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->releaseLink_LP(II)Z

    move-result v6

    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_14

    move v0, v8

    :goto_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    :cond_14
    move v0, v10

    goto :goto_15

    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_21
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Landroid/net/LinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkInfo;

    .restart local v3       #_arg2:Landroid/net/LinkInfo;
    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    move v4, v8

    .restart local v4       #_arg3:Z
    :goto_17
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->switchLink_LP(IILandroid/net/LinkInfo;Z)Z

    move-result v6

    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_17

    move v0, v8

    :goto_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    .end local v3           #_arg2:Landroid/net/LinkInfo;
    .end local v4           #_arg3:Z
    .end local v6           #_result:Z
    :cond_15
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/net/LinkInfo;
    goto :goto_16

    :cond_16
    move v4, v10

    goto :goto_17

    .restart local v4       #_arg3:Z
    .restart local v6       #_result:Z
    :cond_17
    move v0, v10

    goto :goto_18

    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/net/LinkInfo;
    .end local v4           #_arg3:Z
    .end local v6           #_result:Z
    :sswitch_22
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Landroid/net/LinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkInfo;

    .restart local v3       #_arg2:Landroid/net/LinkInfo;
    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    move v4, v8

    .restart local v4       #_arg3:Z
    :goto_1a
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->rejectSwitch_LP(IILandroid/net/LinkInfo;Z)Z

    move-result v6

    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1a

    move v0, v8

    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    .end local v3           #_arg2:Landroid/net/LinkInfo;
    .end local v4           #_arg3:Z
    .end local v6           #_result:Z
    :cond_18
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/net/LinkInfo;
    goto :goto_19

    :cond_19
    move v4, v10

    goto :goto_1a

    .restart local v4       #_arg3:Z
    .restart local v6       #_result:Z
    :cond_1a
    move v0, v10

    goto :goto_1b

    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/net/LinkInfo;
    .end local v4           #_arg3:Z
    .end local v6           #_result:Z
    :sswitch_23
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->startFmc(Landroid/os/IBinder;)Z

    move-result v6

    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1b

    move v0, v8

    :goto_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    :cond_1b
    move v0, v10

    goto :goto_1c

    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v6           #_result:Z
    :sswitch_24
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->stopFmc(Landroid/os/IBinder;)Z

    move-result v6

    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1c

    move v0, v8

    :goto_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    :cond_1c
    move v0, v10

    goto :goto_1d

    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v6           #_result:Z
    :sswitch_25
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityManager$Stub;->getFmcStatus(Landroid/os/IBinder;)Z

    move-result v6

    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1d

    move v0, v8

    :goto_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    goto/16 :goto_0

    :cond_1d
    move v0, v10

    goto :goto_1e

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
