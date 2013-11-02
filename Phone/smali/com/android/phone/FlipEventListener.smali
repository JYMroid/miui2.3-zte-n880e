.class public abstract Lcom/android/phone/FlipEventListener;
.super Ljava/lang/Object;
.source "FlipEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/FlipEventListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MUTE_THRESHOLD:I = 0x8

.field private static final TAG:Ljava/lang/String; = "FlipEventListener"

.field private static final localLOGV:Z = true


# instance fields
.field protected mAudioManager:Landroid/media/AudioManager;

.field private mEnabled:Z

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private statusFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/phone/FlipEventListener;-><init>(Landroid/content/Context;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "rate"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/FlipEventListener;->mEnabled:Z

    .line 54
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/phone/FlipEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 55
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/FlipEventListener;->mAudioManager:Landroid/media/AudioManager;

    .line 56
    iput p2, p0, Lcom/android/phone/FlipEventListener;->mRate:I

    .line 57
    iget-object v0, p0, Lcom/android/phone/FlipEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/FlipEventListener;->mSensor:Landroid/hardware/Sensor;

    .line 58
    iget-object v0, p0, Lcom/android/phone/FlipEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/android/phone/FlipEventListener$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/phone/FlipEventListener$SensorEventListenerImpl;-><init>(Lcom/android/phone/FlipEventListener;)V

    iput-object v0, p0, Lcom/android/phone/FlipEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/FlipEventListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/android/phone/FlipEventListener;->statusFlag:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/FlipEventListener;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/android/phone/FlipEventListener;->statusFlag:I

    return p1
.end method


# virtual methods
.method public canDetectFlipMute()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/phone/FlipEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disable()V
    .locals 3

    .prologue
    const-string v2, "FlipEventListener"

    .line 90
    iget-object v0, p0, Lcom/android/phone/FlipEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 91
    const-string v0, "FlipEventListener"

    const-string v0, "Cannot detect sensors. Invalid disable"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/FlipEventListener;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    const-string v0, "FlipEventListener"

    const-string v0, "FlipEventListener disabled"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/phone/FlipEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/FlipEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/FlipEventListener;->mEnabled:Z

    goto :goto_0
.end method

.method public enable()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v1, "FlipEventListener"

    .line 69
    iget-object v0, p0, Lcom/android/phone/FlipEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 70
    const-string v0, "FlipEventListener"

    const-string v0, "Cannot detect sensors. Not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/phone/FlipEventListener;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/android/phone/FlipEventListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    :goto_1
    iput v0, p0, Lcom/android/phone/FlipEventListener;->statusFlag:I

    .line 79
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/FlipEventListener;->mEnabled:Z

    if-nez v0, :cond_0

    .line 80
    const-string v0, "FlipEventListener"

    const-string v0, "FlipEventListener enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/phone/FlipEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/FlipEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/phone/FlipEventListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/phone/FlipEventListener;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 82
    iput-boolean v4, p0, Lcom/android/phone/FlipEventListener;->mEnabled:Z

    goto :goto_0

    .line 76
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public abstract onFilpEventChanged(I)V
.end method
