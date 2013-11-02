.class Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;
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
    .line 1496
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 1508
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$900(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/WorkspaceThumbnailView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WorkspaceThumbnailView;->setVisibility(I)V

    .line 1509
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    #calls: Lcom/android/launcher2/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Workspace;->access$1500(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V

    .line 1510
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->setIndicatorBarVisibility(I)V

    .line 1511
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1504
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    const/4 v2, 0x7

    #calls: Lcom/android/launcher2/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Workspace;->access$1400(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V

    .line 1500
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 1501
    return-void
.end method
