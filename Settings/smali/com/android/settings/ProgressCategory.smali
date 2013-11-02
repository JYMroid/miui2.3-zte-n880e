.class public Lcom/android/settings/ProgressCategory;
.super Landroid/preference/PreferenceCategory;
.source "ProgressCategory.java"


# instance fields
.field private mProgress:Z

.field private oldView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ProgressCategory;->oldView:Landroid/view/View;

    .line 33
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const v6, 0x7f0b009f

    const v5, 0x7f0b009e

    const/16 v4, 0x8

    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 39
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, textView:Landroid/view/View;
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, progressBar:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move v2, v3

    .line 43
    .local v2, visibility:I
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->oldView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 47
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->oldView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->oldView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->oldView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/android/settings/ProgressCategory;->oldView:Landroid/view/View;

    .line 52
    return-void

    .line 42
    .end local v2           #visibility:I
    :cond_1
    const/4 v3, 0x4

    move v2, v3

    goto :goto_0
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    .line 61
    return-void
.end method
