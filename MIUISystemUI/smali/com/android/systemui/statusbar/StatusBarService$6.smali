.class Lcom/android/systemui/statusbar/StatusBarService$6;
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
    .line 922
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/statusbar/StatusBarService;->mExitingFullscreen:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$102(Lcom/android/systemui/statusbar/StatusBarService;Z)Z

    .line 926
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$6;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->updateStatusBarBackground()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$200(Lcom/android/systemui/statusbar/StatusBarService;)V

    .line 927
    return-void
.end method
