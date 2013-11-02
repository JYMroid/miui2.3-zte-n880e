.class public Lcom/android/launcher2/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/launcher2/DragSource;


# instance fields
.field private mClosing:Z

.field protected mContent:Landroid/widget/AbsListView;

.field protected mDragController:Lcom/android/launcher2/DragController;

.field protected mDragItem:Lcom/android/launcher2/ShortcutInfo;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field protected mFolderIcon:Lcom/android/launcher2/FolderIcon;

.field protected mInfo:Lcom/android/launcher2/FolderInfo;

.field protected mLauncher:Lcom/android/launcher2/Launcher;

.field protected mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

.field protected mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 54
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->setAnimationCacheEnabled(Z)V

    .line 76
    const v0, 0x7f04000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mFadeIn:Landroid/view/animation/Animation;

    .line 77
    const v0, 0x7f040011

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mFadeOut:Landroid/view/animation/Animation;

    .line 78
    return-void
.end method

.method private finishShow()V
    .locals 3

    .prologue
    .line 203
    iget-boolean v1, p0, Lcom/android/launcher2/Folder;->mClosing:Z

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->requestFocus()Z

    .line 205
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 206
    .local v0, parent:Landroid/view/ViewParent;
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->setVisibility(I)V

    .line 207
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 208
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 212
    :cond_1
    return-void
.end method


# virtual methods
.method bind(Lcom/android/launcher2/FolderInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    .line 216
    return-void
.end method

.method getInfo()Lcom/android/launcher2/FolderInfo;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    return-object v0
.end method

.method notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 113
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 116
    :cond_0
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAnimationEnd()V

    .line 221
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->finishShow()V

    .line 223
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->destroyDrawingCache()V

    .line 224
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 242
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x7f07000f
        :pswitch_0
    .end packed-switch
.end method

.method onClose(Z)V
    .locals 9
    .parameter "allowAnimation"

    .prologue
    const/high16 v1, 0x3f80

    const v2, 0x3f19999a

    const/4 v6, 0x1

    .line 173
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mClosing:Z

    if-eqz v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 176
    :cond_0
    iput-boolean v6, p0, Lcom/android/launcher2/Folder;->mClosing:Z

    .line 177
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->clearAnimation()V

    .line 179
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon;->onClose()V

    .line 186
    if-nez p1, :cond_2

    .line 187
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->finishShow()V

    goto :goto_0

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->finishShow()V

    goto :goto_0

    .line 191
    :cond_2
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 192
    .local v7, animation:Landroid/view/animation/AnimationSet;
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 193
    .local v8, pos:[I
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0, v8}, Lcom/android/launcher2/FolderIcon;->getLocationOnScreen([I)V

    .line 194
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    aget v3, v8, v3

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderIcon;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v5, v3

    aget v3, v8, v6

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 196
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 197
    const-wide/16 v0, 0x96

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 198
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 199
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Folder;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 0
    .parameter "target"
    .parameter "success"

    .prologue
    .line 99
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 84
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAnimationCacheEnabled(Z)V

    .line 89
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mTitleText:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method onOpen(Z)V
    .locals 9
    .parameter "allowAnimation"

    .prologue
    const/high16 v2, 0x3f80

    const v1, 0x3f19999a

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 143
    iput-boolean v4, p0, Lcom/android/launcher2/Folder;->mClosing:Z

    .line 144
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iput-boolean v6, v0, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 145
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 146
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mTitleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->clearAnimation()V

    .line 149
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon;->onOpen()V

    .line 157
    if-nez p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 162
    .local v7, animation:Landroid/view/animation/AnimationSet;
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 163
    .local v8, pos:[I
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0, v8}, Lcom/android/launcher2/FolderIcon;->getLocationOnScreen([I)V

    .line 164
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    aget v3, v8, v4

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderIcon;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v5, v3

    aget v3, v8, v6

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 166
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 167
    const-wide/16 v0, 0x96

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 168
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 169
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Folder;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method setContentAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 109
    return-void
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mDragController:Lcom/android/launcher2/DragController;

    .line 96
    return-void
.end method

.method setFolderIcon(Landroid/view/View;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 124
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    .line 125
    check-cast p1, Lcom/android/launcher2/FolderIcon;

    .end local p1
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 129
    :goto_0
    return-void

    .line 127
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    goto :goto_0
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 2
    .parameter "launcher"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 120
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 121
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 249
    return-void
.end method
