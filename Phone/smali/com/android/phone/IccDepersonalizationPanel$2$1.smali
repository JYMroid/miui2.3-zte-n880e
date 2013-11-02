.class Lcom/android/phone/IccDepersonalizationPanel$2$1;
.super Ljava/lang/Object;
.source "IccDepersonalizationPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IccDepersonalizationPanel$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IccDepersonalizationPanel$2;


# direct methods
.method constructor <init>(Lcom/android/phone/IccDepersonalizationPanel$2;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/phone/IccDepersonalizationPanel$2$1;->this$1:Lcom/android/phone/IccDepersonalizationPanel$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$2$1;->this$1:Lcom/android/phone/IccDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #calls: Lcom/android/phone/IccDepersonalizationPanel;->hideAlert()V
    invoke-static {v0}, Lcom/android/phone/IccDepersonalizationPanel;->access$900(Lcom/android/phone/IccDepersonalizationPanel;)V

    .line 159
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$2$1;->this$1:Lcom/android/phone/IccDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/IccDepersonalizationPanel;->access$300(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 160
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$2$1;->this$1:Lcom/android/phone/IccDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/IccDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/IccDepersonalizationPanel;->access$300(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 161
    return-void
.end method
