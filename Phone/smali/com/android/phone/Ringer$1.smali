.class Lcom/android/phone/Ringer$1;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Ringer;->makeLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x3

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, r:Landroid/media/Ringtone;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 340
    :goto_0
    :pswitch_0
    return-void

    .line 292
    :pswitch_1
    const-string v1, "mRingHandler: PLAY_RING_ONCE..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$100(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating ringtone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$100(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 298
    if-nez v0, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v1

    .line 303
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iput-object v0, v2, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 306
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 309
    if-eqz v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_4

    .line 310
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 311
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 312
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v1

    .line 313
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$200(Lcom/android/phone/Ringer;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 314
    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    #setter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v2, v3, v4}, Lcom/android/phone/Ringer;->access$202(Lcom/android/phone/Ringer;J)J

    .line 316
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 320
    :cond_4
    const-wide/16 v1, 0x258

    invoke-virtual {p0, v6, v1, v2}, Lcom/android/phone/Ringer$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 306
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 316
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 325
    :pswitch_2
    const-string v1, "mRingHandler: STOP_RING..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$100(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, v6}, Lcom/android/phone/Ringer$1;->removeMessages(I)V

    .line 331
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #r:Landroid/media/Ringtone;
    check-cast v0, Landroid/media/Ringtone;

    .line 332
    .restart local v0       #r:Landroid/media/Ringtone;
    if-eqz v0, :cond_5

    .line 333
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 337
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/Ringer$1;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 335
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- STOP_RING with null ringtone!  msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$100(Ljava/lang/String;)V

    goto :goto_1

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
