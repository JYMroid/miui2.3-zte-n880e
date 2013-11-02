.class Lzte/com/cn/numberlocator/Downloader$1$2;
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


# direct methods
.method constructor <init>(Lzte/com/cn/numberlocator/Downloader$1;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lzte/com/cn/numberlocator/Downloader$1$2;->this$1:Lzte/com/cn/numberlocator/Downloader$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lzte/com/cn/numberlocator/Downloader$1$2;->this$1:Lzte/com/cn/numberlocator/Downloader$1;

    iget-object v0, v0, Lzte/com/cn/numberlocator/Downloader$1;->this$0:Lzte/com/cn/numberlocator/Downloader;

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

    .line 138
    return-void
.end method
