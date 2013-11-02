.class public Lcom/android/launcher2/UserFolder;
.super Lcom/android/launcher2/Folder;
.source "UserFolder.java"

# interfaces
.implements Lcom/android/launcher2/DropTarget;


# instance fields
.field private mDirty:Z

.field private mEditPanelShowing:Z

.field private mEditTitleBtn:Landroid/view/View;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mFolderSetting:Landroid/view/ViewGroup;

.field private mRenameEdit:Landroid/widget/EditText;

.field private mShrinkToBottom:Landroid/view/animation/Animation;

.field private mShrinkToTop:Landroid/view/animation/Animation;

.field private mSortByAbc:Landroid/widget/Checkable;

.field private mSortByFrequency:Landroid/widget/Checkable;

.field private mSortByNotDefined:Landroid/widget/Checkable;

.field private mStretchFromBottom:Landroid/view/animation/Animation;

.field private mStretchFromTop:Landroid/view/animation/Animation;

.field private mTag:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v0, p0, Lcom/android/launcher2/UserFolder;->mDirty:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/launcher2/UserFolder;->mEditPanelShowing:Z

    .line 47
    return-void
.end method

.method private confirmEdit()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mSortByNotDefined:Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v1, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    .line 120
    const/4 v0, 0x1

    .line 133
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    if-eq v1, v2, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 135
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->getFolderIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    const/4 v0, 0x1

    .line 138
    :cond_1
    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->notifyDataSetChanged()V

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->saveFolderToDatabase()V

    .line 142
    :cond_2
    return-void

    .line 122
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mSortByAbc:Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v1, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    if-eq v1, v2, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iput v2, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    .line 125
    const/4 v0, 0x1

    goto :goto_0

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mSortByFrequency:Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v1, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    if-eq v1, v3, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iput v3, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    .line 130
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher2/UserFolder;
    .locals 3
    .parameter "context"

    .prologue
    .line 57
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/UserFolder;

    return-object p0
.end method

