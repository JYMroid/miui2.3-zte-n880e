.class public Lcom/android/launcher2/gadget/PhotoFrameView;
.super Landroid/view/View;
.source "PhotoFrameView.java"


# instance fields
.field private mBitmapDisplayed:Landroid/graphics/Bitmap;

.field private mCurrentDownTime:J

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field private final mDown:Landroid/graphics/PointF;

.field private mFilterBitmap:Landroid/graphics/Bitmap;

.field private mFilterPaint:Landroid/graphics/Paint;

.field private mFrameBitmap:Landroid/graphics/Bitmap;

.field private final mLastDown:Landroid/graphics/PointF;

.field private mLastDownTime:J

.field private final mLastMove:Landroid/graphics/PointF;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private final mMatrixTemp:Landroid/graphics/Matrix;

.field private final mMatrixValuesTemp:[F

.field private final mMidPoint:Landroid/graphics/PointF;

.field private mMinZoom:F

.field private mMode:I

.field private mOldDist:F

.field private mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPrepareValues:[F

.field private mRotation:I

.field private mTempBitmap:Landroid/graphics/Bitmap;

.field private mTransformedFilterBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/gadget/PhotoFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/gadget/PhotoFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 169
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDown:Landroid/graphics/PointF;

    .line 170
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mLastMove:Landroid/graphics/PointF;

    .line 171
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMidPoint:Landroid/graphics/PointF;

    .line 172
    iput v3, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMode:I

    .line 173
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mOldDist:F

    .line 175
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mLastDown:Landroid/graphics/PointF;

    .line 176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mCurrentDownTime:J

    .line 177
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mLastDownTime:J

    .line 296
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 299
    iput v3, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mRotation:I

    .line 305
    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mPrepareValues:[F

    .line 308
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    .line 310
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    .line 313
    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 316
    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 319
    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    .line 321
    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    .line 323
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMinZoom:F

    .line 324
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFilterPaint:Landroid/graphics/Paint;

    .line 325
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMaskPaint:Landroid/graphics/Paint;

    .line 326
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x7

    invoke-direct {v0, v3, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    .line 344
    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 41
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFilterPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 42
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMaskPaint:Landroid/graphics/Paint;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 44
    return-void
.end method

.method private center(ZZ)V
    .locals 12
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 472
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 473
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->invalidate()V

    .line 509
    :goto_0
    return-void

    .line 478
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 479
    .local v4, rect:Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 481
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 482
    .local v3, height:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 484
    .local v7, width:F
    const/4 v1, 0x0

    .local v1, deltaX:F
    const/4 v2, 0x0

    .line 486
    .local v2, deltaY:F
    if-eqz p2, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getHeight()I

    move-result v5

    .line 488
    .local v5, viewHeight:I
    int-to-float v8, v5

    cmpg-float v8, v3, v8

    if-gez v8, :cond_3

    .line 489
    int-to-float v8, v5

    sub-float/2addr v8, v3

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v2, v8, v9

    .line 497
    .end local v5           #viewHeight:I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 498
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getWidth()I

    move-result v6

    .line 499
    .local v6, viewWidth:I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 500
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v1, v8, v9

    .line 507
    .end local v6           #viewWidth:I
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 508
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->invalidate()V

    goto :goto_0

    .line 490
    .restart local v5       #viewHeight:I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 491
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v2, v8

    goto :goto_1

    .line 492
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v8, v9

    goto :goto_1

    .line 501
    .end local v5           #viewHeight:I
    .restart local v6       #viewWidth:I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 502
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v1, v8

    goto :goto_2

    .line 503
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 504
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v1, v8, v9

    goto :goto_2
.end method

.method private convertMatrixReference([FZ)Z
    .locals 6
    .parameter "values"
    .parameter "toRaw"

    .prologue
    const/4 v5, 0x1

    .line 512
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getWidth()I

    move-result v3

    if-nez v3, :cond_0

    .line 513
    const/4 v3, 0x0

    .line 531
    :goto_0
    return v3

    .line 516
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    move v3, v5

    .line 517
    goto :goto_0

    .line 520
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 521
    .local v2, m:Landroid/graphics/Matrix;
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 523
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 524
    .local v0, dx:I
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    .line 525
    .local v1, dy:I
    if-nez p2, :cond_2

    .line 526
    neg-int v0, v0

    .line 527
    neg-int v1, v1

    .line 529
    :cond_2
    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 530
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->getValues([F)V

    move v3, v5

    .line 531
    goto :goto_0
.end method

.method private fitCenter()V
    .locals 14

    .prologue
    const/high16 v13, 0x4000

    .line 408
    iget-object v9, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v9, :cond_0

    .line 441
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getWidth()I

    move-result v7

    .line 412
    .local v7, viewWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getHeight()I

    move-result v6

    .line 415
    .local v6, viewHeight:I
    iget-object v9, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_2

    .line 416
    iget-object v9, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v1, v9

    .line 417
    .local v1, frameWidth:F
    iget-object v9, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v0, v9

    .line 423
    .local v0, frameHeight:F
    :goto_1
    iget-object v9, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v8, v9

    .line 424
    .local v8, w:F
    iget-object v9, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v2, v9

    .line 426
    .local v2, h:F
    invoke-direct {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->isVertical()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 427
    div-float v9, v1, v8

    div-float v10, v0, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 432
    .local v3, scale:F
    :goto_2
    iget-object v9, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 433
    iget v9, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mRotation:I

    if-eqz v9, :cond_1

    .line 434
    iget-object v9, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget v10, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mRotation:I

    int-to-float v10, v10

    div-float v11, v8, v13

    div-float v12, v2, v13

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 437
    :cond_1
    iget-object v9, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 438
    int-to-float v9, v7

    mul-float v10, v8, v3

    sub-float/2addr v9, v10

    div-float v4, v9, v13

    .line 439
    .local v4, tranX:F
    int-to-float v9, v6

    mul-float v10, v2, v3

    sub-float/2addr v9, v10

    div-float v5, v9, v13

    .line 440
    .local v5, tranY:F
    iget-object v9, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 419
    .end local v0           #frameHeight:F
    .end local v1           #frameWidth:F
    .end local v2           #h:F
    .end local v3           #scale:F
    .end local v4           #tranX:F
    .end local v5           #tranY:F
    .end local v8           #w:F
    :cond_2
    int-to-float v1, v7

    .line 420
    .restart local v1       #frameWidth:F
    int-to-float v0, v6

    .restart local v0       #frameHeight:F
    goto :goto_1

    .line 429
    .restart local v2       #h:F
    .restart local v8       #w:F
    :cond_3
    div-float v9, v1, v2

    div-float v10, v0, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .restart local v3       #scale:F
    goto :goto_2
.end method

.method private getImageBounds()Landroid/graphics/RectF;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 373
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 374
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 375
    const/4 v4, 0x0

    .line 389
    :goto_0
    return-object v4

    .line 378
    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v2, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 379
    .local v2, rect:Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 381
    iget-object v4, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 383
    .local v1, h:I
    iget v4, v2, Landroid/graphics/RectF;->left:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 384
    iget v4, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v1

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 385
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 386
    .local v3, v:I
    iget v4, v2, Landroid/graphics/RectF;->top:F

    int-to-float v5, v3

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 387
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v3

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .end local v1           #h:I
    .end local v3           #v:I
    :cond_1
    move-object v4, v2

    .line 389
    goto :goto_0
.end method

.method private getScale()F
    .locals 3

    .prologue
    .line 395
    iget v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mRotation:I

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 397
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    .line 398
    .local v0, m:Landroid/graphics/Matrix;
    const/16 v1, 0x168

    iget v2, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mRotation:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 402
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 403
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    return v1

    .line 400
    .end local v0           #m:Landroid/graphics/Matrix;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .restart local v0       #m:Landroid/graphics/Matrix;
    goto :goto_0
.end method

.method private isDonbleClick(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/high16 v4, 0x41a0

    .line 259
    iget-wide v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mLastDownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mLastDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mLastDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mLastDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVertical()Z
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mRotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "point"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 279
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 280
    .local v0, x:F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 281
    .local v1, y:F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 282
    return-void
.end method

.method private panBy(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 267
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->invalidate()V

    .line 268
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    const/4 v0, 0x0

    .line 358
    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/launcher2/gadget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;III)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/launcher2/gadget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;III)V

    goto :goto_0
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;III)V
    .locals 0
    .parameter "bitmap"
    .parameter "imageRawWidth"
    .parameter "imageRawHeight"
    .parameter "orientation"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 368
    invoke-direct {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->updateMinZoom()V

    .line 369
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->invalidate()V

    .line 370
    return-void
.end method

.method private static spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 272
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 273
    .local v0, x:F
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 274
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method private updateMinZoom()V
    .locals 6

    .prologue
    const/high16 v5, 0x41a0

    .line 444
    const/high16 v2, 0x3f80

    .line 445
    .local v2, minZoom:F
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 446
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move v1, v3

    .line 448
    .local v1, min:I
    :goto_0
    int-to-float v3, v1

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    .line 449
    int-to-float v3, v1

    div-float v2, v5, v3

    .line 455
    .end local v1           #min:I
    :cond_0
    :goto_1
    iput v2, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMinZoom:F

    .line 456
    return-void

    .line 447
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v1, v3

    goto :goto_0

    .line 451
    .restart local v1       #min:I
    :cond_2
    const/high16 v2, 0x3f80

    goto :goto_1
.end method

.method private updateTempBitmap()V
    .locals 15

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getHeight()I

    move-result v9

    .line 536
    .local v9, height:I
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getWidth()I

    move-result v14

    .line 537
    .local v14, width:I
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v9, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v1, v14, :cond_1

    .line 539
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 543
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 544
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 545
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 546
    iget-object v6, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 547
    .local v6, bm:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_3

    .line 548
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 549
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_2

    .line 550
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 552
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 553
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 556
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getWidth()I

    move-result v13

    .line 557
    .local v13, viewWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getHeight()I

    move-result v12

    .line 558
    .local v12, viewHeight:I
    const/4 v10, 0x0

    .line 559
    .local v10, offsetX:I
    const/4 v11, 0x0

    .line 560
    .local v11, offsetY:I
    const/4 v7, 0x0

    .line 561
    .local v7, bmHeight:I
    const/4 v8, 0x0

    .line 562
    .local v8, bmWidth:I
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 563
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v13, v1

    div-int/lit8 v10, v1, 0x2

    .line 564
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v1, v12, v1

    div-int/lit8 v11, v1, 0x2

    .line 565
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    int-to-float v2, v10

    int-to-float v3, v11

    iget-object v4, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 566
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 567
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 570
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 571
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v13, v1

    div-int/lit8 v10, v1, 0x2

    .line 572
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v1, v12, v1

    div-int/lit8 v11, v1, 0x2

    .line 573
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    int-to-float v2, v10

    int-to-float v3, v11

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 574
    if-gtz v7, :cond_5

    .line 575
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 576
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 580
    :cond_5
    if-lez v10, :cond_6

    if-lez v11, :cond_6

    add-int v1, v10, v8

    if-ge v1, v13, :cond_6

    add-int v1, v11, v7

    if-ge v1, v12, :cond_6

    .line 582
    int-to-float v1, v10

    int-to-float v2, v11

    add-int v3, v10, v8

    int-to-float v3, v3

    add-int v4, v11, v7

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 584
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v13

    int-to-float v4, v12

    iget-object v5, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 587
    :cond_6
    return-void
.end method

.method private zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v3, 0x0

    .line 459
    invoke-direct {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getScale()F

    move-result v1

    .line 460
    .local v1, oldScale:F
    div-float v0, p1, v1

    .line 461
    .local v0, deltaScale:F
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 463
    invoke-direct {p0, v3, v3}, Lcom/android/launcher2/gadget/PhotoFrameView;->center(ZZ)V

    .line 464
    return-void
.end method


# virtual methods
.method public generatePhoto()Landroid/graphics/Bitmap;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 592
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 593
    .local v2, frameBitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 594
    .local v5, imageBitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    .line 596
    .local v1, filterBitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    move-object v8, v11

    .line 621
    :goto_0
    return-object v8

    .line 600
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 601
    .local v3, frameHeight:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 602
    .local v4, frameWidth:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 604
    .local v7, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 605
    .local v0, dest:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v9, 0x3

    invoke-direct {v8, v12, v9}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 608
    iget-object v8, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 609
    iget-object v8, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-direct {p0, v8, v12}, Lcom/android/launcher2/gadget/PhotoFrameView;->convertMatrixReference([FZ)Z

    .line 610
    iget-object v8, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->setValues([F)V

    .line 611
    iget-object v8, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5, v8, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 614
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 615
    .local v6, maskPaint:Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 616
    invoke-virtual {v0, v1, v10, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 619
    invoke-virtual {v0, v2, v10, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v8, v7

    .line 621
    goto :goto_0
.end method

.method public getMatrixValues([F)V
    .locals 1
    .parameter "values"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/gadget/PhotoFrameView;->convertMatrixReference([FZ)Z

    .line 134
    return-void
.end method

.method public getRotateDegrees()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mRotation:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 347
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 348
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 349
    invoke-direct {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->updateTempBitmap()V

    .line 350
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 351
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 331
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 332
    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mPrepareValues:[F

    if-nez v0, :cond_1

    .line 334
    invoke-direct {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->fitCenter()V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mPrepareValues:[F

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    const/16 v2, 0x9

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/gadget/PhotoFrameView;->convertMatrixReference([FZ)Z

    .line 338
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/high16 v8, 0x41a0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v6, v10

    .line 255
    :goto_1
    return v6

    .line 183
    :pswitch_1
    iget-object v6, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mLastDown:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDown:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDown:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 184
    iget-wide v6, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mCurrentDownTime:J

    iput-wide v6, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mLastDownTime:J

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mCurrentDownTime:J

    .line 187
    iget-object v6, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDown:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 188
    iget-object v6, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mLastMove:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 189
    iput v10, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMode:I

    goto :goto_0

    .line 193
    :pswitch_2
    invoke-static {p1}, Lcom/android/launcher2/gadget/PhotoFrameView;->spacing(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mOldDist:F

    .line 194
    iget v6, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mOldDist:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    .line 195
    iget-object v6, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMidPoint:Landroid/graphics/PointF;

    invoke-static {v6, p1}, Lcom/android/launcher2/gadget/PhotoFrameView;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 196
    iput v11, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMode:I

    goto :goto_0

    .line 200
    :pswitch_3
    iput v7, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMode:I

    .line 201
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/PhotoFrameView;->isDonbleClick(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->resetMatrix()V

    goto :goto_0

    .line 206
    :pswitch_4
    iput v7, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMode:I

    goto :goto_0

    .line 209
    :pswitch_5
    iget v6, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMode:I

    if-ne v6, v10, :cond_5

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mLastMove:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float v1, v6, v7

    .line 211
    .local v1, dx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mLastMove:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v2, v6, v7

    .line 212
    .local v2, dy:F
    iget-object v6, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mLastMove:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 213
    invoke-direct {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 214
    .local v0, bound:Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 215
    cmpg-float v6, v2, v9

    if-gez v6, :cond_3

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v2

    cmpg-float v6, v6, v9

    if-gez v6, :cond_3

    .line 217
    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    neg-float v2, v6

    .line 223
    :cond_1
    :goto_2
    cmpg-float v6, v1, v9

    if-gez v6, :cond_4

    iget v6, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v1

    cmpg-float v6, v6, v9

    if-gez v6, :cond_4

    .line 225
    iget v6, v0, Landroid/graphics/RectF;->right:F

    neg-float v1, v6

    .line 230
    :cond_2
    :goto_3
    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/gadget/PhotoFrameView;->panBy(FF)V

    goto/16 :goto_0

    .line 218
    :cond_3
    cmpl-float v6, v2, v9

    if-lez v6, :cond_1

    iget v6, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v2

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v6, v7

    goto :goto_2

    .line 226
    :cond_4
    cmpl-float v6, v1, v9

    if-lez v6, :cond_2

    iget v6, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v1

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, v6, v7

    goto :goto_3

    .line 233
    .end local v0           #bound:Landroid/graphics/RectF;
    .end local v1           #dx:F
    .end local v2           #dy:F
    :cond_5
    iget v6, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMode:I

    if-ne v6, v11, :cond_0

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getRight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    :cond_6
    move v6, v10

    .line 235
    goto/16 :goto_1

    .line 238
    :cond_7
    invoke-static {p1}, Lcom/android/launcher2/gadget/PhotoFrameView;->spacing(Landroid/view/MotionEvent;)F

    move-result v3

    .line 239
    .local v3, newDist:F
    cmpl-float v6, v3, v8

    if-lez v6, :cond_0

    .line 240
    iget v6, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mOldDist:F

    div-float v4, v3, v6

    .line 241
    .local v4, rate:F
    iput v3, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mOldDist:F

    .line 242
    invoke-direct {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getScale()F

    move-result v6

    mul-float v5, v6, v4

    .line 244
    .local v5, scale:F
    iget v6, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMinZoom:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_8

    .line 245
    iget v5, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMinZoom:F

    .line 248
    :cond_8
    iget-object v6, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMidPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMidPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v5, v6, v7}, Lcom/android/launcher2/gadget/PhotoFrameView;->zoomTo(FFF)V

    goto/16 :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public recyleAllBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 95
    iput-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    iput-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 105
    iput-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 110
    iput-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 112
    :cond_3
    return-void
.end method

.method public resetMatrix()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->fitCenter()V

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->invalidate()V

    .line 141
    :cond_0
    return-void
.end method

.method public setFilterBitmap(Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "filter"

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 68
    iput-object p1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    .line 69
    if-nez p1, :cond_0

    .line 70
    iput-object v9, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    .line 90
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 74
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 75
    .local v7, height:I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .line 76
    .local v1, pixels:[I
    const/high16 v10, 0x5000

    .local v10, halfAlphaHighBit:I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 77
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 78
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    array-length v4, v1

    if-ge v11, v4, :cond_2

    .line 79
    aget v4, v1, v11

    const/high16 v5, -0x100

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 80
    const/high16 v4, 0x5000

    aput v4, v1, v11

    .line 78
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 84
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    .line 85
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 87
    const/4 v8, 0x1

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->invalidate()V

    goto :goto_0
.end method

.method public setFrameBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "frame"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->invalidate()V

    .line 61
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/gadget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 52
    return-void
.end method

.method public setMatrixValues([F)V
    .locals 4
    .parameter "values"

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    .line 118
    new-array v0, v3, [F

    .line 119
    .local v0, v:[F
    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iput-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mPrepareValues:[F

    .line 128
    .end local v0           #v:[F
    :goto_0
    return-void

    .line 122
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mPrepareValues:[F

    .line 123
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/gadget/PhotoFrameView;->convertMatrixReference([FZ)Z

    .line 125
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->invalidate()V

    goto :goto_0
.end method

.method public setRotateDegrees(IZ)V
    .locals 1
    .parameter "degrees"
    .parameter "refresh"

    .prologue
    .line 152
    rem-int/lit16 v0, p1, 0x168

    iput v0, p0, Lcom/android/launcher2/gadget/PhotoFrameView;->mRotation:I

    .line 153
    if-eqz p2, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->fitCenter()V

    .line 155
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrameView;->invalidate()V

    .line 157
    :cond_0
    return-void
.end method
