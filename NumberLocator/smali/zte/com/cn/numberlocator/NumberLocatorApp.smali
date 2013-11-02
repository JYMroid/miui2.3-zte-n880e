.class public Lzte/com/cn/numberlocator/NumberLocatorApp;
.super Landroid/app/Application;
.source "NumberLocatorApp.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NumberLocator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 16
    const-string v0, "NumberLocator"

    const-string v1, "app oncreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lzte/com/cn/numberlocator/NumberLocatorApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lzte/com/cn/numberlocator/Downloader;->cleanDownloadHistory(Landroid/content/Context;)V

    .line 23
    const-string v0, "NumberLocator"

    const-string v1, "on terminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 25
    return-void
.end method
