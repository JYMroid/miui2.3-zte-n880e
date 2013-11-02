.class Lcom/android/systemui/statusbar/StatusBarService$MyTicker;
.super Lcom/android/systemui/statusbar/Ticker;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/content/Context;Lcom/android/systemui/statusbar/StatusBarView;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "sb"

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    .line 1513
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/Ticker;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/StatusBarView;)V

    .line 1514
    return-void
.end method


# virtual methods
.method tickerDone()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1529
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #setter for: Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$302(Lcom/android/systemui/statusbar/StatusBarService;Z)Z

    .line 1530
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1531
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$400(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1532
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const v2, 0x6040007

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->access$500(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1533
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$400(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const v2, 0x6040008

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->access$500(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1534
    return-void
.end method

.method tickerHalting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1538
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #setter for: Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$302(Lcom/android/systemui/statusbar/StatusBarService;Z)Z

    .line 1539
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1540
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$400(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1541
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const/high16 v2, 0x10a

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->access$500(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1542
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$400(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const v2, 0x10a0001

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->access$500(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1543
    return-void
.end method

.method tickerStarting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1519
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$302(Lcom/android/systemui/statusbar/StatusBarService;Z)Z

    .line 1520
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1521
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$400(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1522
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$400(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const v2, 0x6040009

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->access$500(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1523
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const v2, 0x604000a

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->access$500(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1524
    return-void
.end method
