.class public final Landroid/provider/CallFilter$Settings;
.super Ljava/lang/Object;
.source "CallFilter.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "key DESC"

.field public static final FILTER_INTERUPT_KEY:Ljava/lang/String; = "filter_interupt"

.field public static final FILTER_INTERUPT_VALUE_CDMA:Ljava/lang/String; = "1"

.field public static final FILTER_INTERUPT_VALUE_GSM:Ljava/lang/String; = "2"

.field public static final FILTER_INTERUPT_VALUE_NONE:Ljava/lang/String; = "0"

.field public static final FILTER_METHOD_KEY:Ljava/lang/String; = "filter_method"

.field public static final FILTER_MODE_KEY:Ljava/lang/String; = "filter_mode"

.field public static final FILTER_RECORD_SWITCH_KEY:Ljava/lang/String; = "filter_record_switch"

.field public static final FILTER_RECORD_SWITCH_VALUE_OFF:Ljava/lang/String; = "0"

.field public static final FILTER_RECORD_SWITCH_VALUE_ON:Ljava/lang/String; = "1"

.field public static final FILTER_SWITCH_KEY:Ljava/lang/String; = "filter_switch"

.field public static final FILTER_SWITCH_VALUE_OFF:Ljava/lang/String; = "0"

.field public static final FILTER_SWITCH_VALUE_ON:Ljava/lang/String; = "1"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://zte.com.cn.callfilter/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallFilter$Settings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
