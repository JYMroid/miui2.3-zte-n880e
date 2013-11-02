.class public Lcom/android/settings/deviceinfo/Memory;
.super Landroid/preference/PreferenceActivity;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final DLG_CONFIRM_UNMOUNT:I = 0x1

.field private static final DLG_ERROR_UNMOUNT:I = 0x2

.field private static final MEMORY_ADDITIONAL_AVAIL:Ljava/lang/String; = "memory_additional_avail"

.field private static final MEMORY_ADDITIONAL_CATEGORY:Ljava/lang/String; = "memory_additional_category"

.field private static final MEMORY_ADDITIONAL_SIZE:Ljava/lang/String; = "memory_additional_size"

.field private static final MEMORY_INTERNAL_AVAIL:Ljava/lang/String; = "memory_internal_avail"

.field private static final MEMORY_INTERNAL_SIZE:Ljava/lang/String; = "memory_internal_size"

.field private static final MEMORY_SD_AVAIL:Ljava/lang/String; = "memory_sd_avail"

.field private static final MEMORY_SD_FORMAT:Ljava/lang/String; = "memory_sd_format"

.field private static final MEMORY_SD_GROUP:Ljava/lang/String; = "memory_sd"

.field private static final MEMORY_SD_MOUNT_TOGGLE:Ljava/lang/String; = "memory_sd_mount_toggle"

.field private static final MEMORY_SD_SIZE:Ljava/lang/String; = "memory_sd_size"

.field private static final TAG:Ljava/lang/String; = "Memory"

.field private static final localLOGV:Z


# instance fields
.field private formatToggles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntAvail:Landroid/preference/Preference;

.field private mIntSize:Landroid/preference/Preference;

.field private mMountService:Landroid/os/storage/IMountService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

.field mSdMountToggleAdded:Z

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mountToggles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sdPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 85
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->sdPath:Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mountToggles:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->formatToggles:Ljava/util/HashMap;

    .line 97
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 99
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 190
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$1;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 257
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$2;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->updateMemoryStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Memory;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/Memory;->doUnmount(Ljava/lang/String;Z)V

    return-void
.end method

