.class Lcom/android/launcher2/DeleteZone$DeleteObserver$1;
.super Ljava/lang/Object;
.source "DeleteZone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeleteZone$DeleteObserver;->packageDeleted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/DeleteZone$DeleteObserver;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeleteZone$DeleteObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/launcher2/DeleteZone$DeleteObserver$1;->this$1:Lcom/android/launcher2/DeleteZone$DeleteObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone$DeleteObserver$1;->this$1:Lcom/android/launcher2/DeleteZone$DeleteObserver;

    iget-object v0, v0, Lcom/android/launcher2/DeleteZone$DeleteObserver;->this$0:Lcom/android/launcher2/DeleteZone;

    #getter for: Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v0}, Lcom/android/launcher2/DeleteZone;->access$000(Lcom/android/launcher2/DeleteZone;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 193
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone$DeleteObserver$1;->this$1:Lcom/android/launcher2/DeleteZone$DeleteObserver;

    iget-object v0, v0, Lcom/android/launcher2/DeleteZone$DeleteObserver;->this$0:Lcom/android/launcher2/DeleteZone;

    #getter for: Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v0}, Lcom/android/launcher2/DeleteZone;->access$000(Lcom/android/launcher2/DeleteZone;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DeleteZone$DeleteObserver$1;->this$1:Lcom/android/launcher2/DeleteZone$DeleteObserver;

    #getter for: Lcom/android/launcher2/DeleteZone$DeleteObserver;->mInfo:Lcom/android/launcher2/ShortcutInfo;
    invoke-static {v1}, Lcom/android/launcher2/DeleteZone$DeleteObserver;->access$100(Lcom/android/launcher2/DeleteZone$DeleteObserver;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->addItem(Lcom/android/launcher2/ItemInfo;Z)V

    .line 194
    return-void
.end method
