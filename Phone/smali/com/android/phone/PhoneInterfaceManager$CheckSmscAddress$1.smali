.class Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;)V
    .locals 0
    .parameter

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const-string v3, "PhoneInterfaceManager"

    .line 1269
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1270
    .local v1, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1291
    :goto_0
    return-void

    .line 1272
    :pswitch_0
    const-string v2, "PhoneInterfaceManager"

    const-string v2, "GET_SMSC_COMPLETE"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;

    monitor-enter v3

    .line 1274
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 1275
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1286
    :goto_1
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;

    const/4 v4, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->mDone:Z
    invoke-static {v2, v4}, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->access$1302(Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;Z)Z

    .line 1287
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1288
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1279
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #setter for: Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->mSmsc_string:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->access$1202(Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 1284
    const-string v2, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSmsc_string is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;

    #getter for: Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->mSmsc_string:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;->access$1200(Lcom/android/phone/PhoneInterfaceManager$CheckSmscAddress;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1270
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
