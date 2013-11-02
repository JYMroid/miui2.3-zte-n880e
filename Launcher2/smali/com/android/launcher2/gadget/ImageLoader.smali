.class public final Lcom/android/launcher2/gadget/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSampleSize(Lcom/android/launcher2/gadget/InputStreamLoader;I)I
    .locals 8
    .parameter "streamLoader"
    .parameter "pixelSize"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/android/launcher2/gadget/ImageLoader;->getBitmapSize(Lcom/android/launcher2/gadget/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 37
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v4

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 38
    .local v2, size:D
    const/4 v1, 0x1

    .line 39
    .local v1, roundedSize:I
    :goto_0
    mul-int/lit8 v4, v1, 0x2

    int-to-double v4, v4

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_0

    .line 40
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return v1
.end method

.method public static final getBitmap(Lcom/android/launcher2/gadget/InputStreamLoader;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "streamLoader"

    .prologue
    .line 64
    const v0, 0x23c34600

    invoke-static {p0, v0}, Lcom/android/launcher2/gadget/ImageLoader;->getBitmap(Lcom/android/launcher2/gadget/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final getBitmap(Lcom/android/launcher2/gadget/InputStreamLoader;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "streamLoader"
    .parameter "pixelSize"

    .prologue
    const-string v5, "Gallery/ImageLoader"

    .line 78
    invoke-static {}, Lcom/android/launcher2/gadget/ImageLoader;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 79
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_0

    .line 80
    invoke-static {p0, p1}, Lcom/android/launcher2/gadget/ImageLoader;->computeSampleSize(Lcom/android/launcher2/gadget/InputStreamLoader;I)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 85
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, retry:I
    move v4, v3

    .line 86
    .end local v3           #retry:I
    .local v4, retry:I
    :goto_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #retry:I
    .restart local v3       #retry:I
    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/InputStreamLoader;->close()V

    .line 105
    :cond_1
    :goto_1
    return-object v0

    .line 91
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 92
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 93
    const-string v5, "Gallery/ImageLoader"

    const-string v6, "out of memory, try to GC"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 96
    const-string v5, "Gallery/ImageLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try to increase sample size to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/InputStreamLoader;->close()V

    move v4, v3

    .end local v3           #retry:I
    .restart local v4       #retry:I
    goto :goto_0

    .line 97
    .end local v1           #ex:Ljava/lang/OutOfMemoryError;
    .end local v4           #retry:I
    .restart local v3       #retry:I
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 98
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/InputStreamLoader;->close()V

    goto :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/InputStreamLoader;->close()V

    throw v5
.end method

.method public static final getBitmapSize(Lcom/android/launcher2/gadget/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .parameter "streamLoader"

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 49
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/InputStreamLoader;->close()V

    .line 56
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v1

    .line 54
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/InputStreamLoader;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/InputStreamLoader;->close()V

    throw v1
.end method

.method public static getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 27
    .local v0, opt:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 28
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 29
    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 30
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 31
    return-object v0
.end method
