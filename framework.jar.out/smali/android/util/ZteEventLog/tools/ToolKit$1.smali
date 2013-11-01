.class final Landroid/util/ZteEventLog/tools/ToolKit$1;
.super Ljava/lang/Object;
.source "ToolKit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/ZteEventLog/tools/ToolKit;->GetEditSetListener(Landroid/widget/EditText;Landroid/util/ZteEventLog/tools/ToolKit$EDIT_DIALOG_RESPONSE;)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enterView:Landroid/widget/EditText;

.field final synthetic val$response:Landroid/util/ZteEventLog/tools/ToolKit$EDIT_DIALOG_RESPONSE;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/util/ZteEventLog/tools/ToolKit$EDIT_DIALOG_RESPONSE;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/util/ZteEventLog/tools/ToolKit$1;->val$enterView:Landroid/widget/EditText;

    iput-object p2, p0, Landroid/util/ZteEventLog/tools/ToolKit$1;->val$response:Landroid/util/ZteEventLog/tools/ToolKit$EDIT_DIALOG_RESPONSE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v0, 0x0

    .local v0, result:Ljava/lang/String;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/util/ZteEventLog/tools/ToolKit$1;->val$enterView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Landroid/util/ZteEventLog/tools/ToolKit$1;->val$response:Landroid/util/ZteEventLog/tools/ToolKit$EDIT_DIALOG_RESPONSE;

    invoke-interface {v1, v0}, Landroid/util/ZteEventLog/tools/ToolKit$EDIT_DIALOG_RESPONSE;->OnResult(Ljava/lang/String;)V

    return-void
.end method