.method private doUnmount(Ljava/lang/String;Z)V
    .locals 5
    .parameter "path"
    .parameter "force"

    .prologue
    const/4 v4, 0x0

    .line 292
    const v3, 0x7f080257

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 293
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 294
    .local v1, mountService:Landroid/os/storage/IMountService;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "memory_sd_mount_toggle"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 296
    .local v2, sdMountToggle:Landroid/preference/Preference;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 297
    const v3, 0x7f080258

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 298
    const v3, 0x7f080259

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 299
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 303
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x2

    invoke-direct {p0, v3, p1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 483
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAdditionalVolumePaths()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v6, volumes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "ro.additionalmounts"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, additionalVolumesProperty:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 105
    const-string v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, additionalVolumes:[Ljava/lang/String;
    move-object v3, v1

    .local v3, arr$:[Ljava/lang/String;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 107
    .local v0, additionalVolume:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 108
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    .end local v0           #additionalVolume:Ljava/lang/String;
    .end local v1           #additionalVolumes:[Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    return-object v6
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 217
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 218
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 219
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 224
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 221
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "Memory"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 315
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 316
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v3

    .line 317
    .local v3, stUsers:[I
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    move v4, v5

    .line 325
    :goto_0
    return v4

    .line 320
    :cond_0
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 321
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v1

    .line 322
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v5

    .line 323
    goto :goto_0

    .line 325
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private mount(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 348
    .local v0, mountService:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_0

    .line 349
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 355
    :goto_0
    return-void

    .line 351
    :cond_0
    const-string v1, "Memory"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showDialogInner(ILjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "path"

    .prologue
    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v0, bPath:Landroid/os/Bundle;
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 311
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/Memory;->showDialog(ILandroid/os/Bundle;)Z

    .line 312
    return-void
.end method

.method private unmount(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 331
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->hasAppsAccessingStorage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(ILjava/lang/String;)V

    .line 343
    :goto_0
    return-void

    .line 336
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/settings/deviceinfo/Memory;->doUnmount(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 340
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Memory"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private updateMemoryStatus()V
    .locals 23

    .prologue
    .line 358
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v17

    .line 359
    .local v17, status:Ljava/lang/String;
    const-string v14, ""

    .line 360
    .local v14, readOnly:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "memory_sd_mount_toggle"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->sdPath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 361
    .local v12, mount:Landroid/preference/Preference;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "memory_sd_format"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->sdPath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 362
    .local v10, format:Landroid/preference/Preference;
    const-string v20, "memory_sd_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 363
    .local v15, size:Landroid/preference/Preference;
    const-string v20, "memory_sd_avail"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 365
    .local v3, avail:Landroid/preference/Preference;
    const-string v20, "mounted_ro"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 366
    const-string v17, "mounted"

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f080252

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 370
    :cond_0
    const-string v20, "mounted"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 371
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v20

    if-nez v20, :cond_1

    .line 374
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 376
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    .line 380
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    .line 381
    .local v13, path:Ljava/io/File;
    new-instance v16, Landroid/os/StatFs;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 382
    .local v16, stat:Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v6, v0

    .line 383
    .local v6, blockSize:J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockCount()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 384
    .local v18, totalBlocks:J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v4, v0

    .line 386
    .local v4, availableBlocks:J
    mul-long v20, v18, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    mul-long v21, v4, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 389
    const/16 v20, 0x1

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 390
    const v20, 0x7f08024a

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 391
    const v20, 0x7f08024b

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 426
    .end local v4           #availableBlocks:J
    .end local v6           #blockSize:J
    .end local v13           #path:Ljava/io/File;
    .end local v16           #stat:Landroid/os/StatFs;
    .end local v18           #totalBlocks:J
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Memory;->getAdditionalVolumePaths()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 427
    .local v13, path:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "memory_additional_size"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 428
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "memory_additional_avail"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 429
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "memory_sd_mount_toggle"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 430
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "memory_sd_format"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 431
    if-eqz v15, :cond_2

    if-eqz v3, :cond_2

    .line 436
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v17

    .line 440
    :goto_2
    const-string v20, "mounted"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 442
    :try_start_2
    new-instance v16, Landroid/os/StatFs;

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 443
    .restart local v16       #stat:Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v6, v0

    .line 444
    .restart local v6       #blockSize:J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockCount()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 445
    .restart local v18       #totalBlocks:J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v4, v0

    .line 446
    .restart local v4       #availableBlocks:J
    mul-long v20, v18, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 447
    mul-long v20, v4, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v20

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 448
    const/16 v20, 0x1

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 449
    const v20, 0x7f08024a

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 450
    const v20, 0x7f08024b

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 451
    .end local v4           #availableBlocks:J
    .end local v6           #blockSize:J
    .end local v16           #stat:Landroid/os/StatFs;
    .end local v18           #totalBlocks:J
    :catch_0
    move-exception v20

    move-object/from16 v8, v20

    .line 454
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v17, "removed"

    .line 455
    goto/16 :goto_1

    .line 393
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #path:Ljava/lang/String;
    :catch_1
    move-exception v20

    move-object/from16 v8, v20

    .line 396
    .restart local v8       #e:Ljava/lang/IllegalArgumentException;
    const-string v17, "removed"

    .line 397
    goto/16 :goto_0

    .line 400
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_3
    const v20, 0x7f080251

    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 401
    const v20, 0x7f080251

    move-object v0, v3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 404
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v20

    if-nez v20, :cond_4

    .line 405
    const-string v20, "unmounted"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 406
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 408
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    .line 413
    :cond_4
    const-string v20, "unmounted"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    const-string v20, "nofs"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    const-string v20, "unmountable"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 416
    :cond_5
    const/16 v20, 0x1

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 417
    const v20, 0x7f08024d

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 418
    const v20, 0x7f08024e

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 420
    :cond_6
    const/16 v20, 0x0

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 421
    const v20, 0x7f08024d

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 422
    const v20, 0x7f08024c

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 437
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v13       #path:Ljava/lang/String;
    :catch_2
    move-exception v20

    move-object/from16 v9, v20

    .line 438
    .local v9, ex:Landroid/os/RemoteException;
    const-string v17, "unmounted"

    goto/16 :goto_2

    .line 457
    .end local v9           #ex:Landroid/os/RemoteException;
    :cond_7
    const v20, 0x7f080251

    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 458
    const v20, 0x7f080251

    move-object v0, v3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 459
    const-string v20, "unmounted"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    const-string v20, "nofs"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    const-string v20, "unmountable"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 462
    :cond_8
    const/16 v20, 0x1

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 463
    const v20, 0x7f08024d

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 464
    const v20, 0x7f08024e

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 466
    :cond_9
    const/16 v20, 0x0

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 467
    const v20, 0x7f08024d

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 468
    const v20, 0x7f08024c

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 473
    .end local v13           #path:Ljava/lang/String;
    :cond_a
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v13

    .line 474
    .local v13, path:Ljava/io/File;
    new-instance v16, Landroid/os/StatFs;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 475
    .restart local v16       #stat:Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v6, v0

    .line 476
    .restart local v6       #blockSize:J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockCount()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 477
    .restart local v18       #totalBlocks:J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v4, v0

    .line 478
    .restart local v4       #availableBlocks:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mIntSize:Landroid/preference/Preference;

    move-object/from16 v20, v0

    mul-long v21, v18, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mIntAvail:Landroid/preference/Preference;

    move-object/from16 v20, v0

    mul-long v21, v4, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 480
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->finish()V

    .line 488
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v7, :cond_0

    .line 120
    const-string v7, "storage"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 121
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v8, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 124
    :cond_0
    const v7, 0x7f04000c

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    .line 128
    const-string v7, "memory_sd_mount_toggle"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "memory_sd_mount_toggle"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->sdPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 129
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mountToggles:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "memory_sd_mount_toggle"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->sdPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->sdPath:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v7, "memory_sd_format"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "memory_sd_format"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->sdPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 131
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->formatToggles:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "memory_sd_format"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->sdPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->sdPath:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v7, "memory_sd"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

    .line 134
    const-string v7, "memory_internal_size"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mIntSize:Landroid/preference/Preference;

    .line 135
    const-string v7, "memory_internal_avail"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mIntAvail:Landroid/preference/Preference;

    .line 137
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getAdditionalVolumePaths()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 138
    .local v4, path:Ljava/lang/String;
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 139
    .local v1, category:Landroid/preference/PreferenceCategory;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "memory_additional_category"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 140
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f080246

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 143
    new-instance v5, Landroid/preference/Preference;

    const/4 v7, 0x0

    const v8, 0x101008d

    invoke-direct {v5, p0, v7, v8}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    .local v5, size:Landroid/preference/Preference;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "memory_additional_size"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 146
    const v7, 0x7f080249

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 147
    const v7, 0x7f080251

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 148
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 150
    new-instance v0, Landroid/preference/Preference;

    const/4 v7, 0x0

    const v8, 0x101008d

    invoke-direct {v0, p0, v7, v8}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    .local v0, available:Landroid/preference/Preference;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "memory_additional_avail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 153
    const v7, 0x7f080248

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 154
    const v7, 0x7f080251

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 155
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 157
    new-instance v6, Landroid/preference/Preference;

    const/4 v7, 0x0

    const v8, 0x101008e

    invoke-direct {v6, p0, v7, v8}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 159
    .local v6, unmount:Landroid/preference/Preference;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "memory_sd_mount_toggle"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 160
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 161
    const v7, 0x7f08024a

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 162
    const v7, 0x7f08024b

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 163
    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 164
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mountToggles:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "memory_sd_mount_toggle"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v2, Landroid/preference/Preference;

    const/4 v7, 0x0

    const v8, 0x101008e

    invoke-direct {v2, p0, v7, v8}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    .local v2, format:Landroid/preference/Preference;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "memory_sd_format"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 169
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 170
    const v7, 0x7f08024f

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 171
    const v7, 0x7f080250

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 172
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 173
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->formatToggles:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "memory_sd_format"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 176
    .end local v0           #available:Landroid/preference/Preference;
    .end local v1           #category:Landroid/preference/PreferenceCategory;
    .end local v2           #format:Landroid/preference/Preference;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #size:Landroid/preference/Preference;
    .end local v6           #unmount:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "args"

    .prologue
    const v4, 0x7f08031c

    const/4 v3, 0x0

    .line 266
    const-string v1, "path"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, path:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    move-object v1, v3

    .line 287
    :goto_0
    return-object v1

    .line 269
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080253

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/deviceinfo/Memory$3;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/deviceinfo/Memory$3;-><init>(Lcom/android/settings/deviceinfo/Memory;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800cb

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080254

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 280
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080255

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080256

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 212
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 213
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 204
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    .line 229
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, clickedItem:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Memory;->mountToggles:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Memory;->mountToggles:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 233
    .local v3, path:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 235
    .local v4, status:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 239
    :goto_0
    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->unmount(Ljava/lang/String;)V

    :goto_1
    move v5, v6

    .line 254
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #status:Ljava/lang/String;
    :goto_2
    return v5

    .line 236
    .restart local v3       #path:Ljava/lang/String;
    .restart local v4       #status:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 237
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "unmounted"

    goto :goto_0

    .line 242
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->mount(Ljava/lang/String;)V

    goto :goto_1

    .line 245
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #status:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Memory;->formatToggles:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 246
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Memory;->formatToggles:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 247
    .restart local v3       #path:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "path"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-class v5, Lcom/android/settings/MediaFormat;

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    move v5, v6

    .line 251
    goto :goto_2

    .line 254
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #path:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/Memory;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->updateMemoryStatus()V

    .line 188
    return-void
.end method
