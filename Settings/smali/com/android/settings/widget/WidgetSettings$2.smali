.class Lcom/android/settings/widget/WidgetSettings$2;
.super Ljava/lang/Object;
.source "WidgetSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/WidgetSettings;->initToggleButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/WidgetSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/WidgetSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings/widget/WidgetSettings$2;->this$0:Lcom/android/settings/widget/WidgetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x7f0b00e7

    .line 174
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings/widget/WidgetSettings$2;->this$0:Lcom/android/settings/widget/WidgetSettings;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/WidgetSettings$2;->this$0:Lcom/android/settings/widget/WidgetSettings;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/WidgetSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
