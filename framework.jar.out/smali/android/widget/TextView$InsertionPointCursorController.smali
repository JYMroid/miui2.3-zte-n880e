.class Landroid/widget/TextView$InsertionPointCursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionPointCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_FADE_OUT:I = 0x1004


# instance fields
.field private final mHandle:Landroid/widget/TextView$HandleView;

.field private final mHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    .line 8330
    iput-object p1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8324
    new-instance v0, Landroid/widget/TextView$InsertionPointCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InsertionPointCursorController$1;-><init>(Landroid/widget/TextView$InsertionPointCursorController;)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    .line 8331
    new-instance v0, Landroid/widget/TextView$HandleView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    .line 8332
    return-void
.end method

.method private hideDelayed(I)V
    .locals 4
    .parameter "msec"

    .prologue
    .line 8346
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8347
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8348
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 8341
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    .line 8342
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8343
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 8351
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 8390
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8391
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 8379
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    .line 8383
    if-nez p1, :cond_0

    .line 8384
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 8386
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 8335
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->updatePosition()V

    .line 8336
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->show()V

    .line 8337
    const/16 v0, 0x1004

    invoke-direct {p0, v0}, Landroid/widget/TextView$InsertionPointCursorController;->hideDelayed(I)V

    .line 8338
    return-void
.end method

.method public updatePosition()V
    .locals 3

    .prologue
    .line 8366
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 8368
    .local v0, offset:I
    if-gez v0, :cond_0

    .line 8370
    const-string v1, "TextView"

    const-string v2, "Update cursor controller position called with no cursor"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8371
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 8376
    :goto_0
    return-void

    .line 8375
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView$HandleView;->positionAtCursor(IZ)V

    goto :goto_0
.end method

.method public updatePosition(Landroid/widget/TextView$HandleView;II)V
    .locals 3
    .parameter "handle"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8355
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8356
    .local v1, previousOffset:I
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, p2, p3, v1}, Landroid/widget/TextView;->getHysteresisOffset(III)I

    move-result v0

    .line 8358
    .local v0, offset:I
    if-eq v0, v1, :cond_0

    .line 8359
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8360
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->updatePosition()V

    .line 8362
    :cond_0
    const/16 v2, 0x1004

    invoke-direct {p0, v2}, Landroid/widget/TextView$InsertionPointCursorController;->hideDelayed(I)V

    .line 8363
    return-void
.end method
