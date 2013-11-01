.class public Landroid/widget/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MediaController$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAllowResume:Z

.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDecor:Landroid/view/View;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private mFfwdListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mFromXml:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsMMSArrival:Z

.field private mListenersSet:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRewButton:Landroid/widget/ImageButton;

.field private mRewListener:Landroid/view/View$OnClickListener;

.field private mRoot:Landroid/view/View;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShowing:Z

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mUseFastForward:Z

.field private mUseProgressbar:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Landroid/widget/MediaController;->mIsMMSArrival:Z

    iput-boolean v0, p0, Landroid/widget/MediaController;->mAllowResume:Z

    const-string v0, "MediaController"

    iput-object v0, p0, Landroid/widget/MediaController;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindow()V

    iput-boolean v1, p0, Landroid/widget/MediaController;->mUseProgressbar:Z

    const-string v0, "ml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaController(Context context) mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Landroid/widget/MediaController;->mIsMMSArrival:Z

    iput-boolean v0, p0, Landroid/widget/MediaController;->mAllowResume:Z

    const-string v0, "MediaController"

    iput-object v0, p0, Landroid/widget/MediaController;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    iput-object p0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    iput-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    iput-boolean v1, p0, Landroid/widget/MediaController;->mUseProgressbar:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "useFastForward"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Landroid/widget/MediaController;->mIsMMSArrival:Z

    iput-boolean v0, p0, Landroid/widget/MediaController;->mAllowResume:Z

    const-string v0, "MediaController"

    iput-object v0, p0, Landroid/widget/MediaController;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MediaController;->mUseProgressbar:Z

    const-string v0, "ml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaController(Context context, boolean useFastForward) mContext= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .parameter "context"
    .parameter "useFastForward"
    .parameter "useProgressbar"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Landroid/widget/MediaController;->mIsMMSArrival:Z

    iput-boolean v0, p0, Landroid/widget/MediaController;->mAllowResume:Z

    const-string v0, "MediaController"

    iput-object v0, p0, Landroid/widget/MediaController;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    iput-boolean p3, p0, Landroid/widget/MediaController;->mUseProgressbar:Z

    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindow()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/MediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/MediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/widget/MediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/widget/MediaController;->mDragging:Z

    return v0
.end method

