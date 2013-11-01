.class public Lcom/android/internal/policy/impl/MmsNumberView;
.super Landroid/view/View;
.source "MmsNumberView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsNumberView"


# instance fields
.field private MmsBitmapIcon:Landroid/graphics/Bitmap;

.field private MmsDrawableIcon:Landroid/graphics/drawable/Drawable;

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

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->firstStart:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->MmsBitmapIcon:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->unReadMessage:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MmsNumberView;->firstStart:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/MmsNumberView;->MmsBitmapIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/MmsNumberView;->unReadMessage:I

    const-string v1, "MmsNumberView"

    const-string v2, "MmsNumberView2222"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/policy/impl/MmsNumberView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MmsNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, localResources:Landroid/content/res/Resources;
    const v1, 0x10801e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MmsNumberView;->MmsDrawableIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private numOfUnreadMessage()I
    .locals 11

    .prologue
    const-string v10, "MmsNumberView"

    iget-object v1, p0, Lcom/android/internal/policy/impl/MmsNumberView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .local v9, unReadMessage:I
    :try_start_0
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "address"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "subject"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "body"

    aput-object v4, v2, v3

    const-string v3, "(type = 1 AND read = 0)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, smsCs:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v9, v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #smsCs:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_1
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "sub"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "sub_cs"

    aput-object v4, v2, v3

    const-string v3, "(msg_box = 1 AND read= 0 AND (m_type = 130 OR m_type = 132) )"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, msmCs:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v9, v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v7           #msmCs:Landroid/database/Cursor;
    :cond_1
    :goto_1
    const-string v1, "MmsNumberView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUnreadMessage.sms+mms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :catch_0
    move-exception v1

    move-object v6, v1

    .local v6, e:Ljava/lang/IllegalStateException;
    const-string v1, "MmsNumberView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUnreadMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v6           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    move-object v6, v1

    .restart local v6       #e:Ljava/lang/IllegalStateException;
    const-string v1, "MmsNumberView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUnreadMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->MmsBitmapIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->MmsBitmapIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MmsNumberView;->paint:Landroid/graphics/Paint;

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

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->firstStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->firstStart:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MmsNumberView;->updateNumberView()V

    :cond_0
    return-void
.end method

.method public setLockScreen(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter "lockscreen"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MmsNumberView;->mLockScreen:Lcom/android/internal/policy/impl/LockScreen;

    return-void
.end method

.method public setUnlockHandleView(Lcom/android/internal/policy/impl/UnlockHandleView;)V
    .locals 0
    .parameter "unlockhandleview"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MmsNumberView;->mUnlockHandleView:Lcom/android/internal/policy/impl/UnlockHandleView;

    return-void
.end method

.method public updateNumberView()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MmsNumberView;->numOfUnreadMessage()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->unReadMessage:I

    const-string v0, "MmsNumberView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNumberView ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/MmsNumberView;->unReadMessage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->unReadMessage:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->unReadMessage:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->mLockScreen:Lcom/android/internal/policy/impl/LockScreen;

    iget v1, p0, Lcom/android/internal/policy/impl/MmsNumberView;->unReadMessage:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/MmsNumberView;->MmsDrawableIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->updateNumOfIcon(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->MmsDrawableIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->mLockScreen:Lcom/android/internal/policy/impl/LockScreen;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->MmsDrawableIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->MmsBitmapIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MmsNumberView;->invalidate()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MmsNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080259

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MmsNumberView;->MmsDrawableIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
