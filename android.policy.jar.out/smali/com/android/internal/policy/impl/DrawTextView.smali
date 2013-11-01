.class public Lcom/android/internal/policy/impl/DrawTextView;
.super Landroid/view/View;
.source "DrawTextView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private curColor:I

.field private emergencyText:Ljava/lang/String;

.field private firstStart:Z

.field private mContext:Landroid/content/Context;

.field private mH:F

.field private mLockScreen:Lcom/android/internal/policy/impl/LockScreen;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mR:F

.field private mTextSize:I

.field private mW:F

.field private paintText:Landroid/graphics/Paint;

.field private pathCWJ:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "DrawTextView"

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->firstStart:Z

    iput v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mR:F

    iput v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mW:F

    iput v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mH:F

    iput-object v2, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/android/internal/policy/impl/DrawTextView;->pathCWJ:Landroid/graphics/Path;

    iput-object v2, p0, Lcom/android/internal/policy/impl/DrawTextView;->emergencyText:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->curColor:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mTextSize:I

    iput-object p1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/DrawTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "DrawTextView"

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->firstStart:Z

    iput v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mR:F

    iput v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mW:F

    iput v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mH:F

    iput-object v2, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/android/internal/policy/impl/DrawTextView;->pathCWJ:Landroid/graphics/Path;

    iput-object v2, p0, Lcom/android/internal/policy/impl/DrawTextView;->emergencyText:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->curColor:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mTextSize:I

    iput-object p1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method getTextColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->curColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->pathCWJ:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mW="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/DrawTextView;->mW:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/DrawTextView;->mR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mW:F

    iget v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mH:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x42b4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->pathCWJ:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mR:F

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DrawTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->emergencyText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DrawTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mTextSize:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mLockScreen:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreen;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .local v6, str:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "substring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->emergencyText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/DrawTextView;->pathCWJ:Landroid/graphics/Path;

    const/high16 v4, -0x3ee0

    iget-object v5, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->TAG:Ljava/lang/String;

    const-string v1, "onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x1

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->firstStart:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DrawTextView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mH:F

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DrawTextView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mW:F

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DrawTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mR:F

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DrawTextView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DrawTextView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->firstStart:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mPathPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mPathPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mPathPaint:Landroid/graphics/Paint;

    const v1, -0x7fffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->TAG:Ljava/lang/String;

    const-string v1, "onLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLockScreen(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter "lock"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mLockScreen:Lcom/android/internal/policy/impl/LockScreen;

    return-void
.end method

.method setTextColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/DrawTextView;->curColor:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/DrawTextView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrawTextView;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DrawTextView;->invalidate()V

    return-void
.end method
