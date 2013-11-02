.class final Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker;
.super Lcom/android/settings/widget/StateTracker;
.source "BluetoothButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/buttons/BluetoothButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/widget/StateTracker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/buttons/BluetoothButton$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 75
    packed-switch p0, :pswitch_data_0

    .line 85
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 77
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 83
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-static {}, Lcom/android/settings/widget/buttons/BluetoothButton;->access$100()Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/widget/buttons/BluetoothButton;->access$102(Lcom/android/settings/bluetooth/LocalBluetoothManager;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 34
    invoke-static {}, Lcom/android/settings/widget/buttons/BluetoothButton;->access$100()Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x4

    .line 39
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/settings/widget/buttons/BluetoothButton;->access$100()Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v0

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 63
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 67
    .local v0, bluetoothState:I
    invoke-static {v0}, Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 44
    invoke-static {}, Lcom/android/settings/widget/buttons/BluetoothButton;->access$100()Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "No LocalBluetoothManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker$1;-><init>(Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/buttons/BluetoothButton$BluetoothStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
