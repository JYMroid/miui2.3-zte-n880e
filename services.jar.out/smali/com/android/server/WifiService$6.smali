.class Lcom/android/server/WifiService$6;
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
    iput-object p1, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v0, "WifiService"

    const-string v1, "jht ACTION_WIFI_AP_POWER_MODE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiApState:I
    invoke-static {v0}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiApPowerModeIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setWifiApPowerMode()V
    invoke-static {v0}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)V

    :cond_0
    return-void
.end method
