.class Landroid/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 10
    .parameter "mp"

    .prologue
    const/16 v9, 0x1e

    const/16 v5, 0x1d

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    const/4 v4, 0x2

    #setter for: Landroid/widget/VideoView;->mCurrentState:I
    invoke-static {v3, v4}, Landroid/widget/VideoView;->access$202(Landroid/widget/VideoView;I)I

    invoke-virtual {p1, v6, v6}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_a

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v5}, Landroid/media/Metadata;->has(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v5}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_0
    move v4, v7

    :goto_0
    #setter for: Landroid/widget/VideoView;->mCanPause:Z
    invoke-static {v3, v4}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;Z)Z

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v9}, Landroid/media/Metadata;->has(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v9}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_1
    move v4, v7

    :goto_1
    #setter for: Landroid/widget/VideoView;->mCanSeekBack:Z
    invoke-static {v3, v4}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;Z)Z

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    const/16 v4, 0x1f

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x1f

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_2
    move v4, v7

    :goto_2
    #setter for: Landroid/widget/VideoView;->mCanSeekForward:Z
    invoke-static {v3, v4}, Landroid/widget/VideoView;->access$502(Landroid/widget/VideoView;Z)Z

    :goto_3
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v3}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v3}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_3
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v3}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v3}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mPausedInCall:Z
    invoke-static {v4}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Z

    move-result v4

    if-nez v4, :cond_b

    move v4, v7

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_4
    :try_start_0
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    #setter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v3, v4}, Landroid/widget/VideoView;->access$002(Landroid/widget/VideoView;I)I

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    #setter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v3, v4}, Landroid/widget/VideoView;->access$102(Landroid/widget/VideoView;I)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v3}, Landroid/widget/VideoView;->access$1100(Landroid/widget/VideoView;)I

    move-result v2

    .local v2, seekToPosition:I
    if-eqz v2, :cond_5

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3, v2}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_5
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v3}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v3}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v5}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSurfaceWidth:I
    invoke-static {v3}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSurfaceHeight:I
    invoke-static {v3}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v3}, Landroid/widget/VideoView;->access$1400(Landroid/widget/VideoView;)I

    move-result v3

    if-ne v3, v8, :cond_c

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v3}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v3}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/MediaController;->show()V

    .end local v2           #seekToPosition:I
    :cond_6
    :goto_5
    return-void

    :cond_7
    move v4, v6

    goto/16 :goto_0

    :cond_8
    move v4, v6

    goto/16 :goto_1

    :cond_9
    move v4, v6

    goto/16 :goto_2

    :cond_a
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mCanSeekForward:Z
    invoke-static {v5, v7}, Landroid/widget/VideoView;->access$502(Landroid/widget/VideoView;Z)Z

    move-result v5

    #setter for: Landroid/widget/VideoView;->mCanSeekBack:Z
    invoke-static {v4, v5}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;Z)Z

    move-result v4

    #setter for: Landroid/widget/VideoView;->mCanPause:Z
    invoke-static {v3, v4}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;Z)Z

    goto/16 :goto_3

    :cond_b
    move v4, v6

    goto/16 :goto_4

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/IllegalStateException;
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "can not getVideoWidth "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v1           #e:Ljava/lang/IllegalStateException;
    .restart local v2       #seekToPosition:I
    :cond_c
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v2, :cond_d

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    if-lez v3, :cond_6

    :cond_d
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v3}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v3}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/MediaController;->show(I)V

    goto :goto_5

    :cond_e
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v3}, Landroid/widget/VideoView;->access$1400(Landroid/widget/VideoView;)I

    move-result v3

    if-ne v3, v8, :cond_6

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v3}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v3}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/MediaController;->show()V

    goto :goto_5
.end method
