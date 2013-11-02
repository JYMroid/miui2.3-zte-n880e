.class public Lcom/android/launcher2/gadget/PhotoFrame;
.super Lcom/android/launcher2/gadget/ConfigableGadget;
.source "PhotoFrame.java"


# static fields
.field private static final EXTERNAL_ZIP_DIR:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field mEditView:Landroid/widget/ImageView;

.field mFirstResume:Z

.field mIsDestoryed:Z

.field mPhotoView:Landroid/widget/ImageView;

.field private final mRequestCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getMIUIExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/gadget/photo_frame/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/gadget/PhotoFrame;->EXTERNAL_ZIP_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/ConfigableGadget;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mIsDestoryed:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mFirstResume:Z

    .line 49
    iput-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mPhotoView:Landroid/widget/ImageView;

    .line 50
    iput-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mEditView:Landroid/widget/ImageView;

    .line 54
    iput-object p1, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mActivity:Landroid/app/Activity;

    .line 55
    iput p2, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mRequestCode:I

    .line 56
    return-void
.end method

.method static getBitmapFromZip(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "zipPath"
    .parameter "entry"
    .parameter "opt"

    .prologue
    const/4 v4, 0x0

    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, zipFile:Ljava/util/zip/ZipFile;
    const/4 v0, 0x0

    .line 251
    .local v0, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    .end local v1           #zipFile:Ljava/util/zip/ZipFile;
    .local v2, zipFile:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_2

    .line 254
    const/4 v3, 0x0

    invoke-static {v0, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    move-result-object v3

    .line 258
    if-eqz v0, :cond_0

    .line 260
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 265
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 267
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    :goto_1
    move-object v1, v2

    .line 273
    .end local v2           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #zipFile:Ljava/util/zip/ZipFile;
    :goto_2
    return-object v3

    .line 258
    .end local v1           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v2       #zipFile:Ljava/util/zip/ZipFile;
    :cond_2
    if-eqz v0, :cond_3

    .line 260
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 265
    :cond_3
    :goto_3
    if-eqz v2, :cond_8

    .line 267
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v1, v2

    .end local v2           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #zipFile:Ljava/util/zip/ZipFile;
    :cond_4
    :goto_4
    move-object v3, v4

    .line 273
    goto :goto_2

    .line 268
    .end local v1           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v2       #zipFile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 269
    .end local v2           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 256
    :catch_1
    move-exception v3

    .line 258
    :goto_5
    if-eqz v0, :cond_5

    .line 260
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 265
    :cond_5
    :goto_6
    if-eqz v1, :cond_4

    .line 267
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 268
    :catch_2
    move-exception v3

    goto :goto_4

    .line 258
    :catchall_0
    move-exception v3

    :goto_7
    if-eqz v0, :cond_6

    .line 260
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 265
    :cond_6
    :goto_8
    if-eqz v1, :cond_7

    .line 267
    :try_start_9
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 269
    :cond_7
    :goto_9
    throw v3

    .line 261
    .end local v1           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v2       #zipFile:Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v4

    goto :goto_0

    .line 268
    :catch_4
    move-exception v4

    goto :goto_1

    .line 261
    :catch_5
    move-exception v3

    goto :goto_3

    .end local v2           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #zipFile:Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v3

    goto :goto_6

    :catch_7
    move-exception v4

    goto :goto_8

    .line 268
    :catch_8
    move-exception v4

    goto :goto_9

    .line 258
    .end local v1           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v2       #zipFile:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_7

    .line 256
    .end local v1           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v2       #zipFile:Ljava/util/zip/ZipFile;
    :catch_9
    move-exception v3

    move-object v1, v2

    .end local v2           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_5

    .end local v1           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v2       #zipFile:Ljava/util/zip/ZipFile;
    :cond_8
    move-object v1, v2

    .end local v2           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_4
.end method

.method private getCachePath(Z)Ljava/lang/String;
    .locals 4
    .parameter "createIfNeed"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mContext:Landroid/content/Context;

    const-string v2, "photo_frame"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 144
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 147
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    const/4 v1, 0x0

    .line 151
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrame;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateViews()V
    .locals 4

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mPhotoView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 114
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrame;->getCachedPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrame;->getDefaultZip()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preview/preview_photo_frame_big_0.png"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/gadget/PhotoFrame;->getBitmapFromZip(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method deleteCachedPhoto()V
    .locals 5

    .prologue
    .line 132
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mContext:Landroid/content/Context;

    const-string v3, "photo_frame"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 133
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrame;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method getCachedPhoto()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 172
    new-instance v1, Ljava/io/File;

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/launcher2/gadget/PhotoFrame;->getCachePath(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v5

    .line 191
    :cond_0
    :goto_0
    return-object v4

    .line 176
    :cond_1
    const/4 v2, 0x0

    .line 178
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 183
    if-eqz v3, :cond_0

    .line 185
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v5

    goto :goto_0

    .line 180
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 181
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    if-eqz v2, :cond_2

    .line 185
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    move-object v4, v5

    .line 191
    goto :goto_0

    .line 183
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_3

    .line 185
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 187
    :cond_3
    :goto_4
    throw v4

    .line 186
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    goto :goto_2

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 183
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_3

    .line 180
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_1
.end method

.method getDefaultZip()Ljava/lang/String;
    .locals 5

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrame;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 201
    .local v1, info:Lcom/android/launcher2/gadget/GadgetInfo;
    iget v0, v1, Lcom/android/launcher2/gadget/GadgetInfo;->mGadgetId:I

    .line 202
    .local v0, gadgetId:I
    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    .line 203
    const-string v2, "/system/media/gadget/photo_frame/photo_frame_22.zip"

    .line 209
    :goto_0
    return-object v2

    .line 205
    :cond_0
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 206
    const-string v2, "/system/media/gadget/photo_frame/photo_frame_24.zip"

    goto :goto_0

    .line 208
    :cond_1
    const/16 v2, 0x9

    if-ne v0, v2, :cond_2

    .line 209
    const-string v2, "/system/media/gadget/photo_frame/photo_frame_44.zip"

    goto :goto_0

    .line 212
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "non-support gadgetId, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getEditView()Landroid/view/View;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mEditView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getPrefPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "photo_frame"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/android/launcher2/gadget/ConfigableGadget;->onClick(Landroid/view/View;)V

    .line 218
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mEditView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PHOTO_FRAME_PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "callback_id"

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrame;->getItemId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 224
    const-string v2, "config_as_json"

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrame;->loadConfig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v2, "zip_file"

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrame;->getDefaultZip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v2, "image_entry"

    const-string v3, "image.png"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v2, "frame_entry"

    const-string v3, "frame.png"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v2, "filter_entry"

    const-string v3, "filter.png"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v2, "caller_type_parameter"

    const-string v3, "6"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrame;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/gadget/GadgetInfo;

    iget v2, v2, Lcom/android/launcher2/gadget/GadgetInfo;->mGadgetId:I

    invoke-static {v2}, Lcom/android/launcher2/gadget/GadgetFactory;->getInfo(I)Lcom/android/launcher2/gadget/GadgetInfo;

    move-result-object v0

    .line 231
    .local v0, info:Lcom/android/launcher2/gadget/GadgetInfo;
    const-string v2, "caller_filter"

    iget v3, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    iget v4, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    invoke-static {v3, v4}, Lcom/android/launcher2/gadget/Utils;->getFilterCode(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    const-string v2, "com.miui.android.resourcebrowser.RESOURCE_SET_PACKAGE"

    iget-object v3, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v2, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    const-string v3, "photo_frame"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v2, "com.miui.android.resourcebrowser.DOWNLOAD_FOLDER"

    sget-object v3, Lcom/android/launcher2/gadget/PhotoFrame;->EXTERNAL_ZIP_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v2, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher2/gadget/PhotoFrame;->EXTERNAL_ZIP_DIR:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "/data/media/gadget/photo_frame/"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "/system/media/gadget/photo_frame/"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mRequestCode:I

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 60
    invoke-super {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->onCreate()V

    .line 61
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mContext:Landroid/content/Context;

    const v3, 0x7f030015

    invoke-static {v2, v3, p0}, Lcom/android/launcher2/gadget/PhotoFrame;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    const v2, 0x7f070023

    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/PhotoFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 63
    .local v1, mainWrap:Landroid/view/ViewGroup;
    const v2, 0x7f070019

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mPhotoView:Landroid/widget/ImageView;

    .line 65
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mEditView:Landroid/widget/ImageView;

    .line 66
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x35

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 68
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mEditView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mEditView:Landroid/widget/ImageView;

    const v3, 0x7f020046

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mEditView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mEditView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    invoke-direct {p0}, Lcom/android/launcher2/gadget/PhotoFrame;->updateViews()V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->onDestroy()V

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFrame;->deleteCachedPhoto()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/gadget/PhotoFrame;->mIsDestoryed:Z

    .line 81
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method saveCachedPhoto(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 156
    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/launcher2/gadget/PhotoFrame;->getCachePath(Z)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 165
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, f:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, src:Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 98
    const-string v0, "config_as_json"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/PhotoFrame;->saveConfig(Ljava/lang/String;)Z

    .line 99
    const-string v0, "pick_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/PhotoFrame;->saveCachedPhoto(Landroid/net/Uri;)V

    .line 100
    invoke-direct {p0}, Lcom/android/launcher2/gadget/PhotoFrame;->updateViews()V

    .line 101
    return-void
.end method
