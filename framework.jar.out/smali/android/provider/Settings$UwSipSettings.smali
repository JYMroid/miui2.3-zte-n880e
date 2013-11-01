.class public final Landroid/provider/Settings$UwSipSettings;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UwSipSettings"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final KEY_SERVICE_FIELD:Ljava/lang/String; = "service_field"

.field public static final KEY_SERVICE_PORT_ID:Ljava/lang/String; = "service_port_id"

.field public static final KEY_SETTING_ID:Ljava/lang/String; = "_id"

.field public static final KEY_SETTING_NAME:Ljava/lang/String; = "setting_name"

.field public static final KEY_SIP_SERVICE_ADDR:Ljava/lang/String; = "sip_service_addr"

.field public static final KEY_USE_THE_SETTING_ENABLE:Ljava/lang/String; = "use_the_setting_enable"

.field public static final SERVICE_FIELD_COLUMN:I = 0x3

.field public static final SERVICE_PORT_ID_COLUMN:I = 0x4

.field public static final SETTING_NAME_COLUMN:I = 0x1

.field public static final SIP_SERVICE_ADDR_COLUMN:I = 0x2

.field public static final USE_THE_SETTING_ENABLE_COLUMN:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://settings/sipsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$UwSipSettings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
