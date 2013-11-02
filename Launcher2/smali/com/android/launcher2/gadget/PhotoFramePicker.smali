.class public Lcom/android/launcher2/gadget/PhotoFramePicker;
.super Landroid/app/Activity;
.source "PhotoFramePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/gadget/PhotoFramePicker$1;,
        Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;,
        Lcom/android/launcher2/gadget/PhotoFramePicker$OnButtonClickListener;
    }
.end annotation


# instance fields
.field private mCallbackId:J

.field private mCallerCode:Ljava/lang/String;

.field private mCallerDownloadDir:Ljava/lang/String;

.field private mCallerPackageName:Ljava/lang/String;

.field private mCallerSourceFolders:[Ljava/lang/String;

.field private mCallerTypeParameter:Ljava/lang/String;

.field mCurrentLoadTask:Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

.field private mCurrentUseZipPath:Ljava/lang/String;

.field private mFilterCode:I

.field mFilterEntryName:Ljava/lang/String;

.field mFrameEntryName:Ljava/lang/String;

.field mImageEntryName:Ljava/lang/String;

.field mImageUri:Landroid/net/Uri;

.field mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

.field private mInitMatrixValues:[F

.field mInitRotateDegrees:I

.field mZipFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mFrameEntryName:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mFilterEntryName:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mInitRotateDegrees:I

    .line 64
    iput-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mInitMatrixValues:[F

    .line 74
    iput-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    .line 268
    iput-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    .line 270
    return-void
.end method

.method private parse(Ljava/lang/String;)Z
    .locals 12
    .parameter "config"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x9

    .line 322
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 323
    .local v1, json:Lorg/json/JSONObject;
    const-string v8, "image_uri"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, photo:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object v4, v8

    .line 325
    .local v4, photoUri:Landroid/net/Uri;
    :goto_0
    const-string v8, "zip_file"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 326
    .local v7, zipPath:Ljava/lang/String;
    const-string v8, "matrix"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 327
    .local v2, jsonArr:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 328
    .local v6, values:[F
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v8, v10, :cond_1

    .line 329
    const/16 v8, 0x9

    new-array v6, v8, [F

    .line 330
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v10, :cond_1

    .line 331
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v6, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v2           #jsonArr:Lorg/json/JSONArray;
    .end local v4           #photoUri:Landroid/net/Uri;
    .end local v6           #values:[F
    .end local v7           #zipPath:Ljava/lang/String;
    :cond_0
    move-object v4, v11

    .line 324
    goto :goto_0

    .line 334
    .restart local v2       #jsonArr:Lorg/json/JSONArray;
    .restart local v4       #photoUri:Landroid/net/Uri;
    .restart local v6       #values:[F
    .restart local v7       #zipPath:Ljava/lang/String;
    :cond_1
    const-string v8, "rotate"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 336
    .local v5, rotate:I
    iput-object v4, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    .line 337
    iput-object v7, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    .line 338
    iput-object v6, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mInitMatrixValues:[F

    .line 339
    iput v5, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mInitRotateDegrees:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    const/4 v8, 0x1

    .line 344
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #jsonArr:Lorg/json/JSONArray;
    .end local v3           #photo:Ljava/lang/String;
    .end local v4           #photoUri:Landroid/net/Uri;
    .end local v5           #rotate:I
    .end local v6           #values:[F
    .end local v7           #zipPath:Ljava/lang/String;
    :goto_2
    return v8

    .line 341
    :catch_0
    move-exception v8

    .line 344
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private updateViews(Z)V
    .locals 8
    .parameter "keepValues"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 207
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    invoke-virtual {v2}, Lcom/android/launcher2/gadget/PhotoFrameView;->recyleAllBitmap()V

    .line 209
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v2}, Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v2}, Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    .line 211
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->cancel(Z)Z

    .line 212
    iput-object v7, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    new-instance v3, Lcom/android/launcher2/gadget/InputStreamLoader;

    iget-object v4, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mFrameEntryName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/android/launcher2/gadget/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/launcher2/gadget/ImageLoader;->getBitmap(Lcom/android/launcher2/gadget/InputStreamLoader;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/gadget/PhotoFrameView;->setFrameBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    new-instance v3, Lcom/android/launcher2/gadget/InputStreamLoader;

    iget-object v4, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mFilterEntryName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/android/launcher2/gadget/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/launcher2/gadget/ImageLoader;->getBitmap(Lcom/android/launcher2/gadget/InputStreamLoader;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/gadget/PhotoFrameView;->setFilterBitmap(Landroid/graphics/Bitmap;)V

    .line 218
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/launcher2/gadget/InputStreamLoader;

    iget-object v3, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher2/gadget/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 221
    .local v1, streamLoader:Lcom/android/launcher2/gadget/InputStreamLoader;
    :goto_0
    invoke-static {v1}, Lcom/android/launcher2/gadget/ImageLoader;->getBitmapSize(Lcom/android/launcher2/gadget/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 222
    .local v0, opt:Landroid/graphics/BitmapFactory$Options;
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v2, v3

    const/high16 v3, 0x10

    if-ge v2, v3, :cond_3

    .line 223
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    invoke-static {v1}, Lcom/android/launcher2/gadget/ImageLoader;->getBitmap(Lcom/android/launcher2/gadget/InputStreamLoader;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/gadget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 224
    if-eqz p1, :cond_2

    .line 225
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    iget v3, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mInitRotateDegrees:I

    invoke-virtual {v2, v3, v6}, Lcom/android/launcher2/gadget/PhotoFrameView;->setRotateDegrees(IZ)V

    .line 226
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->setMatrixValues()V

    .line 236
    :goto_1
    return-void

    .line 218
    .end local v0           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v1           #streamLoader:Lcom/android/launcher2/gadget/InputStreamLoader;
    :cond_1
    new-instance v2, Lcom/android/launcher2/gadget/InputStreamLoader;

    iget-object v3, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/gadget/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    move-object v1, v2

    goto :goto_0

    .line 228
    .restart local v0       #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #streamLoader:Lcom/android/launcher2/gadget/InputStreamLoader;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    invoke-virtual {v2, v6, v6}, Lcom/android/launcher2/gadget/PhotoFrameView;->setRotateDegrees(IZ)V

    .line 229
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    invoke-virtual {v2}, Lcom/android/launcher2/gadget/PhotoFrameView;->resetMatrix()V

    goto :goto_1

    .line 232
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    invoke-virtual {v2, v7}, Lcom/android/launcher2/gadget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 233
    new-instance v2, Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;-><init>(Lcom/android/launcher2/gadget/PhotoFramePicker;Z)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    .line 234
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method


# virtual methods
.method commit()V
    .locals 4

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v1}, Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v1}, Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    .line 203
    :goto_0
    return-void

    .line 197
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v0, data:Landroid/content/Intent;
    const-string v1, "callback_id"

    iget-wide v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallbackId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 199
    const-string v1, "config_as_json"

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->getConfigAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v1, "pick_result"

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->getPhotoFrameUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->setResult(ILandroid/content/Intent;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->finish()V

    goto :goto_0
.end method

.method protected getConfigAsString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x9

    .line 348
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 350
    .local v1, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "zip_file"

    iget-object v5, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    iget-object v4, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 352
    const-string v4, "image_uri"

    iget-object v5, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 356
    .local v2, jsonArr:Lorg/json/JSONArray;
    const/16 v4, 0x9

    new-array v3, v4, [F

    .line 357
    .local v3, values:[F
    iget-object v4, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/gadget/PhotoFrameView;->getMatrixValues([F)V

    .line 358
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 359
    aget v4, v3, v0

    float-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_1
    const-string v4, "matrix"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    const-string v4, "rotate"

    iget-object v5, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    invoke-virtual {v5}, Lcom/android/launcher2/gadget/PhotoFrameView;->getRotateDegrees()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 363
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 366
    .end local v0           #i:I
    .end local v2           #jsonArr:Lorg/json/JSONArray;
    .end local v3           #values:[F
    :goto_1
    return-object v4

    .line 364
    :catch_0
    move-exception v4

    .line 366
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getPhotoFrameUri()Landroid/net/Uri;
    .locals 10

    .prologue
    .line 373
    const/4 v3, 0x0

    .line 375
    .local v3, os:Ljava/io/OutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    invoke-virtual {v7}, Lcom/android/launcher2/gadget/PhotoFrameView;->generatePhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 376
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 377
    const-string v7, "photo_frame"

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lcom/android/launcher2/gadget/PhotoFramePicker;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 378
    .local v1, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "photo_frame_result.tmp"

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 379
    .local v6, tmp:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v3           #os:Ljava/io/OutputStream;
    .local v4, os:Ljava/io/OutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 381
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 384
    const/16 v2, 0x1f9

    .line 385
    .local v2, extraPerms:I
    or-int/lit16 v5, v2, 0x1b0

    .line 386
    .local v5, perms:I
    or-int/lit8 v5, v5, 0x4

    .line 387
    or-int/lit8 v5, v5, 0x2

    .line 388
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v7, v5, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 390
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v7

    .line 394
    if-eqz v4, :cond_0

    .line 396
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v3, v4

    .line 401
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #dir:Ljava/io/File;
    .end local v2           #extraPerms:I
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v5           #perms:I
    .end local v6           #tmp:Ljava/io/File;
    .restart local v3       #os:Ljava/io/OutputStream;
    :goto_1
    return-object v7

    .line 394
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_1
    if-eqz v3, :cond_2

    .line 396
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 401
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_2
    :goto_2
    const/4 v7, 0x0

    goto :goto_1

    .line 392
    :catch_0
    move-exception v7

    .line 394
    :goto_3
    if-eqz v3, :cond_2

    .line 396
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 397
    :catch_1
    move-exception v7

    goto :goto_2

    .line 394
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_3

    .line 396
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 398
    :cond_3
    :goto_5
    throw v7

    .line 397
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v2       #extraPerms:I
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v5       #perms:I
    .restart local v6       #tmp:Ljava/io/File;
    :catch_2
    move-exception v8

    goto :goto_0

    .end local v1           #dir:Ljava/io/File;
    .end local v2           #extraPerms:I
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v5           #perms:I
    .end local v6           #tmp:Ljava/io/File;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catch_3
    move-exception v7

    goto :goto_2

    .end local v0           #bm:Landroid/graphics/Bitmap;
    :catch_4
    move-exception v8

    goto :goto_5

    .line 394
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v6       #tmp:Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_4

    .line 392
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catch_5
    move-exception v7

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 133
    packed-switch p1, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 150
    return-void

    .line 135
    :pswitch_0
    if-eqz p3, :cond_0

    .line 136
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->updateViews(Z)V

    goto :goto_0

    .line 141
    :pswitch_1
    if-eqz p3, :cond_0

    .line 142
    const-string v0, "com.miui.android.resourcebrowser.PICKED_RESOURCE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    .line 143
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->updateViews(Z)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v2, 0x7f030020

    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/PhotoFramePicker;->setContentView(I)V

    .line 80
    if-nez p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 83
    :cond_0
    if-eqz p1, :cond_3

    .line 84
    const-string v2, "callback_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallbackId:J

    .line 85
    const-string v2, "config_as_json"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, config:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->parse(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 87
    :cond_1
    const-string v2, "zip_file"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    .line 89
    :cond_2
    const-string v2, "image_entry"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    .line 90
    const-string v2, "frame_entry"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mFrameEntryName:Ljava/lang/String;

    .line 91
    const-string v2, "filter_entry"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mFilterEntryName:Ljava/lang/String;

    .line 92
    const-string v2, "caller_type_parameter"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallerTypeParameter:Ljava/lang/String;

    .line 93
    const-string v2, "caller_filter"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mFilterCode:I

    .line 95
    const-string v2, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallerCode:Ljava/lang/String;

    .line 96
    const-string v2, "com.miui.android.resourcebrowser.DOWNLOAD_FOLDER"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallerDownloadDir:Ljava/lang/String;

    .line 97
    const-string v2, "com.miui.android.resourcebrowser.RESOURCE_SET_PACKAGE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallerPackageName:Ljava/lang/String;

    .line 98
    const-string v2, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallerSourceFolders:[Ljava/lang/String;

    .line 99
    const-string v2, "com.miui.android.resourcebrowser.CURRENT_USING_PATH"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCurrentUseZipPath:Ljava/lang/String;

    .line 102
    .end local v0           #config:Ljava/lang/String;
    :cond_3
    const v2, 0x7f070049

    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/gadget/PhotoFrameView;

    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    .line 104
    new-instance v1, Lcom/android/launcher2/gadget/PhotoFramePicker$OnButtonClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/gadget/PhotoFramePicker$OnButtonClickListener;-><init>(Lcom/android/launcher2/gadget/PhotoFramePicker;Lcom/android/launcher2/gadget/PhotoFramePicker$1;)V

    .line 105
    .local v1, listener:Lcom/android/launcher2/gadget/PhotoFramePicker$OnButtonClickListener;
    const v2, 0x7f07004a

    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v2, 0x7f07004b

    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v2, 0x7f07004c

    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v2, 0x7f070048

    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/launcher2/gadget/PhotoFramePicker;->updateViews(Z)V

    .line 111
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/PhotoFrameView;->recyleAllBitmap()V

    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 156
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    const-string v0, "callback_id"

    iget-wide v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallbackId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 117
    const-string v0, "config_as_json"

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->getConfigAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "image_entry"

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "frame_entry"

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mFrameEntryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "filter_entry"

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mFilterEntryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "caller_type_parameter"

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallerTypeParameter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "caller_filter"

    iget v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mFilterCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string v0, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallerCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "com.miui.android.resourcebrowser.DOWNLOAD_FOLDER"

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallerDownloadDir:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "com.miui.android.resourcebrowser.RESOURCE_SET_PACKAGE"

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallerSourceFolders:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 128
    const-string v0, "com.miui.android.resourcebrowser.CURRENT_USING_PATH"

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCurrentUseZipPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method selectFrame()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "miui"

    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    const-string v1, "miui"

    const-class v1, Lmiui/app/resourcebrowser/ResourceTabActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v1, "android.intent.action.PICK_RESOURCE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v1, "callback_id"

    iget-wide v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallbackId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 173
    const-string v1, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_PACKAGE"

    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_TYPE_PARAMETER"

    const-string v2, "%s&filter=%d"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallerTypeParameter:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mFilterCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_NAME"

    const v2, 0x7f0a005d

    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/PhotoFramePicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallerCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "com.miui.android.resourcebrowser.DISPLAY_TYPE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    const-string v1, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallerSourceFolders:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "com.miui.android.resourcebrowser.DOWNLOAD_FOLDER"

    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCallerDownloadDir:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "com.miui.android.resourcebrowser.CACHE_LIST_FOLDER"

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "com.miui.android.resourcebrowser.CURRENT_USING_PATH"

    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCurrentUseZipPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_PACKAGE"

    const-string v2, "miui"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_CLASS"

    const-class v2, Lmiui/app/resourcebrowser/ResourceFilterListActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_PACKAGE"

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "type"

    iget v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mFilterCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0, v7}, Lcom/android/launcher2/gadget/PhotoFramePicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 189
    return-void
.end method

.method selectPhoto()V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/gadget/PhotoFramePicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 165
    return-void
.end method

.method setMatrixValues()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mInitMatrixValues:[F

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mInitMatrixValues:[F

    invoke-virtual {v0, v1}, Lcom/android/launcher2/gadget/PhotoFrameView;->setMatrixValues([F)V

    goto :goto_0
.end method
