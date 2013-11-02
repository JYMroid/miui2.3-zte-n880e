.class public Lcom/android/launcher2/gadget/Player;
.super Landroid/widget/FrameLayout;
.source "Player.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher2/gadget/Gadget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/gadget/Player$MusicUtils;,
        Lcom/android/launcher2/gadget/Player$FadeAnimation;,
        Lcom/android/launcher2/gadget/Player$AlbumHelper;,
        Lcom/android/launcher2/gadget/Player$LyricScrollHelper;
    }
.end annotation


# instance fields
.field private mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

.field private mAlbumImage:Landroid/widget/ImageView;

.field private mAlbumWraper:Landroid/widget/FrameLayout;

.field private mArtistNameStr:Ljava/lang/String;

.field private mCachableWrap:Landroid/view/View;

.field private mCurrentPos:J

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDuration:J

.field private mFavoriteIcon:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsEditMode:Z

.field private mIsFavoriteSong:Z

.field private mIsPlaying:Z

.field private mIsResume:Z

.field private mIsUpdateLyricAndTime:Z

.field private mLastDownY:F

.field private mLastUpdateProgressTime:J

.field private mLastUpdateTime:J

.field private mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

.field private mLyricWraper:Landroid/widget/ScrollView;

.field private mNeedInitGadget:Z

.field private mPlayButton:Landroid/widget/ImageView;

.field private mProgressBg:Landroid/widget/FrameLayout;

.field private mProgressCurrent:Landroid/widget/ImageView;

.field private mProgressLoading:Landroid/widget/ImageView;

.field private mResumeRunnable:Ljava/lang/Runnable;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mSv:Lmiui/widget/SpectrumVisualizer;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTouchSlop:F

.field private mTrackName:Landroid/widget/TextView;

