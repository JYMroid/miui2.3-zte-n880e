.class Lcom/android/systemui/statusbar/StatusBarService$11;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarService;->captureScreen()V
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
    .line 1861
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$11;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$11;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const-string v1, "/system/media/audio/ui/camera_click.ogg"

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->playSound(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$1000(Lcom/android/systemui/statusbar/StatusBarService;Ljava/lang/String;)V

    .line 1864
    return-void
.end method
