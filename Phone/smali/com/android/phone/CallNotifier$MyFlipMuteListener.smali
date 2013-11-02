.class Lcom/android/phone/CallNotifier$MyFlipMuteListener;
.super Lcom/android/phone/FlipEventListener;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyFlipMuteListener"
.end annotation


# instance fields
.field mEnableTime:J

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 2302
    iput-object p1, p0, Lcom/android/phone/CallNotifier$MyFlipMuteListener;->this$0:Lcom/android/phone/CallNotifier;

    .line 2303
    invoke-direct {p0, p2}, Lcom/android/phone/FlipEventListener;-><init>(Landroid/content/Context;)V

    .line 2304
    return-void
.end method


# virtual methods
.method public onFilpEventChanged(I)V
    .locals 7
    .parameter "event"

    .prologue
    const-string v6, "CallNotifier"

    .line 2309
    if-nez p1, :cond_1

    .line 2310
    const-string v2, "CallNotifier"

    const-string v2, "change to ringing mode"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    :cond_0
    :goto_0
    return-void

    .line 2320
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2321
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/phone/CallNotifier$MyFlipMuteListener;->mEnableTime:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 2322
    const-string v2, "CallNotifier"

    const-string v2, "firstEvent,ignore"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2326
    :cond_2
    const-string v2, "CallNotifier"

    const-string v2, "change to mute mode"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    const-string v2, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change to mute mode mRinger.isRinging() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallNotifier$MyFlipMuteListener;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v3}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    iget-object v2, p0, Lcom/android/phone/CallNotifier$MyFlipMuteListener;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Lcom/android/phone/Ringer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2334
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 2335
    iget-object v2, p0, Lcom/android/phone/CallNotifier$MyFlipMuteListener;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Lcom/android/phone/Ringer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    .line 2337
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier$MyFlipMuteListener;->disable()V

    goto :goto_0
.end method
