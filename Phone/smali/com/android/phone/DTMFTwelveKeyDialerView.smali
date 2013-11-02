.class Lcom/android/phone/DTMFTwelveKeyDialerView;
.super Landroid/widget/LinearLayout;
.source "DTMFTwelveKeyDialerView.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE/DTMFTwelveKeyDialerView"


# instance fields
.field private mButtonGrid:Landroid/view/View;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 110
    const-string v0, "PHONE/DTMFTwelveKeyDialerView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method private setDialButtonBackgroundResource(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Landroid/view/View;

    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Landroid/view/View;

    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Landroid/view/View;

    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 97
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Landroid/view/View;

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 98
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Landroid/view/View;

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 99
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Landroid/view/View;

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Landroid/view/View;

    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 101
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Landroid/view/View;

    const v1, 0x7f07005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Landroid/view/View;

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 103
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Landroid/view/View;

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 104
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Landroid/view/View;

    const v1, 0x7f070062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 105
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Landroid/view/View;

    const v1, 0x7f070061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 70
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_0

    .line 71
    packed-switch v0, :pswitch_data_0

    .line 80
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 74
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 1
    .parameter "dialer"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 58
    const v0, 0x7f070056

    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mButtonGrid:Landroid/view/View;

    .line 59
    return-void
.end method

.method public setKeysBackgroundResource(I)V
    .locals 0
    .parameter "resid"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setDialButtonBackgroundResource(I)V

    .line 91
    return-void
.end method
