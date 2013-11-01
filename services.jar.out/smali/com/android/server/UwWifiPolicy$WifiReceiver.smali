.class public Lcom/android/server/UwWifiPolicy$WifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UwWifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UwWifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UwWifiPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/UwWifiPolicy;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/UwWifiPolicy$WifiReceiver;->this$0:Lcom/android/server/UwWifiPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/UwWifiPolicy$WifiReceiver;->this$0:Lcom/android/server/UwWifiPolicy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiReceiver onReceive action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/UwWifiPolicy;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/UwWifiPolicy;->access$100(Lcom/android/server/UwWifiPolicy;Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/UwWifiPolicy$WifiReceiver;->this$0:Lcom/android/server/UwWifiPolicy;

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/NetworkInfo;

    const-string v2, "bssid"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/UwWifiPolicy;->handleNetworkStateChanged(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    invoke-static {v1, p0, v2}, Lcom/android/server/UwWifiPolicy;->access$200(Lcom/android/server/UwWifiPolicy;Landroid/net/NetworkInfo;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .restart local p0
    :cond_1
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/UwWifiPolicy$WifiReceiver;->this$0:Lcom/android/server/UwWifiPolicy;

    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/android/server/UwWifiPolicy;->handleWifiStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/server/UwWifiPolicy;->access$300(Lcom/android/server/UwWifiPolicy;I)V

    goto :goto_0
.end method
