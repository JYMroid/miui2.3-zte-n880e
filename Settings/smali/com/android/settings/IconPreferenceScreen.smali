.class public Lcom/android/settings/IconPreferenceScreen;
.super Landroid/preference/Preference;
.source "IconPreferenceScreen.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPreview:Landroid/widget/TextView;

.field private mRightIndicator:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/IconPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const v1, 0x7f030031

    invoke-virtual {p0, v1}, Lcom/android/settings/IconPreferenceScreen;->setLayoutResource(I)V

    .line 41
    sget-object v1, Lcom/android/settings/R$styleable;->IconPreferenceScreen:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 44
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IconPreferenceScreen;->mRightIndicator:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 51
    const v1, 0x7f0b0028

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/settings/IconPreferenceScreen;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_0
    const v1, 0x7f0b009a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #imageView:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 56
    .restart local v0       #imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/IconPreferenceScreen;->mRightIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v1, p0, Lcom/android/settings/IconPreferenceScreen;->mRightIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_1
    return-void
.end method
