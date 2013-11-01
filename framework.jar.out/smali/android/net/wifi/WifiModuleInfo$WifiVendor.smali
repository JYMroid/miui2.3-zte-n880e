.class public final enum Landroid/net/wifi/WifiModuleInfo$WifiVendor;
.super Ljava/lang/Enum;
.source "WifiModuleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiModuleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WifiVendor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/WifiModuleInfo$WifiVendor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/WifiModuleInfo$WifiVendor;

.field public static final enum WIFI_ATH:Landroid/net/wifi/WifiModuleInfo$WifiVendor;

.field public static final enum WIFI_BCM:Landroid/net/wifi/WifiModuleInfo$WifiVendor;

.field public static final enum WIFI_RESERVED:Landroid/net/wifi/WifiModuleInfo$WifiVendor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    const-string v1, "WIFI_RESERVED"

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiModuleInfo$WifiVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiModuleInfo$WifiVendor;->WIFI_RESERVED:Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    new-instance v0, Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    const-string v1, "WIFI_BCM"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/WifiModuleInfo$WifiVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiModuleInfo$WifiVendor;->WIFI_BCM:Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    new-instance v0, Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    const-string v1, "WIFI_ATH"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/WifiModuleInfo$WifiVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiModuleInfo$WifiVendor;->WIFI_ATH:Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    sget-object v1, Landroid/net/wifi/WifiModuleInfo$WifiVendor;->WIFI_RESERVED:Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/WifiModuleInfo$WifiVendor;->WIFI_BCM:Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/WifiModuleInfo$WifiVendor;->WIFI_ATH:Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    aput-object v1, v0, v4

    sput-object v0, Landroid/net/wifi/WifiModuleInfo$WifiVendor;->$VALUES:[Landroid/net/wifi/WifiModuleInfo$WifiVendor;

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

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiModuleInfo$WifiVendor;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    return-object p0
.end method

.method public static values()[Landroid/net/wifi/WifiModuleInfo$WifiVendor;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/wifi/WifiModuleInfo$WifiVendor;->$VALUES:[Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    invoke-virtual {v0}, [Landroid/net/wifi/WifiModuleInfo$WifiVendor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    return-object v0
.end method
