.class public Landroid/net/wifi/UwNative;
.super Ljava/lang/Object;
.source "UwNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/UwNative$UWCallBackInterface;,
        Landroid/net/wifi/UwNative$T_Uw_State_Change_Notify;,
        Landroid/net/wifi/UwNative$T_Uw_Logout_Res;,
        Landroid/net/wifi/UwNative$T_Uw_Login_Res;,
        Landroid/net/wifi/UwNative$T_Uw_PPP_Setting;,
        Landroid/net/wifi/UwNative$T_Uw_Api_State;,
        Landroid/net/wifi/UwNative$T_Uw_ErrCode;,
        Landroid/net/wifi/UwNative$T_Uw_Event;
    }
.end annotation


# static fields
.field public static final UW_API_STATE_IDLE:I = 0x0

.field public static final UW_API_STATE_REGISTERED:I = 0x1

.field public static final UW_API_STATE_TUNL_SETTING:I = 0x3

.field public static final UW_API_STATE_TUNL_SET_UP:I = 0x2

.field public static final UW_LENGTH_BSSID:I = 0x40

.field public static final UW_LENGTH_DOMAIN:I = 0x80

.field public static final UW_LENGTH_IP:I = 0x40

.field public static final UW_LENGTH_SSID:I = 0x100

.field public static final UW_NAT_FLAG_KEEP:I = 0x1

.field public static final UW_NAT_FLAG_NO_KEEP:I = 0x0

.field public static final UW_PPP_CLOSE:I = 0x1

.field public static final UW_PPP_OPEN:I = 0x0

.field public static final Uw_ErrCode_LOGIN_FAIL:I = 0x1

.field public static final Uw_ErrCode_LOGOUT_FAIL:I = 0x3

.field public static final Uw_ErrCode_NO_REGISTER:I = 0x5

.field public static final Uw_ErrCode_PPP_FAIL:I = 0x6

.field public static final Uw_ErrCode_RE_DEREGISTER:I = 0x4

.field public static final Uw_ErrCode_RE_REGISTER:I = 0x2

.field public static final Uw_ErrCode_SUCCESS:I = 0x0

.field public static final Uw_ErrCode_TUNNEL_FAIL:I = 0x7

.field public static final Uw_ErrCode_UNKNOWN:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native UwDisconnectNotify()I
.end method

.method public static native UwKeepAlive()I
.end method

.method public static native UwLogin(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native UwLogout()I
.end method

.method public static native UwPPPSetting(I)I
.end method

.method public static native UwRegCallback(Ljava/lang/Object;)I
.end method

.method public static native UwStart()I
.end method

.method public static native UwStop()I
.end method

.method public static native UwWlanUpdateSettings(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
.end method
