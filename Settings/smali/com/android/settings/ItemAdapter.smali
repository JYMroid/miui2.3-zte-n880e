.class public Lcom/android/settings/ItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/SubItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final fContext:Landroid/content/Context;

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/SubItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/SubItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/SubItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 35
    iput-object p3, p0, Lcom/android/settings/ItemAdapter;->items:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/android/settings/ItemAdapter;->fContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v12, 0x8

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 41
    move-object v6, p2

    .line 42
    .local v6, v:Landroid/view/View;
    if-nez v6, :cond_0

    .line 43
    iget-object v8, p0, Lcom/android/settings/ItemAdapter;->fContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 44
    .local v7, vi:Landroid/view/LayoutInflater;
    const v8, 0x7f030001

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 46
    .end local v7           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v8, p0, Lcom/android/settings/ItemAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SubItem;

    .line 47
    .local v4, o:Lcom/android/settings/SubItem;
    invoke-virtual {v6, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    if-eqz v4, :cond_3

    .line 49
    const v8, 0x7f0b0001

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 50
    .local v5, tv:Landroid/widget/TextView;
    const v8, 0x7f0b0002

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 51
    .local v2, count_view:Landroid/widget/TextView;
    const/high16 v8, 0x7f0b

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 52
    .local v3, iv:Landroid/widget/ImageView;
    if-eqz v5, :cond_1

    .line 53
    invoke-virtual {v4}, Lcom/android/settings/SubItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_1
    if-eqz v2, :cond_2

    .line 56
    instance-of v8, v4, Lcom/android/settings/Item;

    if-eqz v8, :cond_5

    .line 57
    move-object v0, v4

    check-cast v0, Lcom/android/settings/Item;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/settings/Item;->getItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 58
    .local v1, cnt:I
    if-le v1, v10, :cond_4

    .line 59
    iget-object v8, p0, Lcom/android/settings/ItemAdapter;->fContext:Landroid/content/Context;

    const v9, 0x7f08055e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    .end local v1           #cnt:I
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 67
    invoke-virtual {v4}, Lcom/android/settings/SubItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .end local v2           #count_view:Landroid/widget/TextView;
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_3
    return-object v6

    .line 62
    .restart local v1       #cnt:I
    .restart local v2       #count_view:Landroid/widget/TextView;
    .restart local v3       #iv:Landroid/widget/ImageView;
    .restart local v5       #tv:Landroid/widget/TextView;
    :cond_4
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 64
    .end local v1           #cnt:I
    :cond_5
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
