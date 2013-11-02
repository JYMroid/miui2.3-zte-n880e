.class Lcom/android/phone/InCallTouchUi$2;
.super Ljava/lang/Object;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallTouchUi;->hideConnecttedCallWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallTouchUi;)V
    .locals 0
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$100(Lcom/android/phone/InCallTouchUi;)Lcom/android/internal/widget/SlidingTab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab;->clearAnimation()V

    .line 813
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mConnecttedCallWidget:Lcom/android/internal/widget/SlidingTab;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$100(Lcom/android/phone/InCallTouchUi;)Lcom/android/internal/widget/SlidingTab;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 814
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 810
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 808
    return-void
.end method
