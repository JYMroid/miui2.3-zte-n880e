.class Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;
.super Landroid/os/Handler;
.source "BluetoothHIDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/hid/BluetoothHIDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    sub-int/2addr v1, v6

    #calls: Lcom/broadcom/bt/service/hid/BluetoothHIDService;->handleBtDisableMsg(I)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$400(Lcom/broadcom/bt/service/hid/BluetoothHIDService;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    #getter for: Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$500(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    #getter for: Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$500(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040241

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;->this$0:Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    #getter for: Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->access$500(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040242

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
