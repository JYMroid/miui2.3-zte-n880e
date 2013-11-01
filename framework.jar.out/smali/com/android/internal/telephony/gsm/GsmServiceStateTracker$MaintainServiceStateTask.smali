.class public Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$MaintainServiceStateTask;
.super Ljava/util/TimerTask;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MaintainServiceStateTask"
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mGsmSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter
    .parameter "GsmSST"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$MaintainServiceStateTask;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$MaintainServiceStateTask;->mGsmSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaintainServiceStateTask: SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$MaintainServiceStateTask;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscription()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Time expired, notify"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$MaintainServiceStateTask;->mGsmSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Landroid/telephony/ServiceState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$MaintainServiceStateTask;->mGsmSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->realSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setState(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$MaintainServiceStateTask;->mGsmSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$MaintainServiceStateTask;->mGsmSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsServiceStateTaskPending:Z

    return-void
.end method
