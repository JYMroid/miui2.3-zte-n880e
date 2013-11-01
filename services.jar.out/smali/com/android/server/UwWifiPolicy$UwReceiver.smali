.class public Lcom/android/server/UwWifiPolicy$UwReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UwWifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UwWifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UwReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UwWifiPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/UwWifiPolicy;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/UwWifiPolicy$UwReceiver;->this$0:Lcom/android/server/UwWifiPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v1, p0, Lcom/android/server/UwWifiPolicy$UwReceiver;->this$0:Lcom/android/server/UwWifiPolicy;

    const-string v0, "uw_state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/wifi/UwState;

    const-string v0, "previous_uw_state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/UwState;

    #calls: Lcom/android/server/UwWifiPolicy;->handleUwStateChanged(Landroid/content/Intent;Landroid/net/wifi/UwState;Landroid/net/wifi/UwState;)V
    invoke-static {v1, p2, p0, v0}, Lcom/android/server/UwWifiPolicy;->access$000(Lcom/android/server/UwWifiPolicy;Landroid/content/Intent;Landroid/net/wifi/UwState;Landroid/net/wifi/UwState;)V

    return-void
.end method
