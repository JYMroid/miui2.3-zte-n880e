.class Lcom/android/settings/MediaFormat$1;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const-string v4, "path"

    .line 55
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-virtual {v3}, Lcom/android/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, i:Landroid/content/Intent;
    const-string v3, "path"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, path:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "path"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    sget-object v3, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 63
    iget-object v3, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-virtual {v3, v1}, Lcom/android/settings/MediaFormat;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    iget-object v3, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-virtual {v3}, Lcom/android/settings/MediaFormat;->finish()V

    goto :goto_0
.end method
