.class Lcom/android/systemui/statusbar/StatusBarService$2;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarService;->makeStatusBarView(Landroid/content/Context;)V
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
    .line 400
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$2;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$2;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/toggles/ToggleManager;->startLongClickAction(I)Z

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$2;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    .line 405
    const/4 v0, 0x1

    return v0
.end method
