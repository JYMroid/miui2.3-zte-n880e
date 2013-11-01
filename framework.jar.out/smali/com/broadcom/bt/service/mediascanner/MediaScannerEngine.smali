.class public Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;
.super Ljava/lang/Object;
.source "MediaScannerEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "MediaScannerEngine"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public scanFiles(Ljava/util/ArrayList;Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;)V
    .locals 4
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
    .local p1, fileNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;-><init>(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;Ljava/util/ArrayList;Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;)V

    .local v0, mScannerConnRequest:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;->connect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #mScannerConnRequest:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$MediaScannerConnRequest;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "MediaScannerEngine"

    const-string v3, "Error in scanFiles"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
