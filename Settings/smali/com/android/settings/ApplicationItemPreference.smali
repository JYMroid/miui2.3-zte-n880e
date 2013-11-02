.class public Lcom/android/settings/ApplicationItemPreference;
.super Landroid/preference/Preference;
.source "ApplicationItemPreference.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/ApplicationItemPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const v1, 0x7f030031

    invoke-virtual {p0, v1}, Lcom/android/settings/ApplicationItemPreference;->setLayoutResource(I)V

    .line 38
    sget-object v1, Lcom/android/settings/R$styleable;->IconPreferenceScreen:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApplicationItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 41
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/16 v2, 0x48

    .line 49
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 50
    const v1, 0x7f0b0028

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/ApplicationItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 53
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 55
    iget-object v1, p0, Lcom/android/settings/ApplicationItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/ApplicationItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 45
    return-void
.end method
