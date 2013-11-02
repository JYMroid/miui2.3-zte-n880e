.class Lcom/android/systemui/statusbar/StatusBarService$5;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 913
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$5;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$5;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/statusbar/StatusBarService;->mExitingFullscreen:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$102(Lcom/android/systemui/statusbar/StatusBarService;Z)Z

    .line 917
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$5;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.app.ExtraStatusBarManager.EXIT_FULLSCREEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->sendBroadcast(Landroid/content/Intent;)V

    .line 918
    return-void
.end method
