.class public Lzte/com/cn/numberlocator/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NumberLocator"

.field private static mIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ProgressQuery:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDm:Landroid/app/DownloadManager;

.field private mDownloadId:J

.field private mFailedCnt:I

.field mHandler:Landroid/os/Handler;

.field protected mHasRespons:Z

.field private mNeedToUnregister:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lzte/com/cn/numberlocator/Downloader;->mIdList:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v2, p0, Lzte/com/cn/numberlocator/Downloader;->mFailedCnt:I

    .line 36
    iput-boolean v2, p0, Lzte/com/cn/numberlocator/Downloader;->mNeedToUnregister:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/numberlocator/Downloader;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lzte/com/cn/numberlocator/Downloader$1;

    invoke-direct {v0, p0}, Lzte/com/cn/numberlocator/Downloader$1;-><init>(Lzte/com/cn/numberlocator/Downloader;)V

    iput-object v0, p0, Lzte/com/cn/numberlocator/Downloader;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    iput-boolean v2, p0, Lzte/com/cn/numberlocator/Downloader;->mHasRespons:Z

    .line 264
    new-instance v0, Lzte/com/cn/numberlocator/Downloader$2;

    invoke-direct {v0, p0}, Lzte/com/cn/numberlocator/Downloader$2;-><init>(Lzte/com/cn/numberlocator/Downloader;)V

    iput-object v0, p0, Lzte/com/cn/numberlocator/Downloader;->ProgressQuery:Ljava/lang/Runnable;

    .line 75
    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lzte/com/cn/numberlocator/Downloader;->mDm:Landroid/app/DownloadManager;

    .line 76
    iput-object p1, p0, Lzte/com/cn/numberlocator/Downloader;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lzte/com/cn/numberlocator/Downloader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lzte/com/cn/numberlocator/Downloader;->mHandler:Landroid/os/Handler;

    .line 78
    iput v2, p0, Lzte/com/cn/numberlocator/Downloader;->mFailedCnt:I

    .line 79
    return-void
.end method

