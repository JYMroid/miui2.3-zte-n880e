.class Lcom/android/settings/PickWidgetDialog$ClickListener;
.super Ljava/lang/Object;
.source "PickWidgetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PickWidgetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PickWidgetDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/PickWidgetDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/settings/PickWidgetDialog$ClickListener;->this$0:Lcom/android/settings/PickWidgetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 34
    iget-object v1, p0, Lcom/android/settings/PickWidgetDialog$ClickListener;->this$0:Lcom/android/settings/PickWidgetDialog;

    iget-object v1, v1, Lcom/android/settings/PickWidgetDialog;->fItemAdapter:Lcom/android/settings/ItemAdapter;

    invoke-virtual {v1, p2}, Lcom/android/settings/ItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SubItem;

    .line 35
    .local v0, subItem:Lcom/android/settings/SubItem;
    iget-object v1, p0, Lcom/android/settings/PickWidgetDialog$ClickListener;->this$0:Lcom/android/settings/PickWidgetDialog;

    iget-object v1, v1, Lcom/android/settings/PickWidgetDialog;->fDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 37
    iget-object v1, p0, Lcom/android/settings/PickWidgetDialog$ClickListener;->this$0:Lcom/android/settings/PickWidgetDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/PickWidgetDialog;->showDialog(Lcom/android/settings/SubItem;)V

    .line 38
    return-void
.end method
