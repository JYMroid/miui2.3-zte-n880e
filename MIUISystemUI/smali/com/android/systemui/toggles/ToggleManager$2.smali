.class Lcom/android/systemui/toggles/ToggleManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/toggles/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/toggles/ToggleManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/toggles/ToggleManager;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/systemui/toggles/ToggleManager$2;->this$0:Lcom/android/systemui/toggles/ToggleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 423
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$2;->this$0:Lcom/android/systemui/toggles/ToggleManager;

    #getter for: Lcom/android/systemui/toggles/ToggleManager;->mWifiState:Lcom/android/systemui/toggles/ToggleManager$StateTracker;
    invoke-static {v1}, Lcom/android/systemui/toggles/ToggleManager;->access$200(Lcom/android/systemui/toggles/ToggleManager;)Lcom/android/systemui/toggles/ToggleManager$StateTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/toggles/ToggleManager$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 428
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$2;->this$0:Lcom/android/systemui/toggles/ToggleManager;

    invoke-virtual {v1}, Lcom/android/systemui/toggles/ToggleManager;->updateWifiToggle()V

    .line 435
    :cond_1
    :goto_0
    return-void

    .line 429
    :cond_2
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 430
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$2;->this$0:Lcom/android/systemui/toggles/ToggleManager;

    invoke-virtual {v1}, Lcom/android/systemui/toggles/ToggleManager;->updateBluetoothToggle()V

    goto :goto_0

    .line 431
    :cond_3
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$2;->this$0:Lcom/android/systemui/toggles/ToggleManager;

    invoke-virtual {v1}, Lcom/android/systemui/toggles/ToggleManager;->updateRingerToggle()V

    .line 433
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$2;->this$0:Lcom/android/systemui/toggles/ToggleManager;

    invoke-virtual {v1}, Lcom/android/systemui/toggles/ToggleManager;->updateVibrateToggle()V

    goto :goto_0
.end method
