.class Lcom/android/internal/telephony/ProxyManager$CardInfo;
.super Ljava/lang/Object;
.source "ProxyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CardInfo"
.end annotation


# instance fields
.field private C_APP_VALID:Z

.field private G_APP_VALID:Z

.field private mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

.field private mGetC_IMSIInProcess:Z

.field private mGetG_IMSIInProcess:Z

.field private mIccId:Ljava/lang/String;

.field private mImsi_C:Ljava/lang/String;

.field private mImsi_G:Ljava/lang/String;

.field private mIsMultiSIM:Z

.field private mMccMnc_G:Ljava/lang/String;

.field private mReadIccIdInProgress:Z

.field private mUiccCard:Lcom/android/internal/telephony/UiccCard;

.field final synthetic this$0:Lcom/android/internal/telephony/ProxyManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/ProxyManager;Lcom/android/internal/telephony/UiccCard;)V
    .locals 3
    .parameter
    .parameter "uiccCard"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->this$0:Lcom/android/internal/telephony/ProxyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->G_APP_VALID:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->C_APP_VALID:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mGetG_IMSIInProcess:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mGetC_IMSIInProcess:Z

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mImsi_C:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mImsi_G:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mMccMnc_G:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mIsMultiSIM:Z

    iput-object p2, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mIccId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mReadIccIdInProgress:Z

    return-void

    :cond_0
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    goto :goto_0
.end method


# virtual methods
.method AllIMSIAvailable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mImsi_C:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mImsi_G:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    return-object v0
.end method

.method public getIMSI(Lcom/android/internal/telephony/UiccConstants$AppType;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mImsi_G:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mImsi_C:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/UiccCard;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    return-object v0
.end method

.method public isMutliSIM()Z
    .locals 10

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v5, 0x0

    const-string v9, "PROXY"

    const-string v6, "46003"

    const-string v1, ""

    .local v1, mccmnc_C:Ljava/lang/String;
    const-string v2, ""

    .local v2, mccmnc_G:Ljava/lang/String;
    const-string v3, ""

    .local v3, simType:Ljava/lang/String;
    const-string v0, ""

    .local v0, mcc_G:Ljava/lang/String;
    const-string v4, "persist.dsds.enabled"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mImsi_G:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mImsi_C:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mImsi_C:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mImsi_G:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_4

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "46003"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "46001"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "UNICOM"

    iput-boolean v5, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mIsMultiSIM:Z

    :cond_0
    :goto_0
    const-string v4, "ril.multimode.card"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ***xt*** set property success multicard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mIsMultiSIM:Z

    return v4

    :cond_1
    const-string v4, "46003"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "XXXXX"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "TELECOM_SINGLE"

    iput-boolean v5, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mIsMultiSIM:Z

    goto :goto_0

    :cond_2
    const-string v4, "46003"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    const-string v4, "XXXXX"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "460"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v3, "TELECOM_MULTI"

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mIsMultiSIM:Z

    goto :goto_0

    :cond_3
    const-string v4, "46003"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v3, "UNKNOWN"

    iput-boolean v5, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mIsMultiSIM:Z

    goto :goto_0

    :cond_4
    const-string v4, "PROXY"

    const-string v4, " ***xt*** error: StringIndexOutOfBounds"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isReadIMSIInProgress(Lcom/android/internal/telephony/UiccConstants$AppType;)Z
    .locals 1
    .parameter "type"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mGetG_IMSIInProcess:Z

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne p1, v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mGetC_IMSIInProcess:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadIccIdInProgress()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mReadIccIdInProgress:Z

    return v0
.end method

.method public setCardState(Lcom/android/internal/telephony/UiccConstants$CardState;)V
    .locals 0
    .parameter "cardState"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    return-void
.end method

.method public setIMSI(Ljava/lang/String;Lcom/android/internal/telephony/UiccConstants$AppType;)V
    .locals 4
    .parameter "IMSI"
    .parameter "type"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne p2, v0, :cond_3

    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mImsi_G:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mImsi_G:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mMccMnc_G:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mMccMnc_G:Ljava/lang/String;

    const-string v1, "46099"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "XXXXX"

    iput-object v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mMccMnc_G:Ljava/lang/String;

    :cond_1
    const-string v0, "ril.gmode.mccmnc"

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mMccMnc_G:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq p2, v0, :cond_4

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne p2, v0, :cond_2

    :cond_4
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mImsi_C:Ljava/lang/String;

    const-string v0, "ril.cmode.mccmnc"

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mImsi_C:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIccId(Ljava/lang/String;)V
    .locals 0
    .parameter "iccId"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mIccId:Ljava/lang/String;

    return-void
.end method

.method public setReadIMSIInProgress(Lcom/android/internal/telephony/UiccConstants$AppType;Z)V
    .locals 1
    .parameter "type"
    .parameter "read"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne p1, v0, :cond_2

    :cond_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mGetG_IMSIInProcess:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne p1, v0, :cond_1

    :cond_3
    iput-boolean p2, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mGetC_IMSIInProcess:Z

    goto :goto_0
.end method

.method public setReadIccIdInProgress(Z)V
    .locals 0
    .parameter "read"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mReadIccIdInProgress:Z

    return-void
.end method

.method public setUiccCard(Lcom/android/internal/telephony/UiccCard;)V
    .locals 4
    .parameter "uiccCard"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-eq v0, v1, :cond_0

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mIccId:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mReadIccIdInProgress:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v2, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mIccId:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mReadIccIdInProgress:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mUiccCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIccId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReadIccIdInProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ProxyManager$CardInfo;->mReadIccIdInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