.method static synthetic access$202(Landroid/widget/MediaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/widget/MediaController;->mDragging:Z

    return p1
.end method

.method static synthetic access$300(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/MediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/MediaController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/MediaController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/MediaController;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/MediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    return-void
.end method

.method private disableUnsupportedButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Landroid/widget/MediaController;->mAllowResume:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/widget/MediaController;->mIsMMSArrival:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    :goto_0
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    goto :goto_0
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const v1, 0x1020205

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x1020206

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    if-eqz v2, :cond_7

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    const v1, 0x1020204

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    if-eqz v2, :cond_8

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    const v1, 0x1020207

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/MediaController;->mListenersSet:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    const v1, 0x1020203

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Landroid/widget/MediaController;->mListenersSet:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_4
    const v1, 0x1020209

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Landroid/widget/MediaController;->mUseProgressbar:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    instance-of v1, v1, Landroid/widget/SeekBar;

    if-eqz v1, :cond_5

    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .local v0, seeker:Landroid/widget/SeekBar;
    iget-object v1, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .end local v0           #seeker:Landroid/widget/SeekBar;
    :cond_5
    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_6
    :goto_2
    const v1, 0x102005b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    const v1, 0x1020208

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    return-void

    :cond_7
    move v2, v3

    goto/16 :goto_0

    :cond_8
    move v2, v3

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2
.end method

.method private initFloatingWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    invoke-virtual {p0, v2}, Landroid/widget/MediaController;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/MediaController;->setFocusableInTouchMode(Z)V

    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/widget/MediaController;->requestFocus()Z

    return-void
.end method

.method private installPrevNextListeners()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_3

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private setProgress()I
    .locals 9

    .prologue
    const/4 v7, 0x0

    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/MediaController;->mDragging:Z

    if-eqz v5, :cond_1

    :cond_0
    move v5, v7

    :goto_0
    return v5

    :cond_1
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    .local v4, position:I
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    .local v0, duration:I
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_2

    if-lez v0, :cond_5

    const-wide/16 v5, 0x3e8

    int-to-long v7, v4

    mul-long/2addr v5, v7

    int-to-long v7, v0

    div-long v2, v5, v7

    .local v2, pos:J
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    long-to-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .end local v2           #pos:J
    :goto_1
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getBufferPercentage()I

    move-result v1

    .local v1, percent:I
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    mul-int/lit8 v6, v1, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .end local v1           #percent:I
    :cond_2
    iget-object v5, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v5, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    move v5, v4

    goto :goto_0

    :cond_5
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_2
    iget-object v5, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v5, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v5, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v5, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    iget-object v5, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-boolean v6, p0, Landroid/widget/MediaController;->mAllowResume:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Landroid/widget/MediaController;->mIsMMSArrival:Z

    if-nez v6, :cond_7

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_2

    :cond_7
    move v6, v7

    goto :goto_3
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 11
    .parameter "timeMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    div-int/lit16 v3, p1, 0x3e8

    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .local v0, hours:I
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lez v0, :cond_0

    iget-object v4, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updatePausePlay()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/16 v5, 0xbb8

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x4f

    if-eq v1, v4, :cond_0

    const/16 v4, 0x55

    if-eq v1, v4, :cond_0

    const/16 v4, 0x3e

    if-ne v1, v4, :cond_2

    :cond_0
    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    invoke-virtual {p0, v5}, Landroid/widget/MediaController;->show(I)V

    iget-object v4, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_1
    move v4, v6

    :goto_0
    return v4

    :cond_2
    const/16 v4, 0x56

    if-ne v1, v4, :cond_4

    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    const/16 v4, 0x19

    if-eq v1, v4, :cond_5

    const/16 v4, 0x18

    if-ne v1, v4, :cond_6

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    :cond_6
    const/4 v4, 0x4

    if-eq v1, v4, :cond_7

    const/16 v4, 0x52

    if-ne v1, v4, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    move v4, v6

    goto :goto_0

    :cond_8
    const/16 v4, 0x5a

    if-ne v1, v4, :cond_a

    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v3

    .local v3, videoDuration:I
    iget-object v4, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v4

    if-eqz v4, :cond_9

    if-lez v3, :cond_9

    iget-object v4, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->requestFocus()Z

    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v2

    .local v2, pos:I
    add-int/lit16 v2, v2, 0x1388

    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4, v2}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    invoke-virtual {p0, v5}, Landroid/widget/MediaController;->show(I)V

    .end local v2           #pos:I
    :cond_9
    move v4, v6

    goto :goto_0

    .end local v3           #videoDuration:I
    :cond_a
    const/16 v4, 0x59

    if-ne v1, v4, :cond_c

    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v3

    .restart local v3       #videoDuration:I
    iget-object v4, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v4

    if-eqz v4, :cond_b

    if-lez v3, :cond_b

    iget-object v4, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->requestFocus()Z

    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v2

    .restart local v2       #pos:I
    add-int/lit16 v2, v2, -0x1388

    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4, v2}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    invoke-virtual {p0, v5}, Landroid/widget/MediaController;->show(I)V

    .end local v2           #pos:I
    :cond_b
    move v4, v6

    goto/16 :goto_0

    .end local v3           #videoDuration:I
    :cond_c
    const/16 v4, 0x57

    if-eq v1, v4, :cond_d

    const/16 v4, 0x58

    if-ne v1, v4, :cond_e

    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    const-string v4, "command"

    const-string v5, "pause"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v6

    goto/16 :goto_0

    .end local v0           #i:Landroid/content/Intent;
    :cond_e
    invoke-virtual {p0, v5}, Landroid/widget/MediaController;->show(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public hide()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x1090041

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public notifyMMSArrival(Z)V
    .locals 0
    .parameter "bArrival"

    .prologue
    iput-boolean p1, p0, Landroid/widget/MediaController;->mIsMMSArrival:Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public setAllowResumePlayback(Z)V
    .locals 0
    .parameter "bAllow"

    .prologue
    iput-boolean p1, p0, Landroid/widget/MediaController;->mAllowResume:Z

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, -0x1

    iput-object p1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v0, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/MediaController;->removeAllViews()V

    invoke-virtual {p0}, Landroid/widget/MediaController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Landroid/widget/MediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    iget-boolean v1, p0, Landroid/widget/MediaController;->mIsMMSArrival:Z

    if-nez v1, :cond_6

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_7

    iget-boolean v1, p0, Landroid/widget/MediaController;->mIsMMSArrival:Z

    if-nez v1, :cond_7

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_8

    iget-boolean v1, p0, Landroid/widget/MediaController;->mIsMMSArrival:Z

    if-nez v1, :cond_8

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_9

    iget-object v1, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_9

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_a

    iget-object v1, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_a

    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_b

    iget-boolean v1, p0, Landroid/widget/MediaController;->mIsMMSArrival:Z

    if-nez v1, :cond_b

    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    :cond_5
    invoke-direct {p0}, Landroid/widget/MediaController;->disableUnsupportedButtons()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void

    :cond_6
    move v1, v2

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_3

    :cond_a
    move v1, v2

    goto :goto_4

    :cond_b
    move v1, v2

    goto :goto_5
.end method

.method public setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 0
    .parameter "player"

    .prologue
    iput-object p1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "next"
    .parameter "prev"

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MediaController;->mListenersSet:Z

    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    return-void
.end method

.method public show(I)V
    .locals 13
    .parameter "timeout"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v9, 0x1

    const-string v10, "p.y="

    const-string v8, "ml"

    iget-boolean v6, p0, Landroid/widget/MediaController;->mShowing:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-eqz v6, :cond_2

    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    iget-object v6, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_0
    invoke-direct {p0}, Landroid/widget/MediaController;->disableUnsupportedButtons()V

    new-array v0, v11, [I

    .local v0, anchorpos:[I
    iget-object v6, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .local v5, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v6, 0x30

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v6, -0x2

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    .local v2, mAnchorWidth:I
    iget-object v6, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    .local v1, mAnchorHeight:I
    const-string v6, "ml"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAnchorWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "ml"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAnchorHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .local v4, newConfig:Landroid/content/res/Configuration;
    iget v6, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v11, :cond_5

    if-lt v2, v1, :cond_4

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    aget v6, v0, v9

    add-int/2addr v6, v1

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v6, "ml"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p.widthh1 ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "ml"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p.y="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v6, -0x3

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v6, 0x3e8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x2

    or-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v6, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    invoke-interface {v6, v7, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v9, p0, Landroid/widget/MediaController;->mShowing:Z

    .end local v0           #anchorpos:[I
    .end local v1           #mAnchorHeight:I
    .end local v2           #mAnchorWidth:I
    .end local v4           #newConfig:Landroid/content/res/Configuration;
    .end local v5           #p:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    iget-object v6, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v6, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .local v3, msg:Landroid/os/Message;
    if-eqz p1, :cond_3

    iget-object v6, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    int-to-long v7, p1

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    return-void

    .end local v3           #msg:Landroid/os/Message;
    .restart local v0       #anchorpos:[I
    .restart local v1       #mAnchorHeight:I
    .restart local v2       #mAnchorWidth:I
    .restart local v4       #newConfig:Landroid/content/res/Configuration;
    .restart local v5       #p:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    aget v6, v0, v9

    add-int/2addr v6, v2

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v6, "ml"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p.widthh2 ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "ml"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p.y="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget v6, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v9, :cond_1

    if-gt v2, v1, :cond_6

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    aget v6, v0, v9

    add-int/2addr v6, v1

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v6, "ml"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p.widthS1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "ml"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p.y="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    aget v6, v0, v9

    add-int/2addr v6, v2

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v6, "ml"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p.widthS2 ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "ml"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p.y="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
