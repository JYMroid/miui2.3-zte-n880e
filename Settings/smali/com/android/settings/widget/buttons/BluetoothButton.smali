.class public Lcom/android/settings/widget/buttons/BluetoothButton;
.super Lcom/android/settings/widget/buttons/WidgetButton;
.source "BluetoothButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/buttons/BluetoothButton$1;,
        Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker;
    }
.end annotation


# static fields
.field static ownButton:Lcom/android/settings/widget/buttons/BluetoothButton;

.field private static final sBluetoothState:Lcom/android/settings/widget/StateTracker;

.field private static sLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    sput-object v1, Lcom/android/settings/widget/buttons/BluetoothButton;->sLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 21
    new-instance v0, Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker;

    invoke-direct {v0, v1}, Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker;-><init>(Lcom/android/settings/widget/buttons/BluetoothButton$1;)V

    sput-object v0, Lcom/android/settings/widget/buttons/BluetoothButton;->sBluetoothState:Lcom/android/settings/widget/StateTracker;

    .line 23
    sput-object v1, Lcom/android/settings/widget/buttons/BluetoothButton;->ownButton:Lcom/android/settings/widget/buttons/BluetoothButton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/widget/buttons/WidgetButton;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$100()Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/settings/widget/buttons/BluetoothButton;->sLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/LocalBluetoothManager;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    sput-object p0, Lcom/android/settings/widget/buttons/BluetoothButton;->sLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method public static getInstance()Lcom/android/settings/widget/buttons/BluetoothButton;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/settings/widget/buttons/BluetoothButton;->ownButton:Lcom/android/settings/widget/buttons/BluetoothButton;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/settings/widget/buttons/BluetoothButton;

    invoke-direct {v0}, Lcom/android/settings/widget/buttons/BluetoothButton;-><init>()V

    sput-object v0, Lcom/android/settings/widget/buttons/BluetoothButton;->ownButton:Lcom/android/settings/widget/buttons/BluetoothButton;

    .line 94
    :cond_0
    sget-object v0, Lcom/android/settings/widget/buttons/BluetoothButton;->ownButton:Lcom/android/settings/widget/buttons/BluetoothButton;

    return-object v0
.end method


# virtual methods
.method initButton()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/widget/buttons/BluetoothButton;->buttonID:I

    .line 101
    const-string v0, "toggleBluetooth"

    iput-object v0, p0, Lcom/android/settings/widget/buttons/BluetoothButton;->preferenceName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 135
    sget-object v0, Lcom/android/settings/widget/buttons/BluetoothButton;->sBluetoothState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/widget/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 106
    sget-object v0, Lcom/android/settings/widget/buttons/BluetoothButton;->sBluetoothState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method public toggleState(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 139
    sget-object v1, Lcom/android/settings/widget/buttons/BluetoothButton;->sBluetoothState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 140
    .local v0, curState:I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    if-eq v0, p2, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/buttons/BluetoothButton;->toggleState(Landroid/content/Context;)V

    .line 143
    :cond_0
    return-void
.end method

.method public updateState(Landroid/content/Context;Landroid/content/SharedPreferences;[I)V
    .locals 3
    .parameter "context"
    .parameter "globalPreferences"
    .parameter "appWidgetIds"

    .prologue
    const v2, 0x7f020034

    const v1, 0x7f020033

    .line 111
    sget-object v0, Lcom/android/settings/widget/buttons/BluetoothButton;->sBluetoothState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/buttons/BluetoothButton;->currentState:I

    .line 112
    iget v0, p0, Lcom/android/settings/widget/buttons/BluetoothButton;->currentState:I

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    :pswitch_0
    return-void

    .line 114
    :pswitch_1
    iput v1, p0, Lcom/android/settings/widget/buttons/BluetoothButton;->currentIcon:I

    goto :goto_0

    .line 117
    :pswitch_2
    iput v2, p0, Lcom/android/settings/widget/buttons/BluetoothButton;->currentIcon:I

    goto :goto_0

    .line 125
    :pswitch_3
    sget-object v0, Lcom/android/settings/widget/buttons/BluetoothButton;->sBluetoothState:Lcom/android/settings/widget/StateTracker;

    invoke-virtual {v0}, Lcom/android/settings/widget/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iput v2, p0, Lcom/android/settings/widget/buttons/BluetoothButton;->currentIcon:I

    goto :goto_0

    .line 128
    :cond_0
    iput v1, p0, Lcom/android/settings/widget/buttons/BluetoothButton;->currentIcon:I

    goto :goto_0

    .line 112
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
