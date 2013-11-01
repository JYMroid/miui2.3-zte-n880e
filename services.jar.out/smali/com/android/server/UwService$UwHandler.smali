.class Lcom/android/server/UwService$UwHandler;
.super Landroid/os/Handler;
.source "UwService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UwService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UwHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UwService;


# direct methods
.method public constructor <init>(Lcom/android/server/UwService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/android/server/UwService$UwHandler;->this$0:Lcom/android/server/UwService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/android/server/UwService$UwHandler;->this$0:Lcom/android/server/UwService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UwHandler msg is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/UwService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/UwService;->access$000(Lcom/android/server/UwService;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/UwService$UwHandler;->this$0:Lcom/android/server/UwService;

    #calls: Lcom/android/server/UwService;->handleLogin()Z
    invoke-static {v0}, Lcom/android/server/UwService;->access$100(Lcom/android/server/UwService;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/UwService$UwHandler;->this$0:Lcom/android/server/UwService;

    #calls: Lcom/android/server/UwService;->handleLogout()Z
    invoke-static {v0}, Lcom/android/server/UwService;->access$200(Lcom/android/server/UwService;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/UwService$UwHandler;->this$0:Lcom/android/server/UwService;

    #calls: Lcom/android/server/UwService;->handleSetEnabledBloking()V
    invoke-static {v0}, Lcom/android/server/UwService;->access$300(Lcom/android/server/UwService;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
