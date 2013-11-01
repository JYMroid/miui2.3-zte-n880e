.class public Landroid/net/wifi/WifiModuleInfo;
.super Ljava/lang/Object;
.source "WifiModuleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiModuleInfo$WifiVendor;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiModuleInfo"

.field private static final WIFI_SEP:Ljava/lang/String; = "_"

.field private static final WIFI_TYPE:Ljava/lang/String; = "wifi.chip.type"

.field private static final WIFI_VENDOR_ATH:Ljava/lang/String; = "AR"

.field private static final WIFI_VENDOR_BCM:Ljava/lang/String; = "BCM"


# instance fields
.field private mManufactureId:Landroid/net/wifi/WifiModuleInfo$WifiVendor;

.field private mManufactureInfo:Ljava/lang/String;

.field private mModuleType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-string v3, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Landroid/net/wifi/WifiModuleInfo$WifiVendor;->WIFI_RESERVED:Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    iput-object v2, p0, Landroid/net/wifi/WifiModuleInfo;->mManufactureId:Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    const-string v2, ""

    iput-object v3, p0, Landroid/net/wifi/WifiModuleInfo;->mManufactureInfo:Ljava/lang/String;

    const-string v2, ""

    iput-object v3, p0, Landroid/net/wifi/WifiModuleInfo;->mModuleType:Ljava/lang/String;

    const-string v2, "wifi.chip.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, strWifiType:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, lines:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Landroid/net/wifi/WifiModuleInfo;->mManufactureInfo:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, p0, Landroid/net/wifi/WifiModuleInfo;->mModuleType:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/wifi/WifiModuleInfo;->parseInfo2Id()Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/WifiModuleInfo;->mManufactureId:Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    .end local v0           #lines:[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getManufactureId()Landroid/net/wifi/WifiModuleInfo$WifiVendor;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiModuleInfo;->mManufactureId:Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    return-object v0
.end method

.method public getModuleType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiModuleInfo;->mModuleType:Ljava/lang/String;

    return-object v0
.end method

.method public parseInfo2Id()Landroid/net/wifi/WifiModuleInfo$WifiVendor;
    .locals 3

    .prologue
    sget-object v0, Landroid/net/wifi/WifiModuleInfo$WifiVendor;->WIFI_RESERVED:Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    .local v0, nVendorId:Landroid/net/wifi/WifiModuleInfo$WifiVendor;
    iget-object v1, p0, Landroid/net/wifi/WifiModuleInfo;->mManufactureInfo:Ljava/lang/String;

    const-string v2, "BCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/net/wifi/WifiModuleInfo$WifiVendor;->WIFI_BCM:Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiModuleInfo;->mManufactureInfo:Ljava/lang/String;

    const-string v2, "AR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/net/wifi/WifiModuleInfo$WifiVendor;->WIFI_ATH:Landroid/net/wifi/WifiModuleInfo$WifiVendor;

    goto :goto_0
.end method
