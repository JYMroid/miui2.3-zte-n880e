.class public Lcom/android/phone/FacilityLockCmd;
.super Lcom/android/phone/RilUnit;
.source "FacilityLockCmd.java"


# static fields
.field static final CMD_TIMEOUT:I = 0x1b58

.field static final SERVICE_CLASS_NONE:I = 0x0

.field static final TAG:Ljava/lang/String; = "FacilityLockCmd"

.field private static mMockSetResult:Z


# instance fields
.field mCmd:Ljava/lang/String;

.field mLocked:Z

.field mPassword:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/FacilityLockCmd;->mMockSetResult:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "phone"
    .parameter "cmd"
    .parameter "password"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/phone/RilUnit;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/FacilityLockCmd;->mLocked:Z

    .line 37
    iput-object p1, p0, Lcom/android/phone/FacilityLockCmd;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 38
    iput-object p2, p0, Lcom/android/phone/FacilityLockCmd;->mCmd:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/android/phone/FacilityLockCmd;->mPassword:Ljava/lang/String;

    .line 40
    const/16 v0, 0x1b58

    invoke-virtual {p0, v0}, Lcom/android/phone/FacilityLockCmd;->EnableTimeoutProc(I)V

    .line 41
    return-void
.end method


# virtual methods
.method DoGetProc()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 46
    const-string v1, "FacilityLockCmd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DoGetProc password = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/FacilityLockCmd;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/FacilityLockCmd;->mCmd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v1, p0, Lcom/android/phone/FacilityLockCmd;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 49
    .local v0, icCard:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/phone/FacilityLockCmd;->mCmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/FacilityLockCmd;->mPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/FacilityLockCmd;->GetMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/IccCard;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 54
    :cond_0
    return v4
.end method

.method DoMockSetProc()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 77
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 78
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/phone/RilUnit;->mConnector:Lcom/android/phone/RilConnector;

    invoke-virtual {v2}, Lcom/android/phone/RilConnector;->GetHandler()Landroid/os/Handler;

    move-result-object v1

    .line 79
    .local v1, handler:Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/android/phone/FacilityLockCmd;->GetProcCode()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 80
    return v5
.end method

.method DoSetProc()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 60
    const-string v1, "FacilityLockCmd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DoSetProc password = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/FacilityLockCmd;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/FacilityLockCmd;->mCmd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-boolean v1, Lcom/android/phone/FacilityLockCmd;->mMockSetResult:Z

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/phone/FacilityLockCmd;->DoMockSetProc()I

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/phone/FacilityLockCmd;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 67
    .local v0, icCard:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/phone/FacilityLockCmd;->mCmd:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/phone/FacilityLockCmd;->mLocked:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/phone/FacilityLockCmd;->mPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/FacilityLockCmd;->GetMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IccCard;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    :cond_1
    move v1, v4

    .line 72
    goto :goto_0

    :cond_2
    move v2, v4

    .line 69
    goto :goto_1
.end method

.method public IsLocked()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/phone/FacilityLockCmd;->mLocked:Z

    return v0
.end method

.method protected OnGetResult(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 86
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 87
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .line 88
    .local v2, ints:[I
    array-length v3, v2

    if-eqz v3, :cond_1

    .line 90
    aget v3, v2, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/phone/FacilityLockCmd;->mLocked:Z

    .line 96
    :goto_1
    return-void

    :cond_0
    move v3, v4

    .line 90
    goto :goto_0

    .line 94
    :cond_1
    const-string v3, "FacilityLockCmd"

    const-string v4, "Wrong Result"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected OnSetResult(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/phone/FacilityLockCmd;->mLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/FacilityLockCmd;->mLocked:Z

    .line 102
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/phone/FacilityLockCmd;->mPassword:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public SetStatus(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/phone/FacilityLockCmd;->mLocked:Z

    .line 117
    return-void
.end method
