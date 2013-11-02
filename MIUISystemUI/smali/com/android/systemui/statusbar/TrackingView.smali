.class public Lcom/android/systemui/statusbar/TrackingView;
.super Landroid/widget/LinearLayout;
.source "TrackingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui/toggles/ToggleManager$OnToggleChangedListener;
.implements Lcom/android/systemui/toggles/ToggleManager$OnToggleOrderChangedListener;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field mService:Lcom/android/systemui/statusbar/StatusBarService;

.field private mTabs:[Landroid/view/View;

.field mToggleBar:Lmiui/widget/ScreenView;

.field public mToggleIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mToggleWidth:I

.field private mToggles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mTabs:[Landroid/view/View;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggles:Landroid/util/SparseArray;

    .line 56
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarService;

    .end local p1
    iput-object p1, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 57
    return-void
.end method

.method private addToggleToBar(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030006

    iget-object v3, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 197
    .local v0, toggle:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 198
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView;->addView(Landroid/view/View;)V

    .line 202
    if-ltz p1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/TrackingView;->OnToggleChanged(I)V

    .line 207
    return-void
.end method

.method private adjustBlankToggles()V
    .locals 8

    .prologue
    .line 211
    iget v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleWidth:I

    if-nez v5, :cond_0

    .line 213
    iget-object v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 215
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleWidth:I

    .line 218
    iget-object v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 219
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 220
    .local v3, padding:Landroid/graphics/Rect;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 221
    iget v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleWidth:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleWidth:I

    .line 227
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #padding:Landroid/graphics/Rect;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v5}, Lmiui/widget/ScreenView;->getVisibleRange()I

    move-result v4

    .line 228
    .local v4, toggleCountInOneScreenWidth:I
    if-lez v4, :cond_3

    .line 229
    iget-object v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int v2, v5, v4

    .line 230
    .local v2, extraToggleCount:I
    if-nez v2, :cond_1

    const/4 v5, 0x0

    move v0, v5

    .line 233
    .local v0, blankToggleCount:I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v6}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 234
    const/4 v5, -0x1

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/TrackingView;->addToggleToBar(I)V

    goto :goto_0

    .line 230
    .end local v0           #blankToggleCount:I
    :cond_1
    sub-int v5, v4, v2

    move v0, v5

    goto :goto_0

    .line 238
    .restart local v0       #blankToggleCount:I
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v6}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 239
    iget-object v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v6}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lmiui/widget/ScreenView;->removeScreen(I)V

    goto :goto_1

    .line 242
    .end local v0           #blankToggleCount:I
    .end local v2           #extraToggleCount:I
    :cond_3
    return-void
.end method

.method private bindToggles()V
    .locals 4

    .prologue
    .line 177
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v2}, Lmiui/widget/ScreenView;->removeAllScreens()V

    .line 178
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/toggles/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 182
    .local v1, id:I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/TrackingView;->addToggleToBar(I)V

    .line 183
    if-nez v1, :cond_1

    .line 184
    add-int/lit8 v0, v0, 0x1

    .line 188
    .end local v1           #id:I
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 180
    .restart local v1       #id:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v1           #id:I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/TrackingView;->adjustBlankToggles()V

    .line 192
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 193
    return-void
.end method

.method private setupTab(IIZ)V
    .locals 2
    .parameter "id"
    .parameter "index"
    .parameter "selected"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, tab:Landroid/view/View;
    invoke-virtual {v0, p3}, Landroid/view/View;->setSelected(Z)V

    .line 119
    new-instance v1, Lcom/android/systemui/statusbar/TrackingView$1;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/TrackingView$1;-><init>(Lcom/android/systemui/statusbar/TrackingView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mTabs:[Landroid/view/View;

    aput-object v0, v1, p2

    .line 126
    return-void
.end method


# virtual methods
.method public OnToggleChanged(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 166
    .local v0, toggle:Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/toggles/ToggleManager;->getImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public OnToggleOrderChanged()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/TrackingView;->bindToggles()V

    .line 173
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 71
    .local v0, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 78
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 70
    .end local v0           #down:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 73
    .restart local v0       #down:Z
    :pswitch_0
    if-eqz v0, :cond_1

    :cond_1
    move v1, v2

    .line 76
    goto :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->onTrackingViewAttached()V

    .line 85
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/toggles/ToggleManager;->performToggle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    .line 153
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 97
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mInflater:Landroid/view/LayoutInflater;

    .line 101
    const v0, 0x7f0c002b

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/TrackingView;->setupTab(IIZ)V

    .line 102
    const v0, 0x7f0c002c

    invoke-direct {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/TrackingView;->setupTab(IIZ)V

    .line 103
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/toggles/ToggleManager;->setOnToggleChangedListener(Lcom/android/systemui/toggles/ToggleManager$OnToggleChangedListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/toggles/ToggleManager;->setOnToggleOrderChangeListener(Lcom/android/systemui/toggles/ToggleManager$OnToggleOrderChangedListener;)V

    .line 108
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ScreenView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView;->setScreenOffset(I)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView;->setOverScrollRatio(F)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v0, v2}, Lmiui/widget/ScreenView;->setScrollWholeScreen(Z)V

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/TrackingView;->bindToggles()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 61
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedHeight()V

    .line 63
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/TrackingView;->adjustBlankToggles()V

    .line 66
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/toggles/ToggleManager;->startLongClickAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    .line 160
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 90
    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    invoke-virtual {v0}, Lcom/android/systemui/toggles/ToggleManager;->refreshAll()V

    .line 93
    :cond_0
    return-void
.end method

.method public selectTab(II)V
    .locals 6
    .parameter "index"
    .parameter "animationDirection"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mTabs:[Landroid/view/View;

    array-length v1, v1

    sub-int v0, v1, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mTabs:[Landroid/view/View;

    aget-object v1, v1, v0

    if-ne v0, p1, :cond_0

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 129
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 130
    goto :goto_1

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->onTabClick(II)V

    .line 134
    if-ne p1, v4, :cond_2

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService;->mToggleSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :goto_2
    return-void

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService;->mToggleSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
