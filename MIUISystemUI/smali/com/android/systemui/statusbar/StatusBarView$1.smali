.class Lcom/android/systemui/statusbar/StatusBarView$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarView$1;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView$1;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/StatusBarView;->mScreenIsOn:Z

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView$1;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->requestLayout()V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView$1;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->invalidate()V

    .line 68
    return-void
.end method