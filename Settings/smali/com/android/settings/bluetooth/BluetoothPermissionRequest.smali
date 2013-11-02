.class public final Lcom/android/settings/bluetooth/BluetoothPermissionRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionRequest.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final NOTIFICATION_ID:I = 0x1080080

.field private static final TAG:Ljava/lang/String; = "BluetoothPermissionRequest"


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, action:Ljava/lang/String;
    const-string v15, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 50
    invoke-static/range {p1 .. p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v10

    .line 52
    .local v10, localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    const-string v15, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 54
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v6, connectionAccessIntent:Landroid/content/Intent;
    const-class v15, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 56
    const/high16 v15, 0x1000

    invoke-virtual {v6, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    const-string v15, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v15, v0

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    move-object v8, v15

    .line 61
    .local v8, deviceAddress:Ljava/lang/String;
    :goto_0
    const-string v15, "power"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 64
    .local v14, powerManager:Landroid/os/PowerManager;
    invoke-virtual {v14}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v10, v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->shouldShowDialogInForeground(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 66
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    .end local v6           #connectionAccessIntent:Landroid/content/Intent;
    .end local v8           #deviceAddress:Ljava/lang/String;
    .end local v10           #localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .end local v14           #powerManager:Landroid/os/PowerManager;
    :cond_0
    :goto_1
    return-void

    .line 59
    .restart local v6       #connectionAccessIntent:Landroid/content/Intent;
    .restart local v10       #localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :cond_1
    const/4 v15, 0x0

    move-object v8, v15

    goto :goto_0

    .line 73
    .restart local v8       #deviceAddress:Ljava/lang/String;
    .restart local v14       #powerManager:Landroid/os/PowerManager;
    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-string v15, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v7, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v7, deleteIntent:Landroid/content/Intent;
    const-string v15, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    move-object v0, v7

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    const-string v15, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/16 v16, 0x2

    move-object v0, v7

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    new-instance v12, Landroid/app/Notification;

    const v15, 0x1080080

    const v16, 0x7f080072

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v0, v12

    move v1, v15

    move-object/from16 v2, v16

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 80
    .local v12, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v15, v0

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    .line 81
    .local v9, deviceName:Ljava/lang/String;
    :goto_2
    const v15, 0x7f080072

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f080073

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v9, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object v2, v6

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object v0, v12

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 85
    const/16 v15, 0x18

    iput v15, v12, Landroid/app/Notification;->flags:I

    .line 86
    const/4 v15, 0x1

    iput v15, v12, Landroid/app/Notification;->defaults:I

    .line 87
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move v1, v15

    move-object v2, v7

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    iput-object v15, v12, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 89
    const-string v15, "notification"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 91
    .local v13, notificationManager:Landroid/app/NotificationManager;
    const v15, 0x1080080

    invoke-virtual {v13, v15, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 80
    .end local v9           #deviceName:Ljava/lang/String;
    .end local v13           #notificationManager:Landroid/app/NotificationManager;
    :cond_3
    const/4 v15, 0x0

    move-object v9, v15

    goto :goto_2

    .line 93
    .end local v6           #connectionAccessIntent:Landroid/content/Intent;
    .end local v7           #deleteIntent:Landroid/content/Intent;
    .end local v8           #deviceAddress:Ljava/lang/String;
    .end local v10           #localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .end local v12           #notification:Landroid/app/Notification;
    .end local v14           #powerManager:Landroid/os/PowerManager;
    .restart local p2
    :cond_4
    const-string v15, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 95
    const-string v15, "notification"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 97
    .local v11, manager:Landroid/app/NotificationManager;
    const v15, 0x1080080

    invoke-virtual {v11, v15}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1
.end method
