.class public Lcom/android/launcher2/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$1;,
        Lcom/android/launcher2/CellLayout$CellInfo;,
        Lcom/android/launcher2/CellLayout$LayoutParams;,
        Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    }
.end annotation


# static fields
.field private static final DRAG_OVER_MOVEMENT_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mCellBackground:Lcom/android/launcher2/CellBackground;

.field private final mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private final mCellWidth:I

.field mCellXY:[I

.field private mCurrentOpenedFolder:Lcom/android/launcher2/Folder;

.field private mDisableTouch:Z

.field private mEmptyCellNumber:I

.field private final mFolderHeightAddition:I

.field private final mFolderPaddingTop:I

.field private final mFolderWidthAddition:I

.field private mHCells:I

.field private mHeightGap:I

.field private mInPlaceMovingFrom:I

.field private mInPlaceMovingTo:I

.field private mLastDownOnOccupiedCell:Z

.field private mLastMovement:[I

.field private mLastMovementTime:J

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mMyCachePaint:Landroid/graphics/Paint;

.field private mOccupiedCell:[[Landroid/view/View;

.field private mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

.field private mOpenedFolderPosition:I

.field private final mPaddingLeft:I

.field private final mPaddingRight:I

.field private final mPaddingTop:I

.field private final mRect:Landroid/graphics/Rect;

.field private mTotalCells:I

.field private mVCells:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private final mWidgetCellHeight:I

.field private final mWidgetCellMeasureHeight:I

.field private final mWidgetCellMeasureWidth:I

.field private final mWidgetCellPaddingBottom:I

.field private final mWidgetCellPaddingTop:I

.field private final mWidgetCellWidth:I

.field private mWidthGap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher2/CellLayout;->DRAG_OVER_MOVEMENT_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 81
    new-instance v1, Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {v1}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 83
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mCellXY:[I

    .line 85
    iput-boolean v3, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 95
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mOpenedFolderPosition:I

    .line 105
    iput-boolean v3, p0, Lcom/android/launcher2/CellLayout;->mDisableTouch:Z

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mMyCachePaint:Landroid/graphics/Paint;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 122
    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 123
    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mWidgetCellWidth:I

    .line 124
    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mWidgetCellHeight:I

    .line 125
    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mWidgetCellMeasureWidth:I

    .line 126
    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mWidgetCellMeasureHeight:I

    .line 127
    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mWidgetCellPaddingTop:I

    .line 128
    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mWidgetCellPaddingBottom:I

    .line 129
    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    .line 130
    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    .line 131
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    .line 132
    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mFolderHeightAddition:I

    .line 133
    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mFolderWidthAddition:I

    .line 134
    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mFolderPaddingTop:I

    .line 136
    iput v2, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    .line 137
    iput v2, p0, Lcom/android/launcher2/CellLayout;->mVCells:I

    .line 138
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mVCells:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mTotalCells:I

    .line 140
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mVCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Landroid/view/View;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/view/View;

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    .line 141
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mTotalCells:I

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    .line 143
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 144
    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayout;->setAnimationCacheEnabled(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 147
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 148
    new-instance v1, Lcom/android/launcher2/OnLongClickAgent;

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/launcher2/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;)V

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    .line 150
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method private applyInPlaceMovement(II)V
    .locals 13
    .parameter "from"
    .parameter "to"

    .prologue
    .line 765
    iget v9, p0, Lcom/android/launcher2/CellLayout;->mInPlaceMovingFrom:I

    if-ne p1, v9, :cond_0

    iget v9, p0, Lcom/android/launcher2/CellLayout;->mInPlaceMovingTo:I

    if-ne p2, v9, :cond_0

    .line 822
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v9

    new-array v1, v9, [I

    .line 768
    .local v1, animationDeltaX:[I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v9

    new-array v2, v9, [I

    .line 772
    .local v2, animationDeltaY:[I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    sub-int v4, v9, v10

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_1

    .line 773
    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 774
    .local v8, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v9, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaX:I

    aput v9, v1, v4

    .line 775
    iget v9, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaY:I

    aput v9, v2, v4

    .line 776
    const/4 v9, 0x0

    iput v9, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaX:I

    .line 777
    const/4 v9, 0x0

    iput v9, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaY:I

    .line 772
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 781
    .end local v8           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->getViewPositionMappings(II)Ljava/util/ArrayList;

    move-result-object v7

    .line 783
    .local v7, newMappings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout$ViewPositionMapping;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int v4, v9, v10

    :goto_2
    if-ltz v4, :cond_2

    .line 784
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$ViewPositionMapping;

    .line 785
    .local v6, mapping:Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    iget-object v9, v6, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->cell:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 786
    .restart local v8       #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v9, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iget-object v10, v6, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->position:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget v11, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v12, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    sub-int/2addr v9, v10

    iput v9, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaX:I

    .line 788
    iget v9, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    iget-object v10, v6, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->position:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    iget v11, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v12, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    sub-int/2addr v9, v10

    iput v9, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaY:I

    .line 783
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 793
    .end local v6           #mapping:Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    .end local v8           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    sub-int v4, v9, v10

    :goto_3
    if-ltz v4, :cond_4

    .line 794
    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 795
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 798
    .restart local v8       #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    aget v9, v1, v4

    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaX:I

    if-ne v9, v10, :cond_3

    aget v9, v2, v4

    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaY:I

    if-ne v9, v10, :cond_3

    .line 793
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 804
    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    aget v9, v1, v4

    int-to-float v9, v9

    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaX:I

    int-to-float v10, v10

    aget v11, v2, v4

    int-to-float v11, v11

    iget v12, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaY:I

    int-to-float v12, v12

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 807
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    sget-object v9, Lcom/android/launcher2/CellLayout;->DRAG_OVER_MOVEMENT_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 808
    const-wide/16 v9, 0x12c

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 809
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 810
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 813
    iget v9, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-direct {p0, v9, v10}, Lcom/android/launcher2/CellLayout;->cellToPositionIndex(II)I

    move-result v5

    .line 814
    .local v5, index:I
    sub-int v9, v5, p1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x14

    int-to-long v9, v9

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 815
    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 818
    .end local v0           #animation:Landroid/view/animation/TranslateAnimation;
    .end local v3           #child:Landroid/view/View;
    .end local v5           #index:I
    .end local v8           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_4
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mInPlaceMovingFrom:I

    .line 819
    iput p2, p0, Lcom/android/launcher2/CellLayout;->mInPlaceMovingTo:I

    .line 821
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto/16 :goto_0
.end method

.method private applyInPlaceMovementInDatabase(IILandroid/content/ContentProviderOperation;)[Landroid/content/ContentProviderResult;
    .locals 12
    .parameter "from"
    .parameter "to"
    .parameter "extra"

    .prologue
    .line 826
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 827
    .local v10, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p3, :cond_0

    .line 828
    invoke-virtual {v10, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->getViewPositionMappings(II)Ljava/util/ArrayList;

    move-result-object v9

    .line 834
    .local v9, newMappings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout$ViewPositionMapping;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int v7, v0, v1

    .local v7, i:I
    :goto_0
    if-ltz v7, :cond_1

    .line 835
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout$ViewPositionMapping;

    .line 836
    .local v8, mapping:Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    iget-object v0, v8, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    const-wide/16 v1, -0x64

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v3

    iget-object v5, v8, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->position:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, v8, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->position:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    .end local v8           #mapping:Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->getMoveItemOperation(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 843
    :cond_1
    const/4 v11, 0x0

    .line 846
    .local v11, result:[Landroid/content/ContentProviderResult;
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.launcher2.settings"

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 853
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int v7, v0, v1

    :goto_2
    if-ltz v7, :cond_2

    .line 854
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout$ViewPositionMapping;

    .line 855
    .restart local v8       #mapping:Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    iget-object v0, v8, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->cell:Landroid/view/View;

    iget-object v1, v8, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->position:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 853
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 857
    .end local v8           #mapping:Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    :cond_2
    return-object v11

    .line 849
    :catch_0
    move-exception v0

    goto :goto_1

    .line 848
    :catch_1
    move-exception v0

    goto :goto_1

    .line 847
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private calculateInPlaceMovement(IIII)[I
    .locals 9
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 676
    if-gt p3, v6, :cond_0

    if-gt p4, v6, :cond_0

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v8

    .line 720
    :goto_0
    return-object v4

    .line 681
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mCellXY:[I

    .line 682
    .local v1, cellXY:[I
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher2/CellLayout;->pointToCell(II[I)V

    .line 685
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v5, v1, v7

    aget-object v4, v4, v5

    aget v5, v1, v6

    aget-object v0, v4, v5

    .line 686
    .local v0, cell:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 687
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 688
    .local v3, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-gt v4, v6, :cond_2

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-le v4, v6, :cond_3

    :cond_2
    move-object v4, v8

    .line 689
    goto :goto_0

    .line 693
    .end local v3           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_3
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 694
    .local v2, movement:[I
    aget v4, v1, v7

    aget v5, v1, v6

    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/CellLayout;->cellToPositionIndex(II)I

    move-result v4

    aput v4, v2, v7

    .line 697
    aget v4, v2, v7

    aput v4, v2, v6

    .line 698
    :goto_1
    aget v4, v2, v6

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mTotalCells:I

    if-ge v4, v5, :cond_4

    .line 699
    aget v4, v2, v6

    invoke-direct {p0, v4, v1}, Lcom/android/launcher2/CellLayout;->positionIndexToCell(I[I)V

    .line 700
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v5, v1, v7

    aget-object v4, v4, v5

    aget v5, v1, v6

    aget-object v4, v4, v5

    if-nez v4, :cond_7

    .line 707
    :cond_4
    aget v4, v2, v6

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mTotalCells:I

    if-ne v4, v5, :cond_5

    .line 708
    aget v4, v2, v7

    sub-int/2addr v4, v6

    aput v4, v2, v6

    .line 709
    :goto_2
    aget v4, v2, v6

    if-ltz v4, :cond_5

    .line 710
    aget v4, v2, v6

    invoke-direct {p0, v4, v1}, Lcom/android/launcher2/CellLayout;->positionIndexToCell(I[I)V

    .line 711
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v5, v1, v7

    aget-object v4, v4, v5

    aget v5, v1, v6

    aget-object v4, v4, v5

    if-nez v4, :cond_8

    .line 716
    :cond_5
    aget v4, v2, v6

    if-gez v4, :cond_6

    .line 717
    aget v4, v2, v7

    aput v4, v2, v6

    :cond_6
    move-object v4, v2

    .line 720
    goto :goto_0

    .line 701
    :cond_7
    aget v4, v2, v6

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v6

    goto :goto_1

    .line 712
    :cond_8
    aget v4, v2, v6

    sub-int/2addr v4, v6

    aput v4, v2, v6

    goto :goto_2
.end method

.method private cellToPositionIndex(II)I
    .locals 1
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 880
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    return v0
.end method

.method private getViewPositionMappings(II)Ljava/util/ArrayList;
    .locals 10
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/CellLayout$ViewPositionMapping;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 729
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout$ViewPositionMapping;>;"
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mCellXY:[I

    .line 734
    .local v5, sourceXY:[I
    if-ge p1, p2, :cond_2

    move v1, v9

    .line 735
    .local v1, delta:I
    :goto_0
    move v6, p2

    .line 736
    .local v6, target:I
    move v4, v6

    .line 737
    .local v4, source:I
    :goto_1
    if-eq v6, p1, :cond_3

    .line 738
    new-instance v0, Lcom/android/launcher2/CellLayout$ViewPositionMapping;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v7}, Lcom/android/launcher2/CellLayout$ViewPositionMapping;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$1;)V

    .line 741
    .local v0, current:Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, v0, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->position:[I

    .line 742
    iget-object v7, v0, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->position:[I

    invoke-direct {p0, v6, v7}, Lcom/android/launcher2/CellLayout;->positionIndexToCell(I[I)V

    .line 744
    :cond_0
    if-eq v4, p1, :cond_1

    .line 745
    sub-int/2addr v4, v1

    .line 748
    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/CellLayout;->positionIndexToCell(I[I)V

    .line 749
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    const/4 v8, 0x0

    aget v8, v5, v8

    aget-object v7, v7, v8

    aget v8, v5, v9

    aget-object v7, v7, v8

    iput-object v7, v0, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->cell:Landroid/view/View;

    .line 752
    iget-object v7, v0, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->cell:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 753
    .local v2, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v7, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v7, v9, :cond_0

    iget v7, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v7, v9, :cond_0

    .line 758
    .end local v2           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    move v6, v4

    goto :goto_1

    .line 734
    .end local v0           #current:Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    .end local v1           #delta:I
    .end local v4           #source:I
    .end local v6           #target:I
    :cond_2
    const/4 v7, -0x1

    move v1, v7

    goto :goto_0

    .line 761
    .restart local v1       #delta:I
    .restart local v4       #source:I
    .restart local v6       #target:I
    :cond_3
    return-object v3
.end method

.method private onRemoveViews(II)V
    .locals 5
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1084
    if-gez p1, :cond_3

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1085
    .end local p2
    .local v1, count:I
    :goto_1
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_2

    .line 1086
    add-int v3, p1, p2

    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1087
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Lcom/android/launcher2/Folder;

    if-nez v3, :cond_1

    .line 1088
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1089
    .local v2, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/launcher2/CellLayout;->updateCellOccupiedMarks(Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .end local v2           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    move v1, p2

    .line 1091
    .end local p2
    .restart local v1       #count:I
    goto :goto_1

    .line 1092
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .restart local p2
    :cond_2
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mOpenedFolderPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1093
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/CellLayout;->mOpenedFolderPosition:I

    goto :goto_0

    :cond_3
    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_1
.end method

.method private positionIndexToCell(I[I)V
    .locals 2
    .parameter "index"
    .parameter "cellXY"

    .prologue
    .line 884
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    rem-int v1, p1, v1

    aput v1, p2, v0

    .line 885
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    div-int v1, p1, v1

    aput v1, p2, v0

    .line 886
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 207
    move-object v0, p3

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object v1, v0

    .line 208
    .local v1, cellParams:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->regenerateId:Z

    .line 210
    instance-of v2, p1, Lcom/android/launcher2/Folder;

    if-nez v2, :cond_0

    .line 211
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/launcher2/CellLayout;->updateCellOccupiedMarks(Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 214
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 215
    instance-of v2, p1, Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/CellLayout;->mOpenedFolderPosition:I

    .line 217
    check-cast p1, Lcom/android/launcher2/Folder;

    .end local p1
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mCurrentOpenedFolder:Lcom/android/launcher2/Folder;

    .line 219
    :cond_1
    return-void
.end method

.method public alignIconsToTop()V
    .locals 12

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getEmptyCellNumber()I

    move-result v0

    if-nez v0, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    .local v8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v6, 0x0

    .local v6, dstV:I
    move v5, v6

    .local v5, dstH:I
    move v10, v6

    .local v10, srcV:I
    move v9, v6

    .line 1108
    .local v9, srcH:I
    const/4 v10, 0x0

    :goto_1
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mVCells:I

    if-ge v10, v0, :cond_8

    .line 1109
    const/4 v9, 0x0

    :goto_2
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    if-ge v9, v0, :cond_7

    .line 1110
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v0, v0, v9

    aget-object v11, v0, v10

    .line 1111
    .local v11, sv:Landroid/view/View;
    instance-of v0, v11, Lcom/android/launcher2/ItemIcon;

    if-eqz v0, :cond_6

    .line 1113
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v0, v0, v5

    aget-object v0, v0, v6

    instance-of v0, v0, Lcom/android/launcher2/ItemIcon;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v0, v0, v5

    aget-object v0, v0, v6

    if-eqz v0, :cond_3

    .line 1114
    add-int/lit8 v5, v5, 0x1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    if-lt v5, v0, :cond_2

    .line 1115
    const/4 v5, 0x0

    .line 1116
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1119
    :cond_3
    if-ne v9, v5, :cond_4

    if-eq v10, v6, :cond_5

    .line 1120
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v0, v0, v5

    aput-object v11, v0, v6

    .line 1121
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v0, v0, v9

    const/4 v1, 0x0

    aput-object v1, v0, v10

    .line 1122
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1123
    .local v7, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput v5, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1124
    iput v6, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1125
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    const-wide/16 v1, -0x64

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->getMoveItemOperation(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    .end local v7           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    if-lt v5, v0, :cond_6

    .line 1132
    const/4 v5, 0x0

    .line 1133
    add-int/lit8 v6, v6, 0x1

    .line 1109
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1108
    .end local v11           #sv:Landroid/view/View;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1138
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1139
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->performHapticFeedback(II)Z

    .line 1142
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.launcher2.settings"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    :goto_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->requestLayout()V

    goto/16 :goto_0

    .line 1145
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1144
    :catch_1
    move-exception v0

    goto :goto_4

    .line 1143
    :catch_2
    move-exception v0

    goto :goto_4
.end method

.method public buildDrawingCache(Z)V
    .locals 0
    .parameter "autoScale"

    .prologue
    .line 1158
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->buildDrawingCache(Z)V

    .line 1159
    return-void
.end method

.method public cancelInPlaceMovement()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 861
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mInPlaceMovingFrom:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mInPlaceMovingTo:I

    if-nez v3, :cond_0

    .line 877
    :goto_0
    return-void

    .line 865
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_1

    .line 866
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 867
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 868
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 869
    .local v2, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaX:I

    .line 870
    iput v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaY:I

    .line 865
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 873
    .end local v0           #child:Landroid/view/View;
    .end local v2           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    iput v5, p0, Lcom/android/launcher2/CellLayout;->mInPlaceMovingFrom:I

    .line 874
    iput v5, p0, Lcom/android/launcher2/CellLayout;->mInPlaceMovingTo:I

    .line 876
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 4

    .prologue
    .line 176
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    invoke-virtual {v3}, Lcom/android/launcher2/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 180
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 181
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 4
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 354
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 355
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 356
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 929
    instance-of v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    return v0
.end method

.method clearCellBackground()V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellBackground:Lcom/android/launcher2/CellBackground;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 625
    return-void
.end method

.method public destroyDrawingCache()V
    .locals 0

    .prologue
    .line 1153
    invoke-super {p0}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 1154
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 201
    return-void
.end method

.method findNearestVacantArea(IIIIZ)[I
    .locals 19
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreOccupied"

    .prologue
    .line 495
    if-nez p5, :cond_0

    mul-int v13, p3, p4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    move v14, v0

    if-le v13, v14, :cond_0

    const/4 v13, 0x0

    .line 530
    :goto_0
    return-object v13

    .line 498
    :cond_0
    const/4 v13, 0x2

    new-array v7, v13, [I

    .line 499
    .local v7, bestXY:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCellXY:[I

    move-object v8, v0

    .line 500
    .local v8, cellXY:[I
    const-wide v5, 0x7fefffffffffffffL

    .line 505
    .local v5, bestDistance:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHCells:I

    move v13, v0

    sub-int v11, v13, p3

    .local v11, x:I
    :goto_1
    if-ltz v11, :cond_5

    .line 506
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mVCells:I

    move v13, v0

    sub-int v12, v13, p4

    .local v12, y:I
    :goto_2
    if-ltz v12, :cond_4

    .line 508
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 509
    const/4 v13, 0x0

    aget v13, v8, v13

    sub-int v13, v13, p1

    int-to-double v13, v13

    const-wide/high16 v15, 0x4000

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    const/4 v15, 0x1

    aget v15, v8, v15

    sub-int v15, v15, p2

    int-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    add-double v9, v13, v15

    .line 510
    .local v9, distance:D
    cmpl-double v13, v9, v5

    if-ltz v13, :cond_2

    .line 506
    :cond_1
    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 515
    :cond_2
    if-nez p5, :cond_3

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->isCellOccupied(IIII)Z

    move-result v13

    if-nez v13, :cond_1

    .line 520
    :cond_3
    move-wide v5, v9

    .line 521
    const/4 v13, 0x0

    aput v11, v7, v13

    .line 522
    const/4 v13, 0x1

    aput v12, v7, v13

    goto :goto_3

    .line 505
    .end local v9           #distance:D
    :cond_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 527
    .end local v12           #y:I
    :cond_5
    const-wide v13, 0x7fefffffffffffffL

    cmpg-double v13, v5, v13

    if-gez v13, :cond_6

    move-object v13, v7

    .line 528
    goto :goto_0

    .line 530
    :cond_6
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 924
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 934
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 162
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mOpenedFolderPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 163
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mOpenedFolderPosition:I

    if-ge p2, v0, :cond_0

    move v0, p2

    .line 171
    :goto_0
    return v0

    .line 166
    :cond_0
    const/4 v0, 0x1

    sub-int v0, p1, v0

    if-ne p2, v0, :cond_1

    .line 167
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mOpenedFolderPosition:I

    goto :goto_0

    .line 169
    :cond_1
    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :cond_2
    move v0, p2

    .line 171
    goto :goto_0
.end method

.method public getEmptyCellNumber()I
    .locals 1

    .prologue
    .line 1098
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    return v0
.end method

.method public getOpenedFolder()Lcom/android/launcher2/Folder;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCurrentOpenedFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method getScreenId()J
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-wide v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    return-wide v0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getWindowAttachCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method insertToNearestVacantArea(IIIIIILandroid/view/View;Lcom/android/launcher2/ItemInfo;)Z
    .locals 14
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "item"
    .parameter "info"

    .prologue
    .line 535
    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p8

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher2/CellLayout;->reserveNearestVacantArea(IIIIIILcom/android/launcher2/ItemInfo;)[I

    move-result-object v13

    .line 536
    .local v13, targetCell:[I
    if-nez v13, :cond_0

    const/4 v3, 0x0

    .line 547
    .end local p1
    :goto_0
    return v3

    .line 538
    .restart local p1
    :cond_0
    const-wide/16 v4, -0x64

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v6

    const/4 v3, 0x0

    aget v8, v13, v3

    const/4 v3, 0x1

    aget v9, v13, v3

    move-object/from16 v3, p8

    invoke-static/range {v3 .. v9}, Lcom/android/launcher2/LauncherModel;->getOperationForDraggingItem(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v11

    .line 541
    .local v11, operationForDraggingItem:Landroid/content/ContentProviderOperation;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v11}, Lcom/android/launcher2/CellLayout;->applyInPlaceMovementInDatabase(IILandroid/content/ContentProviderOperation;)[Landroid/content/ContentProviderResult;

    move-result-object v12

    .line 542
    .local v12, result:[Landroid/content/ContentProviderResult;
    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->id:J

    move-wide v3, v0

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    if-eqz v12, :cond_1

    array-length v3, v12

    if-eqz v3, :cond_1

    .line 543
    const/4 v3, 0x0

    aget-object v3, v12, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    move-wide v0, v3

    move-object/from16 v2, p8

    iput-wide v0, v2, Lcom/android/launcher2/ItemInfo;->id:J

    .line 546
    :cond_1
    move-object v0, p0

    move-object/from16 v1, p7

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 547
    const/4 v3, 0x1

    goto :goto_0
.end method

.method isCellOccupied(IIII)Z
    .locals 4
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 472
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 473
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, p4, :cond_1

    .line 474
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    add-int v3, p1, v0

    aget-object v2, v2, v3

    add-int v3, p2, v1

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 475
    const/4 v2, 0x1

    .line 479
    .end local v1           #j:I
    :goto_2
    return v2

    .line 473
    .restart local v1       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 472
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    .end local v1           #j:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 1038
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    const/4 v1, 0x1

    .line 617
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 618
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->isDragging:Z

    .line 619
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher2/CellLayout;->updateCellOccupiedMarks(Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 620
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mLastMovement:[I

    .line 621
    return-void
.end method

.method onDragOver(IIIILcom/android/launcher2/ItemInfo;)V
    .locals 10
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 629
    iget v3, p5, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 630
    .local v3, spanX:I
    iget v4, p5, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 631
    .local v4, spanY:I
    const/4 v0, 0x1

    if-ne v3, v0, :cond_0

    const/4 v0, 0x1

    if-eq v4, v0, :cond_4

    .line 632
    :cond_0
    sub-int v1, p1, p3

    sub-int v2, p2, p4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIIZ)[I

    move-result-object v6

    .line 633
    .local v6, cellPos:[I
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellBackground:Lcom/android/launcher2/CellBackground;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 634
    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v1, 0x1

    aget v1, v6, v1

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/android/launcher2/CellLayout;->isCellOccupied(IIII)Z

    move-result v9

    .line 635
    .local v9, occupied:Z
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellBackground:Lcom/android/launcher2/CellBackground;

    if-nez v9, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellBackground;->setEnabled(Z)V

    .line 636
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellBackground:Lcom/android/launcher2/CellBackground;

    invoke-virtual {v0}, Lcom/android/launcher2/CellBackground;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 637
    .local v7, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v0, 0x0

    aget v0, v6, v0

    iput v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 638
    const/4 v0, 0x1

    aget v0, v6, v0

    iput v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 639
    if-eqz v9, :cond_3

    .line 640
    const/4 v0, -0x1

    iput v0, p5, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v0, p5, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 645
    :goto_1
    iput v3, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 646
    iput v4, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 647
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellBackground:Lcom/android/launcher2/CellBackground;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v7}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 673
    .end local v6           #cellPos:[I
    .end local v7           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v9           #occupied:Z
    :cond_1
    :goto_2
    return-void

    .line 635
    .restart local v6       #cellPos:[I
    .restart local v9       #occupied:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 642
    .restart local v7       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_3
    const/4 v0, 0x0

    aget v0, v6, v0

    iput v0, p5, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 643
    const/4 v0, 0x1

    aget v0, v6, v0

    iput v0, p5, Lcom/android/launcher2/ItemInfo;->cellY:I

    goto :goto_1

    .line 651
    .end local v6           #cellPos:[I
    .end local v7           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v9           #occupied:Z
    :cond_4
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/launcher2/CellLayout;->calculateInPlaceMovement(IIII)[I

    move-result-object v8

    .line 653
    .local v8, movement:[I
    if-nez v8, :cond_5

    .line 654
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastMovement:[I

    if-nez v0, :cond_6

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher2/CellLayout;->mLastMovementTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->cancelInPlaceMovement()V

    goto :goto_2

    .line 662
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastMovement:[I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastMovement:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    aget v1, v8, v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastMovement:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v1, 0x1

    aget v1, v8, v1

    if-ne v0, v1, :cond_6

    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher2/CellLayout;->mLastMovementTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 665
    const/4 v0, 0x0

    aget v0, v8, v0

    const/4 v1, 0x1

    aget v1, v8, v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->applyInPlaceMovement(II)V

    goto :goto_2

    .line 671
    :cond_6
    iput-object v8, p0, Lcom/android/launcher2/CellLayout;->mLastMovement:[I

    .line 672
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/CellLayout;->mLastMovementTime:J

    goto :goto_2
.end method

.method onDropAborted(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    const/4 v1, 0x0

    .line 602
    if-eqz p1, :cond_0

    .line 603
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 604
    .local v0, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->isDragging:Z

    .line 605
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher2/CellLayout;->updateCellOccupiedMarks(Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 606
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 608
    .end local v0           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method onDropChild(Landroid/view/View;[I)V
    .locals 6
    .parameter "child"
    .parameter "targetXY"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 581
    if-eqz p1, :cond_0

    .line 582
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    .line 583
    .local v0, info:Lcom/android/launcher2/ItemInfo;
    const-wide/16 v2, -0x64

    iput-wide v2, v0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 584
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 585
    aget v2, p2, v4

    iput v2, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 586
    aget v2, p2, v5

    iput v2, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 589
    .local v1, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0, v1, p1, v5}, Lcom/android/launcher2/CellLayout;->updateCellOccupiedMarks(Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 591
    aget v2, p2, v4

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 592
    aget v2, p2, v5

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 593
    iput-boolean v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->isDragging:Z

    .line 594
    iput-boolean v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 595
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 596
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 597
    invoke-virtual {p0, v1, p1, v4}, Lcom/android/launcher2/CellLayout;->updateCellOccupiedMarks(Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 599
    .end local v0           #info:Lcom/android/launcher2/ItemInfo;
    .end local v1           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellBackground;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellBackground:Lcom/android/launcher2/CellBackground;

    .line 156
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellBackground:Lcom/android/launcher2/CellBackground;

    new-instance v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellBackground;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellBackground:Lcom/android/launcher2/CellBackground;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 158
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 234
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    .line 235
    .local v5, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    const/4 v14, 0x0

    .line 237
    .local v14, result:Z
    if-nez v4, :cond_9

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    move-object v10, v0

    .line 239
    .local v10, frame:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mScrollX:I

    move/from16 v18, v0

    add-int v15, v17, v18

    .line 240
    .local v15, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mScrollY:I

    move/from16 v18, v0

    add-int v16, v17, v18

    .line 241
    .local v16, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v8

    .line 243
    .local v8, count:I
    const/4 v9, 0x0

    .line 244
    .local v9, found:Z
    const/16 v17, 0x1

    sub-int v11, v8, v17

    .local v11, i:I
    :goto_0
    if-ltz v11, :cond_1

    .line 245
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 247
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 248
    :cond_0
    invoke-virtual {v7, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 249
    move-object v0, v10

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 250
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 251
    .local v13, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput-object v7, v5, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 252
    move-object v0, v13

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 253
    move-object v0, v13

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 254
    move-object v0, v13

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 255
    move-object v0, v13

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 256
    const/4 v9, 0x1

    .line 262
    .end local v7           #child:Landroid/view/View;
    .end local v13           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    move v0, v9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 264
    if-nez v9, :cond_5

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCellXY:[I

    move-object v6, v0

    .line 266
    .local v6, cellXY:[I
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->pointToCell(II[I)V

    .line 268
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object v1, v5

    iput-object v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 269
    const/16 v17, 0x0

    aget v17, v6, v17

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 270
    const/16 v17, 0x1

    aget v17, v6, v17

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 271
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 272
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 289
    .end local v6           #cellXY:[I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    move-object/from16 v17, v0

    if-eqz v9, :cond_8

    const-wide/16 v18, 0xc8

    :goto_2
    invoke-virtual/range {v17 .. v19}, Lcom/android/launcher2/OnLongClickAgent;->setEditingTimeout(J)V

    .line 300
    .end local v8           #count:I
    .end local v9           #found:Z
    .end local v10           #frame:Landroid/graphics/Rect;
    .end local v11           #i:I
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/OnLongClickAgent;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 301
    const/4 v14, 0x1

    :cond_3
    move/from16 v17, v14

    .line 304
    :goto_4
    return v17

    .line 244
    .restart local v7       #child:Landroid/view/View;
    .restart local v8       #count:I
    .restart local v9       #found:Z
    .restart local v10       #frame:Landroid/graphics/Rect;
    .restart local v11       #i:I
    .restart local v15       #x:I
    .restart local v16       #y:I
    :cond_4
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_0

    .line 275
    .end local v7           #child:Landroid/view/View;
    :cond_5
    move-object v0, v5

    iget-object v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/ItemInfo;

    .line 276
    .local v12, info:Lcom/android/launcher2/ItemInfo;
    if-nez v12, :cond_6

    .line 278
    const/16 v17, 0x0

    goto :goto_4

    .line 282
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object v0, v12

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    move-object v0, v12

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    move-object v0, v12

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    const/16 v17, 0x1

    move/from16 v14, v17

    :goto_5
    goto :goto_1

    :cond_7
    const/16 v17, 0x0

    move/from16 v14, v17

    goto :goto_5

    .line 289
    .end local v12           #info:Lcom/android/launcher2/ItemInfo;
    :cond_8
    const-wide/16 v18, 0x320

    goto :goto_2

    .line 292
    .end local v8           #count:I
    .end local v9           #found:Z
    .end local v10           #frame:Landroid/graphics/Rect;
    .end local v11           #i:I
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_9
    const/16 v17, 0x1

    move v0, v4

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 293
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object v1, v5

    iput-object v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 294
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 295
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 296
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 297
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    goto/16 :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v11

    .line 418
    .local v11, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v11, :cond_1

    .line 419
    invoke-virtual {p0, v12}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 420
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 422
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 424
    .local v13, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v9, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 425
    .local v9, childLeft:I
    iget v10, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 427
    .local v10, childTop:I
    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v9

    iget v1, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 429
    iget-boolean v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 432
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mCellXY:[I

    .line 433
    .local v7, cellXY:[I
    invoke-virtual {p0, v7}, Lcom/android/launcher2/CellLayout;->getLocationOnScreen([I)V

    .line 434
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/2addr v3, v9

    iget v4, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v4, v10

    iget v5, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 418
    .end local v7           #cellXY:[I
    .end local v9           #childLeft:I
    .end local v10           #childTop:I
    .end local v13           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 440
    .end local v8           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 360
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 361
    .local v20, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 363
    .local v21, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 364
    .local v17, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 366
    .local v18, heightSpecSize:I
    if-eqz v20, :cond_0

    if-nez v17, :cond_1

    .line 367
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 370
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHCells:I

    move v4, v0

    const/4 v5, 0x1

    if-gt v4, v5, :cond_5

    const/4 v4, 0x0

    :goto_0
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 375
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mVCells:I

    move v4, v0

    const/4 v5, 0x1

    if-gt v4, v5, :cond_6

    const/4 v4, 0x0

    :goto_1
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v16

    .line 381
    .local v16, count:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 382
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 383
    .local v13, child:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 384
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    instance-of v4, v13, Landroid/appwidget/AppWidgetHostView;

    if-nez v4, :cond_2

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/gadget/GadgetInfo;

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCellBackground:Lcom/android/launcher2/CellBackground;

    move-object v4, v0

    if-ne v13, v4, :cond_8

    .line 386
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidgetCellPaddingTop:I

    move v4, v0

    sub-int v4, v18, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidgetCellPaddingBottom:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mVCells:I

    move v5, v0

    div-int v5, v4, v5

    .line 387
    .local v5, widgetCellHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidgetCellHeight:I

    move v4, v0

    if-le v5, v4, :cond_7

    .line 388
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidgetCellWidth:I

    move v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidgetCellPaddingTop:I

    move v9, v0

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIIIII)V

    .line 393
    .end local v5           #widgetCellHeight:I
    :goto_4
    instance-of v4, v13, Lcom/android/launcher2/Folder;

    if-eqz v4, :cond_3

    .line 394
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mFolderHeightAddition:I

    move v5, v0

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 395
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mFolderPaddingTop:I

    move v5, v0

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 396
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mFolderWidthAddition:I

    move v5, v0

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 397
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mFolderWidthAddition:I

    move v5, v0

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 400
    :cond_3
    iget-boolean v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->regenerateId:Z

    if-eqz v4, :cond_4

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getId()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    invoke-virtual {v13, v4}, Landroid/view/View;->setId(I)V

    .line 402
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->regenerateId:Z

    .line 405
    :cond_4
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    const/high16 v5, 0x4000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 406
    .local v14, childWidthMeasureSpec:I
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    const/high16 v5, 0x4000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 408
    .local v15, childheightMeasureSpec:I
    invoke-virtual {v13, v14, v15}, Landroid/view/View;->measure(II)V

    .line 381
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 370
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v13           #child:Landroid/view/View;
    .end local v14           #childWidthMeasureSpec:I
    .end local v15           #childheightMeasureSpec:I
    .end local v16           #count:I
    .end local v19           #i:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    move v4, v0

    sub-int v4, v21, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHCells:I

    move v6, v0

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHCells:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    div-int/2addr v4, v5

    goto/16 :goto_0

    .line 375
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    move v4, v0

    sub-int v4, v18, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mVCells:I

    move v6, v0

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mVCells:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    div-int/2addr v4, v5

    goto/16 :goto_1

    .line 387
    .restart local v3       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v5       #widgetCellHeight:I
    .restart local v13       #child:Landroid/view/View;
    .restart local v16       #count:I
    .restart local v19       #i:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidgetCellHeight:I

    move v4, v0

    move v5, v4

    goto/16 :goto_3

    .line 390
    .end local v5           #widgetCellHeight:I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    move v12, v0

    move-object v6, v3

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIIIII)V

    goto/16 :goto_4

    .line 411
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v13           #child:Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 412
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDisableTouch:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    invoke-virtual {v0}, Lcom/android/launcher2/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 314
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/OnLongClickAgent;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 317
    const/4 v0, 0x1

    goto :goto_0
.end method

.method pointToCell(II[I)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 337
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    aput v0, p3, v3

    .line 338
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    aput v0, p3, v4

    .line 340
    aget v0, p3, v3

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p3, v3

    .line 341
    aget v0, p3, v4

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mVCells:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p3, v4

    .line 342
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 2

    .prologue
    .line 1067
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->onRemoveViews(II)V

    .line 1068
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1069
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1046
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->onRemoveViews(II)V

    .line 1047
    instance-of v0, p1, Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 1048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mCurrentOpenedFolder:Lcom/android/launcher2/Folder;

    .line 1050
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1051
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1073
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayout;->onRemoveViews(II)V

    .line 1074
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1075
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1055
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->onRemoveViews(II)V

    .line 1056
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1057
    return-void
.end method

.method public removeViews(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1079
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->onRemoveViews(II)V

    .line 1080
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 1081
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1061
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->onRemoveViews(II)V

    .line 1062
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 1063
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 223
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 224
    if-eqz p1, :cond_0

    .line 225
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 226
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 227
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 229
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method reserveNearestVacantArea(IIIIIILcom/android/launcher2/ItemInfo;)[I
    .locals 8
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "info"

    .prologue
    .line 551
    mul-int v0, p5, p6

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 571
    :goto_0
    return-object v0

    .line 553
    :cond_0
    const/4 v7, 0x0

    .line 556
    .local v7, targetCell:[I
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/android/launcher2/CellLayout;->calculateInPlaceMovement(IIII)[I

    move-result-object v6

    .line 557
    .local v6, movement:[I
    if-eqz v6, :cond_2

    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v1, 0x1

    aget v1, v6, v1

    if-eq v0, v1, :cond_2

    .line 558
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mCellXY:[I

    .line 559
    const/4 v0, 0x0

    aget v0, v6, v0

    invoke-direct {p0, v0, v7}, Lcom/android/launcher2/CellLayout;->positionIndexToCell(I[I)V

    .line 560
    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v1, 0x1

    aget v1, v6, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/CellLayout;->applyInPlaceMovementInDatabase(IILandroid/content/ContentProviderOperation;)[Landroid/content/ContentProviderResult;

    .line 567
    :goto_1
    if-eqz v7, :cond_1

    .line 568
    const/4 v0, 0x0

    aget v0, v7, v0

    iput v0, p7, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 569
    const/4 v0, 0x1

    aget v0, v7, v0

    iput v0, p7, Lcom/android/launcher2/ItemInfo;->cellY:I

    :cond_1
    move-object v0, v7

    .line 571
    goto :goto_0

    .line 564
    :cond_2
    sub-int v1, p1, p3

    sub-int v2, p2, p4

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIIZ)[I

    move-result-object v7

    goto :goto_1
.end method

.method setDisableTouch(Z)V
    .locals 0
    .parameter "isDisable"

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mDisableTouch:Z

    .line 309
    return-void
.end method

.method public setEditMode(Z)V
    .locals 1
    .parameter "isEditing"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mMyCachePaint:Landroid/graphics/Paint;

    invoke-static {p0, v0, p1}, Lcom/android/launcher2/Utilities;->setDrawingCacheByFilterBitmapForViewGroup(Landroid/view/ViewGroup;Landroid/graphics/Paint;Z)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mMyCachePaint:Landroid/graphics/Paint;

    .line 196
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/OnLongClickAgent;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 323
    return-void
.end method

.method setScreenId(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iput-wide p1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    .line 188
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v13, ";"

    const-string v12, "."

    const-string v11, ","

    .line 1163
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1164
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1165
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1166
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1168
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    move v5, v0

    :goto_0
    if-lez v5, :cond_6

    .line 1169
    sub-int v0, v5, v9

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1170
    instance-of v6, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_1

    .line 1171
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1172
    const-string v6, "["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1173
    iget-object v6, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1174
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1176
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1168
    :cond_0
    :goto_1
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_0

    .line 1177
    :cond_1
    instance-of v6, v0, Lcom/android/launcher2/ShortcutIcon;

    if-eqz v6, :cond_2

    .line 1178
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 1179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1180
    :cond_2
    instance-of v6, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v6, :cond_5

    .line 1181
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1182
    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1183
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    iget-object v0, v0, Lcom/android/launcher2/UserFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 1184
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ","

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1186
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 1189
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1190
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_4

    .line 1191
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1193
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 1195
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/gadget/GadgetInfo;

    if-eqz v6, :cond_0

    .line 1196
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 1197
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/GadgetInfo;->getGadgetId()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 1201
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1202
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1203
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_7

    .line 1204
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v9

    invoke-virtual {v1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1206
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "home_screen{apps:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widgets:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1208
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1209
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v9, :cond_8

    .line 1210
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1212
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gidgets:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folders:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1214
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateCellOccupiedMarks(Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;Z)V
    .locals 5
    .parameter "params"
    .parameter "cell"
    .parameter "remove"

    .prologue
    const/4 v4, 0x1

    .line 443
    instance-of v2, p2, Lcom/android/launcher2/CellBackground;

    if-nez v2, :cond_4

    .line 444
    iget v2, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v2, v3

    sub-int v0, v2, v4

    .local v0, x:I
    :goto_0
    iget v2, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-lt v0, v2, :cond_4

    .line 445
    iget v2, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v2, v3

    sub-int v1, v2, v4

    .local v1, y:I
    :goto_1
    iget v2, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-lt v1, v2, :cond_3

    .line 446
    if-eqz p3, :cond_1

    .line 451
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-ne p2, v2, :cond_0

    .line 452
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    .line 453
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 445
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 457
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 458
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    .line 460
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v2, v0

    aput-object p2, v2, v1

    goto :goto_2

    .line 444
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 465
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_4
    return-void
.end method

.method public widgetFrameToCell(II)[I
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 916
    add-int/lit8 v2, p1, 0x2

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mWidgetCellMeasureWidth:I

    div-int/2addr v2, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 917
    .local v0, spanX:I
    sub-int v2, p2, v4

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mWidgetCellMeasureHeight:I

    div-int/2addr v2, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 919
    .local v1, spanY:I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    aput v1, v2, v4

    return-object v2
.end method
