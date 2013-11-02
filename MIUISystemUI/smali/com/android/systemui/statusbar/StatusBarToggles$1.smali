.class Lcom/android/systemui/statusbar/StatusBarToggles$1;
.super Ljava/lang/Object;
.source "StatusBarToggles.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarToggles;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarToggles;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarToggles;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarToggles$1;->this$0:Lcom/android/systemui/statusbar/StatusBarToggles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarToggles$1;->this$0:Lcom/android/systemui/statusbar/StatusBarToggles;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/toggles/ToggleManager;->setBrightness(II)V

    .line 82
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 75
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 72
    return-void
.end method
