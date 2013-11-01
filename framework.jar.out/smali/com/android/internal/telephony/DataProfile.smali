.class public abstract Lcom/android/internal/telephony/DataProfile;
.super Ljava/lang/Object;
.source "DataProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataProfile$DataProfileType;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "DataProfile"


# instance fields
.field private ipv4Dc:Lcom/android/internal/telephony/DataConnection;

.field private ipv6Dc:Lcom/android/internal/telephony/DataConnection;

.field private worksWithIpv4:Z

.field private worksWithIpv6:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataProfile;->worksWithIpv4:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataProfile;->worksWithIpv6:Z

    iput-object v1, p0, Lcom/android/internal/telephony/DataProfile;->ipv4Dc:Lcom/android/internal/telephony/DataConnection;

    iput-object v1, p0, Lcom/android/internal/telephony/DataProfile;->ipv6Dc:Lcom/android/internal/telephony/DataConnection;

    return-void
.end method


# virtual methods
.method abstract canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z
.end method

.method abstract getBearerType()Lcom/android/internal/telephony/Phone$BearerType;
.end method

.method abstract getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;
.end method

.method isActive()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataProfile;->isActive(Lcom/android/internal/net/IPVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataProfile;->isActive(Lcom/android/internal/net/IPVersion;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isActive(Lcom/android/internal/net/IPVersion;)Z
    .locals 3
    .parameter "ipv"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DataProfile;->ipv4Dc:Lcom/android/internal/telephony/DataConnection;

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/DataProfile;->ipv6Dc:Lcom/android/internal/telephony/DataConnection;

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method isWorking(Lcom/android/internal/net/IPVersion;)Z
    .locals 1
    .parameter "ipv"

    .prologue
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataProfile;->worksWithIpv6:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataProfile;->worksWithIpv4:Z

    goto :goto_0
.end method

.method setAsActive(Lcom/android/internal/net/IPVersion;Lcom/android/internal/telephony/DataConnection;)V
    .locals 5
    .parameter "ipv"
    .parameter "dc"

    .prologue
    const-string v4, "]"

    const-string v3, "DataProfile"

    const-string v2, ", dc = "

    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/DataProfile;->ipv4Dc:Lcom/android/internal/telephony/DataConnection;

    if-eqz v0, :cond_0

    const-string v0, "DataProfile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data profile already active on ipv4 : [dp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dc = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/DataConnection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/DataProfile;->ipv4Dc:Lcom/android/internal/telephony/DataConnection;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DataProfile;->ipv6Dc:Lcom/android/internal/telephony/DataConnection;

    if-eqz v0, :cond_3

    const-string v0, "DataProfile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data profile already active on ipv6 : [dp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dc = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/DataConnection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-object p2, p0, Lcom/android/internal/telephony/DataProfile;->ipv6Dc:Lcom/android/internal/telephony/DataConnection;

    goto :goto_0
.end method

.method setAsInactive(Lcom/android/internal/net/IPVersion;)V
    .locals 2
    .parameter "ipv"

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_1

    iput-object v1, p0, Lcom/android/internal/telephony/DataProfile;->ipv4Dc:Lcom/android/internal/telephony/DataConnection;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lcom/android/internal/telephony/DataProfile;->ipv6Dc:Lcom/android/internal/telephony/DataConnection;

    goto :goto_0
.end method

.method setWorking(ZLcom/android/internal/net/IPVersion;)V
    .locals 1
    .parameter "working"
    .parameter "ipv"

    .prologue
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne p2, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/internal/telephony/DataProfile;->worksWithIpv4:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    if-ne p2, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/telephony/DataProfile;->worksWithIpv6:Z

    goto :goto_0
.end method

.method abstract toHash()Ljava/lang/String;
.end method

.method public abstract toShortString()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dpt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataProfile;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
