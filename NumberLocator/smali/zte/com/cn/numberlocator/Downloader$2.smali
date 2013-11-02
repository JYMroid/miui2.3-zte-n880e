.class Lzte/com/cn/numberlocator/Downloader$2;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/numberlocator/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/numberlocator/Downloader;


# direct methods
.method constructor <init>(Lzte/com/cn/numberlocator/Downloader;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lzte/com/cn/numberlocator/Downloader$2;->this$0:Lzte/com/cn/numberlocator/Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lzte/com/cn/numberlocator/Downloader$2;->this$0:Lzte/com/cn/numberlocator/Downloader;

    iget-boolean v0, v0, Lzte/com/cn/numberlocator/Downloader;->mHasRespons:Z

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x2

    iget-object v1, p0, Lzte/com/cn/numberlocator/Downloader$2;->this$0:Lzte/com/cn/numberlocator/Downloader;

    iget-object v2, p0, Lzte/com/cn/numberlocator/Downloader$2;->this$0:Lzte/com/cn/numberlocator/Downloader;

    #getter for: Lzte/com/cn/numberlocator/Downloader;->mDownloadId:J
    invoke-static {v2}, Lzte/com/cn/numberlocator/Downloader;->access$000(Lzte/com/cn/numberlocator/Downloader;)J

    move-result-wide v2

    #calls: Lzte/com/cn/numberlocator/Downloader;->getDownloadStatus(J)I
    invoke-static {v1, v2, v3}, Lzte/com/cn/numberlocator/Downloader;->access$600(Lzte/com/cn/numberlocator/Downloader;J)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 272
    iget-object v0, p0, Lzte/com/cn/numberlocator/Downloader$2;->this$0:Lzte/com/cn/numberlocator/Downloader;

    iget-object v0, v0, Lzte/com/cn/numberlocator/Downloader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lzte/com/cn/numberlocator/Downloader$2;->this$0:Lzte/com/cn/numberlocator/Downloader;

    #getter for: Lzte/com/cn/numberlocator/Downloader;->ProgressQuery:Ljava/lang/Runnable;
    invoke-static {v1}, Lzte/com/cn/numberlocator/Downloader;->access$700(Lzte/com/cn/numberlocator/Downloader;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lzte/com/cn/numberlocator/Downloader$2;->this$0:Lzte/com/cn/numberlocator/Downloader;

    #getter for: Lzte/com/cn/numberlocator/Downloader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lzte/com/cn/numberlocator/Downloader;->access$200(Lzte/com/cn/numberlocator/Downloader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060027

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 276
    iget-object v0, p0, Lzte/com/cn/numberlocator/Downloader$2;->this$0:Lzte/com/cn/numberlocator/Downloader;

    #getter for: Lzte/com/cn/numberlocator/Downloader;->mDm:Landroid/app/DownloadManager;
    invoke-static {v0}, Lzte/com/cn/numberlocator/Downloader;->access$100(Lzte/com/cn/numberlocator/Downloader;)Landroid/app/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/numberlocator/Downloader$2;->this$0:Lzte/com/cn/numberlocator/Downloader;

    #getter for: Lzte/com/cn/numberlocator/Downloader;->mDownloadId:J
    invoke-static {v1}, Lzte/com/cn/numberlocator/Downloader;->access$000(Lzte/com/cn/numberlocator/Downloader;)J

    move-result-wide v1

    #calls: Lzte/com/cn/numberlocator/Downloader;->removeOneDownload(Landroid/app/DownloadManager;J)V
    invoke-static {v0, v1, v2}, Lzte/com/cn/numberlocator/Downloader;->access$400(Landroid/app/DownloadManager;J)V

    .line 277
    iget-object v0, p0, Lzte/com/cn/numberlocator/Downloader$2;->this$0:Lzte/com/cn/numberlocator/Downloader;

    #calls: Lzte/com/cn/numberlocator/Downloader;->unregistReceiver()V
    invoke-static {v0}, Lzte/com/cn/numberlocator/Downloader;->access$500(Lzte/com/cn/numberlocator/Downloader;)V

    goto :goto_0
.end method
