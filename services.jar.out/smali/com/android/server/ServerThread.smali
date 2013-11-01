.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$AdbSettingsObserver;
    }
.end annotation


# static fields
.field private static final INCLUDE_DEMO:Z = false

.field private static final LOG_BOOT_PROGRESS_SYSTEM_RUN:I = 0xbc2

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServerThread;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 73

    .prologue
    const/16 v5, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {v5, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v5, -0x2

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/os/Process;->setCanSelfBackground(Z)V

    const-string v5, "sys.shutdown.requested"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .local v61, shutdownAction:Ljava/lang/String;
    if-eqz v61, :cond_0

    invoke-virtual/range {v61 .. v61}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    move-object/from16 v0, v61

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_6

    const/4 v5, 0x1

    move/from16 v58, v5

    .local v58, reboot:Z
    :goto_0
    invoke-virtual/range {v61 .. v61}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_7

    const/4 v5, 0x1

    invoke-virtual/range {v61 .. v61}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v61

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .local v57, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v58

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .end local v57           #reason:Ljava/lang/String;
    .end local v58           #reboot:Z
    :cond_0
    const-string v5, "ro.factorytest"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .local v44, factoryTestStr:Ljava/lang/String;
    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    move/from16 v43, v5

    .local v43, factoryTest:I
    :goto_2
    const/16 v49, 0x0

    .local v49, lights:Lcom/android/server/LightsService;
    const/16 v56, 0x0

    .local v56, power:Lcom/android/server/PowerManagerService;
    const/16 v38, 0x0

    .local v38, dmm:Lcom/android/server/DynamicMemoryManagerService;
    const/16 v28, 0x0

    .local v28, battery:Lcom/android/server/BatteryService;
    const/16 v35, 0x0

    .local v35, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v55, 0x0

    .local v55, pm:Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    .local v6, context:Landroid/content/Context;
    const/16 v72, 0x0

    .local v72, wm:Lcom/android/server/WindowManagerService;
    const/16 v29, 0x0

    .local v29, bluetooth:Landroid/server/BluetoothService;
    const/16 v31, 0x0

    .local v31, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v33, 0x0

    .local v33, bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    const/16 v45, 0x0

    .local v45, headset:Lcom/android/server/HeadsetObserver;
    const/16 v40, 0x0

    .local v40, dock:Lcom/android/server/DockObserver;
    const/16 v68, 0x0

    .local v68, usb:Lcom/android/server/usb/UsbService;
    const/16 v66, 0x0

    .local v66, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v59, 0x0

    .local v59, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v64, 0x0

    .local v64, throttle:Lcom/android/server/ThrottleService;
    :try_start_0
    const-string v5, "SystemServer"

    const-string v7, "Entropy Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "entropy"

    new-instance v7, Lcom/android/server/EntropyService;

    invoke-direct {v7}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v7, "Power Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/PowerManagerService;

    invoke-direct {v8}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2a

    .end local v56           #power:Lcom/android/server/PowerManagerService;
    .local v8, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v5, "power"

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v7, "Activity Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v43 .. v43}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v6

    const-string v5, "SystemServer"

    const-string v7, "Telephony Registry"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "telephony.registry"

    new-instance v7, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v7, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    const-string v5, "SystemServer"

    const-string v7, "Package Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v43, :cond_9

    const/4 v5, 0x1

    :goto_3
    invoke-static {v6, v5}, Lcom/android/server/PackageManagerService;->main(Landroid/content/Context;Z)Landroid/content/pm/IPackageManager;

    move-result-object v55

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v5, "SystemServer"

    const-string v7, "Account Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "account"

    new-instance v7, Landroid/accounts/AccountManagerService;

    invoke-direct {v7, v6}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    :try_start_3
    const-string v5, "SystemServer"

    const-string v7, "Content Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move/from16 v0, v43

    move v1, v5

    if-ne v0, v1, :cond_a

    const/4 v5, 0x1

    :goto_5
    invoke-static {v6, v5}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    const-string v5, "SystemServer"

    const-string v7, "System Content Providers"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v5, "SystemServer"

    const-string v7, "Battery Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/BatteryService;

    invoke-direct {v7, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v28           #battery:Lcom/android/server/BatteryService;
    .local v7, battery:Lcom/android/server/BatteryService;
    :try_start_4
    const-string v5, "battery"

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v50, Lcom/android/server/LightsService;

    move-object/from16 v0, v50

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2b

    .end local v49           #lights:Lcom/android/server/LightsService;
    .local v50, lights:Lcom/android/server/LightsService;
    :try_start_5
    const-string v5, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    move-object v0, v8

    move-object v1, v6

    move-object/from16 v2, v50

    move-object v3, v5

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    const-string v5, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/server/AlarmManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V

    .local v9, alarm:Lcom/android/server/AlarmManagerService;
    const-string v5, "alarm"

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v10, "Init Watchdog"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    const-string v5, "SystemServer"

    const-string v9, "Window Manager"

    .end local v9           #alarm:Lcom/android/server/AlarmManagerService;
    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move/from16 v0, v43

    move v1, v5

    if-eq v0, v1, :cond_b

    const/4 v5, 0x1

    :goto_6
    invoke-static {v6, v8, v5}, Lcom/android/server/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)Lcom/android/server/WindowManagerService;

    move-result-object v72

    const-string v5, "window"

    move-object v0, v5

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    move-object v0, v5

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/WindowManagerService;)V

    move-object v0, v6

    move/from16 v1, v43

    invoke-static {v0, v1}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->loadServices(Landroid/content/Context;I)V

    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "SystemServer"

    const-string v9, "Bluetooth Service (emulator)"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v30, Landroid/server/BluetoothService;

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .local v30, bluetooth:Landroid/server/BluetoothService;
    :try_start_6
    const-string v5, "bluetooth"

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {v30 .. v30}, Landroid/server/BluetoothService;->initAfterRegistration()V

    new-instance v32, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v32

    move-object v1, v6

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2c

    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v32, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_7
    const-string v5, "bluetooth_a2dp"

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v34, Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    move-object/from16 v0, v34

    move-object v1, v6

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2d

    .end local v33           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .local v34, bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    :try_start_8
    const-string v5, "bluetooth_hid"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2e

    move-object/from16 v33, v34

    .end local v34           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v33       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    move-object/from16 v31, v32

    .end local v32           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v31       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v29, v30

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    :goto_7
    :try_start_9
    const-string v5, "SystemServer"

    const-string v9, "DynamicMemoryManager Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v39, Lcom/android/server/DynamicMemoryManagerService;

    move-object/from16 v0, v39

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/DynamicMemoryManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    .end local v38           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .local v39, dmm:Lcom/android/server/DynamicMemoryManagerService;
    move-object/from16 v38, v39

    .end local v39           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v38       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    move-object/from16 v49, v50

    .end local v50           #lights:Lcom/android/server/LightsService;
    .restart local v49       #lights:Lcom/android/server/LightsService;
    :goto_8
    const/16 v36, 0x0

    .local v36, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v62, 0x0

    .local v62, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v47, 0x0

    .local v47, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v25, 0x0

    .local v25, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v53, 0x0

    .local v53, notification:Lcom/android/server/NotificationManagerService;
    const/16 v70, 0x0

    .local v70, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v51, 0x0

    .local v51, location:Lcom/android/server/LocationManagerService;
    const/4 v5, 0x1

    move/from16 v0, v43

    move v1, v5

    if-eq v0, v1, :cond_1

    :try_start_a
    const-string v5, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v37, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v37

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .end local v36           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v37, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_b
    const-string v5, "device_policy"

    move-object v0, v5

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_29

    move-object/from16 v36, v37

    .end local v37           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v36       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_9
    :try_start_c
    const-string v5, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v63, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v63

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .end local v62           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v63, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_d
    const-string v5, "statusbar"

    move-object v0, v5

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_28

    move-object/from16 v62, v63

    .end local v63           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v62       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_a
    :try_start_e
    const-string v5, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v6}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    :goto_b
    :try_start_f
    const-string v5, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v48, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v48

    move-object v1, v6

    move-object/from16 v2, v62

    invoke-direct {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    .end local v47           #imm:Lcom/android/server/InputMethodManagerService;
    .local v48, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_10
    const-string v5, "input_method"

    move-object v0, v5

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_27

    move-object/from16 v47, v48

    .end local v48           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v47       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_11
    const-string v5, "SystemServer"

    const-string v9, "NetStat Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "netstat"

    new-instance v9, Lcom/android/server/NetStatService;

    invoke-direct {v9, v6}, Lcom/android/server/NetStatService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    :goto_d
    :try_start_12
    const-string v5, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "network_management"

    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    :goto_e
    :try_start_13
    const-string v5, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->getInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;

    move-result-object v35

    const-string v5, "connectivity"

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/ConnectivityService;->startCne()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    :goto_f
    :try_start_14
    const-string v5, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v65, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v65

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a

    .end local v64           #throttle:Lcom/android/server/ThrottleService;
    .local v65, throttle:Lcom/android/server/ThrottleService;
    :try_start_15
    const-string v5, "throttle"

    move-object v0, v5

    move-object/from16 v1, v65

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_26

    move-object/from16 v64, v65

    .end local v65           #throttle:Lcom/android/server/ThrottleService;
    .restart local v64       #throttle:Lcom/android/server/ThrottleService;
    :goto_10
    :try_start_16
    const-string v5, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "accessibility"

    new-instance v9, Lcom/android/server/AccessibilityManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b

    :goto_11
    :try_start_17
    const-string v5, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v6}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_c

    :goto_12
    :try_start_18
    const-string v5, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v54, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v54

    move-object v1, v6

    move-object/from16 v2, v62

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_d

    .end local v53           #notification:Lcom/android/server/NotificationManagerService;
    .local v54, notification:Lcom/android/server/NotificationManagerService;
    :try_start_19
    const-string v5, "notification"

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_25

    move-object/from16 v53, v54

    .end local v54           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v53       #notification:Lcom/android/server/NotificationManagerService;
    :goto_13
    :try_start_1a
    const-string v5, "SystemServer"

    const-string v9, "HDMI Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "hdmi"

    new-instance v9, Lcom/android/server/HDMIService;

    invoke-direct {v9, v6}, Lcom/android/server/HDMIService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_e

    :goto_14
    :try_start_1b
    const-string v5, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v6}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_f

    :goto_15
    :try_start_1c
    const-string v5, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v52, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v52

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_10

    .end local v51           #location:Lcom/android/server/LocationManagerService;
    .local v52, location:Lcom/android/server/LocationManagerService;
    :try_start_1d
    const-string v5, "location"

    move-object v0, v5

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_24

    move-object/from16 v51, v52

    .end local v52           #location:Lcom/android/server/LocationManagerService;
    .restart local v51       #location:Lcom/android/server/LocationManagerService;
    :goto_16
    :try_start_1e
    const-string v5, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v6}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_11

    :goto_17
    :try_start_1f
    const-string v5, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v6, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_12

    :goto_18
    :try_start_20
    const-string v5, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v71, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v71

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_13

    .end local v70           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v71, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_21
    const-string v5, "wallpaper"

    move-object v0, v5

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_23

    move-object/from16 v70, v71

    .end local v71           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v70       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_19
    :try_start_22
    const-string v5, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v6}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_14

    :goto_1a
    :try_start_23
    const-string v5, "SystemServer"

    const-string v9, "Headset Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v46, Lcom/android/server/HeadsetObserver;

    move-object/from16 v0, v46

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/HeadsetObserver;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_15

    .end local v45           #headset:Lcom/android/server/HeadsetObserver;
    .local v46, headset:Lcom/android/server/HeadsetObserver;
    move-object/from16 v45, v46

    .end local v46           #headset:Lcom/android/server/HeadsetObserver;
    .restart local v45       #headset:Lcom/android/server/HeadsetObserver;
    :goto_1b
    :try_start_24
    const-string v5, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v41, Lcom/android/server/DockObserver;

    move-object/from16 v0, v41

    move-object v1, v6

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_16

    .end local v40           #dock:Lcom/android/server/DockObserver;
    .local v41, dock:Lcom/android/server/DockObserver;
    move-object/from16 v40, v41

    .end local v41           #dock:Lcom/android/server/DockObserver;
    .restart local v40       #dock:Lcom/android/server/DockObserver;
    :goto_1c
    :try_start_25
    const-string v5, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v69, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v69

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_17

    .end local v68           #usb:Lcom/android/server/usb/UsbService;
    .local v69, usb:Lcom/android/server/usb/UsbService;
    :try_start_26
    const-string v5, "usb"

    move-object v0, v5

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_22

    move-object/from16 v68, v69

    .end local v69           #usb:Lcom/android/server/usb/UsbService;
    .restart local v68       #usb:Lcom/android/server/usb/UsbService;
    :goto_1d
    :try_start_27
    const-string v5, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v67, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v67

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_18

    .end local v66           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v67, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v66, v67

    .end local v67           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v66       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_1e
    :try_start_28
    const-string v5, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_19

    :goto_1f
    :try_start_29
    const-string v5, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v26, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1a

    .end local v25           #appWidget:Lcom/android/server/AppWidgetService;
    .local v26, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_2a
    const-string v5, "appwidget"

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_21

    move-object/from16 v25, v26

    .end local v26           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v25       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_20
    :try_start_2b
    const-string v5, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v60, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v60

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1b

    .end local v59           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v60, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v59, v60

    .end local v60           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v59       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_21
    :try_start_2c
    const-string v5, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1c

    :goto_22
    :try_start_2d
    const-string v5, "SystemServer"

    const-string v9, "BT FM Power Management Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "bt_fm_radio"

    new-instance v9, Lcom/broadcom/bt/service/framework/PowerManagementService;

    invoke-direct {v9, v6}, Lcom/broadcom/bt/service/framework/PowerManagementService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1d

    :goto_23
    :try_start_2e
    const-string v5, "SystemServer"

    const-string v9, "AtCmdFwd Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v27, Lcom/android/internal/atfwd/AtCmdFwdService;

    move-object/from16 v0, v27

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/internal/atfwd/AtCmdFwdService;-><init>(Landroid/content/Context;)V

    .local v27, atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    const-string v5, "AtCmdFwd"

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1e

    .end local v6           #context:Landroid/content/Context;
    .end local v27           #atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    :cond_1
    :goto_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "adb_enabled"

    const-string v9, "1"

    const-string v10, "persist.service.adb.enable"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x1

    :goto_25
    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "adb_enabled"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/ServerThread$AdbSettingsObserver;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ServerThread$AdbSettingsObserver;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v5, v6, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {v72 .. v72}, Lcom/android/server/WindowManagerService;->detectSafeMode()Z

    move-result v20

    .local v20, safeMode:Z
    if-eqz v20, :cond_f

    :try_start_2f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->enterSafeMode()V

    const/4 v5, 0x1

    sput-boolean v5, Ldalvik/system/Zygote;->systemInSafeMode:Z

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->disableJitCompilation()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_20

    :goto_26
    if-eqz v36, :cond_2

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V

    :cond_2
    if-eqz v53, :cond_3

    invoke-virtual/range {v53 .. v53}, Lcom/android/server/NotificationManagerService;->systemReady()V

    :cond_3
    if-eqz v62, :cond_4

    invoke-virtual/range {v62 .. v62}, Lcom/android/server/StatusBarManagerService;->systemReady()V

    :cond_4
    invoke-virtual/range {v72 .. v72}, Lcom/android/server/WindowManagerService;->systemReady()V

    invoke-virtual {v8}, Lcom/android/server/PowerManagerService;->systemReady()V

    :try_start_30
    invoke-interface/range {v55 .. v55}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_30} :catch_1f

    :goto_27
    move-object/from16 v12, v62

    .local v12, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object v13, v7

    .local v13, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v14, v35

    .local v14, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v15, v40

    .local v15, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v16, v68

    .local v16, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v24, v64

    .local v24, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v17, v66

    .local v17, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v19, v25

    .local v19, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v21, v70

    .local v21, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v22, v47

    .local v22, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v18, v59

    .local v18, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v23, v51

    .local v23, locationF:Lcom/android/server/LocationManagerService;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/ServerThread$1;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v24}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Lcom/android/server/StatusBarManagerService;Lcom/android/server/BatteryService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/ThrottleService;)V

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "SystemServer"

    const-string v6, "Enabled StrictMode for system server main thread."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v5, "SystemServer"

    const-string v6, "System ServerThread is exiting!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v12           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v13           #batteryF:Lcom/android/server/BatteryService;
    .end local v14           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v15           #dockF:Lcom/android/server/DockObserver;
    .end local v16           #usbF:Lcom/android/server/usb/UsbService;
    .end local v17           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v18           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v19           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v20           #safeMode:Z
    .end local v21           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v22           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v23           #locationF:Lcom/android/server/LocationManagerService;
    .end local v24           #throttleF:Lcom/android/server/ThrottleService;
    .end local v25           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v33           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .end local v35           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v36           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v38           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .end local v40           #dock:Lcom/android/server/DockObserver;
    .end local v43           #factoryTest:I
    .end local v44           #factoryTestStr:Ljava/lang/String;
    .end local v45           #headset:Lcom/android/server/HeadsetObserver;
    .end local v47           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v49           #lights:Lcom/android/server/LightsService;
    .end local v51           #location:Lcom/android/server/LocationManagerService;
    .end local v53           #notification:Lcom/android/server/NotificationManagerService;
    .end local v55           #pm:Landroid/content/pm/IPackageManager;
    .end local v59           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v62           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v64           #throttle:Lcom/android/server/ThrottleService;
    .end local v66           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v68           #usb:Lcom/android/server/usb/UsbService;
    .end local v70           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v72           #wm:Lcom/android/server/WindowManagerService;
    :cond_6
    const/4 v5, 0x0

    move/from16 v58, v5

    goto/16 :goto_0

    .restart local v58       #reboot:Z
    :cond_7
    const/16 v57, 0x0

    .restart local v57       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .end local v57           #reason:Ljava/lang/String;
    .end local v58           #reboot:Z
    .restart local v44       #factoryTestStr:Ljava/lang/String;
    :cond_8
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v43, v5

    goto/16 :goto_2

    .restart local v6       #context:Landroid/content/Context;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    .restart local v28       #battery:Lcom/android/server/BatteryService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    .restart local v31       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v33       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v35       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v38       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v40       #dock:Lcom/android/server/DockObserver;
    .restart local v43       #factoryTest:I
    .restart local v45       #headset:Lcom/android/server/HeadsetObserver;
    .restart local v49       #lights:Lcom/android/server/LightsService;
    .restart local v55       #pm:Landroid/content/pm/IPackageManager;
    .restart local v59       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v64       #throttle:Lcom/android/server/ThrottleService;
    .restart local v66       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v68       #usb:Lcom/android/server/usb/UsbService;
    .restart local v72       #wm:Lcom/android/server/WindowManagerService;
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_3

    :catch_0
    move-exception v5

    move-object/from16 v42, v5

    .local v42, e:Ljava/lang/Throwable;
    :try_start_31
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Account Manager"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_1

    goto/16 :goto_4

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    move-object/from16 v42, v5

    move-object/from16 v7, v28

    .end local v28           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    .local v42, e:Ljava/lang/RuntimeException;
    :goto_28
    const-string v5, "System"

    const-string v9, "Failure starting core service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v42           #e:Ljava/lang/RuntimeException;
    .restart local v28       #battery:Lcom/android/server/BatteryService;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_5

    .end local v28           #battery:Lcom/android/server/BatteryService;
    .end local v49           #lights:Lcom/android/server/LightsService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    .restart local v50       #lights:Lcom/android/server/LightsService;
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_c
    const/4 v5, 0x1

    move/from16 v0, v43

    move v1, v5

    if-ne v0, v1, :cond_d

    :try_start_32
    const-string v5, "SystemServer"

    const-string v9, "Registering null Bluetooth Service (factory test)"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "bluetooth"

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_7

    :catch_2
    move-exception v5

    move-object/from16 v42, v5

    move-object/from16 v49, v50

    .end local v50           #lights:Lcom/android/server/LightsService;
    .restart local v49       #lights:Lcom/android/server/LightsService;
    goto :goto_28

    .end local v49           #lights:Lcom/android/server/LightsService;
    .restart local v50       #lights:Lcom/android/server/LightsService;
    :cond_d
    const-string v5, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v30, Landroid/server/BluetoothService;

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_2

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .restart local v30       #bluetooth:Landroid/server/BluetoothService;
    :try_start_33
    const-string v5, "bluetooth"

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {v30 .. v30}, Landroid/server/BluetoothService;->initAfterRegistration()V

    new-instance v32, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v32

    move-object v1, v6

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_2c

    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v32       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_34
    const-string v5, "bluetooth_a2dp"

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v34, Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    move-object/from16 v0, v34

    move-object v1, v6

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_34} :catch_2d

    .end local v33           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v34       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    :try_start_35
    const-string v5, "bluetooth_hid"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_2e

    move-object/from16 v33, v34

    .end local v34           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v33       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    move-object/from16 v31, v32

    .end local v32           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v31       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v29, v30

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_7

    .end local v50           #lights:Lcom/android/server/LightsService;
    .restart local v25       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v36       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v47       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v49       #lights:Lcom/android/server/LightsService;
    .restart local v51       #location:Lcom/android/server/LocationManagerService;
    .restart local v53       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v62       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v70       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v5

    move-object/from16 v42, v5

    .local v42, e:Ljava/lang/Throwable;
    :goto_29
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DevicePolicyService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    :goto_2a
    const-string v5, "SystemServer"

    const-string v9, "Failure starting StatusBarManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Clipboard Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    :goto_2b
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Input Manager Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetStat Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetworkManagement Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Connectivity Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    :goto_2c
    const-string v5, "SystemServer"

    const-string v9, "Failure starting ThrottleService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Accessibility Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Mount Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    :goto_2d
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Notification Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting HDMI Service "

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DeviceStorageMonitor service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    :goto_2e
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Location Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Search Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DropBoxManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    :goto_2f
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Wallpaper Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Audio Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting HeadsetObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DockObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    :goto_30
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UsbService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UiModeManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    :goto_31
    const-string v5, "SystemServer"

    const-string v9, "Failure starting AppWidget Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Recognition Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DiskStats Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting BT FM Power Management Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    .end local v42           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v5

    move-object/from16 v42, v5

    .restart local v42       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting AtCmdFwd Service"

    .end local v6           #context:Landroid/content/Context;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .end local v42           #e:Ljava/lang/Throwable;
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_25

    .restart local v20       #safeMode:Z
    :cond_f
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_26

    :catch_1f
    move-exception v5

    goto/16 :goto_27

    :catch_20
    move-exception v5

    goto/16 :goto_26

    .end local v20           #safeMode:Z
    .end local v25           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v6       #context:Landroid/content/Context;
    .restart local v26       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_21
    move-exception v5

    move-object/from16 v42, v5

    move-object/from16 v25, v26

    .end local v26           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v25       #appWidget:Lcom/android/server/AppWidgetService;
    goto :goto_31

    .end local v68           #usb:Lcom/android/server/usb/UsbService;
    .restart local v69       #usb:Lcom/android/server/usb/UsbService;
    :catch_22
    move-exception v5

    move-object/from16 v42, v5

    move-object/from16 v68, v69

    .end local v69           #usb:Lcom/android/server/usb/UsbService;
    .restart local v68       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_30

    .end local v70           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v71       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_23
    move-exception v5

    move-object/from16 v42, v5

    move-object/from16 v70, v71

    .end local v71           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v70       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_2f

    .end local v51           #location:Lcom/android/server/LocationManagerService;
    .restart local v52       #location:Lcom/android/server/LocationManagerService;
    :catch_24
    move-exception v5

    move-object/from16 v42, v5

    move-object/from16 v51, v52

    .end local v52           #location:Lcom/android/server/LocationManagerService;
    .restart local v51       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_2e

    .end local v53           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v54       #notification:Lcom/android/server/NotificationManagerService;
    :catch_25
    move-exception v5

    move-object/from16 v42, v5

    move-object/from16 v53, v54

    .end local v54           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v53       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_2d

    .end local v64           #throttle:Lcom/android/server/ThrottleService;
    .restart local v65       #throttle:Lcom/android/server/ThrottleService;
    :catch_26
    move-exception v5

    move-object/from16 v42, v5

    move-object/from16 v64, v65

    .end local v65           #throttle:Lcom/android/server/ThrottleService;
    .restart local v64       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_2c

    .end local v47           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v48       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_27
    move-exception v5

    move-object/from16 v42, v5

    move-object/from16 v47, v48

    .end local v48           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v47       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_2b

    .end local v62           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v63       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_28
    move-exception v5

    move-object/from16 v42, v5

    move-object/from16 v62, v63

    .end local v63           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v62       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_2a

    .end local v36           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v37       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_29
    move-exception v5

    move-object/from16 v42, v5

    move-object/from16 v36, v37

    .end local v37           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v36       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_29

    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v25           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v36           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v47           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v51           #location:Lcom/android/server/LocationManagerService;
    .end local v53           #notification:Lcom/android/server/NotificationManagerService;
    .end local v62           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v70           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v28       #battery:Lcom/android/server/BatteryService;
    .restart local v56       #power:Lcom/android/server/PowerManagerService;
    :catch_2a
    move-exception v5

    move-object/from16 v42, v5

    move-object/from16 v7, v28

    .end local v28           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v8, v56

    .end local v56           #power:Lcom/android/server/PowerManagerService;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_28

    :catch_2b
    move-exception v5

    move-object/from16 v42, v5

    goto/16 :goto_28

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .end local v49           #lights:Lcom/android/server/LightsService;
    .restart local v30       #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #lights:Lcom/android/server/LightsService;
    :catch_2c
    move-exception v5

    move-object/from16 v42, v5

    move-object/from16 v29, v30

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v49, v50

    .end local v50           #lights:Lcom/android/server/LightsService;
    .restart local v49       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_28

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v49           #lights:Lcom/android/server/LightsService;
    .restart local v30       #bluetooth:Landroid/server/BluetoothService;
    .restart local v32       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v50       #lights:Lcom/android/server/LightsService;
    :catch_2d
    move-exception v5

    move-object/from16 v42, v5

    move-object/from16 v31, v32

    .end local v32           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v31       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v29, v30

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v49, v50

    .end local v50           #lights:Lcom/android/server/LightsService;
    .restart local v49       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_28

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v33           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .end local v49           #lights:Lcom/android/server/LightsService;
    .restart local v30       #bluetooth:Landroid/server/BluetoothService;
    .restart local v32       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v34       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v50       #lights:Lcom/android/server/LightsService;
    :catch_2e
    move-exception v5

    move-object/from16 v42, v5

    move-object/from16 v33, v34

    .end local v34           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v33       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    move-object/from16 v31, v32

    .end local v32           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v31       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v29, v30

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v49, v50

    .end local v50           #lights:Lcom/android/server/LightsService;
    .restart local v49       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_28
.end method
