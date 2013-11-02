.class Lcom/android/settings/ProfileConnectionPreference$2;
.super Ljava/lang/Object;
.source "ProfileConnectionPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ProfileConnectionPreference;->createConnectionDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ProfileConnectionPreference;

.field final synthetic val$ConnectionValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/ProfileConnectionPreference;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/ProfileConnectionPreference$2;->this$0:Lcom/android/settings/ProfileConnectionPreference;

    iput-object p2, p0, Lcom/android/settings/ProfileConnectionPreference$2;->val$ConnectionValues:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/ProfileConnectionPreference$2;->this$0:Lcom/android/settings/ProfileConnectionPreference;

    #getter for: Lcom/android/settings/ProfileConnectionPreference;->currentChoice:I
    invoke-static {v0}, Lcom/android/settings/ProfileConnectionPreference;->access$000(Lcom/android/settings/ProfileConnectionPreference;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/ProfileConnectionPreference$2;->this$0:Lcom/android/settings/ProfileConnectionPreference;

    #getter for: Lcom/android/settings/ProfileConnectionPreference;->mConnectionItem:Lcom/android/settings/ProfileConfig$ConnectionItem;
    invoke-static {v0}, Lcom/android/settings/ProfileConnectionPreference;->access$100(Lcom/android/settings/ProfileConnectionPreference;)Lcom/android/settings/ProfileConfig$ConnectionItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/ProfileConfig$ConnectionItem;->mSettings:Landroid/app/ConnectionSettings;

    iget-object v1, p0, Lcom/android/settings/ProfileConnectionPreference$2;->val$ConnectionValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/ProfileConnectionPreference$2;->this$0:Lcom/android/settings/ProfileConnectionPreference;

    #getter for: Lcom/android/settings/ProfileConnectionPreference;->currentChoice:I
    invoke-static {v2}, Lcom/android/settings/ProfileConnectionPreference;->access$000(Lcom/android/settings/ProfileConnectionPreference;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ConnectionSettings;->setValue(I)V

    .line 143
    :cond_0
    return-void
.end method
