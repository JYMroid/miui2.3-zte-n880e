.class Landroid/inputmethodservice/InputMethodService$3;
.super Ljava/lang/Object;
.source "InputMethodService.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    #calls: Landroid/inputmethodservice/InputMethodService;->updateSendButtonState()V
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->access$200(Landroid/inputmethodservice/InputMethodService;)V

    return-void
.end method
