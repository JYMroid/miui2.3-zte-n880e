.class public Lcom/android/internal/telephony/ProxyManager$Subscription;
.super Ljava/lang/Object;
.source "ProxyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Subscription"
.end annotation


# instance fields
.field public appId:Ljava/lang/String;

.field public appLabel:Ljava/lang/String;

.field public appType:Ljava/lang/String;

.field public iccId:Ljava/lang/String;

.field public m3gpp2Index:I

.field public m3gppIndex:I

.field public slotId:I

.field public subId:I

.field public subStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const v0, 0x1869f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iput v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iput v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iput v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    return-void
.end method

.method public static UnPack(Landroid/os/Bundle;)Lcom/android/internal/telephony/ProxyManager$Subscription;
    .locals 2
    .parameter "info"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/ProxyManager$Subscription;

    invoke-direct {v0}, Lcom/android/internal/telephony/ProxyManager$Subscription;-><init>()V

    .local v0, result:Lcom/android/internal/telephony/ProxyManager$Subscription;
    const-string v1, "slotId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    const-string v1, "m3gppIndex"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    const-string v1, "m3gpp2Index"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    const-string v1, "subId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    const-string v1, "subStatus"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    return-object v0
.end method


# virtual methods
.method public Pack()Landroid/os/Bundle;
    .locals 3

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, result:Landroid/os/Bundle;
    const-string v1, "slotId"

    iget v2, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "m3gppIndex"

    iget v2, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "m3gpp2Index"

    iget v2, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "subId"

    iget v2, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "subStatus"

    iget v2, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public copyFrom(Lcom/android/internal/telephony/ProxyManager$Subscription;)Lcom/android/internal/telephony/ProxyManager$Subscription;
    .locals 2
    .parameter "from"

    .prologue
    if-eqz p1, :cond_3

    iget v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iput v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iput v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iget v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iput v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iget v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    iput v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    iget v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iput v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iget-object v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    :cond_3
    return-object p0
.end method

.method public equals(Lcom/android/internal/telephony/ProxyManager$Subscription;)Z
    .locals 2
    .parameter "sub"

    .prologue
    if-eqz p1, :cond_8

    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget v1, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    iget v1, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    iget v1, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    iget v1, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    iget v1, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_8
    const-string v0, "PROXY"

    const-string v1, "Subscription.equals: sub == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppIndex()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    const v1, 0x1869f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscription = { slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 3gppIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 3gpp2Index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gpp2Index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->subStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iccId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
