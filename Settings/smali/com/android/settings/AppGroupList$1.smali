.class Lcom/android/settings/AppGroupList$1;
.super Ljava/lang/Object;
.source "AppGroupList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppGroupList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AppGroupList;

.field final synthetic val$entry:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/AppGroupList;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings/AppGroupList$1;->this$0:Lcom/android/settings/AppGroupList;

    iput-object p2, p0, Lcom/android/settings/AppGroupList$1;->val$entry:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 101
    new-instance v0, Landroid/app/NotificationGroup;

    iget-object v1, p0, Lcom/android/settings/AppGroupList$1;->val$entry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/NotificationGroup;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, newGroup:Landroid/app/NotificationGroup;
    iget-object v1, p0, Lcom/android/settings/AppGroupList$1;->this$0:Lcom/android/settings/AppGroupList;

    #getter for: Lcom/android/settings/AppGroupList;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v1}, Lcom/android/settings/AppGroupList;->access$000(Lcom/android/settings/AppGroupList;)Landroid/app/ProfileManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ProfileManager;->addNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/AppGroupList$1;->this$0:Lcom/android/settings/AppGroupList;

    #calls: Lcom/android/settings/AppGroupList;->fillList()V
    invoke-static {v1}, Lcom/android/settings/AppGroupList;->access$100(Lcom/android/settings/AppGroupList;)V

    .line 105
    return-void
.end method
