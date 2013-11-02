.class public final Lzte/com/cn/numberlocator/NumberLocator$Locator;
.super Ljava/lang/Object;
.source "NumberLocator.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/numberlocator/NumberLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Locator"
.end annotation


# static fields
.field public static final AREACODE:Ljava/lang/String; = "areacode"

.field public static final CARDTYPE:Ljava/lang/String; = "cardtype"

.field public static final CITYNAME:Ljava/lang/String; = "cityname"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item//vnd.google.location"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir//vnd.google.location"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final PHONENUM:Ljava/lang/String; = "phonenum"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "content://zte.com.cn.providers.numberlocatorprovider/location"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lzte/com/cn/numberlocator/NumberLocator$Locator;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
