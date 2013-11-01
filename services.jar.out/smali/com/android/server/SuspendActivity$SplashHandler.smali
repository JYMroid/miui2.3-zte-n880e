.class Lcom/android/server/SuspendActivity$SplashHandler;
.super Landroid/os/Handler;
.source "SuspendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SuspendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SplashHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SuspendActivity;


# direct methods
.method constructor <init>(Lcom/android/server/SuspendActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/SuspendActivity$SplashHandler;->this$0:Lcom/android/server/SuspendActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v2, "bootanim"

    const-string v1, "SuspendActivity"

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "SuspendActivity"

    const-string v0, "handleMessage() Event : START_BOOT_SPLASH"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ctl.start"

    const-string v1, "bootanim"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "SuspendActivity"

    const-string v0, "handleMessage() Event : STOP_BOOT_SPLASH"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ctl.stop"

    const-string v1, "bootanim"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