.method private loadEditSetting()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 149
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mRenameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v0, v0, Lcom/android/launcher2/FolderInfo;->sortMode:I

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mSortByNotDefined:Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mSortByAbc:Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mSortByFrequency:Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showEditPanel(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/UserFolder;->showEditPanel(ZZ)V

    .line 165
    return-void
.end method

.method private showEditPanel(ZZ)V
    .locals 5
    .parameter "isShow"
    .parameter "showAnimation"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 168
    iget-boolean v0, p0, Lcom/android/launcher2/UserFolder;->mEditPanelShowing:Z

    if-ne v0, p1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 172
    :cond_0
    if-eqz p1, :cond_2

    .line 173
    invoke-direct {p0}, Lcom/android/launcher2/UserFolder;->loadEditSetting()V

    .line 174
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    if-eqz p2, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mStretchFromTop:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 181
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mShrinkToBottom:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 182
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    :cond_1
    :goto_1
    iput-boolean p1, p0, Lcom/android/launcher2/UserFolder;->mEditPanelShowing:Z

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 189
    if-eqz p2, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 191
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mShrinkToTop:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mStretchFromBottom:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 193
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 5
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v4, 0x1

    .line 219
    iget v0, p7, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-eqz v0, :cond_0

    iget v0, p7, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-ne v0, v4, :cond_1

    :cond_0
    iget-wide v0, p7, Lcom/android/launcher2/ItemInfo;->container:J

    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher2/FolderInfo;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p7, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    move v0, v4

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bind(Lcom/android/launcher2/FolderInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderInfo;)V

    .line 260
    new-instance v2, Lcom/android/launcher2/ShortcutsAdapter;

    iget-object v3, p0, Lcom/android/launcher2/UserFolder;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    move-object v1, v0

    invoke-direct {v2, v3, v1}, Lcom/android/launcher2/ShortcutsAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher2/UserFolderInfo;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/UserFolder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    .line 261
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mTag:Landroid/os/Bundle;

    const-string v2, "favorites._id"

    iget-wide v3, p1, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 262
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/launcher2/Folder;->onClick(Landroid/view/View;)V

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 92
    :sswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/UserFolder;->showEditPanel(Z)V

    goto :goto_0

    .line 95
    :sswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/UserFolder;->confirmEdit()V

    .line 97
    :sswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/UserFolder;->showEditPanel(Z)V

    goto :goto_0

    .line 90
    :sswitch_data_0
    .sparse-switch
        0x7f07004c -> :sswitch_1
        0x7f07004d -> :sswitch_0
        0x7f070054 -> :sswitch_2
    .end sparse-switch
.end method

.method onClose(Z)V
    .locals 1
    .parameter "allowAnimation"

    .prologue
    .line 266
    invoke-super {p0, p1}, Lcom/android/launcher2/Folder;->onClose(Z)V

    .line 267
    iget-boolean v0, p0, Lcom/android/launcher2/UserFolder;->mDirty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    instance-of v0, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 270
    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 236
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 244
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 240
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 226
    move-object/from16 v0, p7

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v2, v0

    .line 228
    .local v2, item:Lcom/android/launcher2/ShortcutInfo;
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/launcher2/ShortcutsAdapter;

    invoke-virtual {p1, v2}, Lcom/android/launcher2/ShortcutsAdapter;->add(Ljava/lang/Object;)V

    .line 229
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v3, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v3, v3, Lcom/android/launcher2/FolderInfo;->id:J

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 230
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/UserFolder;->mDirty:Z

    .line 231
    const/4 v1, 0x1

    return v1
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 3
    .parameter "target"
    .parameter "success"

    .prologue
    .line 248
    if-eqz p2, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutsAdapter;

    .line 250
    .local v0, adapter:Lcom/android/launcher2/ShortcutsAdapter;
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mDragItem:Lcom/android/launcher2/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShortcutsAdapter;->remove(Ljava/lang/Object;)V

    .line 251
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    instance-of v1, v1, Lcom/android/launcher2/FolderIcon;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 255
    .end local v0           #adapter:Lcom/android/launcher2/ShortcutsAdapter;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mDragController:Lcom/android/launcher2/DragController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragController;->setTouchTranslator(Lcom/android/launcher2/DragController$TouchTranslator;)V

    .line 256
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/launcher2/Folder;->onFinishInflate()V

    .line 63
    const v1, 0x7f07004d

    invoke-virtual {p0, v1}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v1, 0x7f070054

    invoke-virtual {p0, v1}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f07004e

    invoke-virtual {p0, v1}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    .line 68
    const v1, 0x7f070051

    invoke-virtual {p0, v1}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mSortByNotDefined:Landroid/widget/Checkable;

    .line 69
    const v1, 0x7f070053

    invoke-virtual {p0, v1}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mSortByAbc:Landroid/widget/Checkable;

    .line 70
    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mSortByFrequency:Landroid/widget/Checkable;

    .line 71
    const v1, 0x7f07004f

    invoke-virtual {p0, v1}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mRenameEdit:Landroid/widget/EditText;

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mTag:Landroid/os/Bundle;

    .line 74
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 75
    .local v0, li:Landroid/view/animation/LinearInterpolator;
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mFadeIn:Landroid/view/animation/Animation;

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mFadeOut:Landroid/view/animation/Animation;

    .line 77
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040016

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mShrinkToTop:Landroid/view/animation/Animation;

    .line 78
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mShrinkToTop:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04001a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mStretchFromTop:Landroid/view/animation/Animation;

    .line 80
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mStretchFromTop:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040015

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mShrinkToBottom:Landroid/view/animation/Animation;

    .line 82
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mShrinkToBottom:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040019

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mStretchFromBottom:Landroid/view/animation/Animation;

    .line 84
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mStretchFromBottom:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 85
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 103
    iget-object v3, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 107
    .local v0, app:Lcom/android/launcher2/ShortcutInfo;
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 108
    .local v2, pos:[I
    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 109
    new-instance v1, Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 110
    .local v1, intent:Landroid/content/Intent;
    new-instance v3, Landroid/graphics/Rect;

    aget v4, v2, v6

    aget v5, v2, v8

    aget v6, v2, v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v2, v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 112
    iget-object v3, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3, v1, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
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
    .line 200
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    const/4 v1, 0x0

    .line 214
    :goto_0
    return v1

    .line 208
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 209
    .local v0, app:Lcom/android/launcher2/ShortcutInfo;
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getTouchTranslator()Lcom/android/launcher2/DragController$TouchTranslator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragController;->setTouchTranslator(Lcom/android/launcher2/DragController$TouchTranslator;)V

    .line 210
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mDragController:Lcom/android/launcher2/DragController;

    sget v2, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    invoke-virtual {v1, p2, p0, v0, v2}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V

    .line 211
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    .line 212
    iput-object v0, p0, Lcom/android/launcher2/UserFolder;->mDragItem:Lcom/android/launcher2/ShortcutInfo;

    .line 214
    const/4 v1, 0x1

    goto :goto_0
.end method

.method onOpen(Z)V
    .locals 1
    .parameter "allowAnimation"

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, v0, v0}, Lcom/android/launcher2/UserFolder;->showEditPanel(ZZ)V

    .line 277
    invoke-super {p0, p1}, Lcom/android/launcher2/Folder;->onOpen(Z)V

    .line 278
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->requestFocus()Z

    .line 279
    return-void
.end method

.method saveFolderToDatabase()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    .line 146
    return-void
.end method
