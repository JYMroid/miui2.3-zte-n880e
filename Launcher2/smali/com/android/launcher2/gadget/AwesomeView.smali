.class public Lcom/android/launcher2/gadget/AwesomeView;
.super Landroid/view/View;
.source "AwesomeView.java"


# instance fields
.field private mElementGroup:Lmiui/app/screenelement/ScreenElement;

.field private mUpdateInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/gadget/AwesomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public static updateTimeOfVar(Ljava/util/Calendar;JLmiui/app/screenelement/Variables;)V
    .locals 4
    .parameter "calendar"
    .parameter "currentTime"
    .parameter "var"

    .prologue
    const/4 v3, 0x0

    .line 98
    const-string v0, "time"

    long-to-double v1, p1

    invoke-virtual {p3, v3, v0, v1, v2}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 100
    const-string v0, "ampm"

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 101
    const-string v0, "hour12"

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 102
    const-string v0, "hour24"

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 103
    const-string v0, "minute"

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 104
    const-string v0, "second"

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 105
    const-string v0, "msec"

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 106
    const-string v0, "year"

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 107
    const-string v0, "month"

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 108
    const-string v0, "date"

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 110
    const-string v0, "day_of_week"

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 111
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lmiui/app/screenelement/ScreenElement;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lmiui/app/screenelement/ScreenElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElement;->finish()V

    .line 89
    :cond_0
    return-void
.end method

.method public getUpdateInterval()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mUpdateInterval:I

    return v0
.end method

.method public load(Lmiui/app/screenelement/ScreenContext;)Z
    .locals 5
    .parameter "elementContext"

    .prologue
    .line 47
    :try_start_0
    iget-object v2, p1, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v2}, Lmiui/app/screenelement/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 48
    .local v1, root:Lorg/w3c/dom/Element;
    const-string v2, "clock"

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Lmiui/app/screenelement/ScreenElementLoadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad root tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    .end local v1           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 62
    .local v0, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    .line 66
    .end local v0           #e:Lmiui/app/screenelement/ScreenElementLoadException;
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 52
    .restart local v1       #root:Lorg/w3c/dom/Element;
    :cond_0
    :try_start_1
    new-instance v2, Lmiui/app/screenelement/ElementGroup;

    invoke-direct {v2, v1, p1}, Lmiui/app/screenelement/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lmiui/app/screenelement/ScreenElement;

    .line 53
    iget-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lmiui/app/screenelement/ScreenElement;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElement;->init()V
    :try_end_1
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 55
    :try_start_2
    const-string v2, "update_interval"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mUpdateInterval:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 60
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 56
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 57
    .local v0, e:Ljava/lang/NumberFormatException;
    const v2, 0xea60

    :try_start_3
    iput v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mUpdateInterval:I
    :try_end_3
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 63
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #root:Lorg/w3c/dom/Element;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 64
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lmiui/app/screenelement/ScreenElement;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lmiui/app/screenelement/ScreenElement;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 39
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lmiui/app/screenelement/ScreenElement;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lmiui/app/screenelement/ScreenElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElement;->pause()V

    .line 83
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lmiui/app/screenelement/ScreenElement;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lmiui/app/screenelement/ScreenElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElement;->resume()V

    .line 77
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lmiui/app/screenelement/ScreenElement;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lmiui/app/screenelement/ScreenElement;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ScreenElement;->tick(J)V

    .line 95
    :cond_0
    return-void
.end method
