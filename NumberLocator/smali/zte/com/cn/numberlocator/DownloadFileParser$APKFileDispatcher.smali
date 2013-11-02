.class public Lzte/com/cn/numberlocator/DownloadFileParser$APKFileDispatcher;
.super Ljava/lang/Object;
.source "DownloadFileParser.java"

# interfaces
.implements Lzte/com/cn/numberlocator/DownloadFileParser$FileDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/numberlocator/DownloadFileParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APKFileDispatcher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Landroid/content/Context;Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;)V
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 391
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 392
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    iget-object v1, p2, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->localUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 396
    return-void
.end method
