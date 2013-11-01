.class public Lcom/broadcom/bt/service/ftp/BluetoothFTPService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothFTPService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/ftp/BluetoothFTPService$1;,
        Lcom/broadcom/bt/service/ftp/BluetoothFTPService$UnmountBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothFTPService"

.field private static final V:Z = true

.field private static isStateRunning:Z


# instance fields
.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;",
            ">;"
        }
    .end annotation
.end field

.field mMediaScanner:Landroid/media/MediaScannerConnection;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    invoke-static {}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->classInitNative()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    new-instance v0, Landroid/media/MediaScannerConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    return v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupFtpNativeDataNative()V
.end method

.method private native closeFtpServerNative()V
.end method

.method private native disableFtpServerNative()V
.end method

.method private native enableDefaultFtpServerNative()V
.end method

.method private native enableFtpServerNative(ILjava/lang/String;Ljava/lang/String;ZB[BB)V
.end method

.method private native ftpServerAccessRspNative(BZLjava/lang/String;)V
.end method

.method private native ftpServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native initFtpNativeDataNative()V
.end method

.method private static needAccessRequest()Z
    .locals 4

    .prologue
    :try_start_0
    const-string v1, "true"

    const-string v2, "service.brcm.bt.secure_mode"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFTPService"

    const-string v2, "needAccessRequest()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V
    .locals 17
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "remoteDeviceName"
    .parameter "opCode"
    .parameter "remoteAddress"

    .prologue
    const/4 v4, 0x1

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    .local v15, root:Ljava/lang/String;
    :try_start_0
    new-instance v16, Landroid/os/StatFs;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .local v16, stat:Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v13, v4, v6

    .local v13, freeSpace:J
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide v4, v0

    cmp-long v4, v4, v13

    if-lez v4, :cond_0

    const-string v4, "BluetoothFTPService"

    const-string v5, "onFtpServerAccessRequested - Not enough free space"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v4

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13           #freeSpace:J
    .end local v15           #root:Ljava/lang/String;
    .end local v16           #stat:Landroid/os/StatFs;
    :goto_0
    return-void

    .restart local v15       #root:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v12, v4

    .local v12, eee:Ljava/lang/Exception;
    const-string v4, "BluetoothFTPService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error calling statfs() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v4

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    goto :goto_0

    .end local v12           #eee:Ljava/lang/Exception;
    .end local v15           #root:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->needAccessRequest()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    move-object v12, v0

    const/4 v4, 0x0

    const-string v5, "bluetooth_ftp"

    const/4 v9, -0x1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move/from16 v8, p4

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-static/range {v4 .. v11}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createAccessRequest(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {v12, v4, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v4

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    goto :goto_0
.end method

.method private onFtpServerAuthen(Ljava/lang/String;BZ)V
    .locals 0
    .parameter "user_id"
    .parameter "userid_length"
    .parameter "userid_required"

    .prologue
    return-void
.end method

.method private onFtpServerClosed()V
    .locals 4

    .prologue
    const-string v2, "BluetoothFTPService"

    const-string v1, "BluetoothFTPService"

    const-string v1, "onFtpServerClosed() called."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.broadcom.bt.app.ftp.action.ON_FTPS_CLOSED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFTPService"

    const-string v1, "Unable to disconnect from media scanner"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onFtpServerDelCompleted(Ljava/lang/String;B)V
    .locals 5
    .parameter "filePath"
    .parameter "status"

    .prologue
    const-string v4, "BluetoothFTPService"

    const-string v2, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFtpServerDelCompleted(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.ftp.action.ON_FTS_DEL_COMPLETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    const-string v2, "FILEPATH"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "STATUS"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .end local v0           #i:Landroid/content/Intent;
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothFTPService"

    const-string v2, "Unable to invoke MediaScanner.scanFile()"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onFtpServerDisabled()V
    .locals 2

    .prologue
    const-string v0, "BluetoothFTPService"

    const-string v1, "onFtpServerDisabled() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->onStateChangeEvent(Z)V

    return-void
.end method

.method private onFtpServerEnabled()V
    .locals 2

    .prologue
    const-string v0, "BluetoothFTPService"

    const-string v1, "onFtpServerEnabled() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->onStateChangeEvent(Z)V

    return-void
.end method

.method private onFtpServerFileTransferInProgress(II)V
    .locals 4
    .parameter "fileSize"
    .parameter "bytesTransferred"

    .prologue
    const-string v1, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transferring file via FTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTS_XFR_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    const-string v1, "TOTAL_BYTES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "BYTES_TRANSFERRED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private onFtpServerGetCompleted(Ljava/lang/String;B)V
    .locals 4
    .parameter "filePath"
    .parameter "status"

    .prologue
    const-string v1, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFtpServerGetCompleted(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTS_GET_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    const-string v1, "FILEPATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private onFtpServerOpened(Ljava/lang/String;)V
    .locals 5
    .parameter "remoteAddress"

    .prologue
    const-string v4, "BluetoothFTPService"

    const-string v2, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFtpServerOpened: remoteAddress = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    sput-boolean v2, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.ftp.action.ON_FTS_OPENED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    const-string v2, "RMT_DEV_ADDR"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .end local v0           #i:Landroid/content/Intent;
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothFTPService"

    const-string v2, "Unable to connect to media scanner"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onFtpServerPutCompleted(Ljava/lang/String;B)V
    .locals 5
    .parameter "filePath"
    .parameter "status"

    .prologue
    const-string v4, "BluetoothFTPService"

    const-string v2, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFtpServerPutCompleted(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.ftp.action.ON_FTPS_PUT_COMPLETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    const-string v2, "FILEPATH"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "STATUS"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .end local v0           #i:Landroid/content/Intent;
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothFTPService"

    const-string v2, "Unable to invoke MediaScanner.scanFile()"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized closeFtpServer()V
    .locals 4

    .prologue
    const-string v2, "BluetoothFTPService"

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    sput-boolean v2, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->closeFtpServerNative()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "BluetoothFTPService"

    const-string v3, "Unable to disconnect from media scanner"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "BluetoothFTPService"

    const-string v3, "closeFtpServerNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->finish()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->cleanupFtpNativeDataNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothFTPService"

    const-string v2, "Unable to cleanup ftp service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ftpServerAccessRsp(BZLjava/lang/String;)V
    .locals 3
    .parameter "op_code"
    .parameter "access"
    .parameter "filename"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRspNative(BZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothFTPService"

    const-string v2, "ftpServerAccessRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "password"
    .parameter "userId"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothFTPService"

    const-string v2, "ftpServerAuthRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "bluetooth_ftp"

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->initFtpNativeDataNative()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized start()V
    .locals 5

    .prologue
    const-string v3, "BluetoothFTPService"

    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, iFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "broadcom.android.bluetooth.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v3, "*"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    :try_start_2
    new-instance v3, Lcom/broadcom/bt/service/ftp/BluetoothFTPService$UnmountBroadcastReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService$UnmountBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/ftp/BluetoothFTPService;Lcom/broadcom/bt/service/ftp/BluetoothFTPService$1;)V

    iput-object v3, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->enableDefaultFtpServerNative()V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v1           #iFilter:Landroid/content/IntentFilter;
    :goto_1
    monitor-exit p0

    return-void

    .restart local v1       #iFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v3, "BluetoothFTPService"

    const-string v4, "Unable to unregister unmount broadcast receiver"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v1           #iFilter:Landroid/content/IntentFilter;
    .end local v2           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "BluetoothFTPService"

    const-string v4, "enableDefaultFtpServerNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized stop()V
    .locals 4

    .prologue
    const-string v2, "BluetoothFTPService"

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    sput-boolean v2, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->disableFtpServerNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_3
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    :try_start_5
    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    const-string v2, "BluetoothFTPService"

    const-string v3, "disableFtpServerNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_1
    move-exception v2

    move-object v1, v2

    .local v1, t:Ljava/lang/Throwable;
    :try_start_7
    const-string v2, "BluetoothFTPService"

    const-string v3, "Unable to disconnect from media scanner"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #t:Ljava/lang/Throwable;
    :catch_2
    move-exception v2

    move-object v1, v2

    .restart local v1       #t:Ljava/lang/Throwable;
    const-string v2, "BluetoothFTPService"

    const-string v3, "Unable to unregister unmount broadcast receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method
