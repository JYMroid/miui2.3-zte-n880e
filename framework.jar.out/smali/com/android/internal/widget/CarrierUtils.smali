.class public Lcom/android/internal/widget/CarrierUtils;
.super Ljava/lang/Object;
.source "CarrierUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/CarrierUtils$1;,
        Lcom/android/internal/widget/CarrierUtils$CarrierFormat;,
        Lcom/android/internal/widget/CarrierUtils$SimStatus;,
        Lcom/android/internal/widget/CarrierUtils$CarrierInfo;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x7

.field private static final DEBUG:Z = false

.field public static final FLAG_PLMN:I = 0x2

.field public static final FLAG_PLMN_SPN_MERGE:I = 0x1

.field public static final FLAG_SPN:I = 0x4

.field public static LOCKSCREEN_SIM_SUB_RES_IDS:[I = null

.field public static final PLMN_ONLY:I = 0x2

.field public static final PLMN_PRIORITY:I = 0x3

.field public static final PLMN_SPN_SEPARATOR:Ljava/lang/String; = "|"

.field public static final SIM_MISSING_KEY:I = 0x0

.field public static final SIM_NORMAL_KEY:I = 0x1

.field public static final SIM_SUB_ID_HEAD:I = 0x2

.field public static final SIM_SUB_ID_NONE:I = 0x0

.field public static final SIM_SUB_ID_TAIL:I = 0x4

.field public static final SPN_ONLY:I = 0x4

.field public static final SPN_PRIORITY:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CarrierUtils"

.field private static final XMLTAG_MOBILE:Ljava/lang/String; = "mobilization"

.field private static final XMLTAG_SPN:Ljava/lang/String; = "spn"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/CarrierUtils;->LOCKSCREEN_SIM_SUB_RES_IDS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xe9t 0x3t 0x4t 0x1t
        0xeat 0x3t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSimSubIdString(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "subscription"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/internal/widget/CarrierUtils;->addSimSubIdString(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static addSimSubIdString(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "srcStr"
    .parameter "subscription"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/widget/CarrierUtils;->addSimSubIdString(Landroid/content/Context;Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static addSimSubIdString(Landroid/content/Context;Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "srcStr"
    .parameter "subscription"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    move v1, v3

    .local v1, hasSrc:Z
    :goto_0
    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v0, buf:Ljava/lang/StringBuffer;
    if-lez p3, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, p2}, Lcom/android/internal/widget/CarrierUtils;->getSimSubIdString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, sub:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v2           #sub:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v0           #buf:Ljava/lang/StringBuffer;
    :goto_1
    return-object v3

    .end local v1           #hasSrc:Z
    :cond_2
    move v1, v4

    goto :goto_0

    .restart local v1       #hasSrc:Z
    :cond_3
    move-object v3, p1

    goto :goto_1
.end method

.method public static covertToSimStatus(Landroid/content/Context;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/widget/CarrierUtils$SimStatus;
    .locals 3
    .parameter "context"
    .parameter "simState"

    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimMissingLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    :goto_1
    return-object v1

    .end local v0           #missingAndNotProvisioned:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$1;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimMissing:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimMissing:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_1
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->NetworkLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_2
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimMissing:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_3
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimPukLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_5
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->Normal:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_6
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimMissing:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_7
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimIOError:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_8
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->NetworkSubsetLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_9
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->CorporateLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_a
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->ServiceProviderLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_b
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimSimLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_c
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimNetwork1Locked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_d
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimNetwork2Locked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_e
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimHrpdLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_f
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimCorporateLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_10
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimServiceProviderLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_11
    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimRuimLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    const-string v0, "|"

    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/CarrierUtils;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/internal/telephony/IccCard$State;ILcom/android/internal/widget/CarrierUtils$CarrierFormat;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"
    .parameter "simState"
    .parameter "subscription"
    .parameter "formatter"

    .prologue
    if-nez p4, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p4, p2, p3}, Lcom/android/internal/widget/CarrierUtils$CarrierFormat;->preFormatCarrier(Lcom/android/internal/telephony/IccCard$State;I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, carrier:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {p4, p3}, Lcom/android/internal/widget/CarrierUtils$CarrierFormat;->verifyAirplaneMode(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/internal/widget/CarrierUtils$CarrierFormat;->formatCarrier(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/internal/telephony/IccCard$State;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p4, p2, p3}, Lcom/android/internal/widget/CarrierUtils$CarrierFormat;->formatDefaultCarrier(Lcom/android/internal/telephony/IccCard$State;I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"
    .parameter "separator"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v4

    .local v0, hasPlmn:Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v4

    .local v1, hasSpn:Z
    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    move-object v2, p0

    :goto_2
    return-object v2

    .end local v0           #hasPlmn:Z
    .end local v1           #hasSpn:Z
    :cond_0
    move v0, v3

    goto :goto_0

    .restart local v0       #hasPlmn:Z
    :cond_1
    move v1, v3

    goto :goto_1

    .restart local v1       #hasSpn:Z
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    move-object v2, p1

    goto :goto_2

    :cond_4
    const-string v2, ""

    goto :goto_2
.end method

.method public static getCarrierStringEx(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/android/internal/telephony/IccCard$State;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"
    .parameter "flags"
    .parameter "simState"

    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/CarrierUtils;->verifyAirplaneMode(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, carrier:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "|"

    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/widget/CarrierUtils;->getCarrierStringEx(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p4}, Lcom/android/internal/widget/CarrierUtils;->getDefaultCarrierString(Landroid/content/Context;Lcom/android/internal/telephony/IccCard$State;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static getCarrierStringEx(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "context"
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"
    .parameter "flags"
    .parameter "separator"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v6

    .local v1, hasPlmn:Z
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v2, v6

    .local v2, hasSpn:Z
    :goto_1
    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_0

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/widget/CarrierUtils;->getMobilization(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    return-object v3

    .end local v1           #hasPlmn:Z
    .end local v2           #hasSpn:Z
    :cond_1
    move v1, v5

    goto :goto_0

    .restart local v1       #hasPlmn:Z
    :cond_2
    move v2, v5

    goto :goto_1

    .restart local v2       #hasSpn:Z
    :cond_3
    const-string v3, ""

    move-object v3, v4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, carrierStr:Ljava/lang/StringBuilder;
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/widget/CarrierUtils;->getMobilization(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_6

    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_6

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/widget/CarrierUtils;->getSpn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_9
    const-string v3, ""

    move-object v3, v4

    goto :goto_2

    .end local v0           #carrierStr:Ljava/lang/StringBuilder;
    :cond_a
    if-nez v1, :cond_d

    if-eqz v2, :cond_d

    and-int/lit8 v3, p3, 0x4

    if-nez v3, :cond_b

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_c

    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/widget/CarrierUtils;->getSpn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_c
    const-string v3, ""

    move-object v3, v4

    goto :goto_2

    :cond_d
    const-string v3, ""

    move-object v3, v4

    goto :goto_2
.end method

.method public static getCarrierStringEx(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;I)Ljava/lang/CharSequence;
    .locals 7
    .parameter "context"
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"
    .parameter "flags"
    .parameter "separator"
    .parameter "subscription"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v6

    .local v1, hasPlmn:Z
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v2, v6

    .local v2, hasSpn:Z
    :goto_1
    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_0

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_3

    :cond_0
    invoke-static {p0, p1, p5}, Lcom/android/internal/widget/CarrierUtils;->getTelephonyPlmnEx(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_2
    return-object v3

    .end local v1           #hasPlmn:Z
    .end local v2           #hasSpn:Z
    :cond_1
    move v1, v5

    goto :goto_0

    .restart local v1       #hasPlmn:Z
    :cond_2
    move v2, v5

    goto :goto_1

    .restart local v2       #hasSpn:Z
    :cond_3
    const-string v3, ""

    move-object v3, v4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, carrierStr:Ljava/lang/StringBuilder;
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_5

    invoke-static {p0, p1, p5}, Lcom/android/internal/widget/CarrierUtils;->getTelephonyPlmnEx(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_6

    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_6

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_7

    invoke-static {p0, p2, p5}, Lcom/android/internal/widget/CarrierUtils;->getTelephonySpnEx(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_9
    const-string v3, ""

    move-object v3, v4

    goto :goto_2

    .end local v0           #carrierStr:Ljava/lang/StringBuilder;
    :cond_a
    if-nez v1, :cond_d

    if-eqz v2, :cond_d

    and-int/lit8 v3, p3, 0x4

    if-nez v3, :cond_b

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_c

    :cond_b
    invoke-static {p0, p2, p5}, Lcom/android/internal/widget/CarrierUtils;->getTelephonySpnEx(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    :cond_c
    const-string v3, ""

    move-object v3, v4

    goto :goto_2

    :cond_d
    const-string v3, ""

    move-object v3, v4

    goto :goto_2
.end method

.method public static getCarrierStringEx(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/internal/telephony/IccCard$State;ILcom/android/internal/widget/CarrierUtils$CarrierFormat;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"
    .parameter "simState"
    .parameter "subscription"
    .parameter "formatter"

    .prologue
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/internal/widget/CarrierUtils$CarrierFormat;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/internal/telephony/IccCard$State;I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultCarrierString(Landroid/content/Context;Lcom/android/internal/telephony/IccCard$State;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "context"
    .parameter "simState"

    .prologue
    const-string v3, ""

    if-nez p1, :cond_0

    const-string v1, ""

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    .local v0, carrier:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->isIccCardMissing(Lcom/android/internal/telephony/IccCard$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    const-string v1, ""

    move-object v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public static getDefaultCarrierStringEx(Landroid/content/Context;Lcom/android/internal/telephony/IccCard$State;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"
    .parameter "simState"

    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/CarrierUtils;->verifyAirplaneMode(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, carrier:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/widget/CarrierUtils;->getDefaultCarrierString(Landroid/content/Context;Lcom/android/internal/telephony/IccCard$State;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDefaultCarrierStringEx(Landroid/content/Context;Lcom/android/internal/telephony/IccCard$State;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "simState"
    .parameter "subscription"

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/widget/CarrierUtils;->getDefaultCarrierStringEx(Landroid/content/Context;Lcom/android/internal/telephony/IccCard$State;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/internal/widget/CarrierUtils;->addSimSubIdString(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getIccCardStateFromIntent(Landroid/content/Intent;)Lcom/android/internal/telephony/IccCard$State;
    .locals 5
    .parameter "intent"

    .prologue
    if-eqz p0, :cond_0

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    :goto_0
    return-object v3

    :cond_1
    const-string v3, "ss"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, stateExtra:Ljava/lang/String;
    const-string v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .local v1, simState:Lcom/android/internal/telephony/IccCard$State;
    :goto_1
    move-object v3, v1

    goto :goto_0

    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_2
    const-string v3, "CARD_IO_ERROR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_1

    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_3
    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "IMSI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "LOADED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_1

    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_5
    const-string v3, "LOCKED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "reason"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, lockedReason:Ljava/lang/String;
    const-string v3, "PIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_1

    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_6
    const-string v3, "PUK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_1

    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_7
    const-string v3, "SIM NETWORK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_1

    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_8
    const-string v3, "SIM NETWORK SUBSET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_1

    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_9
    const-string v3, "SIM CORPORATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_1

    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_a
    const-string v3, "SIM SERVICE PROVIDER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_1

    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_b
    const-string v3, "SIM SIM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_1

    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_c
    const-string v3, "RUIM NETWORK1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_1

    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_d
    const-string v3, "RUIM NETWORK2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_1

    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_e
    const-string v3, "RUIM HRPD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_1

    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_f
    const-string v3, "RUIM CORPORATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_1

    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_10
    const-string v3, "RUIM SERVICE PROVIDER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_1

    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_11
    const-string v3, "RUIM RUIM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_1

    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_12
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_1

    .end local v0           #lockedReason:Ljava/lang/String;
    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_13
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_1
.end method

.method public static getMobilization(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "mobilization"

    .prologue
    const v0, 0x10b0003

    const-string v1, "mobilization"

    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/widget/CarrierUtils;->getXmlNodeValueById(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimSubIdString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"
    .parameter "subscription"

    .prologue
    if-ltz p1, :cond_0

    sget-object v0, Lcom/android/internal/widget/CarrierUtils;->LOCKSCREEN_SIM_SUB_RES_IDS:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/CarrierUtils;->LOCKSCREEN_SIM_SUB_RES_IDS:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSpn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "spn"

    .prologue
    const v0, 0x10b000d

    const-string v1, "spn"

    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/widget/CarrierUtils;->getXmlNodeValueById(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyPlmnEx(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"
    .parameter "telephonyPlmn"

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .local v0, hasPlmn:Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/widget/CarrierUtils;->getMobilization(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .end local v0           #hasPlmn:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .restart local v0       #hasPlmn:Z
    :cond_1
    move-object v1, p1

    goto :goto_1
.end method

.method public static getTelephonyPlmnEx(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "telephonyPlmn"
    .parameter "subscription"

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/widget/CarrierUtils;->getTelephonyPlmnEx(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/internal/widget/CarrierUtils;->addSimSubIdString(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonySpnEx(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"
    .parameter "telephonySpn"

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .local v0, hasSpn:Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/widget/CarrierUtils;->getSpn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .end local v0           #hasSpn:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .restart local v0       #hasSpn:Z
    :cond_1
    move-object v1, p1

    goto :goto_1
.end method

.method public static getTelephonySpnEx(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "telephonySpn"
    .parameter "subscription"

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/widget/CarrierUtils;->getTelephonySpnEx(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/internal/widget/CarrierUtils;->addSimSubIdString(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonySubscriptionFrom(Landroid/content/Intent;)I
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "subscription"

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, subscription:I
    :goto_0
    return v1

    .end local v1           #subscription:I
    :cond_0
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "phone_subscription"

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #subscription:I
    goto :goto_0

    .end local v1           #subscription:I
    :cond_1
    const/4 v1, -0x1

    .restart local v1       #subscription:I
    goto :goto_0
.end method

.method public static getXmlNodeValueById(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "xmlRes"
    .parameter "xmlTag"
    .parameter "exact_id"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .local v2, xrp:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_5

    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_2

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move-object v3, p3

    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object v3

    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_1

    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v3

    :goto_3
    move-object v3, p3

    goto :goto_2

    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .local v1, id:Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .local v0, displayName:Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    goto :goto_2

    .end local v0           #displayName:Ljava/lang/String;
    .end local v1           #id:Ljava/lang/String;
    :cond_3
    :goto_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_4

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_4

    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v3

    goto :goto_3

    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static isDeviceAllSimMissing(Lcom/android/internal/widget/CarrierUtils$CarrierInfo;)Z
    .locals 4
    .parameter "carriers"

    .prologue
    const/4 v3, 0x0

    if-nez p0, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->getSimMissingStateCount()I

    move-result v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .local v0, isAllSimMissing:Z
    :goto_1
    move v1, v0

    goto :goto_0

    .end local v0           #isAllSimMissing:Z
    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public static verifyAirplaneMode(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .local v0, carrier:Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/android/internal/widget/CarrierUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .local v1, isAirplaneMode:Z
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104012c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static verifyAirplaneMode(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "subscription"

    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/CarrierUtils;->verifyAirplaneMode(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/internal/widget/CarrierUtils;->addSimSubIdString(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
