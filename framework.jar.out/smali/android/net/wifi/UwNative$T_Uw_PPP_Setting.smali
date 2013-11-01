.class public final enum Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;
.super Ljava/lang/Enum;
.source "UwNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/UwNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "T_Uw_PPP_Setting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;

.field public static final enum UW_PPP_CLOSE:Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;

.field public static final enum UW_PPP_OPEN:Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;

    const-string v1, "UW_PPP_OPEN"

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;->UW_PPP_OPEN:Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;

    new-instance v0, Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;

    const-string v1, "UW_PPP_CLOSE"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;->UW_PPP_CLOSE:Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;

    sget-object v1, Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;->UW_PPP_OPEN:Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;->UW_PPP_CLOSE:Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;->$VALUES:[Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;

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

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;

    return-object p0
.end method

.method public static values()[Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;->$VALUES:[Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;

    invoke-virtual {v0}, [Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;

    return-object v0
.end method
