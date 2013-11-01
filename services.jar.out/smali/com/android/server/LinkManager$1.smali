.class Lcom/android/server/LinkManager$1;
.super Landroid/content/BroadcastReceiver;
.source "LinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LinkManager;


# direct methods
.method constructor <init>(Lcom/android/server/LinkManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/LinkManager$1;->this$0:Lcom/android/server/LinkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .local v4, networkInfo:Landroid/net/NetworkInfo;
    if-nez v4, :cond_1

    sget-object v6, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    move-object v5, v6

    .local v5, state:Landroid/net/NetworkInfo$State;
    :goto_0
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_2

    iget-object v6, p0, Lcom/android/server/LinkManager$1;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mHandler:Lcom/android/server/LinkManager$LMHandler;
    invoke-static {v6}, Lcom/android/server/LinkManager;->access$000(Lcom/android/server/LinkManager;)Lcom/android/server/LinkManager$LMHandler;

    move-result-object v6

    invoke-virtual {v6, v9, v7, v8}, Lcom/android/server/LinkManager$LMHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .local v3, msg:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    .end local v5           #state:Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_1
    return-void

    .restart local v4       #networkInfo:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .restart local v5       #state:Landroid/net/NetworkInfo$State;
    :cond_2
    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/LinkManager$1;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mHandler:Lcom/android/server/LinkManager$LMHandler;
    invoke-static {v6}, Lcom/android/server/LinkManager;->access$000(Lcom/android/server/LinkManager;)Lcom/android/server/LinkManager$LMHandler;

    move-result-object v6

    invoke-virtual {v6, v10, v7, v8}, Lcom/android/server/LinkManager$LMHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .restart local v3       #msg:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    .end local v5           #state:Landroid/net/NetworkInfo$State;
    :cond_3
    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "apnType"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, apnType:Ljava/lang/String;
    const-string v6, "default"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-class v6, Lcom/android/internal/telephony/Phone$DataState;

    const-string v7, "apnTypeState"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone$DataState;

    .local v2, dataState:Lcom/android/internal/telephony/Phone$DataState;
    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v2, v6, :cond_4

    iget-object v6, p0, Lcom/android/server/LinkManager$1;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mHandler:Lcom/android/server/LinkManager$LMHandler;
    invoke-static {v6}, Lcom/android/server/LinkManager;->access$000(Lcom/android/server/LinkManager;)Lcom/android/server/LinkManager$LMHandler;

    move-result-object v6

    invoke-virtual {v6, v9, v8, v8}, Lcom/android/server/LinkManager$LMHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .restart local v3       #msg:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .end local v3           #msg:Landroid/os/Message;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v2, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/LinkManager$1;->this$0:Lcom/android/server/LinkManager;

    #getter for: Lcom/android/server/LinkManager;->mHandler:Lcom/android/server/LinkManager$LMHandler;
    invoke-static {v6}, Lcom/android/server/LinkManager;->access$000(Lcom/android/server/LinkManager;)Lcom/android/server/LinkManager$LMHandler;

    move-result-object v6

    invoke-virtual {v6, v10, v8, v8}, Lcom/android/server/LinkManager$LMHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .restart local v3       #msg:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .end local v1           #apnType:Ljava/lang/String;
    .end local v2           #dataState:Lcom/android/internal/telephony/Phone$DataState;
    .end local v3           #msg:Landroid/os/Message;
    :cond_5
    const-string v6, "LinkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received unexpected action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
