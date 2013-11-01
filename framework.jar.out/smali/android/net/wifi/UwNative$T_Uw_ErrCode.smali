.class public final enum Landroid/net/wifi/UwNative$T_Uw_ErrCode;
.super Ljava/lang/Enum;
.source "UwNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/UwNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "T_Uw_ErrCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/UwNative$T_Uw_ErrCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/UwNative$T_Uw_ErrCode;

.field public static final enum UW_ERR_LOGIN_FAIL_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

.field public static final enum UW_ERR_LOGOUT_FAIL_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

.field public static final enum UW_ERR_NO_REGISTER_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

.field public static final enum UW_ERR_PPP_FAIL_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

.field public static final enum UW_ERR_RE_DEREGISTER_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

.field public static final enum UW_ERR_RE_REGISTER_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

.field public static final enum UW_ERR_TUNNEL_FAIL_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

.field public static final enum UW_ERR_UNKNOWN_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

.field public static final enum UW_SUCCESS_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    const-string v1, "UW_SUCCESS_E"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/UwNative$T_Uw_ErrCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_SUCCESS_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    new-instance v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    const-string v1, "UW_ERR_LOGIN_FAIL_E"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/UwNative$T_Uw_ErrCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_ERR_LOGIN_FAIL_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    new-instance v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    const-string v1, "UW_ERR_RE_REGISTER_E"

    invoke-direct {v0, v1, v5}, Landroid/net/wifi/UwNative$T_Uw_ErrCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_ERR_RE_REGISTER_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    new-instance v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    const-string v1, "UW_ERR_LOGOUT_FAIL_E"

    invoke-direct {v0, v1, v6}, Landroid/net/wifi/UwNative$T_Uw_ErrCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_ERR_LOGOUT_FAIL_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    new-instance v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    const-string v1, "UW_ERR_RE_DEREGISTER_E"

    invoke-direct {v0, v1, v7}, Landroid/net/wifi/UwNative$T_Uw_ErrCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_ERR_RE_DEREGISTER_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    new-instance v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    const-string v1, "UW_ERR_NO_REGISTER_E"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/UwNative$T_Uw_ErrCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_ERR_NO_REGISTER_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    new-instance v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    const-string v1, "UW_ERR_PPP_FAIL_E"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/UwNative$T_Uw_ErrCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_ERR_PPP_FAIL_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    new-instance v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    const-string v1, "UW_ERR_TUNNEL_FAIL_E"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/UwNative$T_Uw_ErrCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_ERR_TUNNEL_FAIL_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    new-instance v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    const-string v1, "UW_ERR_UNKNOWN_E"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/UwNative$T_Uw_ErrCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_ERR_UNKNOWN_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    sget-object v1, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_SUCCESS_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_ERR_LOGIN_FAIL_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_ERR_RE_REGISTER_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_ERR_LOGOUT_FAIL_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_ERR_RE_DEREGISTER_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_ERR_NO_REGISTER_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_ERR_PPP_FAIL_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_ERR_TUNNEL_FAIL_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->UW_ERR_UNKNOWN_E:Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->$VALUES:[Landroid/net/wifi/UwNative$T_Uw_ErrCode;

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

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/UwNative$T_Uw_ErrCode;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    return-object p0
.end method

.method public static values()[Landroid/net/wifi/UwNative$T_Uw_ErrCode;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/wifi/UwNative$T_Uw_ErrCode;->$VALUES:[Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    invoke-virtual {v0}, [Landroid/net/wifi/UwNative$T_Uw_ErrCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/UwNative$T_Uw_ErrCode;

    return-object v0
.end method
