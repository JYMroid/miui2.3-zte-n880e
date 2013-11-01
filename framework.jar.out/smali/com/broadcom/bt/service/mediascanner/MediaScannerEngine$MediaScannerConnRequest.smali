.class public Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;
.super Ljava/lang/Object;
.source "MediaScannerEngine.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaScannerConnRequest"
.end annotation


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;

.field private mFilesToScan:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFinished:Z

.field private mNewuris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mScannerConnection:Landroid/media/MediaScannerConnection;

.field final synthetic this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;Ljava/util/ArrayList;Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter "callbackObj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mCallback:Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mNewuris:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mFinished:Z

    iput-object p2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mFilesToScan:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mCallback:Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;

    return-void
.end method

.method private finish()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mFinished:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mScannerConnection:Landroid/media/MediaScannerConnection;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mFinished:Z

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mFilesToScan:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    #getter for: Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$000(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    #getter for: Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$000(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mScannerConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "MediaScannerEngine"

    const-string v2, "Unable to connect media scanner"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->finish()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->finish()V

    return-void
.end method

.method public onMediaScannerConnected()V
    .locals 6

    .prologue
    const-string v5, "MediaScannerEngine"

    const-string v3, "MediaScannerEngine"

    const-string v3, "Connected to media scanner"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mFilesToScan:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, fileName:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mScannerConnection:Landroid/media/MediaScannerConnection;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "MediaScannerEngine"

    const-string v3, "Unable to scan file "

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->finish()V

    goto :goto_0

    .end local v0           #fileName:Ljava/lang/String;
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const-string v4, "MediaScannerEngine"

    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mNewuris:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mFilesToScan:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mFilesToScan:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mNewuris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mCallback:Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mCallback:Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;

    iget-object v2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mFilesToScan:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mNewuris:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v3}, Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;->onResultsAvailable(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V

    const-string v1, "MediaScannerEngine"

    const-string v2, "Disconnected from media scanner"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->finish()V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "MediaScannerEngine"

    const-string v1, "Error running onResultsAvailable"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    move-object v0, v1

    .restart local v0       #t:Ljava/lang/Throwable;
    const-string v1, "MediaScannerEngine"

    const-string v1, "Unable to disconnect media scanner"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
