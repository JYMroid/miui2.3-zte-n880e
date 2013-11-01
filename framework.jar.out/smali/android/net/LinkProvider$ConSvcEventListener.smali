.class Landroid/net/LinkProvider$ConSvcEventListener;
.super Landroid/net/IConSvcEventListener$Stub;
.source "LinkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConSvcEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/LinkProvider;


# direct methods
.method private constructor <init>(Landroid/net/LinkProvider;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/LinkProvider$ConSvcEventListener;->this$0:Landroid/net/LinkProvider;

    invoke-direct {p0}, Landroid/net/IConSvcEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/LinkProvider;Landroid/net/LinkProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/LinkProvider$ConSvcEventListener;-><init>(Landroid/net/LinkProvider;)V

    return-void
.end method


# virtual methods
.method public onBetterLinkAvail(Landroid/net/LinkInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    iget-object v1, p0, Landroid/net/LinkProvider$ConSvcEventListener;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/LinkProvider;->access$200(Landroid/net/LinkProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/net/LinkProvider$ConSvcEventListener;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/LinkProvider;->access$200(Landroid/net/LinkProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onGetLinkFailure(I)V
    .locals 4
    .parameter "reason"

    .prologue
    iget-object v1, p0, Landroid/net/LinkProvider$ConSvcEventListener;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/LinkProvider;->access$200(Landroid/net/LinkProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/net/LinkProvider$ConSvcEventListener;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/LinkProvider;->access$200(Landroid/net/LinkProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onLinkAvail(Landroid/net/LinkInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    iget-object v1, p0, Landroid/net/LinkProvider$ConSvcEventListener;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/LinkProvider;->access$200(Landroid/net/LinkProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/net/LinkProvider$ConSvcEventListener;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/LinkProvider;->access$200(Landroid/net/LinkProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onLinkLost(Landroid/net/LinkInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    iget-object v1, p0, Landroid/net/LinkProvider$ConSvcEventListener;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/LinkProvider;->access$200(Landroid/net/LinkProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/net/LinkProvider$ConSvcEventListener;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/LinkProvider;->access$200(Landroid/net/LinkProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
