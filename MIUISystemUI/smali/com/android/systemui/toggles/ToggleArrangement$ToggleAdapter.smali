.class Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;
.super Landroid/widget/BaseAdapter;
.source "ToggleArrangement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/toggles/ToggleArrangement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToggleAdapter"
.end annotation


# instance fields
.field private mDivider:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/toggles/ToggleArrangement;


# direct methods
.method private constructor <init>(Lcom/android/systemui/toggles/ToggleArrangement;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/toggles/ToggleArrangement;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/toggles/ToggleArrangement;Lcom/android/systemui/toggles/ToggleArrangement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;-><init>(Lcom/android/systemui/toggles/ToggleArrangement;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/toggles/ToggleArrangement;

    #getter for: Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/toggles/ToggleArrangement;->access$300(Lcom/android/systemui/toggles/ToggleArrangement;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/toggles/ToggleArrangement;

    #getter for: Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/toggles/ToggleArrangement;->access$300(Lcom/android/systemui/toggles/ToggleArrangement;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/toggles/ToggleArrangement;

    #getter for: Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/toggles/ToggleArrangement;->access$300(Lcom/android/systemui/toggles/ToggleArrangement;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

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
    const/4 v7, 0x0

    .line 150
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/toggles/ToggleArrangement;

    #getter for: Lcom/android/systemui/toggles/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/toggles/ToggleArrangement;->access$300(Lcom/android/systemui/toggles/ToggleArrangement;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 151
    .local v0, id:I
    if-nez v0, :cond_2

    .line 152
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    if-nez v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/toggles/ToggleArrangement;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 154
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030007

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    .line 155
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/toggles/ToggleArrangement;

    #getter for: Lcom/android/systemui/toggles/ToggleArrangement;->mFixedDividerPosition:I
    invoke-static {v2}, Lcom/android/systemui/toggles/ToggleArrangement;->access$400(Lcom/android/systemui/toggles/ToggleArrangement;)I

    move-result v2

    if-nez v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/toggles/ToggleArrangement;

    #getter for: Lcom/android/systemui/toggles/ToggleArrangement;->mListView:Landroid/widget/SortableListView;
    invoke-static {v3}, Lcom/android/systemui/toggles/ToggleArrangement;->access$500(Lcom/android/systemui/toggles/ToggleArrangement;)Landroid/widget/SortableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SortableListView;->getListenerForStartingSort()Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    .line 179
    .end local p0
    :goto_1
    return-object v2

    .line 159
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    const v3, 0x7f0c0020

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/toggles/ToggleArrangement;

    const v4, 0x7f0a0039

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/toggles/ToggleArrangement;

    #getter for: Lcom/android/systemui/toggles/ToggleArrangement;->mFixedDividerPosition:I
    invoke-static {v6}, Lcom/android/systemui/toggles/ToggleArrangement;->access$400(Lcom/android/systemui/toggles/ToggleArrangement;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/toggles/ToggleArrangement;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    if-ne p2, v2, :cond_3

    .line 167
    const/4 p2, 0x0

    .line 169
    :cond_3
    if-nez p2, :cond_4

    .line 170
    iget-object v2, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/toggles/ToggleArrangement;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 171
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 172
    const v2, 0x7f0c0023

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/toggles/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/toggles/ToggleArrangement;

    #getter for: Lcom/android/systemui/toggles/ToggleArrangement;->mListView:Landroid/widget/SortableListView;
    invoke-static {v3}, Lcom/android/systemui/toggles/ToggleArrangement;->access$500(Lcom/android/systemui/toggles/ToggleArrangement;)Landroid/widget/SortableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SortableListView;->getListenerForStartingSort()Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_4
    const v2, 0x7f0c0022

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/systemui/toggles/ToggleManager;->getName(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 177
    const v2, 0x7f0c0021

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/systemui/toggles/ToggleManager;->getImage(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v2, p2

    .line 179
    goto :goto_1
.end method
