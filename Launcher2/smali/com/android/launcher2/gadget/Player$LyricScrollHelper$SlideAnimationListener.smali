.class Lcom/android/launcher2/gadget/Player$LyricScrollHelper$SlideAnimationListener;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Player$LyricScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideAnimationListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 910
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$SlideAnimationListener;->this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;Lcom/android/launcher2/gadget/Player$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 910
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$SlideAnimationListener;-><init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$SlideAnimationListener;->this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    const/4 v1, 0x0

    #setter for: Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricMoveStatus:I
    invoke-static {v0, v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$3902(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;I)I

    .line 914
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 919
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 924
    return-void
.end method