.field private mTrackNameStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 194
    new-instance v1, Lcom/android/launcher2/gadget/Player$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/gadget/Player$1;-><init>(Lcom/android/launcher2/gadget/Player;)V

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mResumeRunnable:Ljava/lang/Runnable;

    .line 449
    new-instance v1, Lcom/android/launcher2/gadget/Player$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/gadget/Player$2;-><init>(Lcom/android/launcher2/gadget/Player;)V

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mHandler:Landroid/os/Handler;

    .line 460
    iput-wide v3, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateTime:J

    .line 461
    iput-wide v3, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateProgressTime:J

    .line 510
    new-instance v1, Lcom/android/launcher2/gadget/Player$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/gadget/Player$3;-><init>(Lcom/android/launcher2/gadget/Player;)V

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 81
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->setupViews()V

    .line 82
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->initReceiver()V

    .line 84
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 85
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher2/gadget/Player;->mTouchSlop:F

    .line 87
    new-instance v1, Lcom/android/launcher2/gadget/Player$AlbumHelper;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/gadget/Player$AlbumHelper;-><init>(Lcom/android/launcher2/gadget/Player;Lcom/android/launcher2/gadget/Player$1;)V

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    .line 88
    new-instance v1, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;-><init>(Lcom/android/launcher2/gadget/Player;Lcom/android/launcher2/gadget/Player$1;)V

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    .line 89
    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher2/gadget/Player;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateLyricAndTime()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/launcher2/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/gadget/Player;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/gadget/Player;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/gadget/Player;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player;->checkException(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player;->updateSongStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player;->updateTrack(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/gadget/Player;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateSpectrumVisualizer()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/launcher2/gadget/Player;)Lcom/android/launcher2/gadget/Player$AlbumHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher2/gadget/Player;)Lcom/android/launcher2/gadget/Player$LyricScrollHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player;->updateBufferedProgress(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/launcher2/gadget/Player;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/launcher2/gadget/Player;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/launcher2/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/launcher2/gadget/Player;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/launcher2/gadget/Player;->mTouchSlop:F

    return v0
.end method

.method static synthetic access$4000(Lcom/android/launcher2/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/launcher2/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/launcher2/gadget/Player;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumWraper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/launcher2/gadget/Player;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateMetaStatus()V

    return-void
.end method

.method private checkException(Ljava/lang/String;)Z
    .locals 6
    .parameter "trackName"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, errorState:Ljava/lang/String;
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    const v2, 0x609007a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 368
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->reset()V

    .line 371
    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/gadget/Player;->updateCurrentProgress(J)V

    .line 372
    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/gadget/Player;->updateBufferedProgress(J)V

    .line 373
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #calls: Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->clearup()V
    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$1000(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)V

    .line 374
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    #calls: Lcom/android/launcher2/gadget/Player$AlbumHelper;->reset()V
    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$1100(Lcom/android/launcher2/gadget/Player$AlbumHelper;)V

    .line 375
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateSpectrumVisualizer()V

    .line 376
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateDrawingCache()V

    .line 377
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateMetaStatus()V

    .line 378
    iput-boolean v3, p0, Lcom/android/launcher2/gadget/Player;->mNeedInitGadget:Z

    move v1, v3

    .line 381
    :goto_1
    return v1

    .line 364
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    const v2, 0x7f0a004b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 381
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    .line 232
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateSpectrumVisualizer()V

    .line 233
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateDrawingCache()V

    .line 234
    return-void
.end method

.method private initReceiver()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "com.miui.player.refreshprogress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mNeedInitGadget:Z

    .line 101
    return-void
.end method

.method private lyricAndTimeNextRefresh()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 488
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 489
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 490
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #calls: Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->hasLyric()Z
    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$800(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x50

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private reset()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v4, "-- : --"

    .line 385
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    const-string v1, "-- : --"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    const-string v1, "-- : --"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iput-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsUpdateLyricAndTime:Z

    .line 388
    iput-object v3, p0, Lcom/android/launcher2/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    .line 389
    iput-object v3, p0, Lcom/android/launcher2/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    .line 391
    iput-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    .line 392
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    if-eqz v1, :cond_0

    const v1, 0x7f02006f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iput-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    .line 398
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 399
    return-void

    .line 392
    :cond_0
    const v1, 0x7f020070

    goto :goto_0
.end method

.method private setupViews()V
    .locals 3

    .prologue
    const v2, 0x7f070026

    .line 105
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    const v1, 0x7f030016

    invoke-static {v0, v1, p0}, Lcom/android/launcher2/gadget/Player;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 108
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    .line 115
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTrackName:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCachableWrap:Landroid/view/View;

    .line 124
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumWraper:Landroid/widget/FrameLayout;

    .line 125
    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    .line 127
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    .line 128
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 130
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SpectrumVisualizer;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mSv:Lmiui/widget/SpectrumVisualizer;

    .line 131
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    .line 132
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    .line 133
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mProgressBg:Landroid/widget/FrameLayout;

    .line 134
    return-void
.end method

.method private showBuffering()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 402
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    const v1, 0x7f0a004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 403
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0059

    invoke-static {v1, v3, v4, v2}, Lcom/android/launcher2/gadget/Player$MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/gadget/Player;->updateCurrentProgress(J)V

    .line 405
    return-void
.end method

.method private updateBufferedProgress(J)V
    .locals 5
    .parameter "bufferPos"

    .prologue
    .line 426
    iget-wide v1, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 428
    .local v0, progressLP:Landroid/view/ViewGroup$LayoutParams;
    iget-wide v1, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressBg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, p1

    iget-wide v3, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 433
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    .end local v0           #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    .line 431
    .restart local v0       #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private updateBufferedProgress(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 421
    const-string v2, "buffered_pos"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 422
    .local v0, bufferPos:J
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/gadget/Player;->updateBufferedProgress(J)V

    .line 423
    return-void
.end method

.method private updateCurrentProgress(J)V
    .locals 5
    .parameter "pos"

    .prologue
    .line 437
    iget-wide v1, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 439
    .local v0, progressLP:Landroid/view/ViewGroup$LayoutParams;
    iget-wide v1, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressBg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, p1

    iget-wide v3, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 444
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    .end local v0           #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    .line 442
    .restart local v0       #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private updateDrawingCache()V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/Player;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 269
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 270
    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsUpdateLyricAndTime:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 272
    :cond_1
    return-void

    .line 270
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateLyricAndTime()V
    .locals 6

    .prologue
    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 464
    .local v0, currentTime:J
    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #calls: Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->hasLyric()Z
    invoke-static {v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$800(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    iget-wide v3, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    #calls: Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->scrollLyric(J)V
    invoke-static {v2, v3, v4}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$1300(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;J)V

    .line 467
    :cond_0
    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 468
    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    iget-wide v4, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    .line 469
    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    iget-wide v4, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 470
    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    iput-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    .line 473
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsUpdateLyricAndTime:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    if-eqz v2, :cond_3

    .line 474
    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateProgressTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 475
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateProgressBarAndTime()V

    .line 476
    iput-wide v0, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateProgressTime:J

    .line 478
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->lyricAndTimeNextRefresh()V

    .line 479
    iput-wide v0, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateTime:J

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_3
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateTime:J

    goto :goto_0
.end method

.method private updateMetaStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f020051

    const v4, 0x7f020050

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, metaStatus:I
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    #calls: Lcom/android/launcher2/gadget/Player$AlbumHelper;->hasAlbum()Z
    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$700(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    or-int/lit8 v0, v0, 0x2

    .line 296
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #calls: Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->hasLyric()Z
    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$800(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    or-int/lit8 v0, v0, 0x1

    .line 303
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 325
    :goto_2
    return-void

    .line 294
    :cond_0
    and-int/lit8 v0, v0, -0x3

    goto :goto_0

    .line 301
    :cond_1
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 305
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 310
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 311
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 315
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 316
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 317
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    #calls: Lcom/android/launcher2/gadget/Player$AlbumHelper;->getAlbumBitmap()Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$900(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 320
    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 321
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    #calls: Lcom/android/launcher2/gadget/Player$AlbumHelper;->getAlbumBitmap()Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$900(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateProgressBarAndTime()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const v6, 0x7f0a0059

    const-wide/16 v4, 0x3e8

    .line 499
    iget-wide v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    add-long/2addr v2, v4

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3, v6}, Lcom/android/launcher2/gadget/Player$MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    add-long/2addr v2, v4

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3, v6}, Lcom/android/launcher2/gadget/Player$MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-wide v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/gadget/Player;->updateCurrentProgress(J)V

    .line 508
    :cond_0
    return-void
.end method

.method private updateSongStatus(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    .line 328
    const-string v8, "current_time"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 330
    .local v1, currentTime:J
    const-string v8, "current_system_time"

    invoke-virtual {p1, v8, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 331
    .local v6, time:J
    iget-wide v8, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    sub-long v10, v1, v6

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    .line 332
    const-string v8, "total_time"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    .line 333
    const-string v8, "playing"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    .line 334
    iget-object v8, p0, Lcom/android/launcher2/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    iget-boolean v9, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    if-eqz v9, :cond_1

    const v9, 0x7f020079

    :goto_0
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    const-string v8, "favorite"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    .line 338
    iget-object v8, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v9, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    if-eqz v9, :cond_2

    const v9, 0x7f02006f

    :goto_1
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    iget-object v8, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    const-string v8, "buffer"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 343
    .local v4, isBuffering:Z
    const-string v8, "block"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 344
    .local v3, isBlocking:Z
    iget-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    if-eqz v8, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mIsUpdateLyricAndTime:Z

    .line 346
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateDrawingCache()V

    .line 347
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateSpectrumVisualizer()V

    .line 349
    const/16 v0, 0x64

    .line 350
    .local v0, MAX_INVALID_DURATION:I
    if-nez v4, :cond_0

    iget-wide v8, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    :cond_0
    iget-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mNeedInitGadget:Z

    if-nez v8, :cond_4

    const/4 v8, 0x1

    move v5, v8

    .line 351
    .local v5, isShowBuffering:Z
    :goto_3
    if-eqz v5, :cond_5

    .line 352
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->showBuffering()V

    .line 356
    :goto_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mNeedInitGadget:Z

    .line 357
    return-void

    .line 334
    .end local v0           #MAX_INVALID_DURATION:I
    .end local v3           #isBlocking:Z
    .end local v4           #isBuffering:Z
    .end local v5           #isShowBuffering:Z
    :cond_1
    const v9, 0x7f02007c

    goto :goto_0

    .line 338
    :cond_2
    const v9, 0x7f020070

    goto :goto_1

    .line 344
    .restart local v3       #isBlocking:Z
    .restart local v4       #isBuffering:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 350
    .restart local v0       #MAX_INVALID_DURATION:I
    :cond_4
    const/4 v8, 0x0

    move v5, v8

    goto :goto_3

    .line 354
    .restart local v5       #isShowBuffering:Z
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateProgressBarAndTime()V

    goto :goto_4
.end method

.method private updateSpectrumVisualizer()V
    .locals 2

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsUpdateLyricAndTime:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mSv:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v0}, Lmiui/widget/SpectrumVisualizer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/Player;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mSv:Lmiui/widget/SpectrumVisualizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mSv:Lmiui/widget/SpectrumVisualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    goto :goto_0
.end method

.method private updateTrack(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 410
    const-string v1, "track"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    .line 411
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    .line 412
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/launcher2/gadget/Player$MusicUtils;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 413
    .local v0, ar:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mTrackName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/launcher2/gadget/Player$MusicUtils;->getTrackInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/gadget/Player;->updateCurrentProgress(J)V

    .line 418
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const-string v4, "from_widget"

    .line 137
    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsEditMode:Z

    if-eqz v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    :cond_2
    const/4 v0, 0x0

    .line 144
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 173
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    if-eqz v1, :cond_4

    .line 174
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.music.NOW_PLAYING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_1
    const-string v1, "from_widget"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 146
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.music.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "playlist"

    const-string v2, "nowplaying"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 150
    const-string v1, "from_widget"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 160
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand.togglepause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 162
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    if-eqz v2, :cond_3

    const v2, 0x7f02007c

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const v2, 0x7f020079

    goto :goto_2

    .line 167
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 176
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.music.MEDIA_PLAYER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 183
    :pswitch_6
    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    if-nez v1, :cond_5

    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    .line 184
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    if-eqz v2, :cond_6

    const v2, 0x7f02006f

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.togglefavorite"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 183
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 184
    :cond_6
    const v2, 0x7f020070

    goto :goto_4

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x7f070026
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 1152
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->cleanup()V

    .line 239
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    return-void
.end method

.method public onEditDisable()V
    .locals 1

    .prologue
    .line 1169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsEditMode:Z

    .line 1171
    return-void
.end method

.method public onEditNormal()V
    .locals 1

    .prologue
    .line 1175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsEditMode:Z

    .line 1177
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 227
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher2/gadget/Player;->mLastDownY:F

    #calls: Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->sendMessageIfNeeded(FF)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$300(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;FF)V

    goto :goto_0

    .line 224
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/gadget/Player;->mLastDownY:F

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->cleanup()V

    .line 245
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 249
    iput-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    .line 250
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mCachableWrap:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 251
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateDrawingCache()V

    .line 253
    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mNeedInitGadget:Z

    if-eqz v1, :cond_1

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.init_gadget"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, initntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 265
    .end local v0           #initntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #calls: Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->lyricProgressRequest()V
    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$400(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)V

    .line 260
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    #calls: Lcom/android/launcher2/gadget/Player$AlbumHelper;->getTrackChange()Z
    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$500(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    #calls: Lcom/android/launcher2/gadget/Player$AlbumHelper;->getDisplayAlbumBitmap()V
    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$600(Lcom/android/launcher2/gadget/Player$AlbumHelper;)V

    .line 264
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateMetaStatus()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1156
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCachableWrap:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1161
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mResumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 207
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mResumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/gadget/Player;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 212
    return-void

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateSpectrumVisualizer()V

    goto :goto_0
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 1166
    return-void
.end method
