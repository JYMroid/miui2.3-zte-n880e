.class public Lcom/android/phone/FloatView;
.super Landroid/widget/ImageView;
.source "FloatView.java"


# static fields
.field private static final BG_LIST:[I = null

.field private static final TAG:Ljava/lang/String; = "FloatView"


# instance fields
.field private flashBackground:Ljava/lang/Runnable;

.field private hasMoved:Z

.field lasteventX:I

.field lasteventY:I

.field mHandler:Landroid/os/Handler;

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private wm:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/FloatView;->BG_LIST:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x53t 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/phone/FloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/phone/FloatView;->wm:Landroid/view/WindowManager;

    .line 25
    invoke-virtual {p0}, Lcom/android/phone/FloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getWmParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/FloatView;->hasMoved:Z

    .line 32
    new-instance v0, Lcom/android/phone/FloatView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/FloatView$1;-><init>(Lcom/android/phone/FloatView;)V

    iput-object v0, p0, Lcom/android/phone/FloatView;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/android/phone/FloatView$2;

    invoke-direct {v0, p0}, Lcom/android/phone/FloatView$2;-><init>(Lcom/android/phone/FloatView;)V

    iput-object v0, p0, Lcom/android/phone/FloatView;->flashBackground:Ljava/lang/Runnable;

    .line 56
    iget-object v0, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/android/phone/FloatView;->lasteventX:I

    .line 57
    iget-object v0, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/android/phone/FloatView;->lasteventY:I

    .line 62
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/phone/FloatView;->BG_LIST:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/FloatView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/phone/FloatView;->flashBackground:Ljava/lang/Runnable;

    return-object v0
.end method

.method private updateViewPosition()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v5, "FloatView"

    .line 101
    iget-object v2, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/phone/FloatView;->x:F

    iget v4, p0, Lcom/android/phone/FloatView;->mTouchStartX:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 102
    iget-object v2, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/phone/FloatView;->y:F

    iget v4, p0, Lcom/android/phone/FloatView;->mTouchStartY:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 103
    const-string v2, "FloatView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lasteventX ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/FloatView;->lasteventX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v2, "FloatView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lasteventY ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/FloatView;->lasteventY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v2, "FloatView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wmParams.x ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v2, "FloatView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wmParams.y ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/phone/FloatView;->wm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 112
    .local v0, densityDpi:I
    const-string v2, "FloatView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "densityDpi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/16 v2, 0xa0

    if-ne v0, v2, :cond_2

    .line 114
    iget v2, p0, Lcom/android/phone/FloatView;->lasteventX:I

    iget-object v3, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v8, :cond_0

    iget v2, p0, Lcom/android/phone/FloatView;->lasteventY:I

    iget-object v3, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v8, :cond_1

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/android/phone/FloatView;->wm:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, p0, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iput-boolean v6, p0, Lcom/android/phone/FloatView;->hasMoved:Z

    .line 132
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, p0, Lcom/android/phone/FloatView;->lasteventX:I

    .line 133
    iget-object v2, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/android/phone/FloatView;->lasteventY:I

    .line 134
    return-void

    .line 118
    :cond_2
    const/16 v2, 0xf0

    if-ne v0, v2, :cond_4

    .line 119
    iget v2, p0, Lcom/android/phone/FloatView;->lasteventX:I

    iget-object v3, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v9, :cond_3

    iget v2, p0, Lcom/android/phone/FloatView;->lasteventY:I

    iget-object v3, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v9, :cond_1

    .line 120
    :cond_3
    iget-object v2, p0, Lcom/android/phone/FloatView;->wm:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, p0, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iput-boolean v6, p0, Lcom/android/phone/FloatView;->hasMoved:Z

    goto :goto_0

    .line 125
    :cond_4
    iget v2, p0, Lcom/android/phone/FloatView;->lasteventX:I

    iget-object v3, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v7, :cond_5

    iget v2, p0, Lcom/android/phone/FloatView;->lasteventY:I

    iget-object v3, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v7, :cond_1

    .line 126
    :cond_5
    iget-object v2, p0, Lcom/android/phone/FloatView;->wm:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/phone/FloatView;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, p0, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iput-boolean v6, p0, Lcom/android/phone/FloatView;->hasMoved:Z

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const-string v2, "FloatView"

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/phone/FloatView;->x:F

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    const/high16 v1, 0x41c8

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/phone/FloatView;->y:F

    .line 70
    const-string v0, "FloatView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/FloatView;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "====currY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/FloatView;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 96
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 74
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/phone/FloatView;->mTouchStartX:F

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/phone/FloatView;->mTouchStartY:F

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/FloatView;->hasMoved:Z

    .line 77
    iget v0, p0, Lcom/android/phone/FloatView;->x:F

    iget v1, p0, Lcom/android/phone/FloatView;->mTouchStartX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/FloatView;->lasteventX:I

    .line 78
    iget v0, p0, Lcom/android/phone/FloatView;->y:F

    iget v1, p0, Lcom/android/phone/FloatView;->mTouchStartY:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/FloatView;->lasteventY:I

    .line 79
    const-string v0, "FloatView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/FloatView;->mTouchStartX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "====startY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/FloatView;->mTouchStartY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/FloatView;->updateViewPosition()V

    goto :goto_0

    .line 87
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/FloatView;->updateViewPosition()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/FloatView;->mTouchStartY:F

    iput v0, p0, Lcom/android/phone/FloatView;->mTouchStartX:F

    .line 89
    const-string v0, "FloatView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasMoved = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/FloatView;->hasMoved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-boolean v0, p0, Lcom/android/phone/FloatView;->hasMoved:Z

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    goto :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 48
    const-string v0, "FloatView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    if-nez p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/phone/FloatView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/FloatView;->flashBackground:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/phone/FloatView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/FloatView;->flashBackground:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
