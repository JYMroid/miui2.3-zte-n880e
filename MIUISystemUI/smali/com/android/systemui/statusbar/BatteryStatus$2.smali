.class Lcom/android/systemui/statusbar/BatteryStatus$2;
.super Ljava/lang/Object;
.source "BatteryStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BatteryStatus;->updateBatterySettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BatteryStatus;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BatteryStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/systemui/statusbar/BatteryStatus$2;->this$0:Lcom/android/systemui/statusbar/BatteryStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/BatteryStatus$2;->this$0:Lcom/android/systemui/statusbar/BatteryStatus;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BatteryStatus;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/BatteryStatus$2;->this$0:Lcom/android/systemui/statusbar/BatteryStatus;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryStatus$2;->this$0:Lcom/android/systemui/statusbar/BatteryStatus;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BatteryStatus;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v1}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BatteryStatus;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/BatteryStatus$2;->this$0:Lcom/android/systemui/statusbar/BatteryStatus;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryStatus$2;->this$0:Lcom/android/systemui/statusbar/BatteryStatus;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BatteryStatus;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BatteryStatus;->setIcon(Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 197
    :cond_0
    return-void
.end method
