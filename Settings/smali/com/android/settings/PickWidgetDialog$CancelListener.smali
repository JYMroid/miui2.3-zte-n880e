.class Lcom/android/settings/PickWidgetDialog$CancelListener;
.super Ljava/lang/Object;
.source "PickWidgetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PickWidgetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field private final fCancelOwner:Z

.field final synthetic this$0:Lcom/android/settings/PickWidgetDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/PickWidgetDialog;Z)V
    .locals 0
    .parameter
    .parameter "cancelOwner"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/PickWidgetDialog$CancelListener;->this$0:Lcom/android/settings/PickWidgetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean p2, p0, Lcom/android/settings/PickWidgetDialog$CancelListener;->fCancelOwner:Z

    .line 47
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/settings/PickWidgetDialog$CancelListener;->fCancelOwner:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/settings/PickWidgetDialog$CancelListener;->this$0:Lcom/android/settings/PickWidgetDialog;

    #getter for: Lcom/android/settings/PickWidgetDialog;->fOwner:Lcom/android/settings/AppWidgetPickActivity;
    invoke-static {v0}, Lcom/android/settings/PickWidgetDialog;->access$000(Lcom/android/settings/PickWidgetDialog;)Lcom/android/settings/AppWidgetPickActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/AppWidgetPickActivity;->setResult(I)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/PickWidgetDialog$CancelListener;->this$0:Lcom/android/settings/PickWidgetDialog;

    #getter for: Lcom/android/settings/PickWidgetDialog;->fOwner:Lcom/android/settings/AppWidgetPickActivity;
    invoke-static {v0}, Lcom/android/settings/PickWidgetDialog;->access$000(Lcom/android/settings/PickWidgetDialog;)Lcom/android/settings/AppWidgetPickActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/AppWidgetPickActivity;->finish()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PickWidgetDialog$CancelListener;->this$0:Lcom/android/settings/PickWidgetDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/PickWidgetDialog;->showDialog(Lcom/android/settings/SubItem;)V

    goto :goto_0
.end method
