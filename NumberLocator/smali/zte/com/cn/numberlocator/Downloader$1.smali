.class Lzte/com/cn/numberlocator/Downloader$1;
.super Landroid/content/BroadcastReceiver;
.source "Downloader.java"


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
    .line 83
    iput-object p1, p0, Lzte/com/cn/numberlocator/Downloader$1;->this$0:Lzte/com/cn/numberlocator/Downloader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, action:Ljava/lang/String;
    const-string v15, "extra_download_id"

    const-wide/16 v16, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 89
    .local v7, downloadId:J
    const-string v15, "NumberLocator"

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/Downloader$1;->this$0:Lzte/com/cn/numberlocator/Downloader;

    move-object v15, v0

    #getter for: Lzte/com/cn/numberlocator/Downloader;->mDownloadId:J
    invoke-static {v15}, Lzte/com/cn/numberlocator/Downloader;->access$000(Lzte/com/cn/numberlocator/Downloader;)J

    move-result-wide v15

    cmp-long v15, v7, v15

    if-eqz v15, :cond_0

    .line 163
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v15, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/Downloader$1;->this$0:Lzte/com/cn/numberlocator/Downloader;

    move-object v15, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object v1, v15

    iput-boolean v0, v1, Lzte/com/cn/numberlocator/Downloader;->mHasRespons:Z

    .line 100
    new-instance v10, Landroid/app/DownloadManager$Query;

    invoke-direct {v10}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 101
    .local v10, query:Landroid/app/DownloadManager$Query;
    const/4 v15, 0x1

    new-array v15, v15, [J

    const/16 v16, 0x0

    aput-wide v7, v15, v16

    invoke-virtual {v10, v15}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/Downloader$1;->this$0:Lzte/com/cn/numberlocator/Downloader;

    move-object v15, v0

    #getter for: Lzte/com/cn/numberlocator/Downloader;->mDm:Landroid/app/DownloadManager;
    invoke-static {v15}, Lzte/com/cn/numberlocator/Downloader;->access$100(Lzte/com/cn/numberlocator/Downloader;)Landroid/app/DownloadManager;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v5

    .line 106
    .local v5, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 108
    const-string v15, "status"

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 109
    .local v6, columnIndex:I
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 110
    .local v13, status:I
    const-string v15, "reason"

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 111
    .local v11, reason:I
    const-string v15, "NumberLocator"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "status="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "reason="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/16 v15, 0x8

    if-ne v15, v13, :cond_3

    .line 118
    const-string v15, "local_uri"

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 119
    .local v14, uriString:Ljava/lang/String;
    const-string v15, "uri"

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 121
    .local v12, remoteUri:Ljava/lang/String;
    const-string v15, "NumberLocator"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "remoteUri ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " localUri="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/Downloader$1;->this$0:Lzte/com/cn/numberlocator/Downloader;

    move-object v15, v0

    iget-object v15, v15, Lzte/com/cn/numberlocator/Downloader;->mHandler:Landroid/os/Handler;

    new-instance v16, Lzte/com/cn/numberlocator/Downloader$1$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lzte/com/cn/numberlocator/Downloader$1$1;-><init>(Lzte/com/cn/numberlocator/Downloader$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v6           #columnIndex:I
    .end local v11           #reason:I
    .end local v12           #remoteUri:Ljava/lang/String;
    .end local v13           #status:I
    .end local v14           #uriString:Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-nez v15, :cond_2

    .line 155
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 162
    .end local v5           #c:Landroid/database/Cursor;
    .end local v10           #query:Landroid/app/DownloadManager$Query;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/Downloader$1;->this$0:Lzte/com/cn/numberlocator/Downloader;

    move-object v15, v0

    #calls: Lzte/com/cn/numberlocator/Downloader;->unregistReceiver()V
    invoke-static {v15}, Lzte/com/cn/numberlocator/Downloader;->access$500(Lzte/com/cn/numberlocator/Downloader;)V

    goto/16 :goto_0

    .line 131
    .restart local v5       #c:Landroid/database/Cursor;
    .restart local v6       #columnIndex:I
    .restart local v10       #query:Landroid/app/DownloadManager$Query;
    .restart local v11       #reason:I
    .restart local v13       #status:I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/Downloader$1;->this$0:Lzte/com/cn/numberlocator/Downloader;

    move-object v15, v0

    #getter for: Lzte/com/cn/numberlocator/Downloader;->mFailedCnt:I
    invoke-static {v15}, Lzte/com/cn/numberlocator/Downloader;->access$300(Lzte/com/cn/numberlocator/Downloader;)I

    move-result v15

    if-nez v15, :cond_1

    .line 133
    const-string v15, "NumberLocator"

    const-string v16, "mFailedCnt +"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/Downloader$1;->this$0:Lzte/com/cn/numberlocator/Downloader;

    move-object v15, v0

    iget-object v15, v15, Lzte/com/cn/numberlocator/Downloader;->mHandler:Landroid/os/Handler;

    new-instance v16, Lzte/com/cn/numberlocator/Downloader$1$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lzte/com/cn/numberlocator/Downloader$1$2;-><init>(Lzte/com/cn/numberlocator/Downloader$1;)V

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/Downloader$1;->this$0:Lzte/com/cn/numberlocator/Downloader;

    move-object v15, v0

    invoke-static {v15}, Lzte/com/cn/numberlocator/Downloader;->access$308(Lzte/com/cn/numberlocator/Downloader;)I

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/numberlocator/Downloader$1;->this$0:Lzte/com/cn/numberlocator/Downloader;

    move-object v15, v0

    #getter for: Lzte/com/cn/numberlocator/Downloader;->mDm:Landroid/app/DownloadManager;
    invoke-static {v15}, Lzte/com/cn/numberlocator/Downloader;->access$100(Lzte/com/cn/numberlocator/Downloader;)Landroid/app/DownloadManager;

    move-result-object v15

    #calls: Lzte/com/cn/numberlocator/Downloader;->removeOneDownload(Landroid/app/DownloadManager;J)V
    invoke-static {v15, v7, v8}, Lzte/com/cn/numberlocator/Downloader;->access$400(Landroid/app/DownloadManager;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 146
    .end local v6           #columnIndex:I
    .end local v11           #reason:I
    .end local v13           #status:I
    :catch_0
    move-exception v15

    move-object v9, v15

    .line 148
    .local v9, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-nez v15, :cond_2

    .line 155
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 153
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    if-eqz v5, :cond_4

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v16

    if-nez v16, :cond_4

    .line 155
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v15
.end method
