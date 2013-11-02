.class public Lcom/android/systemui/statusbar/StatusBarIconView;
.super Lcom/android/systemui/statusbar/AnimatedImageView;
.source "StatusBarIconView.java"


# instance fields
.field protected mDisabled:Z

.field protected mEnableAlternative:Z

.field protected mHideForAlternative:Z

.field protected mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field protected mNumberBackground:Landroid/graphics/drawable/Drawable;

.field protected mNumberPain:Landroid/graphics/Paint;

.field protected mNumberText:Ljava/lang/String;

.field private mNumberX:I

.field private mNumberY:I

.field private mSlot:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "slot"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;)V

    .line 221
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mEnableAlternative:Z

    .line 222
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mHideForAlternative:Z

    .line 223
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDisabled:Z

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, res:Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    .line 51
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    const v2, 0x7f070001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    return-void
.end method

.method public static getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    const-string v6, "StatusBarService"

    .line 145
    const/4 v2, 0x0

    .line 147
    .local v2, r:Landroid/content/res/Resources;
    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 158
    :goto_0
    iget v3, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    if-nez v3, :cond_1

    move-object v3, v5

    .line 170
    :goto_1
    return-object v3

    .line 150
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 151
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "StatusBarService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 152
    goto :goto_1

    .line 155
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_0

    .line 163
    :cond_1
    :try_start_1
    iget v3, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_1

    .line 164
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 165
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "StatusBarService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 170
    goto :goto_1

    .line 165
    :cond_2
    const-string v4, "<system>"

    goto :goto_2
.end method

.method private static streq(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v0, 0x0

    .line 58
    if-ne p0, p1, :cond_1

    .line 59
    const/4 v0, 0x1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    if-nez p0, :cond_2

    if-nez p1, :cond_0

    .line 64
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_0

    .line 67
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected debug(I)V
    .locals 3
    .parameter "depth"

    .prologue
    const-string v2, "View"

    .line 194
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->debug(I)V

    .line 195
    const-string v0, "View"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v0, "View"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public disable(Z)V
    .locals 1
    .parameter "disabled"

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDisabled:Z

    if-ne v0, p1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDisabled:Z

    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateVisibility()V

    goto :goto_0
.end method

.method public enableAlternative(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mEnableAlternative:Z

    if-ne v0, p1, :cond_0

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mEnableAlternative:Z

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIcon(Lcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_0
.end method

.method public getAlternativeIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "icon"

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, id:I
    iget-object v1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    iget v1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mEnableAlternative:Z

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/AlternativeIcons;->get(Ljava/lang/Integer;Z)I

    move-result v0

    .line 133
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 191
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AnimatedImageView;->onSizeChanged(IIII)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->placeNumber()V

    .line 182
    :cond_0
    return-void
.end method

.method placeNumber()V
    .locals 11

    .prologue
    .line 200
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v8, v8, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    .line 201
    .local v4, str:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v7

    .line 202
    .local v7, w:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v2

    .line 203
    .local v2, h:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 204
    .local v3, r:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v4, v9, v10, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 205
    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->left:I

    sub-int v6, v8, v9

    .line 206
    .local v6, tw:I
    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    sub-int v5, v8, v9

    .line 207
    .local v5, th:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 208
    iget v8, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v6

    iget v9, v3, Landroid/graphics/Rect;->right:I

    add-int v1, v8, v9

    .line 209
    .local v1, dw:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 210
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 212
    :cond_0
    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int v8, v7, v8

    iget v9, v3, Landroid/graphics/Rect;->right:I

    sub-int v9, v1, v9

    iget v10, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberX:I

    .line 213
    iget v8, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v5

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    add-int v0, v8, v9

    .line 214
    .local v0, dh:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 215
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 217
    :cond_1
    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v2, v8

    iget v9, v3, Landroid/graphics/Rect;->top:I

    sub-int v9, v0, v9

    sub-int/2addr v9, v5

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberY:I

    .line 218
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    sub-int v9, v7, v1

    sub-int v10, v2, v0

    invoke-virtual {v8, v9, v10, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 219
    return-void
.end method

.method public set(Lcom/android/internal/statusbar/StatusBarIcon;)Z
    .locals 8
    .parameter "icon"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 74
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v4, v4, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->streq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v4, v4, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    iget v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    if-ne v4, v5, :cond_4

    move v0, v6

    .line 77
    .local v0, iconEquals:Z
    :goto_0
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v4, v4, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    iget v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    if-ne v4, v5, :cond_5

    move v1, v6

    .line 79
    .local v1, levelEquals:Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-boolean v4, v4, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iget-boolean v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-ne v4, v5, :cond_6

    move v3, v6

    .line 81
    .local v3, visibilityEquals:Z
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v4, v4, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    iget v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-ne v4, v5, :cond_7

    move v2, v6

    .line 83
    .local v2, numberEquals:Z
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 84
    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIcon(Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 87
    :cond_0
    if-nez v1, :cond_1

    .line 88
    iget v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageLevel(I)V

    .line 90
    :cond_1
    if-nez v2, :cond_2

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateNumber(Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 93
    :cond_2
    if-nez v3, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateVisibility()V

    .line 96
    :cond_3
    return v6

    .end local v0           #iconEquals:Z
    .end local v1           #levelEquals:Z
    .end local v2           #numberEquals:Z
    .end local v3           #visibilityEquals:Z
    :cond_4
    move v0, v7

    .line 74
    goto :goto_0

    .restart local v0       #iconEquals:Z
    :cond_5
    move v1, v7

    .line 77
    goto :goto_1

    .restart local v1       #levelEquals:Z
    :cond_6
    move v3, v7

    .line 79
    goto :goto_2

    .restart local v3       #visibilityEquals:Z
    :cond_7
    move v2, v7

    .line 81
    goto :goto_3
.end method

.method protected setIcon(Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 120
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mEnableAlternative:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getAlternativeIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 123
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mEnableAlternative:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mHideForAlternative:Z

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateVisibility()V

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    return-void

    .line 120
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 123
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected updateNumber(Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .parameter "icon"

    .prologue
    const/4 v1, 0x0

    .line 100
    iget v0, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-lez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->placeNumber()V

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->invalidate()V

    .line 111
    return-void

    .line 107
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    .line 108
    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    goto :goto_0
.end method

.method protected updateVisibility()V
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mHideForAlternative:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-boolean v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 117
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
