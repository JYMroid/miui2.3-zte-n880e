.class Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$2;
.super Lcom/android/launcher2/LauncherModel$DataCarriedRunnable;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadAndBindMissingIcons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

.field final synthetic val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 1
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$2;->this$2:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$2;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iget-object v0, p1, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0, v0, p2}, Lcom/android/launcher2/LauncherModel$DataCarriedRunnable;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$2;->this$2:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    #getter for: Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->access$700(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    const-string v0, "Launcher.Model"

    const-string v1, "Finally adding missing icons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$2;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iget-object p0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$2;->mData:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;)V

    .line 782
    :cond_0
    return-void
.end method
