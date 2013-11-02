.class Lcom/android/settings/widget/WidgetSettings$1;
.super Ljava/lang/Object;
.source "WidgetSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/WidgetSettings;
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
    .line 122
    iput-object p1, p0, Lcom/android/settings/widget/WidgetSettings$1;->this$0:Lcom/android/settings/widget/WidgetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 126
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/widget/WidgetSettings$1;->this$0:Lcom/android/settings/widget/WidgetSettings;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    #calls: Lcom/android/settings/widget/WidgetSettings;->toogleButtonView(Landroid/widget/CheckBox;)V
    invoke-static {v0, p1}, Lcom/android/settings/widget/WidgetSettings;->access$000(Lcom/android/settings/widget/WidgetSettings;Landroid/widget/CheckBox;)V

    .line 129
    :cond_0
    return-void
.end method
