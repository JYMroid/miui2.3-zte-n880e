.class public Lcom/android/settings/widget/buttons/WifiApButton;
.super Lcom/android/settings/widget/buttons/WidgetButton;
.source "WifiApButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/buttons/WifiApButton$1;,
        Lcom/android/settings/widget/buttons/WifiApButton$WifiApStateTracker;
    }
.end annotation


# static fields
.field static ownButton:Lcom/android/settings/widget/buttons/WifiApButton;

.field private static final sWifiApState:Lcom/android/settings/widget/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    sput-object v1, Lcom/android/settings/widget/buttons/WifiApButton;->ownButton:Lcom/android/settings/widget/buttons/WifiApButton;

    .line 20
    new-instance v0, Lcom/android/settings/widget/buttons/WifiApButton$WifiApStateTracker;

    invoke-direct {v0, v1}, Lcom/android/settings/widget/buttons/WifiApButton$WifiApStateTracker;-><init>(Lcom/android/settings/widget/buttons/WifiApButton$1;)V

    sput-object v0, Lcom/android/settings/widget/buttons/WifiApButton;->sWifiApState:Lcom/android/settings/widget/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings/widget/buttons/WidgetButton;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/android/settings/widget/buttons/WifiApButton;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/settings/widget/buttons/WifiApButton;->ownButton:Lcom/android/settings/widget/buttons/WifiApButton;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/android/settings/widget/buttons/WifiApButton;

    invoke-direct {v0}, Lcom/android/settings/widget/buttons/WifiApButton;-><init>()V

    sput-object v0, Lcom/android/settings/widget/buttons/WifiApButton;->ownButton:Lcom/android/settings/widget/buttons/WifiApButton;

    .line 136
    :cond_0
    sget-object v0, Lcom/android/settings/widget/buttons/WifiApButton;->ownButton:Lcom/android/settings/widget/buttons/WifiApButton;

    return-object v0
.end method


# virtual methods
.method initButton()V
    .locals 1

    .prologue
    .line 141
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/settings/widget/buttons/WifiApButton;->buttonID:I

    .line 142
    const-string v0, "toggleWifiAp"

    iput-object v0, p0, Lcom/android/settings/widget/buttons/WifiApButton;->preferenceName:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 124
    sget-object v0, Lcom/android/settings/widget/buttons/WifiApButton;->sWifiApState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/widget/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 128
    sget-object v0, Lcom/android/settings/widget/buttons/WifiApButton;->sWifiApState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method public updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V
    .locals 3
    .parameter "context"
    .parameter "globalPreferences"
    .parameter "appWidgetIds"

    .prologue
    const v2, 0x7f02004d

    const v1, 0x7f02004c

    .line 100
    sget-object v0, Lcom/android/settings/widget/buttons/WifiApButton;->sWifiApState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/buttons/WifiApButton;->currentState:I

    .line 101
    iget v0, p0, Lcom/android/settings/widget/buttons/WifiApButton;->currentState:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    :pswitch_0
    return-void

    .line 103
    :pswitch_1
    iput v1, p0, Lcom/android/settings/widget/buttons/WifiApButton;->currentIcon:I

    goto :goto_0

    .line 106
    :pswitch_2
    iput v2, p0, Lcom/android/settings/widget/buttons/WifiApButton;->currentIcon:I

    goto :goto_0

    .line 114
    :pswitch_3
    sget-object v0, Lcom/android/settings/widget/buttons/WifiApButton;->sWifiApState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v0}, Lcom/android/settings/widget/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iput v2, p0, Lcom/android/settings/widget/buttons/WifiApButton;->currentIcon:I

    goto :goto_0

    .line 117
    :cond_0
    iput v1, p0, Lcom/android/settings/widget/buttons/WifiApButton;->currentIcon:I

    goto :goto_0

    .line 101
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
