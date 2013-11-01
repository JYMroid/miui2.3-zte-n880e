.class public Landroid/hardware/fmradio/FmConfig;
.super Ljava/lang/Object;
.source "FmConfig.java"


# static fields
.field private static final FM_EU_BAND:I = 0x1

.field private static final FM_JAPAN_STANDARD_BAND:I = 0x2

.field private static final FM_JAPAN_WIDE_BAND:I = 0x3

.field private static final FM_USER_DEFINED_BAND:I = 0x4

.field private static final FM_US_BAND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FmConfig"

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_EMPHASIS:I = 0x800000c

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDS_STD:I = 0x800000d

.field private static final V4L2_CID_PRIVATE_TAVARUA_REGION:I = 0x8000007

.field private static final V4L2_CID_PRIVATE_TAVARUA_SPACING:I = 0x800000e

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_ALGORITHM:I = 0x8000029


# instance fields
.field private mBandLowerLimit:I

.field private mBandUpperLimit:I

.field private mChSpacing:I

.field private mEmphasis:I

.field private mRadioBand:I

.field private mRdsStd:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static fmConfigure(ILandroid/hardware/fmradio/FmConfig;)Z
    .locals 8
    .parameter "fd"
    .parameter "configSettings"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x8000007

    const-string v3, "FmConfig"

    const-string v2, "FmConfig"

    const-string v2, "In fmConfigure"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "persist.fm.new.srch.algorithm"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, mFMSrchAlg:Z
    if-eqz v0, :cond_0

    const-string v2, "FmConfig"

    const-string v2, "fmConfigure() : FM Srch Alg : NEW "

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x8000029

    invoke-static {p0, v2, v6}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .local v1, re:I
    :goto_0
    const v2, 0x800000c

    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getEmphasis()I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    const v2, 0x800000d

    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getRdsStd()I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    const v2, 0x800000e

    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getChSpacing()I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getLowerLimit()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getUpperLimit()I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setBandNative(III)I

    move-result v1

    iget v2, p1, Landroid/hardware/fmradio/FmConfig;->mRadioBand:I

    if-nez v2, :cond_1

    invoke-static {p0, v4, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    :goto_1
    if-gez v1, :cond_5

    move v2, v5

    :goto_2
    return v2

    .end local v1           #re:I
    :cond_0
    const-string v2, "FmConfig"

    const-string v2, "fmConfigure() : FM Srch Alg : OLD "

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x8000029

    invoke-static {p0, v2, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .restart local v1       #re:I
    goto :goto_0

    :cond_1
    iget v2, p1, Landroid/hardware/fmradio/FmConfig;->mRadioBand:I

    if-ne v2, v6, :cond_2

    invoke-static {p0, v4, v6}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    goto :goto_1

    :cond_2
    iget v2, p1, Landroid/hardware/fmradio/FmConfig;->mRadioBand:I

    if-ne v2, v7, :cond_3

    invoke-static {p0, v4, v7}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    goto :goto_1

    :cond_3
    iget v2, p1, Landroid/hardware/fmradio/FmConfig;->mRadioBand:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const/4 v2, 0x3

    invoke-static {p0, v4, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    invoke-static {p0, v4, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    goto :goto_1

    :cond_5
    move v2, v6

    goto :goto_2
.end method


# virtual methods
.method public getChSpacing()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mChSpacing:I

    return v0
.end method

.method public getEmphasis()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mEmphasis:I

    return v0
.end method

.method public getLowerLimit()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mBandLowerLimit:I

    return v0
.end method

.method public getRadioBand()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mRadioBand:I

    return v0
.end method

.method public getRdsStd()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mRdsStd:I

    return v0
.end method

.method public getUpperLimit()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/fmradio/FmConfig;->mBandUpperLimit:I

    return v0
.end method

.method public setChSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mChSpacing:I

    return-void
.end method

.method public setEmphasis(I)V
    .locals 0
    .parameter "emp"

    .prologue
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mEmphasis:I

    return-void
.end method

.method public setLowerLimit(I)V
    .locals 0
    .parameter "lowLimit"

    .prologue
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mBandLowerLimit:I

    return-void
.end method

.method public setRadioBand(I)V
    .locals 0
    .parameter "band"

    .prologue
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mRadioBand:I

    return-void
.end method

.method public setRdsStd(I)V
    .locals 0
    .parameter "rdsStandard"

    .prologue
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mRdsStd:I

    return-void
.end method

.method public setUpperLimit(I)V
    .locals 0
    .parameter "upLimit"

    .prologue
    iput p1, p0, Landroid/hardware/fmradio/FmConfig;->mBandUpperLimit:I

    return-void
.end method