.method static synthetic access$000(Lzte/com/cn/numberlocator/Downloader;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget-wide v0, p0, Lzte/com/cn/numberlocator/Downloader;->mDownloadId:J

    return-wide v0
.end method

.method static synthetic access$100(Lzte/com/cn/numberlocator/Downloader;)Landroid/app/DownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lzte/com/cn/numberlocator/Downloader;->mDm:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$200(Lzte/com/cn/numberlocator/Downloader;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lzte/com/cn/numberlocator/Downloader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lzte/com/cn/numberlocator/Downloader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lzte/com/cn/numberlocator/Downloader;->mFailedCnt:I

    return v0
.end method

.method static synthetic access$308(Lzte/com/cn/numberlocator/Downloader;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lzte/com/cn/numberlocator/Downloader;->mFailedCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lzte/com/cn/numberlocator/Downloader;->mFailedCnt:I

    return v0
.end method

.method static synthetic access$400(Landroid/app/DownloadManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lzte/com/cn/numberlocator/Downloader;->removeOneDownload(Landroid/app/DownloadManager;J)V

    return-void
.end method

.method static synthetic access$500(Lzte/com/cn/numberlocator/Downloader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lzte/com/cn/numberlocator/Downloader;->unregistReceiver()V

    return-void
.end method

.method static synthetic access$600(Lzte/com/cn/numberlocator/Downloader;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lzte/com/cn/numberlocator/Downloader;->getDownloadStatus(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lzte/com/cn/numberlocator/Downloader;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lzte/com/cn/numberlocator/Downloader;->ProgressQuery:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static addOneDownload(J)V
    .locals 2
    .parameter "mDownloadId2"

    .prologue
    .line 60
    sget-object v0, Lzte/com/cn/numberlocator/Downloader;->mIdList:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method private checkSDReady()Z
    .locals 5

    .prologue
    .line 190
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, status:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 195
    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    const v0, 0x7f060025

    .line 201
    .local v0, msg:I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lzte/com/cn/numberlocator/Downloader;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f06001e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 207
    const/4 v2, 0x0

    .line 209
    .end local v0           #msg:I
    :goto_1
    return v2

    .line 198
    :cond_0
    const v0, 0x7f060026

    .restart local v0       #msg:I
    goto :goto_0

    .line 209
    .end local v0           #msg:I
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static cleanDownloadHistory(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 42
    const-string v4, "download"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 43
    .local v0, dm:Landroid/app/DownloadManager;
    sget-object v4, Lzte/com/cn/numberlocator/Downloader;->mIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 45
    .local v2, id:J
    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v2, v4, v5

    invoke-virtual {v0, v4}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_0

    .line 47
    .end local v2           #id:J
    :cond_0
    sget-object v4, Lzte/com/cn/numberlocator/Downloader;->mIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 48
    const-string v4, "NumberLocator"

    const-string v5, "clear all downloads"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method private getDownloadStatus(J)I
    .locals 7
    .parameter "id"

    .prologue
    .line 286
    const/16 v4, 0x10

    .line 287
    .local v4, status:I
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 288
    .local v3, query:Landroid/app/DownloadManager$Query;
    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide p1, v5, v6

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 290
    iget-object v5, p0, Lzte/com/cn/numberlocator/Downloader;->mDm:Landroid/app/DownloadManager;

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 293
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 295
    const-string v5, "status"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 296
    .local v1, columnIndex:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 305
    .end local v1           #columnIndex:I
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 307
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 311
    :cond_1
    :goto_0
    return v4

    .line 299
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 301
    .local v2, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 307
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 305
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 307
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v5
.end method

.method private isFolderExists(Ljava/lang/String;)Z
    .locals 3
    .parameter "strFolder"

    .prologue
    const/4 v2, 0x1

    .line 174
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 183
    :goto_0
    return v1

    .line 179
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 183
    goto :goto_0
.end method

.method private static removeOneDownload(Landroid/app/DownloadManager;J)V
    .locals 2
    .parameter "dm"
    .parameter "id"

    .prologue
    .line 53
    sget-object v0, Lzte/com/cn/numberlocator/Downloader;->mIdList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->remove([J)I

    .line 55
    return-void
.end method

.method private unregistReceiver()V
    .locals 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lzte/com/cn/numberlocator/Downloader;->mNeedToUnregister:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lzte/com/cn/numberlocator/Downloader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/numberlocator/Downloader;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/numberlocator/Downloader;->mNeedToUnregister:Z

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 259
    invoke-direct {p0}, Lzte/com/cn/numberlocator/Downloader;->unregistReceiver()V

    .line 260
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 261
    return-void
.end method

.method public startDownload(Landroid/net/Uri;ZLjava/lang/String;)V
    .locals 11
    .parameter "uri"
    .parameter "isUserVisibility"
    .parameter "what"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "NumberLocator"

    .line 215
    const-string v5, "NumberLocator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startDownload uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isUserVisibility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0}, Lzte/com/cn/numberlocator/Downloader;->checkSDReady()Z

    move-result v5

    if-nez v5, :cond_0

    .line 254
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v3, Landroid/app/DownloadManager$Request;

    invoke-direct {v3, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 222
    .local v3, request:Landroid/app/DownloadManager$Request;
    const-string v5, "numberlocator"

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 223
    .local v2, path:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lzte/com/cn/numberlocator/Downloader;->isFolderExists(Ljava/lang/String;)Z

    .line 225
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 227
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 229
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 233
    .local v0, dest:Landroid/net/Uri;
    const-string v5, "NumberLocator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dest uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v3, v0}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 236
    invoke-virtual {v3, v8}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 237
    invoke-virtual {v3, p2}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    .line 238
    iget-object v5, p0, Lzte/com/cn/numberlocator/Downloader;->mContext:Landroid/content/Context;

    const v6, 0x7f060022

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, title:Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 240
    iget-object v5, p0, Lzte/com/cn/numberlocator/Downloader;->mDm:Landroid/app/DownloadManager;

    invoke-virtual {v5, v3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v5

    iput-wide v5, p0, Lzte/com/cn/numberlocator/Downloader;->mDownloadId:J

    .line 241
    iget-wide v5, p0, Lzte/com/cn/numberlocator/Downloader;->mDownloadId:J

    invoke-static {v5, v6}, Lzte/com/cn/numberlocator/Downloader;->addOneDownload(J)V

    .line 242
    iput-boolean v9, p0, Lzte/com/cn/numberlocator/Downloader;->mNeedToUnregister:Z

    .line 243
    iput-boolean v8, p0, Lzte/com/cn/numberlocator/Downloader;->mHasRespons:Z

    .line 244
    iget-object v5, p0, Lzte/com/cn/numberlocator/Downloader;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lzte/com/cn/numberlocator/Downloader;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    if-eqz p2, :cond_2

    .line 248
    const-string v5, "NumberLocator"

    const-string v5, "show toast"

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v5, p0, Lzte/com/cn/numberlocator/Downloader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 252
    :cond_2
    iget-object v5, p0, Lzte/com/cn/numberlocator/Downloader;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lzte/com/cn/numberlocator/Downloader;->ProgressQuery:Ljava/lang/Runnable;

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
