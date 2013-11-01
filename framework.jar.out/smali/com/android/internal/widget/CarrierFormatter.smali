.class public Lcom/android/internal/widget/CarrierFormatter;
.super Ljava/lang/Object;
.source "CarrierFormatter.java"

# interfaces
.implements Lcom/android/internal/widget/CarrierUtils$CarrierFormat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/CarrierFormatter$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CarrierFormatter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private mSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "flags"
    .parameter "separator"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/CarrierFormatter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/internal/widget/CarrierFormatter;->mFlags:I

    iput-object p3, p0, Lcom/android/internal/widget/CarrierFormatter;->mSeparator:Ljava/lang/String;

    return-void
.end method

.method private isGSMSlotForCGDualMode(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPlmnSpnFlags(I)V
    .locals 1
    .parameter "flags"

    .prologue
    iget v0, p0, Lcom/android/internal/widget/CarrierFormatter;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/widget/CarrierFormatter;->mFlags:I

    return-void
.end method

.method public formatCarrier(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/internal/telephony/IccCard$State;I)Ljava/lang/CharSequence;
    .locals 9
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"
    .parameter "simState"
    .parameter "subscription"

    .prologue
    const/4 v6, 0x0

    .local v6, carrier:Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .local v7, resId:I
    iget-object v0, p0, Lcom/android/internal/widget/CarrierFormatter;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/android/internal/widget/CarrierUtils;->covertToSimStatus(Landroid/content/Context;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/widget/CarrierUtils$SimStatus;

    move-result-object v8

    .local v8, status:Lcom/android/internal/widget/CarrierUtils$SimStatus;
    sget-object v0, Lcom/android/internal/widget/CarrierFormatter$1;->$SwitchMap$com$android$internal$widget$CarrierUtils$SimStatus:[I

    invoke-virtual {v8}, Lcom/android/internal/widget/CarrierUtils$SimStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    if-nez v6, :cond_1

    if-lez v7, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/CarrierFormatter;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, p4}, Lcom/android/internal/widget/CarrierUtils;->addSimSubIdString(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v6

    :cond_1
    return-object v6

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/CarrierFormatter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/widget/CarrierFormatter;->mFlags:I

    iget-object v4, p0, Lcom/android/internal/widget/CarrierFormatter;->mSeparator:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/CarrierUtils;->getCarrierStringEx(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_0

    :pswitch_1
    const v7, 0x10402b7

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p4}, Lcom/android/internal/widget/CarrierFormatter;->isGSMSlotForCGDualMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v7, 0x10402b8

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/CarrierFormatter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p4}, Lcom/android/internal/widget/CarrierUtils;->getTelephonyPlmnEx(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/CarrierFormatter;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, p4}, Lcom/android/internal/widget/CarrierUtils;->addSimSubIdString(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/CarrierFormatter;->mSeparator:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_0

    :pswitch_2
    const v7, 0x10402af

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p4}, Lcom/android/internal/widget/CarrierFormatter;->isGSMSlotForCGDualMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v7, 0x10402b0

    goto :goto_0

    :pswitch_3
    const v7, 0x10402af

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p4}, Lcom/android/internal/widget/CarrierFormatter;->isGSMSlotForCGDualMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const v7, 0x10402b0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/CarrierFormatter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p4}, Lcom/android/internal/widget/CarrierUtils;->getTelephonyPlmnEx(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/CarrierFormatter;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, p4}, Lcom/android/internal/widget/CarrierUtils;->addSimSubIdString(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/CarrierFormatter;->mSeparator:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_0

    :pswitch_4
    const v7, 0x10402bf

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p4}, Lcom/android/internal/widget/CarrierFormatter;->isGSMSlotForCGDualMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const v7, 0x10402c0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/CarrierFormatter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p4}, Lcom/android/internal/widget/CarrierUtils;->getTelephonyPlmnEx(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/CarrierFormatter;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, p4}, Lcom/android/internal/widget/CarrierUtils;->addSimSubIdString(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/CarrierFormatter;->mSeparator:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_5
    const v7, 0x10402c1

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p4}, Lcom/android/internal/widget/CarrierFormatter;->isGSMSlotForCGDualMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const v7, 0x10402c2

    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/CarrierFormatter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p4}, Lcom/android/internal/widget/CarrierUtils;->getTelephonyPlmnEx(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/CarrierFormatter;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, p4}, Lcom/android/internal/widget/CarrierUtils;->addSimSubIdString(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/CarrierFormatter;->mSeparator:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/android/internal/telephony/ITelephony;->isIccPukBlockedOnSubscription(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const v7, 0x10403da

    const/4 v6, 0x0

    goto/16 :goto_0

    :pswitch_6
    const v7, 0x10402b5

    goto/16 :goto_0

    :pswitch_7
    const v7, 0x10402b9

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p4}, Lcom/android/internal/widget/CarrierFormatter;->isGSMSlotForCGDualMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v7, 0x10402ba

    goto/16 :goto_0

    :pswitch_8
    const v7, 0x10402bd

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p4}, Lcom/android/internal/widget/CarrierFormatter;->isGSMSlotForCGDualMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v7, 0x10402be

    goto/16 :goto_0

    :pswitch_9
    const v7, 0x10402bb

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p4}, Lcom/android/internal/widget/CarrierFormatter;->isGSMSlotForCGDualMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v7, 0x10402bc

    goto/16 :goto_0

    :pswitch_a
    const v7, 0x10402bf

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p4}, Lcom/android/internal/widget/CarrierFormatter;->isGSMSlotForCGDualMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v7, 0x10402c0

    goto/16 :goto_0

    :pswitch_b
    const v7, 0x10402cf

    goto/16 :goto_0

    :pswitch_c
    const v7, 0x10402d0

    goto/16 :goto_0

    :pswitch_d
    const v7, 0x10402d1

    goto/16 :goto_0

    :pswitch_e
    const v7, 0x10402d3

    goto/16 :goto_0

    :pswitch_f
    const v7, 0x10402d2

    goto/16 :goto_0

    :pswitch_10
    const v7, 0x10402d4

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

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
    .end packed-switch
