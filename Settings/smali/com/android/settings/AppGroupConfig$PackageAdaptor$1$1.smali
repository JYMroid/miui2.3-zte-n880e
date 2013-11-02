.class Lcom/android/settings/AppGroupConfig$PackageAdaptor$1$1;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppGroupConfig$PackageAdaptor$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/AppGroupConfig$PackageAdaptor$1;

.field final synthetic val$item:Lcom/android/settings/AppGroupConfig$PackageItem;


# direct methods
.method constructor <init>(Lcom/android/settings/AppGroupConfig$PackageAdaptor$1;Lcom/android/settings/AppGroupConfig$PackageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/settings/AppGroupConfig$PackageAdaptor$1$1;->this$2:Lcom/android/settings/AppGroupConfig$PackageAdaptor$1;

    iput-object p2, p0, Lcom/android/settings/AppGroupConfig$PackageAdaptor$1$1;->val$item:Lcom/android/settings/AppGroupConfig$PackageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/settings/AppGroupConfig$PackageAdaptor$1$1;->this$2:Lcom/android/settings/AppGroupConfig$PackageAdaptor$1;

    iget-object v1, v1, Lcom/android/settings/AppGroupConfig$PackageAdaptor$1;->this$1:Lcom/android/settings/AppGroupConfig$PackageAdaptor;

    iget-object v1, v1, Lcom/android/settings/AppGroupConfig$PackageAdaptor;->mInstalledPackages:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/AppGroupConfig$PackageAdaptor$1$1;->val$item:Lcom/android/settings/AppGroupConfig$PackageItem;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 283
    .local v0, index:I
    if-gez v0, :cond_0

    .line 284
    neg-int v1, v0

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 285
    iget-object v1, p0, Lcom/android/settings/AppGroupConfig$PackageAdaptor$1$1;->this$2:Lcom/android/settings/AppGroupConfig$PackageAdaptor$1;

    iget-object v1, v1, Lcom/android/settings/AppGroupConfig$PackageAdaptor$1;->this$1:Lcom/android/settings/AppGroupConfig$PackageAdaptor;

    iget-object v1, v1, Lcom/android/settings/AppGroupConfig$PackageAdaptor;->mInstalledPackages:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/AppGroupConfig$PackageAdaptor$1$1;->val$item:Lcom/android/settings/AppGroupConfig$PackageItem;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AppGroupConfig$PackageAdaptor$1$1;->this$2:Lcom/android/settings/AppGroupConfig$PackageAdaptor$1;

    iget-object v1, v1, Lcom/android/settings/AppGroupConfig$PackageAdaptor$1;->this$1:Lcom/android/settings/AppGroupConfig$PackageAdaptor;

    invoke-virtual {v1}, Lcom/android/settings/AppGroupConfig$PackageAdaptor;->notifyDataSetChanged()V

    .line 288
    return-void
.end method
