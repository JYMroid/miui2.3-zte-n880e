.class Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$5;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$5;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$5;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 1492
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$5;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    const/4 v2, 0x0

    #calls: Lcom/android/launcher2/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Workspace;->access$1300(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V

    .line 1493
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1487
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$5;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    const/4 v2, 0x6

    #calls: Lcom/android/launcher2/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Workspace;->access$1200(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V

    .line 1483
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$5;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setIndicatorBarVisibility(I)V

    .line 1484
    return-void
.end method
