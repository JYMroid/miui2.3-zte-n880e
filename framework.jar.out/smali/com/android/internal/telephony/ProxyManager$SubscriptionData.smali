.class public Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
.super Ljava/lang/Object;
.source "ProxyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubscriptionData"
.end annotation


# instance fields
.field public subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "numSub"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, p1, [Lcom/android/internal/telephony/ProxyManager$Subscription;

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    new-instance v2, Lcom/android/internal/telephony/ProxyManager$Subscription;

    invoke-direct {v2}, Lcom/android/internal/telephony/ProxyManager$Subscription;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static UnPack(Landroid/os/Bundle;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .locals 6
    .parameter "info"

    .prologue
    const/4 v5, 0x2

    new-instance v1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;-><init>(I)V

    .local v1, result:Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    new-array v2, v5, [Landroid/os/Bundle;

    .local v2, units:[Landroid/os/Bundle;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscription"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, v1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/android/internal/telephony/ProxyManager$Subscription;->UnPack(Landroid/os/Bundle;)Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public Pack()Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v5, 0x2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, result:Landroid/os/Bundle;
    new-array v2, v5, [Landroid/os/Bundle;

    .local v2, units:[Landroid/os/Bundle;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/ProxyManager$Subscription;->Pack()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscription"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public copyFrom(Lcom/android/internal/telephony/ProxyManager$SubscriptionData;)Lcom/android/internal/telephony/ProxyManager$SubscriptionData;
    .locals 3
    .parameter "from"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/ProxyManager$Subscription;

    iput-object v1, p0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    new-instance v2, Lcom/android/internal/telephony/ProxyManager$Subscription;

    invoke-direct {v2}, Lcom/android/internal/telephony/ProxyManager$Subscription;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ProxyManager$Subscription;->copyFrom(Lcom/android/internal/telephony/ProxyManager$Subscription;)Lcom/android/internal/telephony/ProxyManager$Subscription;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    return-object p0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyManager$Subscription;->iccId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$SubscriptionData;->subscription:[Lcom/android/internal/telephony/ProxyManager$Subscription;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
