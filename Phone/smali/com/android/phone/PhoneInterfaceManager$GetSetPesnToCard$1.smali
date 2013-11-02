.class Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;)V
    .locals 0
    .parameter

    .prologue
    .line 986
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v8, "PhoneInterfaceManager"

    .line 989
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 990
    .local v1, ar:Landroid/os/AsyncResult;
    const/4 v4, 0x0

    .line 992
    .local v4, isRecordLoadResponse:Z
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1048
    :goto_0
    return-void

    .line 994
    :pswitch_0
    const-string v7, "PhoneInterfaceManager"

    const-string v7, "SET_PESN_COMPLETE"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;

    monitor-enter v7

    .line 996
    :try_start_0
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_0

    move v9, v11

    :goto_1
    #setter for: Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mResult:Z
    invoke-static {v8, v9}, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->access$902(Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;Z)Z

    .line 997
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;

    const/4 v9, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mDone:Z
    invoke-static {v8, v9}, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->access$1002(Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;Z)Z

    .line 998
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 999
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_0
    move v9, v10

    .line 996
    goto :goto_1

    .line 1002
    :pswitch_1
    const-string v7, "PhoneInterfaceManager"

    const-string v7, "GET_PESN_COMPLETE"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;

    monitor-enter v8

    .line 1004
    const/4 v4, 0x1

    .line 1005
    :try_start_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 1007
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_1

    .line 1008
    const-string v7, "PhoneInterfaceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UIM Card exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    monitor-exit v8

    goto :goto_0

    .line 1045
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v7

    .line 1013
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;

    const/4 v9, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mDone:Z
    invoke-static {v7, v9}, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->access$1002(Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;Z)Z

    .line 1016
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v2, v0

    .line 1018
    .local v2, data:[B
    const-string v7, "PhoneInterfaceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data hex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const/4 v7, 0x0

    aget-byte v7, v2, v7

    and-int/lit8 v6, v7, 0xf

    .line 1022
    .local v6, vallen:I
    const-string v7, "PhoneInterfaceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "valid length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v5, 0x0

    .line 1026
    .local v5, vailid:[B
    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    .line 1027
    const/4 v6, 0x4

    .line 1028
    new-array v5, v6, [B

    .line 1029
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v6, :cond_3

    .line 1030
    const/4 v7, 0x0

    aput-byte v7, v5, v3

    .line 1029
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1034
    .end local v3           #i:I
    :cond_2
    new-array v5, v6, [B

    .line 1035
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v6, :cond_3

    .line 1036
    sub-int v7, v6, v3

    aget-byte v7, v2, v7

    aput-byte v7, v5, v3

    .line 1035
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1041
    :cond_3
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mPesn:Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->access$1102(Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;Ljava/lang/String;)Ljava/lang/String;

    .line 1043
    const-string v7, "PhoneInterfaceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pesn from Card: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;

    #getter for: Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->mPesn:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;->access$1100(Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$GetSetPesnToCard;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 1045
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 992
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
