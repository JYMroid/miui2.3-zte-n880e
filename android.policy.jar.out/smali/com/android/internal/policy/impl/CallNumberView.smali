.class public Lcom/android/internal/policy/impl/CallNumberView;
.super Landroid/view/View;
.source "CallNumberView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallNumberView"


# instance fields
.field private CallBitmapIcon:Landroid/graphics/Bitmap;

.field private CallDrawableIcon:Landroid/graphics/drawable/Drawable;

.field private firstStart:Z

.field private mContext:Landroid/content/Context;

.field private mLockScreen:Lcom/android/internal/policy/impl/LockScreen;

.field private mUnlockHandleView:Lcom/android/internal/policy/impl/UnlockHandleView;

.field private paint:Landroid/graphics/Paint;

.field private unReadMessage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->firstStart:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->CallBitmapIcon:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->unReadMessage:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CallNumberView;->firstStart:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/CallNumberView;->CallBitmapIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/CallNumberView;->unReadMessage:I

    const-string v1, "CallNumberView"

    const-string v2, "MmsNumberView2222"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/policy/impl/CallNumberView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CallNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, localResources:Landroid/content/res/Resources;
    const v1, 0x10801a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/CallNumberView;->CallDrawableIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private numOfMissdeCall()I
    .locals 10

    .prologue
    const-string v9, "CallNumberView"

    iget-object v1, p0, Lcom/android/internal/policy/impl/CallNumberView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .local v8, missedCalls:I
    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "number"

    aput-object v4, v2, v3

    const-string v3, "(type=3 AND new>0 )"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cs:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #cs:Landroid/database/Cursor;
    :cond_0
    :goto_0
    const-string v1, "CallNumberView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numOfMissdeCall.missedCalls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :catch_0
    move-exception v1

    move-object v7, v1

    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v1, "CallNumberView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMissCall:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->CallBitmapIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->CallBitmapIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CallNumberView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->firstStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->firstStart:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CallNumberView;->updateNumberView()V

    :cond_0
    return-void
.end method

.method public setLockScreen(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter "lockscreen"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/CallNumberView;->mLockScreen:Lcom/android/internal/policy/impl/LockScreen;

    return-void
.end method

.method public setUnlockHandleView(Lcom/android/internal/policy/impl/UnlockHandleView;)V
    .locals 0
    .parameter "unlockhandleview"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/CallNumberView;->mUnlockHandleView:Lcom/android/internal/policy/impl/UnlockHandleView;

    return-void
.end method

.method public updateNumberView()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CallNumberView;->numOfMissdeCall()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->unReadMessage:I

    iget v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->unReadMessage:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->unReadMessage:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->mLockScreen:Lcom/android/internal/policy/impl/LockScreen;

    iget v1, p0, Lcom/android/internal/policy/impl/CallNumberView;->unReadMessage:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/CallNumberView;->CallDrawableIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->updateNumOfIcon(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->CallDrawableIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->mLockScreen:Lcom/android/internal/policy/impl/LockScreen;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->CallDrawableIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->CallBitmapIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CallNumberView;->invalidate()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CallNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CallNumberView;->CallDrawableIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
