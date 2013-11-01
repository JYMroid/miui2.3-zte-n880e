.class public abstract Lcom/android/internal/telephony/ISms$Stub;
.super Landroid/os/Binder;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISms"

.field static final TRANSACTION_copyMessageToIccEf:I = 0x5

.field static final TRANSACTION_copyMessageToIccEfOnSubscription:I = 0x6

.field static final TRANSACTION_disableCdmaBroadcast:I = 0x15

.field static final TRANSACTION_disableCellBroadcast:I = 0x12

.field static final TRANSACTION_disableCellBroadcastOnSubscription:I = 0x13

.field static final TRANSACTION_disableCellBroadcastRange:I = 0x1a

.field static final TRANSACTION_enableCdmaBroadcast:I = 0x14

.field static final TRANSACTION_enableCellBroadcast:I = 0x10

.field static final TRANSACTION_enableCellBroadcastOnSubscription:I = 0x11

.field static final TRANSACTION_enableCellBroadcastRange:I = 0x19

.field static final TRANSACTION_getAllMessagesFromIccEf:I = 0x1

.field static final TRANSACTION_getAllMessagesFromIccEfOnSubscription:I = 0x2

.field static final TRANSACTION_getPreferredSmsSubscription:I = 0x18

.field static final TRANSACTION_sendData:I = 0x7

.field static final TRANSACTION_sendDataOnSubscription:I = 0x8

.field static final TRANSACTION_sendMultipartText:I = 0xf

.field static final TRANSACTION_sendMultipartTextOnSubscription:I = 0x16

.field static final TRANSACTION_sendMultipartTextOnSubscriptionPriority:I = 0xd

.field static final TRANSACTION_sendMultipartTextOnSubscriptionVP:I = 0x17

.field static final TRANSACTION_sendRgDataOnSubscription:I = 0x9

.field static final TRANSACTION_sendText:I = 0xa

.field static final TRANSACTION_sendTextOnSubscription:I = 0xb

.field static final TRANSACTION_sendTextOnSubscriptionPriority:I = 0xc

.field static final TRANSACTION_sendTextOnSubscriptionVP:I = 0xe

.field static final TRANSACTION_updateMessageOnIccEf:I = 0x3

