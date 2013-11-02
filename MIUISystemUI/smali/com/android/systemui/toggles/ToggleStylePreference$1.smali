.class Lcom/android/systemui/toggles/ToggleStylePreference$1;
.super Ljava/lang/Object;
.source "ToggleStylePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/toggles/ToggleStylePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/toggles/ToggleStylePreference;


# direct methods
.method constructor <init>(Lcom/android/systemui/toggles/ToggleStylePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/systemui/toggles/ToggleStylePreference$1;->this$0:Lcom/android/systemui/toggles/ToggleStylePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleStylePreference$1;->this$0:Lcom/android/systemui/toggles/ToggleStylePreference;

    #getter for: Lcom/android/systemui/toggles/ToggleStylePreference;->mSinglePageText:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/toggles/ToggleStylePreference;->access$100(Lcom/android/systemui/toggles/ToggleStylePreference;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleStylePreference$1;->this$0:Lcom/android/systemui/toggles/ToggleStylePreference;

    #getter for: Lcom/android/systemui/toggles/ToggleStylePreference;->mSinglePage:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/toggles/ToggleStylePreference;->access$000(Lcom/android/systemui/toggles/ToggleStylePreference;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 32
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleStylePreference$1;->this$0:Lcom/android/systemui/toggles/ToggleStylePreference;

    #getter for: Lcom/android/systemui/toggles/ToggleStylePreference;->mCompactText:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/toggles/ToggleStylePreference;->access$300(Lcom/android/systemui/toggles/ToggleStylePreference;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/toggles/ToggleStylePreference$1;->this$0:Lcom/android/systemui/toggles/ToggleStylePreference;

    #getter for: Lcom/android/systemui/toggles/ToggleStylePreference;->mCompact:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/toggles/ToggleStylePreference;->access$200(Lcom/android/systemui/toggles/ToggleStylePreference;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 33
    iget-object v0, p0, Lcom/android/systemui/toggles/ToggleStylePreference$1;->this$0:Lcom/android/systemui/toggles/ToggleStylePreference;

    #calls: Lcom/android/systemui/toggles/ToggleStylePreference;->setSettingsFromUI()V
    invoke-static {v0}, Lcom/android/systemui/toggles/ToggleStylePreference;->access$400(Lcom/android/systemui/toggles/ToggleStylePreference;)V

    .line 34
    return-void

    :cond_0
    move v1, v2

    .line 31
    goto :goto_0

    :cond_1
    move v1, v2

    .line 32
    goto :goto_1
.end method
