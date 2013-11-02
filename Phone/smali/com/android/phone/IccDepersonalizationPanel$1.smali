.class Lcom/android/phone/IccDepersonalizationPanel$1;
.super Ljava/lang/Object;
.source "IccDepersonalizationPanel.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 112
    iput-object p1, p0, Lcom/android/phone/IccDepersonalizationPanel$1;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "buffer"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$1;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-virtual {v0}, Lcom/android/phone/IccDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$1;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/IccDepersonalizationPanel;->access$300(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 134
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$1;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mEmergencyCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/IccDepersonalizationPanel;->access$400(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$1;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mEmergencyCallButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/IccDepersonalizationPanel;->access$400(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 114
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$1;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mMinmumEntryNum:I
    invoke-static {v0}, Lcom/android/phone/IccDepersonalizationPanel;->access$000(Lcom/android/phone/IccDepersonalizationPanel;)I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$1;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->permanent_locked:Z
    invoke-static {v0}, Lcom/android/phone/IccDepersonalizationPanel;->access$100(Lcom/android/phone/IccDepersonalizationPanel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$1;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/IccDepersonalizationPanel;->access$200(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$1;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mMinmumEntryNum:I
    invoke-static {v0}, Lcom/android/phone/IccDepersonalizationPanel;->access$000(Lcom/android/phone/IccDepersonalizationPanel;)I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$1;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/IccDepersonalizationPanel;->access$200(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
