.class final Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;
.super Lcom/android/systemui/toggles/ToggleManager$StateTracker;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/toggles/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# instance fields
.field public zConnected:Z

.field private zScanAttempt:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 746
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager$StateTracker;-><init>()V

    .line 749
    iput-boolean v0, p0, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;->zConnected:Z

    .line 750
    iput v0, p0, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;->zScanAttempt:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/toggles/ToggleManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 746
    invoke-direct {p0}, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 828
    packed-switch p0, :pswitch_data_0

    .line 838
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 830
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 832
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 834
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 836
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 828
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 754
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 755
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    .line 758
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 793
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 794
    const-string v3, "wifi_state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 795
    .local v2, wifiState:I
    invoke-static {v2}, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 797
    if-ne v5, v2, :cond_0

    .line 798
    iput-boolean v7, p0, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;->zConnected:Z

    .line 799
    iput v6, p0, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;->zScanAttempt:I

    .line 822
    .end local v2           #wifiState:I
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 803
    iget v3, p0, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;->zScanAttempt:I

    if-ge v3, v5, :cond_0

    .line 804
    iget v3, p0, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;->zScanAttempt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;->zScanAttempt:I

    if-ne v3, v5, :cond_0

    .line 805
    iput-boolean v6, p0, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;->zConnected:Z

    goto :goto_0

    .line 809
    :cond_2
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 810
    iput v5, p0, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;->zScanAttempt:I

    .line 812
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 815
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 816
    .local v1, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v1, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v1, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v1, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v1, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v1, :cond_4

    :cond_3
    move v3, v7

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;->zConnected:Z

    goto :goto_0

    :cond_4
    move v3, v6

    goto :goto_1
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 763
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 764
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 765
    const-string v1, "ToggleManager"

    const-string v2, "No wifiManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :goto_0
    return-void

    .line 773
    :cond_0
    new-instance v1, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker$1;-><init>(Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker;Landroid/net/wifi/WifiManager;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/systemui/toggles/ToggleManager$WifiStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
