.class Lzte/com/cn/numberlocator/NumberLocatorActivity$ConfirmClickListener;
.super Ljava/lang/Object;
.source "NumberLocatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/numberlocator/NumberLocatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;


# direct methods
.method private constructor <init>(Lzte/com/cn/numberlocator/NumberLocatorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$ConfirmClickListener;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzte/com/cn/numberlocator/NumberLocatorActivity;Lzte/com/cn/numberlocator/NumberLocatorActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lzte/com/cn/numberlocator/NumberLocatorActivity$ConfirmClickListener;-><init>(Lzte/com/cn/numberlocator/NumberLocatorActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 421
    new-instance v0, Lzte/com/cn/numberlocator/Downloader;

    iget-object v1, p0, Lzte/com/cn/numberlocator/NumberLocatorActivity$ConfirmClickListener;->this$0:Lzte/com/cn/numberlocator/NumberLocatorActivity;

    invoke-direct {v0, v1}, Lzte/com/cn/numberlocator/Downloader;-><init>(Landroid/content/Context;)V

    const-string v1, "http://mobile.ztems.com/download/tmpfile/number/access_point.xml"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "AccessPoint.xml"

    invoke-virtual {v0, v1, v2, v3}, Lzte/com/cn/numberlocator/Downloader;->startDownload(Landroid/net/Uri;ZLjava/lang/String;)V

    .line 423
    return-void
.end method
