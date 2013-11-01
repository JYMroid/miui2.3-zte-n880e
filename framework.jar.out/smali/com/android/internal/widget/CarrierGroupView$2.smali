.class Lcom/android/internal/widget/CarrierGroupView$2;
.super Landroid/content/BroadcastReceiver;
.source "CarrierGroupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/CarrierGroupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/CarrierGroupView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/CarrierGroupView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/CarrierGroupView$2;->this$0:Lcom/android/internal/widget/CarrierGroupView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .local v3, needUpdateLayout:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/CarrierGroupView$2;->this$0:Lcom/android/internal/widget/CarrierGroupView;

    #getter for: Lcom/android/internal/widget/CarrierGroupView;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;
    invoke-static {v4}, Lcom/android/internal/widget/CarrierGroupView;->access$100(Lcom/android/internal/widget/CarrierGroupView;)Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v2, 0x1

    .local v2, needUpdate:Z
    :goto_0
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/CarrierGroupView$2;->this$0:Lcom/android/internal/widget/CarrierGroupView;

    #getter for: Lcom/android/internal/widget/CarrierGroupView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/widget/CarrierGroupView;->access$200(Lcom/android/internal/widget/CarrierGroupView;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x378

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    if-eqz v3, :cond_5

    const/4 v4, 0x1

    :goto_1
    iput v4, v1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/internal/widget/CarrierGroupView$2;->this$0:Lcom/android/internal/widget/CarrierGroupView;

    #getter for: Lcom/android/internal/widget/CarrierGroupView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/widget/CarrierGroupView;->access$200(Lcom/android/internal/widget/CarrierGroupView;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .end local v2           #needUpdate:Z
    :cond_1
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/CarrierGroupView$2;->this$0:Lcom/android/internal/widget/CarrierGroupView;

    #getter for: Lcom/android/internal/widget/CarrierGroupView;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;
    invoke-static {v4}, Lcom/android/internal/widget/CarrierGroupView;->access$100(Lcom/android/internal/widget/CarrierGroupView;)Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v2, 0x1

    .restart local v2       #needUpdate:Z
    const/4 v3, 0x1

    goto :goto_0

    .end local v2           #needUpdate:Z
    :cond_2
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    .restart local v2       #needUpdate:Z
    goto :goto_0

    .end local v2           #needUpdate:Z
    :cond_3
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    .restart local v2       #needUpdate:Z
    goto :goto_0

    .end local v2           #needUpdate:Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #needUpdate:Z
    goto :goto_0

    .restart local v1       #msg:Landroid/os/Message;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method
