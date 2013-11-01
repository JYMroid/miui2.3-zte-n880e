.class public Lcom/broadcom/bt/service/opp/OppEventLoop;
.super Lcom/broadcom/bt/service/framework/BaseEventLoop;
.source "OppEventLoop.java"

# interfaces
.implements Lcom/broadcom/bt/service/opp/OppConstants;


# static fields
.field private static final TAG:Ljava/lang/String; = "OppEventLoop"

.field private static final V:Z = true


# instance fields
.field mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/opp/IOppCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mOpsAccessGranted:Z

.field mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "OppEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USE_STANDALONE_EVENT_LOOP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/broadcom/bt/service/opp/OppServiceConfig;->USE_STANDALONE_EVENT_LOOP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppServiceConfig;->USE_STANDALONE_EVENT_LOOP:Z

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->classInitNative(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseEventLoop;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mOpsAccessGranted:Z

    return-void
.end method

.method private static native classInitNative(Z)V
.end method

.method private native clearObexEventLoopNative()V
.end method

.method private createOpcIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "action"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "actionType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createOpsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "action"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "actionType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createVcardIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "action"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "actionType"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private native initObexEventLoopNative()V
.end method

.method private native isEventLoopRunningNative()Z
.end method

.method private native startEventLoopNative()V
.end method

.method private native stopEventLoopNative()V
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "OppEventLoop"

    const-string v1, "Finishing OPP Event Loop...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->clearObexEventLoopNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "bluetooth_opp_service"

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->initObexEventLoopNative()V

    return-void
.end method

.method declared-synchronized onOpOwnerVcardNotSet(Ljava/lang/String;)V
    .locals 4
    .parameter "filePath"

    .prologue
    const-string v1, "OppEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v1, "OppEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpOwnerVcardNotSet ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.broadcom.bt.app.opp.action.ON_OP_OWNER_VCARD_NOT_SET"

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->createVcardIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, i:Landroid/content/Intent;
    const-string v1, "FILEPATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "OppEventLoop"

    const-string v2, "Leaving onOpOwnerVcardNotSet ()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #i:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onOpcClose(I)V
    .locals 4
    .parameter "status"

    .prologue
    const-string v1, "OppEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v1, "OppEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpcClose ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPC_CLOSE"

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->createOpcIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, i:Landroid/content/Intent;
    const-string v1, "STATUS"

    int-to-byte v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "OppEventLoop"

    const-string v2, "Leaving onOpcClose()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #i:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onOpcEnable()V
    .locals 3

    .prologue
    const-string v0, "OppEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v0, "OppEventLoop"

    const-string v1, "onOpcEnable()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPC_ENABLE"

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->createOpcIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v0, "OppEventLoop"

    const-string v1, "Leaving onOpcEnable()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onOpcObjectPushed(ILjava/lang/String;)V
    .locals 4
    .parameter "status"
    .parameter "filePath"

    .prologue
    const-string v1, "OppEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v1, "OppEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpcObjectPushed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPC_OBJECT_PUSHED"

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->createOpcIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, i:Landroid/content/Intent;
    const-string v1, "STATUS"

    int-to-byte v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    const-string v1, "FILEPATH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "OppEventLoop"

    const-string v2, "Leaving onOpcObjectPushed()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #i:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onOpcObjectReceived(ILjava/lang/String;)V
    .locals 4
    .parameter "status"
    .parameter "filePath"

    .prologue
    const-string v1, "OppEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v1, "OppEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpcObjectReceived("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.broadcom.bt.app.opp.action.ACTION_ON_OPC_OBJECT_PUSHED"

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->createOpcIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, i:Landroid/content/Intent;
    const-string v1, "STATUS"

    int-to-byte v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    const-string v1, "FILEPATH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "OppEventLoop"

    const-string v2, "Leaving onOpcObjectReceived()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #i:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onOpcOpen()V
    .locals 3

    .prologue
    const-string v0, "OppEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v0, "OppEventLoop"

    const-string v1, "onOpcOpen()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPC_OPEN"

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->createOpcIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v0, "OppEventLoop"

    const-string v1, "Leavaing onOpcOpen()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onOpcProgress(II)V
    .locals 4
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    const-string v1, "OppEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v1, "OppEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpcProgress("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPC_PROGRESS"

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->createOpcIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, i:Landroid/content/Intent;
    const-string v1, "BYTES_TRANSFERRED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TOTAL_BYTES"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "OppEventLoop"

    const-string v2, "Leaving onOpcProgress()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #i:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 8
    .parameter "peerDeviceName"
    .parameter "peerBDAddress"
    .parameter "operation"
    .parameter "format"
    .parameter "filePath"
    .parameter "totalBytes"

    .prologue
    const-string v1, "OppEventLoop"

    const-string v1, ":"

    monitor-enter p0

    :try_start_0
    const-string v1, "OppEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpsAccessRequest("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->createOpsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, i:Landroid/content/Intent;
    const-string v1, "bluetooth_opp_service"

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createAccessRequest(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "OppEventLoop"

    const-string v2, "Leaving onOpsAccessRequest()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #i:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onOpsClose()V
    .locals 3

    .prologue
    const-string v0, "OppEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v0, "OppEventLoop"

    const-string v1, "onOpsClose()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPS_CLOSE"

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->createOpsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v0, "OppEventLoop"

    const-string v1, "Leaving onOpsClose()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onOpsObjectReceived(ILjava/lang/String;)V
    .locals 4
    .parameter "format"
    .parameter "filePath"

    .prologue
    const-string v1, "OppEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v1, "OppEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpcObjectReceived("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPS_OBJECT_RECEIVED"

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->createOpsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, i:Landroid/content/Intent;
    const-string v1, "broadcom.android.bluetooth.intent.FILE_FORMAT"

    int-to-byte v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    const-string v1, "FILEPATH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "OppEventLoop"

    const-string v2, "Leaving onOpcObjectReceived()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #i:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onOpsOpen()V
    .locals 2

    .prologue
    const-string v0, "OppEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v0, "OppEventLoop"

    const-string v1, "onOpsOpen()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OppEventLoop"

    const-string v1, "Leaving onOpsOpen()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onOpsProgress(II)V
    .locals 4
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    const-string v1, "OppEventLoop"

    monitor-enter p0

    :try_start_0
    const-string v1, "OppEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpsProgress("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.broadcom.bt.app.opp.action.ON_OPS_PROGRESS"

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->createOpsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, i:Landroid/content/Intent;
    const-string v1, "BYTES_TRANSFERRED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TOTAL_BYTES"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "OppEventLoop"

    const-string v2, "Leaving onOpsProgress()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #i:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppServiceConfig;->USE_STANDALONE_EVENT_LOOP:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OppEventLoop"

    const-string v1, "Starting OPP Event Loop as Standalone..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->startEventLoopNative()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mStarted:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mOpsAccessGranted:Z

    iget-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mStarted:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppServiceConfig;->USE_STANDALONE_EVENT_LOOP:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OppEventLoop"

    const-string v1, "Stopping standalone OPP Event Loop..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->stopEventLoopNative()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mStarted:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method
