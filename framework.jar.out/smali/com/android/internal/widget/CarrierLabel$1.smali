.class Lcom/android/internal/widget/CarrierLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/CarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/CarrierLabel;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/CarrierLabel$1;->this$0:Lcom/android/internal/widget/CarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .local v1, needUpdate:Z
    iget-object v2, p0, Lcom/android/internal/widget/CarrierLabel$1;->this$0:Lcom/android/internal/widget/CarrierLabel;

    #calls: Lcom/android/internal/widget/CarrierLabel;->isMyTelephonySubscription(Landroid/content/Intent;)Z
    invoke-static {v2, p2}, Lcom/android/internal/widget/CarrierLabel;->access$000(Lcom/android/internal/widget/CarrierLabel;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/CarrierLabel$1;->this$0:Lcom/android/internal/widget/CarrierLabel;

    #getter for: Lcom/android/internal/widget/CarrierLabel;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;
    invoke-static {v2}, Lcom/android/internal/widget/CarrierLabel;->access$100(Lcom/android/internal/widget/CarrierLabel;)Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/CarrierLabel$1;->this$0:Lcom/android/internal/widget/CarrierLabel;

    iget-object v3, p0, Lcom/android/internal/widget/CarrierLabel$1;->this$0:Lcom/android/internal/widget/CarrierLabel;

    #getter for: Lcom/android/internal/widget/CarrierLabel;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;
    invoke-static {v3}, Lcom/android/internal/widget/CarrierLabel;->access$100(Lcom/android/internal/widget/CarrierLabel;)Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->isShowCurrentTelephonySpn()Z

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/CarrierLabel$1;->this$0:Lcom/android/internal/widget/CarrierLabel;

    #getter for: Lcom/android/internal/widget/CarrierLabel;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;
    invoke-static {v4}, Lcom/android/internal/widget/CarrierLabel;->access$100(Lcom/android/internal/widget/CarrierLabel;)Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->getCurrentTelephonySpn()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/CarrierLabel$1;->this$0:Lcom/android/internal/widget/CarrierLabel;

    #getter for: Lcom/android/internal/widget/CarrierLabel;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;
    invoke-static {v5}, Lcom/android/internal/widget/CarrierLabel;->access$100(Lcom/android/internal/widget/CarrierLabel;)Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->isShowCurrentTelephonyPlmn()Z

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/CarrierLabel$1;->this$0:Lcom/android/internal/widget/CarrierLabel;

    #getter for: Lcom/android/internal/widget/CarrierLabel;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;
    invoke-static {v6}, Lcom/android/internal/widget/CarrierLabel;->access$100(Lcom/android/internal/widget/CarrierLabel;)Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->getCurrentTelephonyPlmn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/widget/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    :cond_1
    return-void

    .end local v1           #needUpdate:Z
    :cond_2
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    .restart local v1       #needUpdate:Z
    iget-object v2, p0, Lcom/android/internal/widget/CarrierLabel$1;->this$0:Lcom/android/internal/widget/CarrierLabel;

    #calls: Lcom/android/internal/widget/CarrierLabel;->isMyTelephonySubscription(Landroid/content/Intent;)Z
    invoke-static {v2, p2}, Lcom/android/internal/widget/CarrierLabel;->access$000(Lcom/android/internal/widget/CarrierLabel;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/CarrierLabel$1;->this$0:Lcom/android/internal/widget/CarrierLabel;

    #getter for: Lcom/android/internal/widget/CarrierLabel;->mCarrier:Lcom/android/internal/widget/CarrierUtils$CarrierInfo;
    invoke-static {v2}, Lcom/android/internal/widget/CarrierLabel;->access$100(Lcom/android/internal/widget/CarrierLabel;)Lcom/android/internal/widget/CarrierUtils$CarrierInfo;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v1, 0x1

    goto :goto_0

    .end local v1           #needUpdate:Z
    :cond_3
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    .restart local v1       #needUpdate:Z
    goto :goto_0

    .end local v1           #needUpdate:Z
    :cond_4
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    .restart local v1       #needUpdate:Z
    goto :goto_0

    .end local v1           #needUpdate:Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #needUpdate:Z
    goto :goto_0
.end method
