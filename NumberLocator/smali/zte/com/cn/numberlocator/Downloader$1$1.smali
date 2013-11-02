.class Lzte/com/cn/numberlocator/Downloader$1$1;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/numberlocator/Downloader$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzte/com/cn/numberlocator/Downloader$1;

.field final synthetic val$remoteUri:Ljava/lang/String;

.field final synthetic val$uriString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lzte/com/cn/numberlocator/Downloader$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lzte/com/cn/numberlocator/Downloader$1$1;->this$1:Lzte/com/cn/numberlocator/Downloader$1;

    iput-object p2, p0, Lzte/com/cn/numberlocator/Downloader$1$1;->val$uriString:Ljava/lang/String;

    iput-object p3, p0, Lzte/com/cn/numberlocator/Downloader$1$1;->val$remoteUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 126
    new-instance v0, Lzte/com/cn/numberlocator/DownloadFileParser;

    iget-object v1, p0, Lzte/com/cn/numberlocator/Downloader$1$1;->this$1:Lzte/com/cn/numberlocator/Downloader$1;

    iget-object v1, v1, Lzte/com/cn/numberlocator/Downloader$1;->this$0:Lzte/com/cn/numberlocator/Downloader;

    #getter for: Lzte/com/cn/numberlocator/Downloader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lzte/com/cn/numberlocator/Downloader;->access$200(Lzte/com/cn/numberlocator/Downloader;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/numberlocator/Downloader$1$1;->val$uriString:Ljava/lang/String;

    iget-object v3, p0, Lzte/com/cn/numberlocator/Downloader$1$1;->val$remoteUri:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lzte/com/cn/numberlocator/DownloadFileParser;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v0, parser:Lzte/com/cn/numberlocator/DownloadFileParser;
    invoke-virtual {v0}, Lzte/com/cn/numberlocator/DownloadFileParser;->dispatch()V

    .line 128
    return-void
.end method
