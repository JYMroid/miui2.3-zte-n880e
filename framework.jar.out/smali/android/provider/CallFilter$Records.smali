.class public final Landroid/provider/CallFilter$Records;
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
    name = "Records"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "time DESC"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final TEL:Ljava/lang/String; = "tel"

.field public static final TIME:Ljava/lang/String; = "time"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://zte.com.cn.callfilter/records"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallFilter$Records;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
