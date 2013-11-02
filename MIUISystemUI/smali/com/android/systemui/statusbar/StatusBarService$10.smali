.class Lcom/android/systemui/statusbar/StatusBarService$10;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 1798
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$10;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1800
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1801
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1803
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$10;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 1834
    :cond_1
    :goto_0
    return-void

    .line 1805
    :cond_2
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1806
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$10;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateResources()V

    goto :goto_0

    .line 1808
    :cond_3
    const-string v1, "com.miui.app.ExtraStatusBarManager.CAPTURE_SCREEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1809
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$10;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->captureScreen()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$600(Lcom/android/systemui/statusbar/StatusBarService;)V

    goto :goto_0

    .line 1811
    :cond_4
    const-string v1, "com.miui.app.ExtraStatusBarManager.EXPAND_TOGGLE_TAB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1812
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$10;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->expandTab(I)V

    goto :goto_0

    .line 1814
    :cond_5
    const-string v1, "com.miui.app.ExtraStatusBarManager.REQUEST_RESTART"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1815
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$10;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->unbindViews()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$700(Lcom/android/systemui/statusbar/StatusBarService;)V

    goto :goto_0

    .line 1817
    :cond_6
    const-string v1, "com.miui.app.ExtraStatusBarManager.UNLOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1818
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$10;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->bindViews()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$800(Lcom/android/systemui/statusbar/StatusBarService;)V

    goto :goto_0

    .line 1820
    :cond_7
    const-string v1, "com.miui.app.ExtraStatusBarManager.TRIGGER_CAMERA_KEY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1821
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$10;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->triggerCameraKey()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$900(Lcom/android/systemui/statusbar/StatusBarService;)V

    goto :goto_0
.end method
