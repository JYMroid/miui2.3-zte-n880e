.class public final enum Landroid/net/wifi/UwNative$T_Uw_Api_State;
.super Ljava/lang/Enum;
.source "UwNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/UwNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "T_Uw_Api_State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/UwNative$T_Uw_Api_State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/UwNative$T_Uw_Api_State;

.field public static final enum UW_API_STATE_IDLE:Landroid/net/wifi/UwNative$T_Uw_Api_State;

.field public static final enum UW_API_STATE_NUM:Landroid/net/wifi/UwNative$T_Uw_Api_State;

.field public static final enum UW_API_STATE_REGISTERED:Landroid/net/wifi/UwNative$T_Uw_Api_State;

.field public static final enum UW_API_STATE_TUNL_SETTING:Landroid/net/wifi/UwNative$T_Uw_Api_State;

.field public static final enum UW_API_STATE_TUNL_SET_UP:Landroid/net/wifi/UwNative$T_Uw_Api_State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/net/wifi/UwNative$T_Uw_Api_State;

    const-string v1, "UW_API_STATE_IDLE"

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/UwNative$T_Uw_Api_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_Api_State;->UW_API_STATE_IDLE:Landroid/net/wifi/UwNative$T_Uw_Api_State;

    new-instance v0, Landroid/net/wifi/UwNative$T_Uw_Api_State;

    const-string v1, "UW_API_STATE_REGISTERED"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/UwNative$T_Uw_Api_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_Api_State;->UW_API_STATE_REGISTERED:Landroid/net/wifi/UwNative$T_Uw_Api_State;

    new-instance v0, Landroid/net/wifi/UwNative$T_Uw_Api_State;

    const-string v1, "UW_API_STATE_TUNL_SET_UP"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/UwNative$T_Uw_Api_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_Api_State;->UW_API_STATE_TUNL_SET_UP:Landroid/net/wifi/UwNative$T_Uw_Api_State;

    new-instance v0, Landroid/net/wifi/UwNative$T_Uw_Api_State;

    const-string v1, "UW_API_STATE_TUNL_SETTING"

    invoke-direct {v0, v1, v5}, Landroid/net/wifi/UwNative$T_Uw_Api_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_Api_State;->UW_API_STATE_TUNL_SETTING:Landroid/net/wifi/UwNative$T_Uw_Api_State;

    new-instance v0, Landroid/net/wifi/UwNative$T_Uw_Api_State;

    const-string v1, "UW_API_STATE_NUM"

    invoke-direct {v0, v1, v6}, Landroid/net/wifi/UwNative$T_Uw_Api_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_Api_State;->UW_API_STATE_NUM:Landroid/net/wifi/UwNative$T_Uw_Api_State;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/wifi/UwNative$T_Uw_Api_State;

    sget-object v1, Landroid/net/wifi/UwNative$T_Uw_Api_State;->UW_API_STATE_IDLE:Landroid/net/wifi/UwNative$T_Uw_Api_State;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/UwNative$T_Uw_Api_State;->UW_API_STATE_REGISTERED:Landroid/net/wifi/UwNative$T_Uw_Api_State;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/UwNative$T_Uw_Api_State;->UW_API_STATE_TUNL_SET_UP:Landroid/net/wifi/UwNative$T_Uw_Api_State;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/UwNative$T_Uw_Api_State;->UW_API_STATE_TUNL_SETTING:Landroid/net/wifi/UwNative$T_Uw_Api_State;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/wifi/UwNative$T_Uw_Api_State;->UW_API_STATE_NUM:Landroid/net/wifi/UwNative$T_Uw_Api_State;

    aput-object v1, v0, v6

    sput-object v0, Landroid/net/wifi/UwNative$T_Uw_Api_State;->$VALUES:[Landroid/net/wifi/UwNative$T_Uw_Api_State;

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

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/UwNative$T_Uw_Api_State;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/net/wifi/UwNative$T_Uw_Api_State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/wifi/UwNative$T_Uw_Api_State;

    return-object p0
.end method

.method public static values()[Landroid/net/wifi/UwNative$T_Uw_Api_State;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/wifi/UwNative$T_Uw_Api_State;->$VALUES:[Landroid/net/wifi/UwNative$T_Uw_Api_State;

    invoke-virtual {v0}, [Landroid/net/wifi/UwNative$T_Uw_Api_State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/UwNative$T_Uw_Api_State;

    return-object v0
.end method
