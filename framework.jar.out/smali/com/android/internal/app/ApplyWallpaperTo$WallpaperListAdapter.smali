.class final Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApplyWallpaperTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ApplyWallpaperTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WallpaperListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ApplyWallpaperTo;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ApplyWallpaperTo;Landroid/content/Context;[Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "initialIntents"

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->this$0:Lcom/android/internal/app/ApplyWallpaperTo;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v4, "layout_inflater"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->mList:Ljava/util/List;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p3

    if-ge v0, v4, :cond_1

    aget-object v1, p3, v0

    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, lable:Ljava/lang/CharSequence;
    if-nez v2, :cond_0

    const-string v2, "Wallpaper"

    :cond_0
    const-string v4, "DrawIconResourceId"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, resId:I
    iget-object v4, p0, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->mList:Ljava/util/List;

    new-instance v5, Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;

    invoke-direct {v5, p1, v2, v3, v1}, Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;-><init>(Lcom/android/internal/app/ApplyWallpaperTo;Ljava/lang/CharSequence;ILandroid/content/Intent;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #lable:Ljava/lang/CharSequence;
    .end local v3           #resId:I
    :cond_1
    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;)V
    .locals 4
    .parameter "view"
    .parameter "info"

    .prologue
    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, text:Landroid/widget/TextView;
    const v3, 0x1020015

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, text2:Landroid/widget/TextView;
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, icon:Landroid/widget/ImageView;
    iget-object v3, p2, Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p2, Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;

    move-object v0, p0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->getItem(I)Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090052

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, view:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;)V

    return-object v0

    .end local v0           #view:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ApplyWallpaperTo$WallpaperListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;

    iget-object v0, p0, Lcom/android/internal/app/ApplyWallpaperTo$DisplayWallpaperInfo;->origIntent:Landroid/content/Intent;

    goto :goto_0
.end method
