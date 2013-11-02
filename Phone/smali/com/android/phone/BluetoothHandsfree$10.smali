.class Lcom/android/phone/BluetoothHandsfree$10;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .locals 3

    .prologue
    .line 2051
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CMER: 3,0,0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 8
    .parameter "args"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2056
    array-length v1, p1

    if-ge v1, v7, :cond_0

    .line 2058
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2088
    :goto_0
    return-object v1

    .line 2059
    :cond_0
    aget-object v1, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    aget-object v1, p1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    aget-object v1, p1, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2061
    const/4 v0, 0x0

    .line 2062
    .local v0, valid:Z
    aget-object v1, p1, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2063
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1102(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2064
    const/4 v0, 0x1

    .line 2069
    :cond_1
    :goto_1
    if-eqz v0, :cond_7

    .line 2070
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_6

    .line 2071
    :cond_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v1, v4}, Lcom/android/phone/BluetoothHandsfree;->access$1202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2072
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2073
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->broadcastSlcEstablished()V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5300(Lcom/android/phone/BluetoothHandsfree;)V

    .line 2074
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2075
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 2082
    :cond_3
    :goto_2
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 2065
    :cond_4
    aget-object v1, p1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2066
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z
    invoke-static {v1, v4}, Lcom/android/phone/BluetoothHandsfree;->access$1102(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2067
    const/4 v0, 0x1

    goto :goto_1

    .line 2076
    :cond_5
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2079
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$100(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;

    goto :goto_2

    .line 2084
    :cond_6
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 2088
    .end local v0           #valid:Z
    :cond_7
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$10;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1, v7}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 2092
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CMER: (3),(0),(0),(0-1)"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
