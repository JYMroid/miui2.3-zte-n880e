.class Lcom/android/server/WifiService$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "WifiService"

    invoke-static {}, Lcom/android/server/WifiService;->access$910()I

    const-string v0, "WifiService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jht ACTION_WIFI_AP_POWER_MODE mWifiApPowerModeTimeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/WifiService;->access$900()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Intent.EXTRA_ALARM_COUNT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/WifiService;->access$900()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/android/server/WifiService;->access$1000()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v0, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-string v0, "WifiService"

    const-string v0, "jht ACTION_WIFI_AP_POWER_MODE    SHUTDOWN SOFTAP!!!"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->STAListNumber()I
    invoke-static {v0}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/WifiService;->access$1200()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/WifiService;->access$902(I)I

    goto :goto_0
.end method
