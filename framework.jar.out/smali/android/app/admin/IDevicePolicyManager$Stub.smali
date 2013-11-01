.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_getActiveAdmins:I = 0x10

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x6

.field static final TRANSACTION_getEasEnabled:I = 0x20

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x8

.field static final TRANSACTION_getMaximumTimeToLock:I = 0xb

.field static final TRANSACTION_getMinComplexCharacters:I = 0x1c

.field static final TRANSACTION_getPasswordAgingPeriod:I = 0x18

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordNonRecurring:I = 0x1a

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getRemoveWarning:I = 0x12

.field static final TRANSACTION_getValidatePassword:I = 0x1e

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x5

.field static final TRANSACTION_isAdminActive:I = 0xf

.field static final TRANSACTION_lockNow:I = 0xc

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x11

.field static final TRANSACTION_removeActiveAdmin:I = 0x13

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x15

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x16

.field static final TRANSACTION_resetPassword:I = 0x9

.field static final TRANSACTION_setActiveAdmin:I = 0xe

.field static final TRANSACTION_setActivePasswordState:I = 0x14

.field static final TRANSACTION_setEasEnabled:I = 0x1f

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x7

.field static final TRANSACTION_setMaximumTimeToLock:I = 0xa

.field static final TRANSACTION_setMinComplexCharacters:I = 0x1b

.field static final TRANSACTION_setPasswordAgingPeriod:I = 0x17

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordNonRecurring:I = 0x19

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setValidatePassword:I = 0x1d

.field static final TRANSACTION_wipeData:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "android.app.admin.IDevicePolicyManager"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    :sswitch_0
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    goto :goto_0

    :sswitch_1
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_2
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v3

    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    goto :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_result:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_4
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_result:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_4

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_5
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient()Z

    move-result v3

    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_4

    move v6, v7

    :goto_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    goto/16 :goto_0

    :cond_4
    move v6, v9

    goto :goto_5

    .end local v3           #_result:Z
    :sswitch_6
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts()I

    move-result v3

    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    goto/16 :goto_0

    .end local v3           #_result:I
    :sswitch_7
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_6

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_8
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_result:I
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_7

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_9
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v3

    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_7

    move v6, v7

    :goto_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    goto/16 :goto_0

    :cond_7
    move v6, v9

    goto :goto_8

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Z
    :sswitch_a
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .local v1, _arg1:J
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:J
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_9

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_b
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_a
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_result:J
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_a

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_c
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_e
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_b
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_b

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_f
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_c
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v3

    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_c

    move v6, v7

    :goto_d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_result:Z
    :cond_b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_c

    .restart local v3       #_result:Z
    :cond_c
    move v6, v9

    goto :goto_d

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_result:Z
    :sswitch_10
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins()Ljava/util/List;

    move-result-object v5

    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v6, v7

    goto/16 :goto_0

    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_11
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v3

    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_d

    move v6, v7

    :goto_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    goto/16 :goto_0

    :cond_d
    move v6, v9

    goto :goto_e

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_12
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    sget-object v6, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .local v1, _arg1:Landroid/os/RemoteCallback;
    :goto_10
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/os/RemoteCallback;
    :cond_e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_f

    :cond_f
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/RemoteCallback;
    goto :goto_10

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/os/RemoteCallback;
    :sswitch_13
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_11
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_10
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_11

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_14
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_15
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto/16 :goto_0

    :sswitch_16
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto/16 :goto_0

    :sswitch_17
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .local v1, _arg1:J
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordAgingPeriod(Landroid/content/ComponentName;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:J
    :cond_11
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_12

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_18
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_13
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordAgingPeriod(Landroid/content/ComponentName;)J

    move-result-wide v3

    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_result:J
    :cond_12
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_13

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_19
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordNonRecurring(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_13
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_14

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_1a
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_15
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordNonRecurring(Landroid/content/ComponentName;)I

    move-result v3

    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_result:I
    :cond_14
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_15

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_1b
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMinComplexCharacters(Landroid/content/ComponentName;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_15
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_16

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_1c
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_17
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMinComplexCharacters(Landroid/content/ComponentName;)I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_result:I
    :cond_16
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_17

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_1d
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    move v1, v7

    .local v1, _arg1:Z
    :goto_19
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setValidatePassword(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_17
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_18

    :cond_18
    move v1, v9

    goto :goto_19

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_1e
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_1a
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getValidatePassword(Landroid/content/ComponentName;)Z

    move-result v3

    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1a

    move v6, v7

    :goto_1b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_result:Z
    :cond_19
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1a

    .restart local v3       #_result:Z
    :cond_1a
    move v6, v9

    goto :goto_1b

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_result:Z
    :sswitch_1f
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    move v1, v7

    .restart local v1       #_arg1:Z
    :goto_1d
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setEasEnabled(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_1b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1c

    :cond_1c
    move v1, v9

    goto :goto_1d

    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_20
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_1e
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEasEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1e

    move v6, v7

    :goto_1f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v3           #_result:Z
    :cond_1d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1e

    .restart local v3       #_result:Z
    :cond_1e
    move v6, v9

    goto :goto_1f

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
