.class public final enum Lcom/android/internal/widget/CarrierUtils$SimStatus;
.super Ljava/lang/Enum;
.source "CarrierUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/CarrierUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/widget/CarrierUtils$SimStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum CorporateLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum NetworkLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum NetworkSubsetLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum Normal:Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum RuimCorporateLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum RuimHrpdLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum RuimNetwork1Locked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum RuimNetwork2Locked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum RuimRuimLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum RuimServiceProviderLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum ServiceProviderLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum SimIOError:Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum SimLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum SimMissing:Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum SimMissingLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum SimPukLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

.field public static final enum SimSimLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->Normal:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "NetworkLocked"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->NetworkLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "SimMissing"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimMissing:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "SimMissingLocked"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimMissingLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "SimPukLocked"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimPukLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "SimLocked"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "SimIOError"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimIOError:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "NetworkSubsetLocked"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->NetworkSubsetLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "CorporateLocked"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->CorporateLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "ServiceProviderLocked"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->ServiceProviderLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "SimSimLocked"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimSimLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "RuimNetwork1Locked"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimNetwork1Locked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "RuimNetwork2Locked"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimNetwork2Locked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "RuimHrpdLocked"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimHrpdLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "RuimCorporateLocked"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimCorporateLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "RuimServiceProviderLocked"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimServiceProviderLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    new-instance v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const-string v1, "RuimRuimLocked"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/CarrierUtils$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimRuimLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/internal/widget/CarrierUtils$SimStatus;

    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->Normal:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->NetworkLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimMissing:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimMissingLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimPukLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimIOError:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/widget/CarrierUtils$SimStatus;->NetworkSubsetLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/widget/CarrierUtils$SimStatus;->CorporateLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/widget/CarrierUtils$SimStatus;->ServiceProviderLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/widget/CarrierUtils$SimStatus;->SimSimLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimNetwork1Locked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimNetwork2Locked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimHrpdLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimCorporateLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimServiceProviderLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/widget/CarrierUtils$SimStatus;->RuimRuimLocked:Lcom/android/internal/widget/CarrierUtils$SimStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->$VALUES:[Lcom/android/internal/widget/CarrierUtils$SimStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/widget/CarrierUtils$SimStatus;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/widget/CarrierUtils$SimStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/widget/CarrierUtils$SimStatus;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/widget/CarrierUtils$SimStatus;->$VALUES:[Lcom/android/internal/widget/CarrierUtils$SimStatus;

    invoke-virtual {v0}, [Lcom/android/internal/widget/CarrierUtils$SimStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/CarrierUtils$SimStatus;

    return-object v0
.end method
