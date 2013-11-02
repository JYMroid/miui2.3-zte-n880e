.class final Lcom/android/phone/PhoneUtils$6;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 1792
    const-string v3, "query complete, updating connection.userdata"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 1793
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-object v1, v0

    .line 1797
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- onQueryComplete: CallerInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;)V

    .line 1798
    iget-boolean v3, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v3, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1815
    :cond_0
    iget v3, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-nez v3, :cond_1

    .line 1816
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1825
    :cond_1
    :goto_0
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1826
    return-void

    .line 1819
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3, v1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 1820
    .local v2, newCi:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v2, :cond_1

    .line 1821
    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1822
    move-object p3, v2

    goto :goto_0
.end method
