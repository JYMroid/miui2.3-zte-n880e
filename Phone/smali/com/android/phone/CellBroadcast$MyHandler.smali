.class Lcom/android/phone/CellBroadcast$MyHandler;
.super Landroid/os/Handler;
.source "CellBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CellBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CellBroadcast;


# direct methods
.method private constructor <init>(Lcom/android/phone/CellBroadcast;)V
    .locals 0
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/phone/CellBroadcast$MyHandler;->this$0:Lcom/android/phone/CellBroadcast;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CellBroadcast;Lcom/android/phone/CellBroadcast$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcast$MyHandler;-><init>(Lcom/android/phone/CellBroadcast;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-string v6, "CellBroadcast.java"

    .line 586
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 622
    const-string v4, "CellBroadcast.java"

    const-string v4, "shenzhan handleMessage() default error"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :goto_0
    return-void

    .line 589
    :pswitch_0
    const-string v4, "CellBroadcast.java"

    const-string v4, "shenzhan handleMessage() MESSAGE_ACTIVATE_CB_SMS"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 592
    :pswitch_1
    const/4 v2, 0x0

    .line 593
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v2, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 594
    .restart local v2       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    const-string v4, "CellBroadcast.java"

    const-string v4, "shenzhan handleMessage() MESSAGE_GET_CB_SMS_CONFIG"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v4, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 596
    const-string v4, "CellBroadcast.java"

    const-string v4, "shenzhan handleMessage() MESSAGE_GET_CB_SMS_CONFIG exception != null"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 601
    .local v3, size:I
    const-string v4, "CellBroadcast.java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shenzhan handleMessage() MESSAGE_GET_CB_SMS_CONFIG size =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    if-eqz v2, :cond_2

    .line 603
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 604
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 605
    .local v0, configInfo:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #configInfo:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    check-cast v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 607
    .restart local v0       #configInfo:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    const-string v4, "CellBroadcast.java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shenzhan handleMessage() MESSAGE_GET_CB_SMS_CONFIG configInfo.getFromServiceId() =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v4, "CellBroadcast.java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shenzhan handleMessage() MESSAGE_GET_CB_SMS_CONFIG configInfo.getToServiceId() =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v4, "CellBroadcast.java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shenzhan handleMessage() MESSAGE_GET_CB_SMS_CONFIG configInfo.getFromCodeScheme() =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v4, "CellBroadcast.java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shenzhan handleMessage() MESSAGE_GET_CB_SMS_CONFIG configInfo.getToCodeScheme() =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v4, "CellBroadcast.java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shenzhan handleMessage() MESSAGE_GET_CB_SMS_CONFIG configInfo.isSelected() =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "true"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v4, p0, Lcom/android/phone/CellBroadcast$MyHandler;->this$0:Lcom/android/phone/CellBroadcast;

    #getter for: Lcom/android/phone/CellBroadcast;->mConfigInfoMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/phone/CellBroadcast;->access$600(Lcom/android/phone/CellBroadcast;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 611
    :cond_1
    const-string v5, "false"

    goto :goto_2

    .line 615
    .end local v0           #configInfo:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v1           #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/phone/CellBroadcast$MyHandler;->this$0:Lcom/android/phone/CellBroadcast;

    invoke-virtual {v4}, Lcom/android/phone/CellBroadcast;->initChannelList()V

    goto/16 :goto_0

    .line 619
    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    .end local v3           #size:I
    :pswitch_2
    const-string v4, "CellBroadcast.java"

    const-string v4, "shenzhan handleMessage() MESSAGE_SET_CB_SMS_CONFIG"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 586
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
