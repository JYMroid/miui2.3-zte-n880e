.class final Lcom/android/launcher2/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Utilities$BubbleText;
    }
.end annotation


# static fields
.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sBounds:Landroid/graphics/Rect;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v0, 0x5a

    .line 57
    sput v0, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 58
    sput v0, Lcom/android/launcher2/Utilities;->sIconHeight:I

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sBounds:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 70
    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/Utilities;->sColors:[I

    .line 96
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/Utilities;->sColorIndex:I

    return-void

    .line 95
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 103
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget v1, Lcom/android/launcher2/Utilities;->sIconHeight:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 106
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 172
    .end local p1
    :goto_0
    return-object p0

    .line 109
    .restart local p0
    .restart local p1
    :cond_0
    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v6

    .line 110
    :try_start_0
    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 111
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 114
    :cond_1
    sget v4, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 115
    .local v4, width:I
    sget v3, Lcom/android/launcher2/Utilities;->sIconHeight:I

    .line 117
    .local v3, height:I
    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_4

    .line 118
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object p1, v0

    .line 119
    .local p1, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 120
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 129
    .end local p1           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 130
    .local v2, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 132
    .local v1, sourceHeight:I
    if-lez v2, :cond_7

    if-lez v2, :cond_7

    .line 134
    if-lt v4, v2, :cond_3

    if-ge v3, v1, :cond_6

    .line 136
    :cond_3
    int-to-float p1, v2

    int-to-float v5, v1

    div-float/2addr p1, v5

    .line 137
    .local p1, ratio:F
    if-le v2, v1, :cond_5

    .line 138
    int-to-float v1, v4

    div-float p1, v1, p1

    float-to-int p1, p1

    .end local v3           #height:I
    .local p1, height:I
    move v1, v4

    .end local v4           #width:I
    .local v1, width:I
    :goto_2
    move v2, p1

    .end local p1           #height:I
    .local v2, height:I
    move v5, v1

    .line 150
    .end local v1           #width:I
    .local v5, width:I
    :goto_3
    sget p1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sget v1, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 152
    .local p1, bitmap:Landroid/graphics/Bitmap;
    sget-object v1, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 153
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    sget v3, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    .line 156
    .local v3, left:I
    sget v4, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 167
    .local v4, top:I
    sget-object v7, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 168
    add-int/2addr v5, v3

    add-int/2addr v2, v4

    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    .end local v2           #height:I
    .end local v5           #width:I
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 170
    sget-object v1, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .end local v1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 172
    monitor-exit v6

    move-object p0, p1

    goto :goto_0

    .line 121
    .local v3, height:I
    .local v4, width:I
    .local p1, context:Landroid/content/Context;
    :cond_4
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 123
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 124
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 125
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .end local p1           #context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 173
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #height:I
    .end local v4           #width:I
    .end local p0
    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 139
    .local v1, sourceHeight:I
    .local v2, sourceWidth:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    .restart local p0
    .local p1, ratio:F
    :cond_5
    if-le v1, v2, :cond_8

    .line 140
    int-to-float v1, v3

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .end local v4           #width:I
    .local p1, width:I
    move v1, p1

    .end local p1           #width:I
    .local v1, width:I
    move p1, v3

    .end local v3           #height:I
    .local p1, height:I
    goto :goto_2

    .line 142
    .end local p1           #height:I
    .local v1, sourceHeight:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    :cond_6
    if-ge v2, v4, :cond_7

    if-ge v1, v3, :cond_7

    .line 144
    move v2, v2

    .line 145
    .end local v4           #width:I
    .local v2, width:I
    move p1, v1

    .end local v3           #height:I
    .restart local p1       #height:I
    move v5, v2

    .end local v2           #width:I
    .restart local v5       #width:I
    move v2, p1

    .end local p1           #height:I
    .local v2, height:I
    goto :goto_3

    .end local v5           #width:I
    .local v2, sourceWidth:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    :cond_7
    move v2, v3

    .end local v3           #height:I
    .local v2, height:I
    move v5, v4

    .end local v4           #width:I
    .restart local v5       #width:I
    goto :goto_3

    .end local v5           #width:I
    .local v2, sourceWidth:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    .local p1, ratio:F
    :cond_8
    move p1, v3

    .end local v3           #height:I
    .local p1, height:I
    move v1, v4

    .end local v4           #width:I
    .local v1, width:I
    goto :goto_2
.end method

.method static getAccessiblePrivateField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"
    .parameter "className"
    .parameter "name"

    .prologue
    .line 392
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 393
    .local v1, classObj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 394
    .local v0, cachePaint:Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 395
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 396
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 402
    .end local v0           #cachePaint:Ljava/lang/reflect/Field;
    .end local v1           #classObj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 400
    :catch_0
    move-exception v2

    .line 402
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 399
    :catch_1
    move-exception v2

    goto :goto_1

    .line 398
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 243
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 244
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 246
    .local v1, density:F
    sget-object v4, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a0

    mul-float/2addr v6, v1

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 247
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 249
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 252
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 253
    .local v0, cm:Landroid/graphics/ColorMatrix;
    const v4, 0x3e4ccccd

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 254
    sget-object v4, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 255
    sget-object v4, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 256
    return-void
.end method

.method static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 212
    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 213
    :try_start_0
    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 214
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v2, Lcom/android/launcher2/Utilities;->sIconWidth:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v2, Lcom/android/launcher2/Utilities;->sIconHeight:I

    if-ne v1, v2, :cond_1

    .line 218
    monitor-exit v0

    move-object v0, p0

    .line 220
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static roundToPow2(I)I
    .locals 3
    .parameter "n"

    .prologue
    .line 373
    move v1, p0

    .line 374
    .local v1, orig:I
    shr-int/lit8 p0, p0, 0x1

    .line 375
    const/high16 v0, 0x800

    .line 376
    .local v0, mask:I
    :goto_0
    if-eqz v0, :cond_0

    and-int v2, p0, v0

    if-nez v2, :cond_0

    .line 377
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 380
    or-int/2addr p0, v0

    .line 381
    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 383
    :cond_1
    add-int/lit8 p0, p0, 0x1

    .line 384
    if-eq p0, v1, :cond_2

    .line 385
    shl-int/lit8 p0, p0, 0x1

    .line 387
    :cond_2
    return p0
.end method

.method static setDrawingCacheByFilterBitmapForViewGroup(Landroid/view/ViewGroup;Landroid/graphics/Paint;Z)Landroid/graphics/Paint;
    .locals 4
    .parameter "vg"
    .parameter "paint"
    .parameter "enable"

    .prologue
    .line 406
    if-nez p1, :cond_0

    .line 407
    const-string v2, "android.view.ViewGroup"

    const-string v3, "mCachePaint"

    invoke-static {p0, v2, v3}, Lcom/android/launcher2/Utilities;->getAccessiblePrivateField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 408
    .local v1, obj:Ljava/lang/Object;
    instance-of v2, v1, Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 409
    move-object v0, v1

    check-cast v0, Landroid/graphics/Paint;

    move-object p1, v0

    .line 412
    .end local v1           #obj:Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    .line 413
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 415
    :cond_1
    return-object p1
.end method
