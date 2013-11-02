.class public Lcom/android/settings/battery_history/GraphableButton;
.super Landroid/widget/Button;
.source "GraphableButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GraphableButton"

.field static sPaint:[Landroid/graphics/Paint;


# instance fields
.field mValues:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Paint;

    sput-object v0, Lcom/android/settings/battery_history/GraphableButton;->sPaint:[Landroid/graphics/Paint;

    .line 16
    sget-object v0, Lcom/android/settings/battery_history/GraphableButton;->sPaint:[Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    aput-object v1, v0, v2

    .line 17
    sget-object v0, Lcom/android/settings/battery_history/GraphableButton;->sPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v2

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    sget-object v0, Lcom/android/settings/battery_history/GraphableButton;->sPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v2

    const v1, -0xff7f01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    sget-object v0, Lcom/android/settings/battery_history/GraphableButton;->sPaint:[Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    aput-object v1, v0, v3

    .line 21
    sget-object v0, Lcom/android/settings/battery_history/GraphableButton;->sPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v3

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    sget-object v0, Lcom/android/settings/battery_history/GraphableButton;->sPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v3

    const v1, -0x9fa0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 40
    const-string v0, "GraphableButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw: w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/battery_history/GraphableButton;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/battery_history/GraphableButton;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/battery_history/GraphableButton;->getPaddingLeft()I

    move-result v10

    .line 43
    .local v10, xmin:I
    invoke-virtual {p0}, Lcom/android/settings/battery_history/GraphableButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/battery_history/GraphableButton;->getPaddingRight()I

    move-result v1

    sub-int v9, v0, v1

    .line 44
    .local v9, xmax:I
    invoke-virtual {p0}, Lcom/android/settings/battery_history/GraphableButton;->getPaddingTop()I

    move-result v12

    .line 45
    .local v12, ymin:I
    invoke-virtual {p0}, Lcom/android/settings/battery_history/GraphableButton;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/battery_history/GraphableButton;->getPaddingBottom()I

    move-result v1

    sub-int v11, v0, v1

    .line 47
    .local v11, ymax:I
    move v8, v10

    .line 48
    .local v8, startx:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/settings/battery_history/GraphableButton;->mValues:[D

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/settings/battery_history/GraphableButton;->mValues:[D

    aget-wide v0, v0, v7

    sub-int v2, v9, v10

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int v6, v10, v0

    .line 50
    .local v6, endx:I
    int-to-float v1, v8

    int-to-float v2, v12

    int-to-float v3, v6

    int-to-float v4, v11

    sget-object v0, Lcom/android/settings/battery_history/GraphableButton;->sPaint:[Landroid/graphics/Paint;

    aget-object v5, v0, v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 51
    move v8, v6

    .line 48
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 53
    .end local v6           #endx:I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    return-void
.end method

.method public setValues([DD)V
    .locals 4
    .parameter "values"
    .parameter "maxValue"

    .prologue
    .line 32
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lcom/android/settings/battery_history/GraphableButton;->mValues:[D

    .line 33
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/android/settings/battery_history/GraphableButton;->mValues:[D

    aget-wide v2, v1, v0

    div-double/2addr v2, p2

    aput-wide v2, v1, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method
