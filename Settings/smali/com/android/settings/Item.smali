.class public Lcom/android/settings/Item;
.super Lcom/android/settings/SubItem;
.source "Item.java"


# instance fields
.field private final fItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/SubItem;",
            ">;"
        }
    .end annotation
.end field

.field private fPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "name"
    .parameter "image"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SubItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Item;->fItems:Ljava/util/ArrayList;

    .line 30
    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/Item;->fItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/settings/Item;->fItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/SubItem;

    invoke-virtual {p0}, Lcom/android/settings/SubItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SubItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/SubItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/Item;->fItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/Item;->fItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/settings/Item;->fItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/SubItem;

    invoke-virtual {p0}, Lcom/android/settings/SubItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SubItem;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/Item;->fPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "aValue"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/Item;->fPackageName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public sort()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/Item;->fItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/Item$1;

    invoke-direct {v1, p0}, Lcom/android/settings/Item$1;-><init>(Lcom/android/settings/Item;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    return-void
.end method
