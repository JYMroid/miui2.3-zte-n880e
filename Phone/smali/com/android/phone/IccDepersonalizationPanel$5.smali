.class Lcom/android/phone/IccDepersonalizationPanel$5;
.super Ljava/lang/Object;
.source "IccDepersonalizationPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccDepersonalizationPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/phone/IccDepersonalizationPanel$5;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$5;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    const-string v1, "mDismissListener: skipping depersonalization..."

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IccDepersonalizationPanel;->access$500(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$5;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-virtual {v0}, Lcom/android/phone/IccDepersonalizationPanel;->dismiss()V

    .line 711
    return-void
.end method
