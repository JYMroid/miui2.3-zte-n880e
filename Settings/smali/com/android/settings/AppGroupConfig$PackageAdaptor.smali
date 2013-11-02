.class Lcom/android/settings/AppGroupConfig$PackageAdaptor;
.super Landroid/widget/BaseAdapter;
.source "AppGroupConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppGroupConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageAdaptor"
.end annotation


# instance fields
.field protected mInstalledPackageInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/AppGroupConfig$PackageItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/AppGroupConfig;


# direct methods
.method public constructor <init>(Lcom/android/settings/AppGroupConfig;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p2, installedPackagesInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iput-object p1, p0, Lcom/android/settings/AppGroupConfig$PackageAdaptor;->this$0:Lcom/android/settings/AppGroupConfig;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 262
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AppGroupConfig$PackageAdaptor;->mInstalledPackages:Ljava/util/List;

    .line 297
    iput-object p2, p0, Lcom/android/settings/AppGroupConfig$PackageAdaptor;->mInstalledPackageInfo:Ljava/util/List;

    .line 298
    return-void
.end method

.method private reloadList()V
    .locals 3

    .prologue
    .line 265
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 266
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/AppGroupConfig$PackageAdaptor$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/AppGroupConfig$PackageAdaptor$1;-><init>(Lcom/android/settings/AppGroupConfig$PackageAdaptor;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 294
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/settings/AppGroupConfig$PackageAdaptor;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/AppGroupConfig$PackageItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/settings/AppGroupConfig$PackageAdaptor;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/AppGroupConfig$PackageItem;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/android/settings/AppGroupConfig$PackageAdaptor;->getItem(I)Lcom/android/settings/AppGroupConfig$PackageItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/settings/AppGroupConfig$PackageAdaptor;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/AppGroupConfig$PackageItem;

    iget-object v0, p0, Lcom/android/settings/AppGroupConfig$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x48

    .line 322
    if-eqz p2, :cond_3

    .line 323
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AppGroupConfig$ViewHolder;

    .line 334
    .local v1, holder:Lcom/android/settings/AppGroupConfig$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/AppGroupConfig$PackageAdaptor;->getItem(I)Lcom/android/settings/AppGroupConfig$PackageItem;

    move-result-object v0

    .line 336
    .local v0, applicationInfo:Lcom/android/settings/AppGroupConfig$PackageItem;
    iget-object v4, v1, Lcom/android/settings/AppGroupConfig$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 337
    iget-object v4, v1, Lcom/android/settings/AppGroupConfig$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/settings/AppGroupConfig$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :cond_0
    iget-object v4, v1, Lcom/android/settings/AppGroupConfig$ViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 340
    iget-object v4, v1, Lcom/android/settings/AppGroupConfig$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    :cond_1
    iget-object v4, v1, Lcom/android/settings/AppGroupConfig$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 343
    iget-object v3, v0, Lcom/android/settings/AppGroupConfig$PackageItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 344
    .local v3, loadIcon:Landroid/graphics/drawable/Drawable;
    iget-object v4, v1, Lcom/android/settings/AppGroupConfig$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    iget-object v4, v1, Lcom/android/settings/AppGroupConfig$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 346
    iget-object v4, v1, Lcom/android/settings/AppGroupConfig$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 347
    iget-object v4, v1, Lcom/android/settings/AppGroupConfig$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 349
    .end local v3           #loadIcon:Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object p2

    .line 325
    .end local v0           #applicationInfo:Lcom/android/settings/AppGroupConfig$PackageItem;
    .end local v1           #holder:Lcom/android/settings/AppGroupConfig$ViewHolder;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/AppGroupConfig$PackageAdaptor;->this$0:Lcom/android/settings/AppGroupConfig;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/android/settings/AppGroupConfig;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 326
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030031

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 327
    new-instance v1, Lcom/android/settings/AppGroupConfig$ViewHolder;

    invoke-direct {v1}, Lcom/android/settings/AppGroupConfig$ViewHolder;-><init>()V

    .line 328
    .restart local v1       #holder:Lcom/android/settings/AppGroupConfig$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 329
    const v4, 0x1020016

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/settings/AppGroupConfig$ViewHolder;->title:Landroid/widget/TextView;

    .line 330
    const v4, 0x1020010

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/settings/AppGroupConfig$ViewHolder;->summary:Landroid/widget/TextView;

    .line 332
    const v4, 0x7f0b0028

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/android/settings/AppGroupConfig$ViewHolder;->icon:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/android/settings/AppGroupConfig$PackageAdaptor;->reloadList()V

    .line 302
    return-void
.end method
