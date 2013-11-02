.class public Lcom/android/settings/widget/buttons/WimaxButton;
.super Lcom/android/settings/widget/buttons/WidgetButton;
.source "WimaxButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/buttons/WimaxButton$1;,
        Lcom/android/settings/widget/buttons/WimaxButton$WimaxStateTracker;
    }
.end annotation


# static fields
.field static ownButton:Lcom/android/settings/widget/buttons/WimaxButton;

.field private static final sWimaxState:Lcom/android/settings/widget/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    new-instance v0, Lcom/android/settings/widget/buttons/WimaxButton$WimaxStateTracker;

    invoke-direct {v0, v1}, Lcom/android/settings/widget/buttons/WimaxButton$WimaxStateTracker;-><init>(Lcom/android/settings/widget/buttons/WimaxButton$1;)V

    sput-object v0, Lcom/android/settings/widget/buttons/WimaxButton;->sWimaxState:Lcom/android/settings/widget/StateTracker;

    .line 21
    sput-object v1, Lcom/android/settings/widget/buttons/WimaxButton;->ownButton:Lcom/android/settings/widget/buttons/WimaxButton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/widget/buttons/WidgetButton;-><init>()V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/android/settings/widget/buttons/WimaxButton;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/settings/widget/buttons/WimaxButton;->ownButton:Lcom/android/settings/widget/buttons/WimaxButton;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/settings/widget/buttons/WimaxButton;

    invoke-direct {v0}, Lcom/android/settings/widget/buttons/WimaxButton;-><init>()V

    sput-object v0, Lcom/android/settings/widget/buttons/WimaxButton;->ownButton:Lcom/android/settings/widget/buttons/WimaxButton;

    .line 99
    :cond_0
    sget-object v0, Lcom/android/settings/widget/buttons/WimaxButton;->ownButton:Lcom/android/settings/widget/buttons/WimaxButton;

    return-object v0
.end method


# virtual methods
.method initButton()V
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/settings/widget/buttons/WimaxButton;->buttonID:I

    .line 105
    const-string v0, "toggleWimax"

    iput-object v0, p0, Lcom/android/settings/widget/buttons/WimaxButton;->preferenceName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 139
    sget-object v0, Lcom/android/settings/widget/buttons/WimaxButton;->sWimaxState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/widget/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 110
    sget-object v0, Lcom/android/settings/widget/buttons/WimaxButton;->sWimaxState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method public toggleState(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 143
    sget-object v1, Lcom/android/settings/widget/buttons/WimaxButton;->sWimaxState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 144
    .local v0, curState:I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    if-eq v0, p2, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/buttons/WimaxButton;->toggleState(Landroid/content/Context;)V

    .line 147
    :cond_0
    return-void
.end method

.method public updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V
    .locals 3
    .parameter "context"
    .parameter "globalPreferences"
    .parameter "appWidgetIds"

    .prologue
    const v2, 0x7f020051

    const v1, 0x7f020050

    .line 115
    sget-object v0, Lcom/android/settings/widget/buttons/WimaxButton;->sWimaxState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/buttons/WimaxButton;->currentState:I

    .line 116
    iget v0, p0, Lcom/android/settings/widget/buttons/WimaxButton;->currentState:I

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    :pswitch_0
    return-void

    .line 118
    :pswitch_1
    iput v1, p0, Lcom/android/settings/widget/buttons/WimaxButton;->currentIcon:I

    goto :goto_0

    .line 121
    :pswitch_2
    iput v2, p0, Lcom/android/settings/widget/buttons/WimaxButton;->currentIcon:I

    goto :goto_0

    .line 129
    :pswitch_3
    sget-object v0, Lcom/android/settings/widget/buttons/WimaxButton;->sWimaxState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v0}, Lcom/android/settings/widget/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iput v2, p0, Lcom/android/settings/widget/buttons/WimaxButton;->currentIcon:I

    goto :goto_0

    .line 132
    :cond_0
    iput v1, p0, Lcom/android/settings/widget/buttons/WimaxButton;->currentIcon:I

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
