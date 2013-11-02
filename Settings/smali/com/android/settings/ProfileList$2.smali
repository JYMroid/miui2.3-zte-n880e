.class Lcom/android/settings/ProfileList$2;
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
    .line 110
    iput-object p1, p0, Lcom/android/settings/ProfileList$2;->this$0:Lcom/android/settings/ProfileList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 112
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 113
    return-void
.end method
