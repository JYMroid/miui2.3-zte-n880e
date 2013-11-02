.class public Lcom/android/systemui/toggles/ToggleArrangement;
.super Landroid/app/Activity;
.source "ToggleArrangement.java"

# interfaces
.implements Landroid/widget/SortableListView$OnOrderChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;

.field private mFixedDividerPosition:I

.field private mListView:Landroid/widget/SortableListView;

.field private mToggleIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mToggleManager:Lcom/android/systemui/toggles/ToggleManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    .line 130
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/toggles/ToggleArrangement;)Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mAdapter:Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/toggles/ToggleArrangement;)Lcom/android/systemui/toggles/ToggleManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/toggles/ToggleArrangement;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/toggles/ToggleArrangement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mFixedDividerPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/toggles/ToggleArrangement;)Landroid/widget/SortableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    return-object v0
.end method


# virtual methods
.method public OnOrderChanged(II)V
    .locals 6
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v4, 0x1

    .line 110
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 111
    .local v1, toggle:I
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 118
    :goto_0
    iget v2, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mFixedDividerPosition:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mFixedDividerPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mFixedDividerPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, -0x1

    move v0, v2

    .line 122
    .local v0, delta:I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mFixedDividerPosition:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mFixedDividerPosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mFixedDividerPosition:I

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 126
    .end local v0           #delta:I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/android/systemui/toggles/ToggleManager;->setUserSelectedToggleOrder(Ljava/util/ArrayList;)V

    .line 127
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mAdapter:Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->notifyDataSetChanged()V

    .line 128
    return-void

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v0, v4

    .line 120
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Lcom/android/systemui/toggles/ToggleManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/toggles/ToggleManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    .line 37
    invoke-static {p0}, Lcom/android/systemui/toggles/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    .line 38
    invoke-static {p0}, Lcom/android/systemui/toggles/ToggleManager;->getDividerFixedPosition(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mFixedDividerPosition:I

    .line 40
    new-instance v0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;-><init>(Lcom/android/systemui/toggles/ToggleArrangement;Lcom/android/systemui/toggles/ToggleArrangement$1;)V

    iput-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mAdapter:Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    new-instance v1, Lcom/android/systemui/toggles/ToggleArrangement$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/toggles/ToggleArrangement$1;-><init>(Lcom/android/systemui/toggles/ToggleArrangement;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/toggles/ToggleManager;->setOnToggleChangedListener(Lcom/android/systemui/toggles/ToggleManager$OnToggleChangedListener;)V

    .line 49
    new-instance v0, Landroid/widget/SortableListView;

    invoke-direct {v0, p0}, Landroid/widget/SortableListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setDividerHeight(I)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/toggles/ToggleArrangement;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mAdapter:Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    invoke-virtual {v0, p0}, Landroid/widget/SortableListView;->setOnOrderChangedListener(Landroid/widget/SortableListView$OnOrderChangedListener;)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    new-instance v1, Lcom/android/systemui/toggles/ToggleArrangement$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/toggles/ToggleArrangement$2;-><init>(Lcom/android/systemui/toggles/ToggleArrangement;)V

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    new-instance v1, Lcom/android/systemui/toggles/ToggleArrangement$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/toggles/ToggleArrangement$3;-><init>(Lcom/android/systemui/toggles/ToggleArrangement;)V

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 77
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 95
    const v1, 0x7f0a003b

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 96
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x7f020016

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 97
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    invoke-virtual {v0}, Lcom/android/systemui/toggles/ToggleManager;->onDestroy()V

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 83
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/systemui/toggles/ToggleManager;->setUserSelectedToggleOrder(Ljava/util/ArrayList;)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mAdapter:Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->notifyDataSetChanged()V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 87
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    invoke-virtual {v0}, Lcom/android/systemui/toggles/ToggleManager;->refreshAll()V

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 91
    return-void
.end method
