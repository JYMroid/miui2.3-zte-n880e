.class public Lcom/android/systemui/statusbar/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"


# instance fields
.field private mIconSize:I

.field private mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private sEnableSingleIconMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v1, 0x0

    const v2, 0x7f02001f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 136
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/IconMerger;->sEnableSingleIconMode:Z

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    .line 42
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    const-string v1, "more"

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/IconMerger;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method


# virtual methods
.method public addView(Lcom/android/systemui/statusbar/StatusBarIconView;I)V
    .locals 3
    .parameter "v"
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 48
    if-gez p2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IconMerger;->getChildCount()I

    move-result v0

    sub-int p2, v0, v1

    .line 55
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 56
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IconMerger;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 60
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 62
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/IconMerger;->sEnableSingleIconMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    const/16 v18, 0x0

    move/from16 v12, v18

    .line 63
    .local v12, maxWidth:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/IconMerger;->getChildCount()I

    move-result v5

    .line 67
    .local v5, N:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object v13, v0

    .line 68
    .local v13, moreView:Lcom/android/systemui/statusbar/StatusBarIconView;
    const/4 v9, -0x1

    .line 69
    .local v9, fitRight:I
    move v11, v5

    .line 70
    .local v11, lastIndex:I
    const/16 v18, 0x1

    sub-int v10, v5, v18

    .local v10, i:I
    :goto_1
    if-ltz v10, :cond_3

    .line 71
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 72
    .local v7, child:Landroid/view/View;
    if-ne v7, v13, :cond_2

    .line 73
    move v11, v10

    .line 70
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 62
    .end local v5           #N:I
    .end local v7           #child:Landroid/view/View;
    .end local v9           #fitRight:I
    .end local v10           #i:I
    .end local v11           #lastIndex:I
    .end local v12           #maxWidth:I
    .end local v13           #moreView:Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_1
    sub-int v18, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mPaddingLeft:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v12, v18

    goto :goto_0

    .line 75
    .restart local v5       #N:I
    .restart local v7       #child:Landroid/view/View;
    .restart local v9       #fitRight:I
    .restart local v10       #i:I
    .restart local v11       #lastIndex:I
    .restart local v12       #maxWidth:I
    .restart local v13       #moreView:Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 76
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v9

    .line 82
    .end local v7           #child:Landroid/view/View;
    :cond_3
    const/4 v8, -0x1

    .line 83
    .local v8, fitLeft:I
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v5, :cond_4

    .line 84
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 85
    .restart local v7       #child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 86
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 91
    .end local v7           #child:Landroid/view/View;
    :cond_4
    if-eqz v13, :cond_5

    if-ne v11, v5, :cond_7

    .line 134
    :cond_5
    :goto_3
    return-void

    .line 83
    .restart local v7       #child:Landroid/view/View;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 102
    .end local v7           #child:Landroid/view/View;
    :cond_7
    sub-int v18, v9, v8

    move/from16 v0, v18

    move v1, v12

    if-gt v0, v1, :cond_a

    .line 103
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v5, :cond_8

    .line 104
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 108
    :cond_8
    if-lt v10, v5, :cond_a

    .line 109
    const/16 v18, 0x0

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/StatusBarIconView;->getBottom()I

    move-result v21

    move-object v0, v13

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    goto :goto_3

    .line 103
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 114
    :cond_a
    const/16 v16, 0x0

    .line 115
    .local v16, shift:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/IconMerger;->sEnableSingleIconMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    const/16 v18, 0x0

    move/from16 v6, v18

    .line 116
    .local v6, breakingPoint:I
    :goto_5
    const/4 v15, 0x0

    .line 117
    .local v15, number:I
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v11, :cond_f

    .line 118
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 119
    .local v7, child:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v17

    .line 121
    .local v17, width:I
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibility()I

    move-result v18

    if-nez v18, :cond_d

    add-int v18, v16, v17

    move/from16 v0, v18

    move v1, v6

    if-gt v0, v1, :cond_d

    .line 122
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v18

    add-int v19, v16, v17

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getBottom()I

    move-result v20

    move-object v0, v7

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    .line 123
    add-int v16, v16, v17

    .line 117
    :cond_b
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 115
    .end local v6           #breakingPoint:I
    .end local v7           #child:Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v15           #number:I
    .end local v17           #width:I
    :cond_c
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v18

    sub-int v18, v12, v18

    move/from16 v6, v18

    goto :goto_5

    .line 125
    .restart local v6       #breakingPoint:I
    .restart local v7       #child:Lcom/android/systemui/statusbar/StatusBarIconView;
    .restart local v15       #number:I
    .restart local v17       #width:I
    :cond_d
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 126
    const/16 v18, 0x0

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getBottom()I

    move-result v21

    move-object v0, v7

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    .line 127
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    move v14, v0

    .line 128
    .local v14, n:I
    if-nez v14, :cond_e

    const/16 v18, 0x1

    :goto_8
    add-int v15, v15, v18

    goto :goto_7

    :cond_e
    move/from16 v18, v14

    goto :goto_8

    .line 131
    .end local v7           #child:Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v14           #n:I
    .end local v17           #width:I
    :cond_f
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v18

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v19

    add-int v19, v19, v16

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/StatusBarIconView;->getBottom()I

    move-result v20

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v18, v0

    move v0, v15

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    goto/16 :goto_3
.end method
