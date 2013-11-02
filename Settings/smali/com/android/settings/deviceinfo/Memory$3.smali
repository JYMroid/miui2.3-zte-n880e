.class Lcom/android/settings/deviceinfo/Memory$3;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/Memory;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Memory;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Memory;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$3;->this$0:Lcom/android/settings/deviceinfo/Memory;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/Memory$3;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory$3;->this$0:Lcom/android/settings/deviceinfo/Memory;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory$3;->val$path:Ljava/lang/String;

    const/4 v2, 0x1

    #calls: Lcom/android/settings/deviceinfo/Memory;->doUnmount(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->access$100(Lcom/android/settings/deviceinfo/Memory;Ljava/lang/String;Z)V

    .line 274
    return-void
.end method
