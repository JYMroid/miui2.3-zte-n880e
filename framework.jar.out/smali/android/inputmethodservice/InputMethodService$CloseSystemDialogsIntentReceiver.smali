.class Landroid/inputmethodservice/InputMethodService$CloseSystemDialogsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseSystemDialogsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method private constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$CloseSystemDialogsIntentReceiver;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InputMethodService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService$CloseSystemDialogsIntentReceiver;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v1, "InputMethodService"

    const-string v0, "InputMethodService"

    const-string v0, "liuan : call closepanel."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$CloseSystemDialogsIntentReceiver;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_0

    const-string v0, "InputMethodService"

    const-string v0, "liuan : call closepanel. 123"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$CloseSystemDialogsIntentReceiver;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->closeContextMenu()V

    :cond_0
    return-void
.end method
