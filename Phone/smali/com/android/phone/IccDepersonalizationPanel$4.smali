.class Lcom/android/phone/IccDepersonalizationPanel$4;
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
    .line 453
    iput-object p1, p0, Lcom/android/phone/IccDepersonalizationPanel$4;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 464
    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel$4;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/IccDepersonalizationPanel;->access$300(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, number:Ljava/lang/String;
    const/4 v2, 0x1

    .line 466
    .local v2, placeNow:Z
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1080

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 469
    const-string v3, "place_now"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    const-string v3, "number"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel$4;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-virtual {v3}, Lcom/android/phone/IccDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 472
    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel$4;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    const-string v4, "send intent ACTION_EMERGENCY_DIAL"

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/IccDepersonalizationPanel;->access$500(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V

    .line 473
    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel$4;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-virtual {v3}, Lcom/android/phone/IccDepersonalizationPanel;->hide()V

    .line 474
    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel$4;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/IccDepersonalizationPanel;->access$300(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 476
    return-void
.end method
