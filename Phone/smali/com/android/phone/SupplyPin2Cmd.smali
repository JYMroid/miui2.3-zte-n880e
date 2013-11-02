.class public Lcom/android/phone/SupplyPin2Cmd;
.super Lcom/android/phone/RilUnit;
.source "SupplyPin2Cmd.java"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin2:Ljava/lang/String;

.field private mRetryTimes:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 1
    .parameter "phone"
    .parameter "pin2"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/phone/RilUnit;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/SupplyPin2Cmd;->mRetryTimes:I

    .line 16
    iput-object p1, p0, Lcom/android/phone/SupplyPin2Cmd;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 17
    iput-object p2, p0, Lcom/android/phone/SupplyPin2Cmd;->mPin2:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method DoGetProc()I
    .locals 3

    .prologue
    .line 79
    const-string v0, "hubo"

    const-string v1, "DoGetProc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/phone/SupplyPin2Cmd;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SupplyPin2Cmd;->mPin2:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/SupplyPin2Cmd;->GetMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method DoSetProc()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public GetPin2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/phone/SupplyPin2Cmd;->mPin2:Ljava/lang/String;

    return-object v0
.end method

.method public GetRetryTimes()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/android/phone/SupplyPin2Cmd;->mRetryTimes:I

    return v0
.end method

.method OnCorrectPin2()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method OnErrorPin()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public OnException(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 34
    const-string v0, "hubo"

    const-string v1, "OnException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-super {p0, p1}, Lcom/android/phone/RilUnit;->OnException(Landroid/os/AsyncResult;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/phone/SupplyPin2Cmd;->TryGetLeftRetryTimes(Landroid/os/AsyncResult;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/phone/SupplyPin2Cmd;->OnErrorPin()V

    .line 38
    return-void
.end method

.method OnGetResult(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/phone/SupplyPin2Cmd;->OnCorrectPin2()V

    .line 62
    return-void
.end method

.method TryGetLeftRetryTimes(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const-string v4, "hubo"

    .line 42
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/android/phone/SupplyPin2Cmd;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccPin2RetryCount()I

    move-result v2

    iput v2, p0, Lcom/android/phone/SupplyPin2Cmd;->mRetryTimes:I

    .line 45
    const-string v2, "hubo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncResult result null!!! iccCard retryTimes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/SupplyPin2Cmd;->mRetryTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 50
    .local v1, intArray:[I
    array-length v2, v1

    if-lez v2, :cond_0

    .line 52
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, p0, Lcom/android/phone/SupplyPin2Cmd;->mRetryTimes:I

    .line 53
    const-string v2, "hubo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnGetResult lefttimes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/SupplyPin2Cmd;->mRetryTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
