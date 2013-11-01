.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v1, "enableEFS"

    const-string v5, "MasterClear"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v2, "enableEFS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v3, "enableEFS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Landroid/os/RecoverySystem;->rebootToggleEFS(Landroid/content/Context;Z)V

    :goto_0
    const-string v1, "MasterClear"

    const-string v2, "Still running after master clear?!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MASTER_CLEAR_OEM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/RecoverySystem;->rebootWipeUserDataOem(Landroid/content/Context;)V

    const-string v1, "MasterClear"

    const-string v2, "Still running after masterOEM clear?!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.UPDATE_FROM_SD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "HWY"

    const-string v2, "Update System from SD!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/RecoverySystem;->updateSystemFromSD(Landroid/content/Context;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    const-string v1, "MasterClear"

    const-string v1, "Can\'t perform master clear/factory reset"

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
