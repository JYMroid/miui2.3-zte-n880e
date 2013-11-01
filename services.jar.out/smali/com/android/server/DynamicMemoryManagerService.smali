.class Lcom/android/server/DynamicMemoryManagerService;
.super Ljava/lang/Object;
.source "DynamicMemoryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;
    }
.end annotation


# static fields
.field private static final ACTION_DPD_START:Ljava/lang/String; = "com.android.server.DMMService.action.DPD_START"

.field private static final ACTION_DPD_STOP:Ljava/lang/String; = "com.android.server.DMMService.action.DPD_STOP"


# instance fields
.field private final DEBUG:Z

.field private DPD_START:Z

.field private SCREEN_ON:Z

.field private START_ALARM_SET:Z

.field private STOP_ALARM_SET:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStartAlarmManager:Landroid/app/AlarmManager;

.field private mStartIntent:Landroid/content/Intent;

.field private mStartPendingIntent:Landroid/app/PendingIntent;

.field private mState:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

.field private mStopAlarmManager:Landroid/app/AlarmManager;

.field private mStopIntent:Landroid/content/Intent;

.field private mStopPendingIntent:Landroid/app/PendingIntent;

.field private prevStartHr:I

.field private prevStartMin:I

.field private prevStopHr:I

.field private prevStopMin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string v7, "alarm"

    const-string v5, "0"

    const-string v4, "DMM Service"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DMM Service"

    iput-object v4, p0, Lcom/android/server/DynamicMemoryManagerService;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/DynamicMemoryManagerService;->SCREEN_ON:Z

    iput-boolean v3, p0, Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z

    iput-boolean v3, p0, Lcom/android/server/DynamicMemoryManagerService;->START_ALARM_SET:Z

    iput-boolean v3, p0, Lcom/android/server/DynamicMemoryManagerService;->STOP_ALARM_SET:Z

    iput v3, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartHr:I

    iput v3, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartMin:I

    iput v3, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopHr:I

    iput v3, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopMin:I

    iput-boolean v3, p0, Lcom/android/server/DynamicMemoryManagerService;->DEBUG:Z

    new-instance v0, Lcom/android/server/DynamicMemoryManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DynamicMemoryManagerService$1;-><init>(Lcom/android/server/DynamicMemoryManagerService;)V

    iput-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/DynamicMemoryManagerService;->mContext:Landroid/content/Context;

    const-string v0, "DMM Service"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.dev.dmm.dpd.start_address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.dev.dmm.dpd.start_address"

    const-string v2, "0"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ro.dev.dmm.dpd.start_address"

    const-string v1, "0"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->ACTIVE:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    iput-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mState:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->registerForBroadcasts()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.DMMService.action.DPD_START"

    invoke-direct {v0, v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mStartIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.DMMService.action.DPD_STOP"

    invoke-direct {v0, v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mStopIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mStartIntent:Landroid/content/Intent;

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mStartPendingIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mStopIntent:Landroid/content/Intent;

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mStopPendingIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mStartAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mStopAlarmManager:Landroid/app/AlarmManager;

    const-string v0, "DMM Service"

    const-string v0, "DynamicMemoryManager Service Initialized"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "DMM Service"

    const-string v0, "DynamicMemoryManager Service Disabled."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/DynamicMemoryManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->manageAlarms()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/DynamicMemoryManagerService;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DynamicMemoryManagerService;->enableUnstableMemory(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/DynamicMemoryManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/DynamicMemoryManagerService;->SCREEN_ON:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/DynamicMemoryManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/DynamicMemoryManagerService;->SCREEN_ON:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/DynamicMemoryManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->checkCurrentStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/DynamicMemoryManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/DynamicMemoryManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/DynamicMemoryManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/DynamicMemoryManagerService;->START_ALARM_SET:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/DynamicMemoryManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/DynamicMemoryManagerService;->STOP_ALARM_SET:Z

    return p1
.end method

.method private cancelStartAlarm()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mStartAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mStartPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DynamicMemoryManagerService;->START_ALARM_SET:Z

    const/4 v0, 0x1

    return v0
.end method

.method private cancelStopAlarm()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mStopAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mStopPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DynamicMemoryManagerService;->STOP_ALARM_SET:Z

    const/4 v0, 0x1

    return v0
.end method

.method private checkCurrentStatus()V
    .locals 14

    .prologue
    const/16 v13, 0xd

    const/4 v4, 0x5

    const/4 v7, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .local v10, calendar:Ljava/util/Calendar;
    const/4 v9, 0x0

    .local v9, StopDayOfMonth:I
    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->dpdEnabled()I

    move-result v2

    if-ne v2, v11, :cond_3

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget v2, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartHr:I

    iget v3, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopHr:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartHr:I

    iget v3, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopHr:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartMin:I

    iget v3, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopMin:I

    if-le v2, v3, :cond_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    :cond_1
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .local v8, NowTime:Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .local v0, StartTime:Landroid/text/format/Time;
    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartMin:I

    iget v3, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartHr:I

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .local v1, StopTime:Landroid/text/format/Time;
    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopMin:I

    iget v4, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopHr:I

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move v5, v9

    invoke-virtual/range {v1 .. v7}, Landroid/text/format/Time;->set(IIIIII)V

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v8, v1}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v11, p0, Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z

    .end local v0           #StartTime:Landroid/text/format/Time;
    .end local v1           #StopTime:Landroid/text/format/Time;
    .end local v8           #NowTime:Landroid/text/format/Time;
    :goto_0
    return-void

    .restart local v0       #StartTime:Landroid/text/format/Time;
    .restart local v1       #StopTime:Landroid/text/format/Time;
    .restart local v8       #NowTime:Landroid/text/format/Time;
    :cond_2
    iput-boolean v12, p0, Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z

    goto :goto_0

    .end local v0           #StartTime:Landroid/text/format/Time;
    .end local v1           #StopTime:Landroid/text/format/Time;
    .end local v8           #NowTime:Landroid/text/format/Time;
    :cond_3
    iput-boolean v12, p0, Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z

    goto :goto_0
.end method

.method private dpdEnabled()I
    .locals 2

    .prologue
    const-string v0, "persist.sys.dpd"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private enableUnstableMemory(Z)I
    .locals 3
    .parameter "flag"

    .prologue
    const-string v2, "DMM Service"

    const-string v0, "DMM Service"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable Unstable Memory : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mState:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    sget-object v1, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->DISABLED:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/os/Power;->SetUnstableMemoryState(Z)I

    move-result v0

    if-gez v0, :cond_1

    const-string v0, "DMM Service"

    const-string v0, "Activating Unstable Memory: Failed !"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    sget-object v0, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->ACTIVE:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    iput-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mState:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mState:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    sget-object v1, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->ACTIVE:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/os/Power;->SetUnstableMemoryState(Z)I

    move-result v0

    if-gez v0, :cond_3

    const-string v0, "DMM Service"

    const-string v0, "Disabling Unstable Memory: Failed !"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->DISABLED:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    iput-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mState:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    goto :goto_0
.end method

.method private getDelay(II)J
    .locals 7
    .parameter "sHr"
    .parameter "sMin"

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, calendar:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v1, p1, v3

    .local v1, dHr:I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v2, p2, v3

    .local v2, dMin:I
    if-gez v1, :cond_0

    add-int/lit8 v1, v1, 0x18

    :cond_0
    if-gez v2, :cond_1

    add-int/lit8 v2, v2, 0x3c

    if-lez v1, :cond_2

    sub-int/2addr v1, v4

    :cond_1
    :goto_0
    mul-int/lit8 v3, v1, 0x3c

    add-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v3, v5

    return-wide v3

    :cond_2
    add-int/lit8 v3, v1, 0x18

    sub-int v1, v3, v4

    goto :goto_0
.end method

.method private manageAlarms()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->dpdEnabled()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->setStartAlarm()Z

    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->setStopAlarm()Z

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->cancelStartAlarm()Z

    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->cancelStopAlarm()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DynamicMemoryManagerService;->DPD_START:Z

    goto :goto_0
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.DMMService.action.DPD_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.DMMService.action.DPD_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/DynamicMemoryManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DynamicMemoryManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setStartAlarm()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    const-string v0, "persist.sys.dpd.start_hr"

    const/16 v4, 0x14

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .local v7, startHr:I
    const-string v0, "persist.sys.dpd.start_min"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .local v8, startMin:I
    const-wide/16 v2, 0x0

    .local v2, delay_ms:J
    iget v0, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartHr:I

    if-ne v7, v0, :cond_0

    iget v0, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartMin:I

    if-ne v8, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DynamicMemoryManagerService;->START_ALARM_SET:Z

    if-nez v0, :cond_1

    :cond_0
    iput v7, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartHr:I

    iput v8, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStartMin:I

    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->cancelStartAlarm()Z

    invoke-direct {p0, v7, v8}, Lcom/android/server/DynamicMemoryManagerService;->getDelay(II)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mStartAlarmManager:Landroid/app/AlarmManager;

    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lcom/android/server/DynamicMemoryManagerService;->mStartPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    iput-boolean v9, p0, Lcom/android/server/DynamicMemoryManagerService;->START_ALARM_SET:Z

    :cond_1
    return v9
.end method

.method private setStopAlarm()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    const-string v0, "persist.sys.dpd.stop_hr"

    const/4 v4, 0x7

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .local v7, stopHr:I
    const-string v0, "persist.sys.dpd.stop_min"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .local v8, stopMin:I
    const-wide/16 v2, 0x0

    .local v2, delay_ms:J
    iget v0, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopHr:I

    if-ne v7, v0, :cond_0

    iget v0, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopMin:I

    if-ne v8, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DynamicMemoryManagerService;->STOP_ALARM_SET:Z

    if-nez v0, :cond_1

    :cond_0
    iput v7, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopHr:I

    iput v8, p0, Lcom/android/server/DynamicMemoryManagerService;->prevStopMin:I

    invoke-direct {p0}, Lcom/android/server/DynamicMemoryManagerService;->cancelStopAlarm()Z

    invoke-direct {p0, v7, v8}, Lcom/android/server/DynamicMemoryManagerService;->getDelay(II)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/DynamicMemoryManagerService;->mStopAlarmManager:Landroid/app/AlarmManager;

    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lcom/android/server/DynamicMemoryManagerService;->mStopPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    iput-boolean v9, p0, Lcom/android/server/DynamicMemoryManagerService;->STOP_ALARM_SET:Z

    :cond_1
    return v9
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    return-void
.end method
