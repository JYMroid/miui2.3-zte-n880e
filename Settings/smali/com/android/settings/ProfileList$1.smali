.class Lcom/android/settings/ProfileList$1;
.super Ljava/lang/Object;
.source "ProfileList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ProfileList;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ProfileList;


# direct methods
.method constructor <init>(Lcom/android/settings/ProfileList;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings/ProfileList$1;->this$0:Lcom/android/settings/ProfileList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/ProfileList$1;->this$0:Lcom/android/settings/ProfileList;

    #getter for: Lcom/android/settings/ProfileList;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v0}, Lcom/android/settings/ProfileList;->access$000(Lcom/android/settings/ProfileList;)Landroid/app/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProfileManager;->resetAll()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/ProfileList$1;->this$0:Lcom/android/settings/ProfileList;

    #calls: Lcom/android/settings/ProfileList;->fillList()V
    invoke-static {v0}, Lcom/android/settings/ProfileList;->access$100(Lcom/android/settings/ProfileList;)V

    .line 108
    return-void
.end method
