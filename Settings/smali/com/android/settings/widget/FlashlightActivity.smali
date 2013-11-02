.class public Lcom/android/settings/widget/FlashlightActivity;
.super Landroid/app/Activity;
.source "FlashlightActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x400

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/FlashlightActivity;->requestWindowFeature(I)Z

    .line 18
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    .local v1, linearLayout:Landroid/widget/LinearLayout;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 20
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/FlashlightActivity;->setContentView(Landroid/view/View;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/settings/widget/FlashlightActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 24
    invoke-virtual {p0}, Lcom/android/settings/widget/FlashlightActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 25
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 26
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    const/high16 v3, 0x3f80

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 27
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 28
    return-void
.end method
