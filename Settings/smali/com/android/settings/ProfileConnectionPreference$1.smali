.class Lcom/android/settings/ProfileConnectionPreference$1;
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


# direct methods
.method constructor <init>(Lcom/android/settings/ProfileConnectionPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/ProfileConnectionPreference$1;->this$0:Lcom/android/settings/ProfileConnectionPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/ProfileConnectionPreference$1;->this$0:Lcom/android/settings/ProfileConnectionPreference;

    #setter for: Lcom/android/settings/ProfileConnectionPreference;->currentChoice:I
    invoke-static {v0, p2}, Lcom/android/settings/ProfileConnectionPreference;->access$002(Lcom/android/settings/ProfileConnectionPreference;I)I

    .line 134
    return-void
.end method
