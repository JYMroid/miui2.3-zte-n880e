.class public Lcom/android/phone/CallTime;
.super Landroid/os/Handler;
.source "CallTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallTime$PeriodicTimerCallback;,
        Lcom/android/phone/CallTime$OnTickListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE/CallTime"

.field static final PROFILE:Z = true

.field private static final PROFILE_STATE_NONE:I = 0x0

.field private static final PROFILE_STATE_READY:I = 0x1

.field private static final PROFILE_STATE_RUNNING:I = 0x2

.field private static sProfileState:I


# instance fields
.field private mCall:Lcom/android/internal/telephony/Call;

.field private mInterval:J

.field private mLastReportedTime:J

.field private mListener:Lcom/android/phone/CallTime$OnTickListener;

.field private mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

.field private mTimerRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/CallTime$OnTickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    .line 58
    new-instance v0, Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime$PeriodicTimerCallback;-><init>(Lcom/android/phone/CallTime;)V

    iput-object v0, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    .line 59
    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/CallTime;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    return p1
.end method

.method static getCallDuration(Lcom/android/internal/telephony/Call;)J
    .locals 13
    .parameter "call"

    .prologue
    const-wide/16 v11, 0x0

    .line 176
    const-wide/16 v3, 0x0

    .line 177
    .local v3, duration:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 178
    .local v1, connections:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 181
    .local v2, count:I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_1

    .line 182
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 186
    .local v0, c:Lcom/android/internal/telephony/Connection;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "yangliu:c.getCdmaLineCtrlDurationMillis,="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCdmaLineCtrlDurationMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCdmaLineCtrlDurationMillis()J

    move-result-wide v3

    cmp-long v8, v3, v11

    if-nez v8, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v3

    .line 211
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    return-wide v3

    .line 193
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 194
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 198
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    const-wide/16 v6, 0x0

    .line 199
    .local v6, t:J
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCdmaLineCtrlDurationMillis()J

    move-result-wide v6

    cmp-long v8, v6, v11

    if-nez v8, :cond_2

    .line 200
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .line 204
    :cond_2
    cmp-long v8, v6, v3

    if-lez v8, :cond_3

    .line 205
    move-wide v3, v6

    .line 193
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method static getCdmaLineCtrlDuration(Lcom/android/internal/telephony/Call;)J
    .locals 10
    .parameter "call"

    .prologue
    .line 132
    const-wide/16 v3, 0x0

    .line 133
    .local v3, duration:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 134
    .local v1, connections:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 136
    .local v2, count:I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_1

    .line 137
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 141
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCdmaLineCtrlDurationMillis()J

    move-result-wide v3

    .line 154
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "yangliu:updateElapsedTime, count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CdmaLineCtrlDuration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 155
    return-wide v3

    .line 143
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 144
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 147
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCdmaLineCtrlDurationMillis()J

    move-result-wide v6

    .line 149
    .local v6, t:J
    cmp-long v8, v6, v3

    if-lez v8, :cond_2

    .line 150
    move-wide v3, v6

    .line 143
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method static isIncomming(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .parameter "call"

    .prologue
    .line 162
    const/4 v2, 0x0

    .line 163
    .local v2, isInCommingCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 165
    .local v1, connections:Ljava/util/List;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 166
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "yangliu:isInCommingCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 168
    return v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 215
    const-string v0, "PHONE/CallTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CallTime] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method static setTraceReady()V
    .locals 2

    .prologue
    .line 234
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    .line 236
    const-string v0, "trace ready..."

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current trace state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/CallTime;->sProfileState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateElapsedTime(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter "call"

    .prologue
    .line 120
    iget-object v2, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    if-eqz v2, :cond_0

    .line 121
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 122
    .local v0, duration:J
    iget-object v2, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-interface {v2, v3, v4}, Lcom/android/phone/CallTime$OnTickListener;->onTickForCallTimeElapsed(J)V

    .line 124
    .end local v0           #duration:J
    :cond_0
    return-void
.end method


# virtual methods
.method cancelTimer()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallTime;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    .line 117
    return-void
.end method

.method isTraceReady()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 243
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTraceRunning()Z
    .locals 2

    .prologue
    .line 247
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method periodicUpdateTimer()V
    .locals 9

    .prologue
    .line 83
    iget-boolean v5, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    if-nez v5, :cond_2

    .line 84
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 87
    .local v2, now:J
    iget-wide v5, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    iget-wide v7, p0, Lcom/android/phone/CallTime;->mInterval:J

    add-long v0, v5, v7

    .line 89
    .local v0, nextReport:J
    :goto_0
    cmp-long v5, v2, v0

    if-ltz v5, :cond_0

    .line 90
    iget-wide v5, p0, Lcom/android/phone/CallTime;->mInterval:J

    add-long/2addr v0, v5

    goto :goto_0

    .line 94
    :cond_0
    iget-object v5, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/phone/CallTime;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 95
    iput-wide v0, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    .line 97
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    if-eqz v5, :cond_1

    .line 98
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 100
    .local v4, state:Lcom/android/internal/telephony/Call$State;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    .line 101
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v5}, Lcom/android/phone/CallTime;->updateElapsedTime(Lcom/android/internal/telephony/Call;)V

    .line 105
    .end local v4           #state:Lcom/android/internal/telephony/Call$State;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->isTraceReady()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->startTrace()V

    .line 111
    .end local v0           #nextReport:J
    .end local v2           #now:J
    :cond_2
    return-void
.end method

.method reset()V
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/CallTime;->mInterval:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    .line 80
    return-void
.end method

.method setActiveCallMode(Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    .line 74
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mInterval:J

    .line 75
    return-void
.end method

.method startTrace()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 251
    sget v4, Lcom/android/phone/CallTime;->sProfileState:I

    if-ne v4, v6, :cond_4

    move v4, v6

    :goto_0
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    .line 255
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const-string v5, "phoneTrace"

    invoke-virtual {v4, v5, v7}, Lcom/android/phone/PhoneApp;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 256
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 257
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 259
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "callstate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, baseName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, dataFile:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, keyFile:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v6, :cond_1

    .line 265
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 268
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v6, :cond_2

    .line 270
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 273
    :cond_2
    const/4 v4, 0x2

    sput v4, Lcom/android/phone/CallTime;->sProfileState:I

    .line 274
    const-string v4, "startTrace"

    invoke-static {v4}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 275
    const/high16 v4, 0x80

    invoke-static {v0, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 277
    .end local v0           #baseName:Ljava/lang/String;
    .end local v1           #dataFile:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #keyFile:Ljava/lang/String;
    :cond_3
    return-void

    :cond_4
    move v4, v7

    .line 251
    goto/16 :goto_0
.end method

.method stopTrace()V
    .locals 2

    .prologue
    .line 281
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 282
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    .line 283
    const-string v0, "stopTrace"

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 287
    :cond_0
    return-void
.end method
