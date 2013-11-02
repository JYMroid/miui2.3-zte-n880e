.class public abstract Lcom/android/systemui/toggles/ToggleManager$StateTracker;
.super Ljava/lang/Object;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/toggles/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-boolean v0, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mInTransition:Z

    .line 603
    iput-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 604
    iput-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 610
    iput-boolean v0, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x5

    .line 708
    iget-boolean v0, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mInTransition:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 724
    :goto_0
    return v0

    .line 718
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 724
    goto :goto_0

    .line 720
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 722
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 718
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "ToggleManager"

    .line 658
    iget-boolean v0, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mInTransition:Z

    .line 659
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_0

    .line 678
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    .line 679
    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 680
    const-string v1, "ToggleManager"

    const-string v1, "processing deferred state change"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 683
    const-string v1, "ToggleManager"

    const-string v1, "... but intended state matches, so no changes."

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 691
    :cond_1
    return-void

    .line 661
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mInTransition:Z

    .line 662
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 665
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mInTransition:Z

    .line 666
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 669
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mInTransition:Z

    .line 670
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 673
    :pswitch_3
    iput-boolean v4, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mInTransition:Z

    .line 674
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 684
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 685
    iput-boolean v4, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mInTransition:Z

    .line 686
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 618
    invoke-virtual {p0, p1}, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 619
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 620
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_0

    .line 633
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 634
    iget-boolean v2, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mInTransition:Z

    if-eqz v2, :cond_2

    .line 639
    iput-boolean v3, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 644
    :goto_1
    return-void

    .line 622
    :pswitch_1
    const/4 v1, 0x0

    .line 623
    goto :goto_0

    .line 625
    :pswitch_2
    const/4 v1, 0x1

    .line 626
    goto :goto_0

    .line 628
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 629
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_2

    .line 641
    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->mInTransition:Z

    .line 642
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
