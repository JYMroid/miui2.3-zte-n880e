.class Lcom/android/launcher2/DeleteZone$DeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "DeleteZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DeleteZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteObserver"
.end annotation


# instance fields
.field private mInfo:Lcom/android/launcher2/ShortcutInfo;

.field final synthetic this$0:Lcom/android/launcher2/DeleteZone;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/DeleteZone;Lcom/android/launcher2/ShortcutInfo;)V
    .locals 0
    .parameter
    .parameter "info"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/launcher2/DeleteZone$DeleteObserver;->this$0:Lcom/android/launcher2/DeleteZone;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 184
    iput-object p2, p0, Lcom/android/launcher2/DeleteZone$DeleteObserver;->mInfo:Lcom/android/launcher2/ShortcutInfo;

    .line 185
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/DeleteZone$DeleteObserver;)Lcom/android/launcher2/ShortcutInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone$DeleteObserver;->mInfo:Lcom/android/launcher2/ShortcutInfo;

    return-object v0
.end method


# virtual methods
.method public packageDeleted(Z)V
    .locals 2
    .parameter "succeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone$DeleteObserver;->this$0:Lcom/android/launcher2/DeleteZone;

    #getter for: Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v0}, Lcom/android/launcher2/DeleteZone;->access$000(Lcom/android/launcher2/DeleteZone;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/DeleteZone$DeleteObserver$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/DeleteZone$DeleteObserver$1;-><init>(Lcom/android/launcher2/DeleteZone$DeleteObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    :cond_0
    return-void
.end method
