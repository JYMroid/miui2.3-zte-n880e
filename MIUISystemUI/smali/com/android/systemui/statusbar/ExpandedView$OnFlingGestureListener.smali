.class Lcom/android/systemui/statusbar/ExpandedView$OnFlingGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ExpandedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ExpandedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFlingGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandedView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/ExpandedView;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/ExpandedView;Lcom/android/systemui/statusbar/ExpandedView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ExpandedView$OnFlingGestureListener;-><init>(Lcom/android/systemui/statusbar/ExpandedView;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v6, -0x3c06

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float v0, v2, v3

    .line 88
    .local v0, dx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float v1, v2, v3

    .line 89
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    const v3, 0x461c4000

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v2, v4

    .line 115
    :goto_0
    return v2

    .line 93
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 94
    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 96
    :cond_1
    const/high16 v2, 0x43fa

    cmpl-float v2, p3, v2

    if-lez v2, :cond_3

    .line 97
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/ExpandedView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/ExpandedView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarService;->flingToPreviousTab()V

    .line 98
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/ExpandedView;

    #setter for: Lcom/android/systemui/statusbar/ExpandedView;->mIntercepted:Z
    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/ExpandedView;->access$102(Lcom/android/systemui/statusbar/ExpandedView;Z)Z

    .line 115
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/ExpandedView;

    #getter for: Lcom/android/systemui/statusbar/ExpandedView;->mIntercepted:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandedView;->access$100(Lcom/android/systemui/statusbar/ExpandedView;)Z

    move-result v2

    goto :goto_0

    .line 100
    :cond_3
    cmpg-float v2, p3, v6

    if-gez v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/ExpandedView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/ExpandedView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarService;->flingToNextTab()V

    .line 102
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/ExpandedView;

    #setter for: Lcom/android/systemui/statusbar/ExpandedView;->mIntercepted:Z
    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/ExpandedView;->access$102(Lcom/android/systemui/statusbar/ExpandedView;Z)Z

    goto :goto_1

    .line 105
    :cond_4
    cmpg-float v2, p4, v6

    if-gez v2, :cond_2

    .line 107
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/ExpandedView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/ExpandedView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    if-nez v2, :cond_5

    .line 108
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/ExpandedView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/ExpandedView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v2, v2, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationScroll:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/ExpandedView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/ExpandedView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v3, v3, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationScroll:Landroid/widget/ScrollView;

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_5

    move v2, v4

    .line 110
    goto :goto_0

    .line 112
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/ExpandedView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/ExpandedView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 113
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandedView$OnFlingGestureListener;->this$0:Lcom/android/systemui/statusbar/ExpandedView;

    #setter for: Lcom/android/systemui/statusbar/ExpandedView;->mIntercepted:Z
    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/ExpandedView;->access$102(Lcom/android/systemui/statusbar/ExpandedView;Z)Z

    goto :goto_1
.end method
