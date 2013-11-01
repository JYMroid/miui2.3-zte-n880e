.class Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$2;
.super Landroid/os/Handler;
.source "BluetoothAVRCPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$2;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :pswitch_0
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "Sending play position changed event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$2;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onPlayStateChanged(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
