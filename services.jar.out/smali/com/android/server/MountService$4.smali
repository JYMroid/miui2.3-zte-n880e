.class Lcom/android/server/MountService$4;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const-string v7, "MountService"

    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v2, v4}, Lcom/android/server/MountService;->enableShared(Z)V

    :try_start_0
    const-string v2, "MountService"

    const-string v3, "Disabling UMS after cable disconnect"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    const-string v4, "ums"

    const/4 v5, 0x0

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v1

    .local v1, rc:I
    if-eqz v1, :cond_1

    const-string v2, "MountService"

    const-string v3, "Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #rc:I
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "MountService"

    const-string v2, "Failed to mount media on UMS enabled-disconnect"

    invoke-static {v7, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
