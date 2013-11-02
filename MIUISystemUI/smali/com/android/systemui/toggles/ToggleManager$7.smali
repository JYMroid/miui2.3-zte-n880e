.class Lcom/android/systemui/toggles/ToggleManager$7;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/toggles/ToggleManager;->shutdown(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/toggles/ToggleManager;

.field final synthetic val$isReboot:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/toggles/ToggleManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/android/systemui/toggles/ToggleManager$7;->this$0:Lcom/android/systemui/toggles/ToggleManager;

    iput-boolean p2, p0, Lcom/android/systemui/toggles/ToggleManager$7;->val$isReboot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1304
    iget-boolean v1, p0, Lcom/android/systemui/toggles/ToggleManager$7;->val$isReboot:Z

    if-eqz v1, :cond_0

    .line 1305
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$7;->this$0:Lcom/android/systemui/toggles/ToggleManager;

    #getter for: Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/toggles/ToggleManager;->access$600(Lcom/android/systemui/toggles/ToggleManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1312
    :goto_0
    return-void

    .line 1308
    .restart local p0
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1309
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1310
    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleManager$7;->this$0:Lcom/android/systemui/toggles/ToggleManager;

    #getter for: Lcom/android/systemui/toggles/ToggleManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/toggles/ToggleManager;->access$600(Lcom/android/systemui/toggles/ToggleManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