.end method

.method public formatDefaultCarrier(Lcom/android/internal/telephony/IccCard$State;I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "simState"
    .parameter "subscription"

    .prologue
    const-string v4, ""

    iget-object v1, p0, Lcom/android/internal/widget/CarrierFormatter;->mContext:Landroid/content/Context;

    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/widget/CarrierUtils;->verifyAirplaneMode(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, carrier:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    :goto_0
    return-object v3

    :cond_0
    if-nez p1, :cond_1

    const-string v3, ""

    move-object v3, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .local v2, resId:I
    const-string v0, ""

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->isIccCardMissing(Lcom/android/internal/telephony/IccCard$State;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v2, 0x10402af

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p2}, Lcom/android/internal/widget/CarrierFormatter;->isGSMSlotForCGDualMode(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const v2, 0x10402b0

    :cond_2
    :goto_1
    if-lez v2, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_5

    const-string v3, ""

    move-object v3, v4

    goto :goto_0

    :cond_4
    const v2, 0x10402a2

    goto :goto_1

    :cond_5
    move-object v3, v0

    goto :goto_0
.end method

.method public getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/internal/telephony/IccCard$State;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"
    .parameter "simState"
    .parameter "subscription"

    .prologue
    invoke-static {p1, p2, p3, p4, p0}, Lcom/android/internal/widget/CarrierUtils;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/internal/telephony/IccCard$State;ILcom/android/internal/widget/CarrierUtils$CarrierFormat;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public preFormatCarrier(Lcom/android/internal/telephony/IccCard$State;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simState"
    .parameter "subscription"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public removePlmnSpnFlags(I)V
    .locals 2
    .parameter "flags"

    .prologue
    iget v0, p0, Lcom/android/internal/widget/CarrierFormatter;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/CarrierFormatter;->mFlags:I

    return-void
.end method

.method public verifyAirplaneMode(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "subscription"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/CarrierFormatter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/widget/CarrierUtils;->verifyAirplaneMode(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
