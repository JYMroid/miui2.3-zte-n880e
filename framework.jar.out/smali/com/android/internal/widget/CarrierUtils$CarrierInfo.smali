.class public Lcom/android/internal/widget/CarrierUtils$CarrierInfo;
.super Ljava/lang/Object;
.source "CarrierUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/CarrierUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarrierInfo"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mShowPlmn:[Z

.field private mShowSpn:[Z

.field private mSimState:[Lcom/android/internal/telephony/IccCard$State;

.field private mSubscription:I

.field private mTelephonyPlmn:[Ljava/lang/CharSequence;

.field private mTelephonySpn:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSubscription:I

    iput-object p1, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .local v1, numPhones:I
    new-array v2, v1, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mShowPlmn:[Z

    new-array v2, v1, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mTelephonySpn:[Ljava/lang/CharSequence;

    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mShowSpn:[Z

    new-array v2, v1, [Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aput-object v5, v2, v0

    iget-object v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mShowPlmn:[Z

    aput-boolean v4, v2, v0

    iget-object v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mTelephonySpn:[Ljava/lang/CharSequence;

    aput-object v5, v2, v0

    iget-object v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mShowSpn:[Z

    aput-boolean v4, v2, v0

    iget-object v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private toString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "cs"

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public copy(Lcom/android/internal/widget/CarrierUtils$CarrierInfo;)V
    .locals 4
    .parameter "src"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .local v1, numPhones:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->getTelephonyPlmn(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mShowPlmn:[Z

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->isShowTelephonyPlmn(I)Z

    move-result v3

    aput-boolean v3, v2, v0

    iget-object v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mTelephonySpn:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->getTelephonySpn(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mShowSpn:[Z

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->isShowTelephonySpn(I)Z

    move-result v3

    aput-boolean v3, v2, v0

    iget-object v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCurrentSimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSimSubscription()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSubscription:I

    return v0
.end method

.method public getCurrentTelephonyPlmn()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->getTelephonyPlmn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTelephonySpn()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->getTelephonySpn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTelephonyPlmn()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->getTelephonyPlmn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTelephonySpn()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->getTelephonySpn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimMissingStateCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, count:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .local v2, numPhones:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->isIccCardMissing(Lcom/android/internal/telephony/IccCard$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "subscription"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTelephonyPlmn(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->toString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonySpn(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->toString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShowCurrentTelephonyPlmn()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->isShowTelephonyPlmn(I)Z

    move-result v0

    return v0
.end method

.method public isShowCurrentTelephonySpn()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->isShowTelephonySpn(I)Z

    move-result v0

    return v0
.end method

.method public isShowDefaultTelephonyPlmn()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->isShowTelephonyPlmn(I)Z

    move-result v0

    return v0
.end method

.method public isShowDefaultTelephonySpn()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->isShowTelephonySpn(I)Z

    move-result v0

    return v0
.end method

.method public isShowTelephonyPlmn(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mShowPlmn:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isShowTelephonySpn(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mShowSpn:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isSimMissingState(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isIccCardMissing(Lcom/android/internal/telephony/IccCard$State;)Z

    move-result v0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "subscription"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, subscription:I
    iget-object v3, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    const-string v4, "plmn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mTelephonySpn:[Ljava/lang/CharSequence;

    const-string v4, "spn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mShowPlmn:[Z

    const-string v4, "showPlmn"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    aput-boolean v4, v3, v2

    iget-object v3, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mShowSpn:[Z

    const-string v4, "showSpn"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    aput-boolean v4, v3, v2

    iput v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSubscription:I

    .end local v2           #subscription:I
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "phone_subscription"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .restart local v2       #subscription:I
    invoke-static {p2}, Lcom/android/internal/widget/CarrierUtils;->getIccCardStateFromIntent(Landroid/content/Intent;)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    .local v1, state:Lcom/android/internal/telephony/IccCard$State;
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v3, v3, v2

    if-eq v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v3, v2

    :cond_2
    iput v2, p0, Lcom/android/internal/widget/CarrierUtils$CarrierInfo;->mSubscription:I

    goto :goto_0
.end method
