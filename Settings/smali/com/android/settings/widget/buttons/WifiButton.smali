.class public Lcom/android/settings/widget/buttons/WifiButton;
.super Lcom/android/settings/widget/buttons/WidgetButton;
.source "WifiButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/buttons/WifiButton$1;,
        Lcom/android/settings/widget/buttons/WifiButton$WifiStateTracker;
    }
.end annotation


# static fields
.field static ownButton:Lcom/android/settings/widget/buttons/WifiButton;

.field private static final sWifiState:Lcom/android/settings/widget/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    sput-object v1, Lcom/android/settings/widget/buttons/WifiButton;->ownButton:Lcom/android/settings/widget/buttons/WifiButton;

    .line 20
    new-instance v0, Lcom/android/settings/widget/buttons/WifiButton$WifiStateTracker;

    invoke-direct {v0, v1}, Lcom/android/settings/widget/buttons/WifiButton$WifiStateTracker;-><init>(Lcom/android/settings/widget/buttons/WifiButton$1;)V

    sput-object v0, Lcom/android/settings/widget/buttons/WifiButton;->sWifiState:Lcom/android/settings/widget/StateTracker;

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

.method public static getInstance()Lcom/android/settings/widget/buttons/WifiButton;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/android/settings/widget/buttons/WifiButton;->ownButton:Lcom/android/settings/widget/buttons/WifiButton;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/android/settings/widget/buttons/WifiButton;

    invoke-direct {v0}, Lcom/android/settings/widget/buttons/WifiButton;-><init>()V

    sput-object v0, Lcom/android/settings/widget/buttons/WifiButton;->ownButton:Lcom/android/settings/widget/buttons/WifiButton;

    .line 155
    :cond_0
    sget-object v0, Lcom/android/settings/widget/buttons/WifiButton;->ownButton:Lcom/android/settings/widget/buttons/WifiButton;

    return-object v0
.end method


# virtual methods
.method initButton()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/buttons/WifiButton;->buttonID:I

    .line 161
    const-string v0, "toggleWifi"

    iput-object v0, p0, Lcom/android/settings/widget/buttons/WifiButton;->preferenceName:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 121
    sget-object v0, Lcom/android/settings/widget/buttons/WifiButton;->sWifiState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/widget/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 122
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    sget-object v2, Lcom/android/settings/widget/buttons/WifiButton;->sWifiState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    .line 126
    .local v1, realstate:I
    sget-object v2, Lcom/android/settings/widget/buttons/WifiButton;->sWifiState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 128
    const-string v2, "widget_MAIN"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    .local v0, preferences:Landroid/content/SharedPreferences;
    if-nez v1, :cond_2

    const-string v2, "autoDisable3GWithWifi"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    invoke-static {}, Lcom/android/settings/widget/buttons/NetworkModeButton;->getInstance()Lcom/android/settings/widget/buttons/NetworkModeButton;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lcom/android/settings/widget/buttons/NetworkModeButton;->toggleState(Landroid/content/Context;I)V

    .line 141
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    const-string v2, "autoEnableSyncWithWifi"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    invoke-static {}, Lcom/android/settings/widget/buttons/SyncButton;->getInstance()Lcom/android/settings/widget/buttons/SyncButton;

    move-result-object v2

    invoke-virtual {v2, p1, v4}, Lcom/android/settings/widget/buttons/SyncButton;->toggleState(Landroid/content/Context;I)V

    .line 148
    :cond_1
    :goto_1
    return-void

    .line 135
    :cond_2
    if-ne v1, v4, :cond_0

    const-string v2, "autoEnable3GWithWifi"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-static {}, Lcom/android/settings/widget/buttons/NetworkModeButton;->getInstance()Lcom/android/settings/widget/buttons/NetworkModeButton;

    move-result-object v2

    invoke-virtual {v2, p1, v4}, Lcom/android/settings/widget/buttons/NetworkModeButton;->toggleState(Landroid/content/Context;I)V

    goto :goto_0

    .line 144
    :cond_3
    if-ne v1, v4, :cond_1

    const-string v2, "autoDisableSyncWithWifi"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    invoke-static {}, Lcom/android/settings/widget/buttons/SyncButton;->getInstance()Lcom/android/settings/widget/buttons/SyncButton;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lcom/android/settings/widget/buttons/SyncButton;->toggleState(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public toggleState(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 165
    sget-object v1, Lcom/android/settings/widget/buttons/WifiButton;->sWifiState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 166
    .local v0, curState:I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    if-eq v0, p2, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/buttons/WifiButton;->toggleState(Landroid/content/Context;)V

    .line 169
    :cond_0
    return-void
.end method

.method public updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V
    .locals 3
    .parameter "context"
    .parameter "globalPreferences"
    .parameter "appWidgetIds"

    .prologue
    const v2, 0x7f02004f

    const v1, 0x7f02004e

    .line 97
    sget-object v0, Lcom/android/settings/widget/buttons/WifiButton;->sWifiState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/buttons/WifiButton;->currentState:I

    .line 98
    iget v0, p0, Lcom/android/settings/widget/buttons/WifiButton;->currentState:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    :pswitch_0
    return-void

    .line 100
    :pswitch_1
    iput v1, p0, Lcom/android/settings/widget/buttons/WifiButton;->currentIcon:I

    goto :goto_0

    .line 103
    :pswitch_2
    iput v2, p0, Lcom/android/settings/widget/buttons/WifiButton;->currentIcon:I

    goto :goto_0

    .line 111
    :pswitch_3
    sget-object v0, Lcom/android/settings/widget/buttons/WifiButton;->sWifiState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v0}, Lcom/android/settings/widget/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iput v2, p0, Lcom/android/settings/widget/buttons/WifiButton;->currentIcon:I

    goto :goto_0

    .line 114
    :cond_0
    iput v1, p0, Lcom/android/settings/widget/buttons/WifiButton;->currentIcon:I

    goto :goto_0

    .line 98
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
