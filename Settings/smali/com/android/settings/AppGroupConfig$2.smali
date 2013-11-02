.class Lcom/android/settings/AppGroupConfig$2;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppGroupConfig;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AppGroupConfig;


# direct methods
.method constructor <init>(Lcom/android/settings/AppGroupConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/settings/AppGroupConfig$2;->this$0:Lcom/android/settings/AppGroupConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings/AppGroupConfig$2;->this$0:Lcom/android/settings/AppGroupConfig;

    #calls: Lcom/android/settings/AppGroupConfig;->doDelete()V
    invoke-static {v0}, Lcom/android/settings/AppGroupConfig;->access$200(Lcom/android/settings/AppGroupConfig;)V

    .line 213
    return-void
.end method
