.class Lcom/android/internal/telephony/CdmaNAI;
.super Lcom/android/internal/telephony/DataProfile;
.source "CdmaNAI.java"


# instance fields
.field private mProfileId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfile;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CdmaNAI;->mProfileId:I

    return-void
.end method


# virtual methods
.method canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method getBearerType()Lcom/android/internal/telephony/Phone$BearerType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/Phone$BearerType;->IPV4V6:Lcom/android/internal/telephony/Phone$BearerType;

    return-object v0
.end method

.method getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_NAI:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    return-object v0
.end method

.method public getProfileId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/CdmaNAI;->mProfileId:I

    return v0
.end method

.method toHash()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaNAI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "CDMA NAI"

    return-object v0
.end method
