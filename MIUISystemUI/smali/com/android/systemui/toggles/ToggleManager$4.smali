.class Lcom/android/systemui/toggles/ToggleManager$4;
.super Landroid/database/ContentObserver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/toggles/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/toggles/ToggleManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/toggles/ToggleManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/systemui/toggles/ToggleManager$4;->this$0:Lcom/android/systemui/toggles/ToggleManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleManager$4;->this$0:Lcom/android/systemui/toggles/ToggleManager;

    #calls: Lcom/android/systemui/toggles/ToggleManager;->updateTorchToggle()V
    invoke-static {v0}, Lcom/android/systemui/toggles/ToggleManager;->access$400(Lcom/android/systemui/toggles/ToggleManager;)V

    .line 451
    return-void
.end method
