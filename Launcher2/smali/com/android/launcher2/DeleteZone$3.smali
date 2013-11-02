.class Lcom/android/launcher2/DeleteZone$3;
.super Ljava/lang/Object;
.source "DeleteZone.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeleteZone;->startUninstallDialog(Lcom/android/launcher2/ShortcutInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeleteZone;

.field final synthetic val$info:Lcom/android/launcher2/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeleteZone;Lcom/android/launcher2/ShortcutInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/launcher2/DeleteZone$3;->this$0:Lcom/android/launcher2/DeleteZone;

    iput-object p2, p0, Lcom/android/launcher2/DeleteZone$3;->val$info:Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone$3;->this$0:Lcom/android/launcher2/DeleteZone;

    #getter for: Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher2/DeleteZone;->access$200(Lcom/android/launcher2/DeleteZone;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DeleteZone$3;->val$info:Lcom/android/launcher2/ShortcutInfo;

    iget-object v1, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/DeleteZone$DeleteObserver;

    iget-object v3, p0, Lcom/android/launcher2/DeleteZone$3;->this$0:Lcom/android/launcher2/DeleteZone;

    iget-object v4, p0, Lcom/android/launcher2/DeleteZone$3;->val$info:Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher2/DeleteZone$DeleteObserver;-><init>(Lcom/android/launcher2/DeleteZone;Lcom/android/launcher2/ShortcutInfo;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 223
    return-void
.end method
