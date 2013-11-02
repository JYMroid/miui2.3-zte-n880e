.class Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;
.super Ljava/lang/Object;
.source "DownloadFileParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/numberlocator/DownloadFileParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field localUrl:Ljava/lang/String;

.field mDispatcher:Lzte/com/cn/numberlocator/DownloadFileParser$FileDispatcher;

.field name:Ljava/lang/String;

.field size:Ljava/lang/String;

.field type:I

.field url:Ljava/lang/String;

.field version:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzte/com/cn/numberlocator/DownloadFileParser$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 348
    invoke-direct {p0}, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .local v0, str:Ljava/lang/StringBuilder;
    const-string v1, "url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v1, p0, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v1, p0, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget v1, p0, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object v1, p0, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget v1, p0, Lzte/com/cn/numberlocator/DownloadFileParser$FileInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
