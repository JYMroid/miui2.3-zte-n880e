.class Lzte/com/cn/numberlocator/DownloadFileParser$ConfirmClickListener;
.super Ljava/lang/Object;
.source "DownloadFileParser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/numberlocator/DownloadFileParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmClickListener"
.end annotation


# instance fields
.field fileInfo:Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;

.field final synthetic this$0:Lzte/com/cn/numberlocator/DownloadFileParser;


# direct methods
.method constructor <init>(Lzte/com/cn/numberlocator/DownloadFileParser;Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;)V
    .locals 0
    .parameter
    .parameter "fileInfoToDownload"

    .prologue
    .line 154
    iput-object p1, p0, Lzte/com/cn/numberlocator/DownloadFileParser$ConfirmClickListener;->this$0:Lzte/com/cn/numberlocator/DownloadFileParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p2, p0, Lzte/com/cn/numberlocator/DownloadFileParser$ConfirmClickListener;->fileInfo:Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;

    .line 156
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 159
    new-instance v0, Lzte/com/cn/numberlocator/Downloader;

    iget-object v1, p0, Lzte/com/cn/numberlocator/DownloadFileParser$ConfirmClickListener;->this$0:Lzte/com/cn/numberlocator/DownloadFileParser;

    #getter for: Lzte/com/cn/numberlocator/DownloadFileParser;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lzte/com/cn/numberlocator/DownloadFileParser;->access$000(Lzte/com/cn/numberlocator/DownloadFileParser;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lzte/com/cn/numberlocator/Downloader;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lzte/com/cn/numberlocator/DownloadFileParser$ConfirmClickListener;->fileInfo:Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;

    iget-object v1, v1, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lzte/com/cn/numberlocator/DownloadFileParser$ConfirmClickListener;->fileInfo:Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;

    iget-object v3, v3, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lzte/com/cn/numberlocator/Downloader;->startDownload(Landroid/net/Uri;ZLjava/lang/String;)V

    .line 160
    return-void
.end method