.field static final TRANSACTION_updateMessageOnIccEfOnSubscription:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.android.internal.telephony.ISms"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telephony/ISms;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ISms$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
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
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_1
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEf()Ljava/util/List;

    move-result-object v22

    .local v22, _result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v22           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :sswitch_2
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEfOnSubscription(I)Ljava/util/List;

    move-result-object v22

    .restart local v22       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v6           #_arg0:I
    .end local v22           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :sswitch_3
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .local v8, _arg2:[B
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEf(II[B)Z

    move-result v21

    .local v21, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_0

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .end local v6           #_arg0:I
    .end local v7           #_arg1:I
    .end local v8           #_arg2:[B
    .end local v21           #_result:Z
    :sswitch_4
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .restart local v8       #_arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg3:I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEfOnSubscription(II[BI)Z

    move-result v21

    .restart local v21       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_1

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .end local v6           #_arg0:I
    .end local v7           #_arg1:I
    .end local v8           #_arg2:[B
    .end local v9           #_arg3:I
    .end local v21           #_result:Z
    :sswitch_5
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .local v7, _arg1:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .restart local v8       #_arg2:[B
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEf(I[B[B)Z

    move-result v21

    .restart local v21       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_2

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .end local v6           #_arg0:I
    .end local v7           #_arg1:[B
    .end local v8           #_arg2:[B
    .end local v21           #_result:Z
    :sswitch_6
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .restart local v7       #_arg1:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .restart local v8       #_arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg3:I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEfOnSubscription(I[B[BI)Z

    move-result v21

    .restart local v21       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_3

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    .end local v6           #_arg0:I
    .end local v7           #_arg1:[B
    .end local v8           #_arg2:[B
    .end local v9           #_arg3:I
    .end local v21           #_result:Z
    :sswitch_7
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .local v9, _arg3:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .local v10, _arg4:Landroid/app/PendingIntent;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .local v11, _arg5:Landroid/app/PendingIntent;
    :goto_6
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/ISms$Stub;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v10           #_arg4:Landroid/app/PendingIntent;
    .end local v11           #_arg5:Landroid/app/PendingIntent;
    :cond_4
    const/4 v10, 0x0

    .restart local v10       #_arg4:Landroid/app/PendingIntent;
    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    .restart local v11       #_arg5:Landroid/app/PendingIntent;
    goto :goto_6

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:[B
    .end local v10           #_arg4:Landroid/app/PendingIntent;
    .end local v11           #_arg5:Landroid/app/PendingIntent;
    :sswitch_8
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .restart local v9       #_arg3:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .restart local v10       #_arg4:Landroid/app/PendingIntent;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .restart local v11       #_arg5:Landroid/app/PendingIntent;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, _arg6:I
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ISms$Stub;->sendDataOnSubscription(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v10           #_arg4:Landroid/app/PendingIntent;
    .end local v11           #_arg5:Landroid/app/PendingIntent;
    .end local v12           #_arg6:I
    :cond_6
    const/4 v10, 0x0

    .restart local v10       #_arg4:Landroid/app/PendingIntent;
    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    .restart local v11       #_arg5:Landroid/app/PendingIntent;
    goto :goto_8

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:[B
    .end local v10           #_arg4:Landroid/app/PendingIntent;
    .end local v11           #_arg5:Landroid/app/PendingIntent;
    :sswitch_9
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .local v8, _arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .local v9, _arg3:Landroid/app/PendingIntent;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .restart local v10       #_arg4:Landroid/app/PendingIntent;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg5:I
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/ISms$Stub;->sendRgDataOnSubscription(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v9           #_arg3:Landroid/app/PendingIntent;
    .end local v10           #_arg4:Landroid/app/PendingIntent;
    .end local v11           #_arg5:I
    :cond_8
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/app/PendingIntent;
    goto :goto_9

    :cond_9
    const/4 v10, 0x0

    .restart local v10       #_arg4:Landroid/app/PendingIntent;
    goto :goto_a

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:[B
    .end local v9           #_arg3:Landroid/app/PendingIntent;
    .end local v10           #_arg4:Landroid/app/PendingIntent;
    :sswitch_a
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .restart local v9       #_arg3:Landroid/app/PendingIntent;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .restart local v10       #_arg4:Landroid/app/PendingIntent;
    :goto_c
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/ISms$Stub;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v9           #_arg3:Landroid/app/PendingIntent;
    .end local v10           #_arg4:Landroid/app/PendingIntent;
    :cond_a
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/app/PendingIntent;
    goto :goto_b

    :cond_b
    const/4 v10, 0x0

    .restart local v10       #_arg4:Landroid/app/PendingIntent;
    goto :goto_c

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Landroid/app/PendingIntent;
    .end local v10           #_arg4:Landroid/app/PendingIntent;
    :sswitch_b
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .restart local v9       #_arg3:Landroid/app/PendingIntent;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .restart local v10       #_arg4:Landroid/app/PendingIntent;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #_arg5:I
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/ISms$Stub;->sendTextOnSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v9           #_arg3:Landroid/app/PendingIntent;
    .end local v10           #_arg4:Landroid/app/PendingIntent;
    .end local v11           #_arg5:I
    :cond_c
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/app/PendingIntent;
    goto :goto_d

    :cond_d
    const/4 v10, 0x0

    .restart local v10       #_arg4:Landroid/app/PendingIntent;
    goto :goto_e

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Landroid/app/PendingIntent;
    .end local v10           #_arg4:Landroid/app/PendingIntent;
    :sswitch_c
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .restart local v9       #_arg3:Landroid/app/PendingIntent;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .restart local v10       #_arg4:Landroid/app/PendingIntent;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .local v12, _arg6:Landroid/os/Bundle;
    :goto_11
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ISms$Stub;->sendTextOnSubscriptionPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v9           #_arg3:Landroid/app/PendingIntent;
    .end local v10           #_arg4:Landroid/app/PendingIntent;
    .end local v11           #_arg5:I
    .end local v12           #_arg6:Landroid/os/Bundle;
    :cond_e
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/app/PendingIntent;
    goto :goto_f

    :cond_f
    const/4 v10, 0x0

    .restart local v10       #_arg4:Landroid/app/PendingIntent;
    goto :goto_10

    .restart local v11       #_arg5:I
    :cond_10
    const/4 v12, 0x0

    .restart local v12       #_arg6:Landroid/os/Bundle;
    goto :goto_11

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Landroid/app/PendingIntent;
    .end local v10           #_arg4:Landroid/app/PendingIntent;
    .end local v11           #_arg5:I
    .end local v12           #_arg6:Landroid/os/Bundle;
    :sswitch_d
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .local v16, _arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .local v17, _arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .local v18, _arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .restart local v12       #_arg6:Landroid/os/Bundle;
    :goto_12
    move-object/from16 v13, p0

    move-object v14, v6

    move-object v15, v7

    move/from16 v19, v11

    move-object/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextOnSubscriptionPriority(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v12           #_arg6:Landroid/os/Bundle;
    :cond_11
    const/4 v12, 0x0

    .restart local v12       #_arg6:Landroid/os/Bundle;
    goto :goto_12

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v11           #_arg5:I
    .end local v12           #_arg6:Landroid/os/Bundle;
    .end local v16           #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v18           #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_e
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .restart local v9       #_arg3:Landroid/app/PendingIntent;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .restart local v10       #_arg4:Landroid/app/PendingIntent;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, _arg6:I
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ISms$Stub;->sendTextOnSubscriptionVP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v9           #_arg3:Landroid/app/PendingIntent;
    .end local v10           #_arg4:Landroid/app/PendingIntent;
    .end local v11           #_arg5:I
    .end local v12           #_arg6:I
    :cond_12
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/app/PendingIntent;
    goto :goto_13

    :cond_13
    const/4 v10, 0x0

    .restart local v10       #_arg4:Landroid/app/PendingIntent;
    goto :goto_14

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Landroid/app/PendingIntent;
    .end local v10           #_arg4:Landroid/app/PendingIntent;
    :sswitch_f
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .restart local v16       #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .restart local v17       #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .restart local v18       #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v13, p0

    move-object v14, v6

    move-object v15, v7

    invoke-virtual/range {v13 .. v18}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v16           #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v18           #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_10
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcast(I)Z

    move-result v21

    .restart local v21       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_14

    const/4 v5, 0x1

    :goto_15
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v5, 0x0

    goto :goto_15

    .end local v6           #_arg0:I
    .end local v21           #_result:Z
    :sswitch_11
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg1:I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastOnSubscription(II)Z

    move-result v21

    .restart local v21       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_15

    const/4 v5, 0x1

    :goto_16
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_15
    const/4 v5, 0x0

    goto :goto_16

    .end local v6           #_arg0:I
    .end local v7           #_arg1:I
    .end local v21           #_result:Z
    :sswitch_12
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcast(I)Z

    move-result v21

    .restart local v21       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_16

    const/4 v5, 0x1

    :goto_17
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v5, 0x0

    goto :goto_17

    .end local v6           #_arg0:I
    .end local v21           #_result:Z
    :sswitch_13
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastOnSubscription(II)Z

    move-result v21

    .restart local v21       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_17

    const/4 v5, 0x1

    :goto_18
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_17
    const/4 v5, 0x0

    goto :goto_18

    .end local v6           #_arg0:I
    .end local v7           #_arg1:I
    .end local v21           #_result:Z
    :sswitch_14
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->enableCdmaBroadcast(I)Z

    move-result v21

    .restart local v21       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_18

    const/4 v5, 0x1

    :goto_19
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_18
    const/4 v5, 0x0

    goto :goto_19

    .end local v6           #_arg0:I
    .end local v21           #_result:Z
    :sswitch_15
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->disableCdmaBroadcast(I)Z

    move-result v21

    .restart local v21       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_19

    const/4 v5, 0x1

    :goto_1a
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_19
    const/4 v5, 0x0

    goto :goto_1a

    .end local v6           #_arg0:I
    .end local v21           #_result:Z
    :sswitch_16
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .restart local v16       #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .restart local v17       #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .restart local v18       #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #_arg5:I
    move-object/from16 v13, p0

    move-object v14, v6

    move-object v15, v7

    move/from16 v19, v11

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextOnSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v11           #_arg5:I
    .end local v16           #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v18           #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_17
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .restart local v16       #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .restart local v17       #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .restart local v18       #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12       #_arg6:I
    move-object/from16 v13, p0

    move-object v14, v6

    move-object v15, v7

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextOnSubscriptionVP(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v11           #_arg5:I
    .end local v12           #_arg6:I
    .end local v16           #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v18           #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_18
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getPreferredSmsSubscription()I

    move-result v21

    .local v21, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v21           #_result:I
    :sswitch_19
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg1:I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastRange(II)Z

    move-result v21

    .local v21, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_1a

    const/4 v5, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1a
    const/4 v5, 0x0

    goto :goto_1b

    .end local v6           #_arg0:I
    .end local v7           #_arg1:I
    .end local v21           #_result:Z
    :sswitch_1a
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastRange(II)Z

    move-result v21

    .restart local v21       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_1b

    const/4 v5, 0x1

    :goto_1c
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1b
    const/4 v5, 0x0

    goto :goto_1c

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
