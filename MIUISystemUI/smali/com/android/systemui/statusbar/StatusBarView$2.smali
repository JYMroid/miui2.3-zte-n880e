.class Lcom/android/systemui/statusbar/StatusBarView$2;
.super Landroid/database/ContentObserver;
.source "StatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarView$2;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView$2;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    #calls: Lcom/android/systemui/statusbar/StatusBarView;->updateBatterySettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarView;->access$000(Lcom/android/systemui/statusbar/StatusBarView;)V

    .line 96
    return-void
.end method
