.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final SYSFS_MDM_EFS_SYNC_COMPLETE:Ljava/lang/String; = "/sys/devices/platform/rs300100a7.65536/sync_sts"

.field private static final SYSFS_MDM_EFS_SYNC_START:Ljava/lang/String; = "/sys/devices/platform/rs300100a7.65536/force_sync"

.field private static final SYSFS_MSM_EFS_SYNC_COMPLETE:Ljava/lang/String; = "/sys/devices/platform/rs300000a7.65536/sync_sts"

.field private static final SYSFS_MSM_EFS_SYNC_START:Ljava/lang/String; = "/sys/devices/platform/rs300000a7.65536/force_sync"

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field public static mReboot:I

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 75
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 91
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v7, "ShutdownThread"

    .line 159
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 160
    :try_start_0
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    .line 161
    const-string v3, "ShutdownThread"

    const-string v4, "Request to shutdown already running, returning."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    monitor-exit v2

    .line 199
    .end local p0
    :goto_0
    return-void

    .line 164
    .restart local p0
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 165
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 170
    .local v1, pd:Landroid/app/ProgressDialog;
    const v2, 0x1040120

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    const v2, 0x1040121

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 173
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 174
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 180
    :cond_1
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 183
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object p0, v2, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 184
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/PowerManager;

    iput-object p0, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 185
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 186
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    :try_start_1
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "Shutdown"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 190
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v3, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v3}, Lcom/android/internal/app/ShutdownThread$2;-><init>()V

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 198
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v2}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 165
    .end local v1           #pd:Landroid/app/ProgressDialog;
    .restart local p0
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 191
    .end local p0
    .restart local v1       #pd:Landroid/app/ProgressDialog;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 192
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v2, "No permission to acquire wake lock"

    invoke-static {v7, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v6, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 153
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    .line 154
    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 155
    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 156
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 5
    .parameter "reboot"
    .parameter "reason"

    .prologue
    const-string v4, "ShutdownThread"

    .line 436
    if-eqz p0, :cond_1

    .line 437
    const-string v2, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting, reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :try_start_0
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_0
    const-string v2, "ShutdownThread"

    const-string v2, "Performing low-level shutdown..."

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sget v1, Lcom/android/internal/app/ShutdownThread;->mReboot:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 463
    :goto_1
    return-void

    :cond_0
    const-string v4, "now"

    invoke-static {v4}, Landroid/os/Power;->reboot(Ljava/lang/String;)V

    goto :goto_1

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v2, "Reboot failed, will attempt shutdown instead"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 445
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    .line 447
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 455
    :goto_2
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 456
    :catch_1
    move-exception v2

    goto :goto_0

    .line 448
    :catch_2
    move-exception v0

    .line 450
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v2, "Failed to vibrate during shutdown."

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "confirm"

    .prologue
    const-string v4, "ShutdownThread"

    .line 104
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 105
    :try_start_0
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    .line 106
    const-string v3, "ShutdownThread"

    const-string v4, "Request to shutdown already running, returning."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    monitor-exit v2

    .line 141
    :goto_0
    return-void

    .line 109
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    const-string/jumbo v2, "ro.monkey"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 113
    .local v1, isDebuggableMonkeyBuild:Z
    if-eqz v1, :cond_1

    .line 114
    const-string v2, "ShutdownThread"

    const-string v2, "Rejected shutdown as monkey is detected to be running."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v1           #isDebuggableMonkeyBuild:Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 118
    .restart local v1       #isDebuggableMonkeyBuild:Z
    :cond_1
    const-string v2, "ShutdownThread"

    const-string v2, "Notifying thread to start radio shutdown"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz p1, :cond_3

    .line 121
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040120

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040122

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v4, p0}, Lcom/android/internal/app/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 132
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 135
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 137
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 139
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_3
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 204
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 205
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 36

    .prologue
    .line 217
    new-instance v6, Lcom/android/internal/app/ShutdownThread$3;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$3;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 230
    .local v6, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v4, :cond_5

    const-string v4, "1"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 231
    .local v34, reason:Ljava/lang/String;
    const-string/jumbo v3, "sys.shutdown.requested"

    move-object v0, v3

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v3, "ShutdownThread"

    const-string v4, "Sending shutdown broadcast..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    move-object v3, v0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long v19, v3, v5

    .line 242
    .local v19, endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3

    .line 243
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    move v4, v0

    if-nez v4, :cond_0

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v14, v19, v4

    .line 245
    .local v14, delay:J
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-gtz v4, :cond_7

    .line 246
    const-string v4, "ShutdownThread"

    const-string v5, "Shutdown broadcast timed out"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v14           #delay:J
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    const-string v3, "ShutdownThread"

    const-string v4, "Shutting down activity manager..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v3, "activity"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 260
    .local v11, am:Landroid/app/IActivityManager;
    if-eqz v11, :cond_1

    .line 262
    const/16 v3, 0x2710

    :try_start_1
    invoke-interface {v11, v3}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_b

    .line 267
    :cond_1
    :goto_3
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v32

    .line 269
    .local v32, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v3, "bluetooth"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v12

    .line 273
    .local v12, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v27

    .line 278
    .local v27, mount:Landroid/os/storage/IMountService;
    if-eqz v12, :cond_2

    :try_start_2
    invoke-interface {v12}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_8

    :cond_2
    const/4 v3, 0x1

    move v13, v3

    .line 280
    .local v13, bluetoothOff:Z
    :goto_4
    if-nez v13, :cond_3

    .line 281
    const-string v3, "ShutdownThread"

    const-string v4, "Disabling Bluetooth..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 290
    :cond_3
    :goto_5
    const/16 v33, 0x1

    .line 291
    .local v33, radioOff:Z
    if-eqz v32, :cond_a

    .line 293
    const/16 v24, 0x0

    .local v24, i:I
    :goto_6
    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    move/from16 v0, v24

    move v1, v3

    if-ge v0, v1, :cond_a

    .line 294
    if-eqz v33, :cond_9

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnOnSubscription(I)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x1

    move/from16 v33, v3

    .line 295
    :goto_7
    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnOnSubscription(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 296
    const-string v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Turning off radio on Subscription :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v3, 0x0

    move-object/from16 v0, v32

    move v1, v3

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->setRadioOnSubscription(ZI)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 293
    :cond_4
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 230
    .end local v11           #am:Landroid/app/IActivityManager;
    .end local v12           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v13           #bluetoothOff:Z
    .end local v19           #endTime:J
    .end local v24           #i:I
    .end local v27           #mount:Landroid/os/storage/IMountService;
    .end local v32           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v33           #radioOff:Z
    .end local v34           #reason:Ljava/lang/String;
    :cond_5
    const-string v4, "0"

    goto/16 :goto_0

    :cond_6
    const-string v4, ""

    goto/16 :goto_1

    .line 250
    .restart local v14       #delay:J
    .restart local v19       #endTime:J
    .restart local v34       #reason:Ljava/lang/String;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v4, v0

    invoke-virtual {v4, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 251
    :catch_0
    move-exception v4

    goto/16 :goto_2

    .line 254
    .end local v14           #delay:J
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 278
    .restart local v11       #am:Landroid/app/IActivityManager;
    .restart local v12       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v27       #mount:Landroid/os/storage/IMountService;
    .restart local v32       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_8
    const/4 v3, 0x0

    move v13, v3

    goto :goto_4

    .line 284
    :catch_1
    move-exception v3

    move-object/from16 v21, v3

    .line 285
    .local v21, ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    const/4 v13, 0x1

    .restart local v13       #bluetoothOff:Z
    goto :goto_5

    .line 294
    .end local v21           #ex:Landroid/os/RemoteException;
    .restart local v24       #i:I
    .restart local v33       #radioOff:Z
    :cond_9
    const/4 v3, 0x0

    move/from16 v33, v3

    goto :goto_7

    .line 301
    :catch_2
    move-exception v3

    move-object/from16 v21, v3

    .line 302
    .restart local v21       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during radio shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    const/16 v33, 0x1

    .line 308
    .end local v21           #ex:Landroid/os/RemoteException;
    .end local v24           #i:I
    :cond_a
    const/16 v30, 0x0

    .line 310
    .local v30, outStream:Ljava/io/PrintWriter;
    const/16 v28, 0x0

    .line 311
    .local v28, msmEfsSyncDone:Z
    :try_start_6
    new-instance v23, Ljava/io/FileOutputStream;

    const-string v3, "/sys/devices/platform/rs300000a7.65536/force_sync"

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 312
    .local v23, fos:Ljava/io/FileOutputStream;
    new-instance v31, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 313
    .end local v30           #outStream:Ljava/io/PrintWriter;
    .local v31, outStream:Ljava/io/PrintWriter;
    :try_start_7
    const-string v3, "1"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d

    .line 317
    if-eqz v31, :cond_b

    .line 318
    invoke-virtual/range {v31 .. v31}, Ljava/io/PrintWriter;->close()V

    .line 322
    .end local v23           #fos:Ljava/io/FileOutputStream;
    :cond_b
    :goto_8
    const/16 v26, 0x0

    .line 323
    .local v26, mdmEfsSyncDone:Z
    :try_start_8
    new-instance v23, Ljava/io/FileOutputStream;

    const-string v3, "/sys/devices/platform/rs300100a7.65536/force_sync"

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 324
    .restart local v23       #fos:Ljava/io/FileOutputStream;
    new-instance v30, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v30

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 325
    .end local v31           #outStream:Ljava/io/PrintWriter;
    .restart local v30       #outStream:Ljava/io/PrintWriter;
    :try_start_9
    const-string v3, "1"

    move-object/from16 v0, v30

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    .line 329
    if-eqz v30, :cond_c

    .line 330
    .end local v23           #fos:Ljava/io/FileOutputStream;
    :goto_9
    invoke-virtual/range {v30 .. v30}, Ljava/io/PrintWriter;->close()V

    .line 333
    :cond_c
    const-string v3, "ShutdownThread"

    const-string v4, "Waiting for Bluetooth and Radio..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_a
    const/16 v3, 0x10

    move/from16 v0, v24

    move v1, v3

    if-ge v0, v1, :cond_16

    .line 337
    if-nez v13, :cond_d

    .line 339
    :try_start_a
    invoke-interface {v12}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_11

    const/4 v3, 0x1

    move v13, v3

    .line 346
    :cond_d
    :goto_b
    if-nez v33, :cond_13

    .line 347
    const/16 v33, 0x1

    .line 349
    const/16 v25, 0x0

    .local v25, j:I
    :goto_c
    :try_start_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    move/from16 v0, v25

    move v1, v3

    if-ge v0, v1, :cond_13

    .line 350
    if-eqz v33, :cond_12

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnOnSubscription(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_6

    move-result v3

    if-nez v3, :cond_12

    const/4 v3, 0x1

    move/from16 v33, v3

    .line 349
    :goto_d
    add-int/lit8 v25, v25, 0x1

    goto :goto_c

    .line 314
    .end local v24           #i:I
    .end local v25           #j:I
    .end local v26           #mdmEfsSyncDone:Z
    :catch_3
    move-exception v3

    move-object/from16 v16, v3

    .line 315
    .local v16, e:Ljava/lang/Exception;
    :goto_e
    const/16 v28, 0x1

    .line 317
    if-eqz v30, :cond_e

    .line 318
    invoke-virtual/range {v30 .. v30}, Ljava/io/PrintWriter;->close()V

    :cond_e
    move-object/from16 v31, v30

    .line 319
    .end local v30           #outStream:Ljava/io/PrintWriter;
    .restart local v31       #outStream:Ljava/io/PrintWriter;
    goto :goto_8

    .line 317
    .end local v16           #e:Ljava/lang/Exception;
    .end local v31           #outStream:Ljava/io/PrintWriter;
    .restart local v30       #outStream:Ljava/io/PrintWriter;
    :catchall_1
    move-exception v3

    :goto_f
    if-eqz v30, :cond_f

    .line 318
    invoke-virtual/range {v30 .. v30}, Ljava/io/PrintWriter;->close()V

    .line 317
    :cond_f
    throw v3

    .line 326
    .end local v30           #outStream:Ljava/io/PrintWriter;
    .restart local v26       #mdmEfsSyncDone:Z
    .restart local v31       #outStream:Ljava/io/PrintWriter;
    :catch_4
    move-exception v3

    move-object/from16 v16, v3

    move-object/from16 v30, v31

    .line 327
    .end local v31           #outStream:Ljava/io/PrintWriter;
    .restart local v16       #e:Ljava/lang/Exception;
    .restart local v30       #outStream:Ljava/io/PrintWriter;
    :goto_10
    const/16 v26, 0x1

    .line 329
    if-eqz v30, :cond_c

    goto :goto_9

    .end local v16           #e:Ljava/lang/Exception;
    .end local v30           #outStream:Ljava/io/PrintWriter;
    .restart local v31       #outStream:Ljava/io/PrintWriter;
    :catchall_2
    move-exception v3

    move-object/from16 v30, v31

    .end local v31           #outStream:Ljava/io/PrintWriter;
    .restart local v30       #outStream:Ljava/io/PrintWriter;
    :goto_11
    if-eqz v30, :cond_10

    .line 330
    invoke-virtual/range {v30 .. v30}, Ljava/io/PrintWriter;->close()V

    .line 329
    :cond_10
    throw v3

    .line 339
    .restart local v24       #i:I
    :cond_11
    const/4 v3, 0x0

    move v13, v3

    goto :goto_b

    .line 341
    :catch_5
    move-exception v21

    .line 342
    .restart local v21       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    const/4 v13, 0x1

    goto :goto_b

    .line 350
    .end local v21           #ex:Landroid/os/RemoteException;
    .restart local v25       #j:I
    :cond_12
    const/4 v3, 0x0

    move/from16 v33, v3

    goto :goto_d

    .line 352
    :catch_6
    move-exception v3

    move-object/from16 v21, v3

    .line 353
    .restart local v21       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during radio shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    const/16 v33, 0x1

    .line 357
    .end local v21           #ex:Landroid/os/RemoteException;
    .end local v25           #j:I
    :cond_13
    if-nez v28, :cond_14

    .line 359
    :try_start_c
    new-instance v22, Ljava/io/FileInputStream;

    const-string v3, "/sys/devices/platform/rs300000a7.65536/sync_sts"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 360
    .local v22, fis:Ljava/io/FileInputStream;
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->read()I

    move-result v35

    .line 361
    .local v35, result:I
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 362
    const/16 v3, 0x31

    move/from16 v0, v35

    move v1, v3

    if-ne v0, v1, :cond_14

    .line 364
    const/16 v28, 0x1

    .line 370
    .end local v22           #fis:Ljava/io/FileInputStream;
    .end local v35           #result:I
    :cond_14
    :goto_12
    if-nez v26, :cond_15

    .line 372
    :try_start_d
    new-instance v22, Ljava/io/FileInputStream;

    const-string v3, "/sys/devices/platform/rs300100a7.65536/sync_sts"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 373
    .restart local v22       #fis:Ljava/io/FileInputStream;
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->read()I

    move-result v35

    .line 374
    .restart local v35       #result:I
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 375
    const/16 v3, 0x31

    move/from16 v0, v35

    move v1, v3

    if-ne v0, v1, :cond_15

    .line 377
    const/16 v26, 0x1

    .line 383
    .end local v22           #fis:Ljava/io/FileInputStream;
    .end local v35           #result:I
    :cond_15
    :goto_13
    if-eqz v33, :cond_18

    if-eqz v13, :cond_18

    if-eqz v28, :cond_18

    if-eqz v26, :cond_18

    .line 384
    const-string v3, "ShutdownThread"

    const-string v4, "Radio and Bluetooth shutdown complete."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_16
    new-instance v29, Lcom/android/internal/app/ShutdownThread$4;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$4;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 398
    .local v29, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v3, "ShutdownThread"

    const-string v4, "Shutting down MountService"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x4e20

    add-long v17, v3, v5

    .line 402
    .local v17, endShutTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3

    .line 404
    if-eqz v27, :cond_19

    .line 405
    :try_start_e
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 412
    :goto_14
    :try_start_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    move v4, v0

    if-nez v4, :cond_17

    .line 413
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v14, v17, v4

    .line 414
    .restart local v14       #delay:J
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-gtz v4, :cond_1a

    .line 415
    const-string v4, "ShutdownThread"

    const-string v5, "Shutdown wait timed out"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local v14           #delay:J
    :cond_17
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 425
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 426
    return-void

    .line 366
    .end local v17           #endShutTime:J
    .end local v29           #observer:Landroid/os/storage/IMountShutdownObserver;
    :catch_7
    move-exception v3

    move-object/from16 v21, v3

    .line 367
    .local v21, ex:Ljava/lang/Exception;
    const/16 v28, 0x1

    goto :goto_12

    .line 379
    .end local v21           #ex:Ljava/lang/Exception;
    :catch_8
    move-exception v3

    move-object/from16 v21, v3

    .line 380
    .restart local v21       #ex:Ljava/lang/Exception;
    const/16 v26, 0x1

    goto :goto_13

    .line 387
    .end local v21           #ex:Ljava/lang/Exception;
    :cond_18
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 336
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_a

    .line 407
    .restart local v17       #endShutTime:J
    .restart local v29       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_19
    :try_start_10
    const-string v4, "ShutdownThread"

    const-string v5, "MountService unavailable for shutdown"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    goto :goto_14

    .line 409
    :catch_9
    move-exception v4

    move-object/from16 v16, v4

    .line 410
    .restart local v16       #e:Ljava/lang/Exception;
    :try_start_11
    const-string v4, "ShutdownThread"

    const-string v5, "Exception during MountService shutdown"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 423
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    throw v4

    .line 419
    .restart local v14       #delay:J
    :cond_1a
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v4, v0

    invoke-virtual {v4, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_14

    .line 420
    :catch_a
    move-exception v4

    goto :goto_14

    .line 263
    .end local v12           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v13           #bluetoothOff:Z
    .end local v14           #delay:J
    .end local v17           #endShutTime:J
    .end local v24           #i:I
    .end local v26           #mdmEfsSyncDone:Z
    .end local v27           #mount:Landroid/os/storage/IMountService;
    .end local v28           #msmEfsSyncDone:Z
    .end local v29           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v30           #outStream:Ljava/io/PrintWriter;
    .end local v32           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v33           #radioOff:Z
    :catch_b
    move-exception v3

    goto/16 :goto_3

    .line 329
    .restart local v12       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v13       #bluetoothOff:Z
    .restart local v23       #fos:Ljava/io/FileOutputStream;
    .restart local v26       #mdmEfsSyncDone:Z
    .restart local v27       #mount:Landroid/os/storage/IMountService;
    .restart local v28       #msmEfsSyncDone:Z
    .restart local v30       #outStream:Ljava/io/PrintWriter;
    .restart local v32       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v33       #radioOff:Z
    :catchall_4
    move-exception v3

    goto/16 :goto_11

    .line 326
    :catch_c
    move-exception v3

    move-object/from16 v16, v3

    goto/16 :goto_10

    .line 317
    .end local v26           #mdmEfsSyncDone:Z
    .end local v30           #outStream:Ljava/io/PrintWriter;
    .restart local v31       #outStream:Ljava/io/PrintWriter;
    :catchall_5
    move-exception v3

    move-object/from16 v30, v31

    .end local v31           #outStream:Ljava/io/PrintWriter;
    .restart local v30       #outStream:Ljava/io/PrintWriter;
    goto/16 :goto_f

    .line 314
    .end local v30           #outStream:Ljava/io/PrintWriter;
    .restart local v31       #outStream:Ljava/io/PrintWriter;
    :catch_d
    move-exception v3

    move-object/from16 v16, v3

    move-object/from16 v30, v31

    .end local v31           #outStream:Ljava/io/PrintWriter;
    .restart local v30       #outStream:Ljava/io/PrintWriter;
    goto/16 :goto_e
.end method
