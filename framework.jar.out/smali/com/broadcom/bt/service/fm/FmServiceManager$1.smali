.class final Lcom/broadcom/bt/service/fm/FmServiceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "FmServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v5, "bluetooth_fm_receiver_service"

    const-string v4, "FmServiceManager"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v2, "broadcom.bt.intent.action.FM_SVC_STATE_CHANGE"

    if-ne v0, v2, :cond_1

    const-string v2, "fm_svc_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fm_svc_state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/broadcom/bt/service/fm/FmServiceManager;->onFmServiceStateChanged(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.intent.action.FM_FORCE_END"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "liying ------------- onReceive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bluetooth_fm_receiver_service"

    invoke-static {v5}, Lcom/broadcom/bt/service/fm/FmServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/fm/FmReceiverService;

    .local v1, mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    if-eqz v1, :cond_2

    const-string v2, "bluetooth_fm_receiver_service"

    invoke-static {v5}, Lcom/broadcom/bt/service/fm/FmServiceManager;->getServiceState(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->turnOffRadio()I

    const-string v2, "FmServiceManager"

    const-string v2, "liying get FmReceiverService OK.  turnOffRadio() "

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/broadcom/bt/service/framework/PowerManager;->getProxy()Lcom/broadcom/bt/service/framework/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/service/framework/PowerManager;->isBtEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "FmServiceManager"

    const-string v2, "liying isBtEnabled == true "

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->shutdownFmPower()V

    const-string v2, "FmServiceManager"

    const-string v2, "liying  get FmReceiverService FAIL.  shutdownFmPower() "

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
