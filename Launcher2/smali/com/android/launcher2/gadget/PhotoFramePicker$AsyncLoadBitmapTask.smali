.class Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;
.super Landroid/os/AsyncTask;
.source "PhotoFramePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/PhotoFramePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncLoadBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mKeepValues:Z

.field private final mPickerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/gadget/PhotoFramePicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher2/gadget/PhotoFramePicker;Z)V
    .locals 1
    .parameter "picker"
    .parameter "keepValues"

    .prologue
    .line 274
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 275
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->mPickerRef:Ljava/lang/ref/WeakReference;

    .line 276
    iput-boolean p2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->mKeepValues:Z

    .line 277
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "params"

    .prologue
    .line 281
    iget-object v2, p0, Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->mPickerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/gadget/PhotoFramePicker;

    .line 282
    .local v0, picker:Lcom/android/launcher2/gadget/PhotoFramePicker;
    if-eqz v0, :cond_1

    .line 283
    iget-object v2, v0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/launcher2/gadget/InputStreamLoader;

    iget-object v3, v0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher2/gadget/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 286
    .local v1, streamLoader:Lcom/android/launcher2/gadget/InputStreamLoader;
    :goto_0
    invoke-static {v1}, Lcom/android/launcher2/gadget/ImageLoader;->getBitmap(Lcom/android/launcher2/gadget/InputStreamLoader;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 288
    .end local v1           #streamLoader:Lcom/android/launcher2/gadget/InputStreamLoader;
    :goto_1
    return-object v2

    .line 283
    :cond_0
    new-instance v2, Lcom/android/launcher2/gadget/InputStreamLoader;

    iget-object v3, v0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    invoke-direct {v2, v0, v3}, Lcom/android/launcher2/gadget/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    move-object v1, v2

    goto :goto_0

    .line 288
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 293
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->mPickerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/gadget/PhotoFramePicker;

    .line 296
    .local v0, picker:Lcom/android/launcher2/gadget/PhotoFramePicker;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 297
    if-nez p1, :cond_0

    .line 298
    const v1, 0x7f0a005f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 300
    :cond_0
    iget-object v1, v0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/gadget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 301
    iget-boolean v1, p0, Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->mKeepValues:Z

    if-eqz v1, :cond_3

    .line 302
    iget-object v1, v0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    iget v2, v0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mInitRotateDegrees:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/gadget/PhotoFrameView;->setRotateDegrees(IZ)V

    .line 303
    invoke-virtual {v0}, Lcom/android/launcher2/gadget/PhotoFramePicker;->setMatrixValues()V

    .line 310
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    .line 312
    .end local v0           #picker:Lcom/android/launcher2/gadget/PhotoFramePicker;
    :cond_2
    return-void

    .line 305
    .restart local v0       #picker:Lcom/android/launcher2/gadget/PhotoFramePicker;
    :cond_3
    iget-object v1, v0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    invoke-virtual {v1, v3, v3}, Lcom/android/launcher2/gadget/PhotoFrameView;->setRotateDegrees(IZ)V

    .line 306
    iget-object v1, v0, Lcom/android/launcher2/gadget/PhotoFramePicker;->mImageView:Lcom/android/launcher2/gadget/PhotoFrameView;

    invoke-virtual {v1}, Lcom/android/launcher2/gadget/PhotoFrameView;->resetMatrix()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 270
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
