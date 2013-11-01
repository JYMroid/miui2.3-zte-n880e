.class public Lcom/android/server/CNE$CneCallbackAdapter;
.super Landroid/net/IConSvcEventListener$Stub;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CneCallbackAdapter"
.end annotation


# instance fields
.field protected mId:I

.field protected mLsmh:Landroid/net/ILinkSocketMessageHandler;

.field final synthetic this$0:Lcom/android/server/CNE;


# direct methods
.method public constructor <init>(Lcom/android/server/CNE;ILandroid/net/ILinkSocketMessageHandler;)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "lsmh"

    .prologue
    iput-object p1, p0, Lcom/android/server/CNE$CneCallbackAdapter;->this$0:Lcom/android/server/CNE;

    invoke-direct {p0}, Landroid/net/IConSvcEventListener$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/CNE$CneCallbackAdapter;->mId:I

    iput p2, p0, Lcom/android/server/CNE$CneCallbackAdapter;->mId:I

    iput-object p3, p0, Lcom/android/server/CNE$CneCallbackAdapter;->mLsmh:Landroid/net/ILinkSocketMessageHandler;

    return-void
.end method


# virtual methods
.method public onBetterLinkAvail(Landroid/net/LinkInfo;)V
    .locals 4
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "CneCallbackAdapter"

    const-string v1, "onBetterLinkAvail EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/CNE$CneCallbackAdapter;->this$0:Lcom/android/server/CNE;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/CNE$CneCallbackAdapter;->mId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/CNE;->rejectSwitch_LP(IILandroid/net/LinkInfo;Z)Z

    iget-object v0, p0, Lcom/android/server/CNE$CneCallbackAdapter;->mLsmh:Landroid/net/ILinkSocketMessageHandler;

    invoke-interface {v0}, Landroid/net/ILinkSocketMessageHandler;->onBetterLinkAvail()V

    return-void
.end method

.method public onGetLinkFailure(I)V
    .locals 2
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "CneCallbackAdapter"

    const-string v1, "onGetLinkFailure EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/CNE$CneCallbackAdapter;->mLsmh:Landroid/net/ILinkSocketMessageHandler;

    invoke-interface {v0, p1}, Landroid/net/ILinkSocketMessageHandler;->onGetLinkFailure(I)V

    return-void
.end method

.method public onLinkAvail(Landroid/net/LinkInfo;)V
    .locals 7
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-string v0, "CneCallbackAdapter"

    const-string v1, "onLinkAvail EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/CNE$CneCallbackAdapter;->this$0:Lcom/android/server/CNE;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/CNE$CneCallbackAdapter;->mId:I

    move-object v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/CNE;->reportLinkSatisfaction_LP(IILandroid/net/LinkInfo;ZZ)Z

    new-instance v6, Landroid/net/LinkProperties;

    invoke-direct {v6}, Landroid/net/LinkProperties;-><init>()V

    .local v6, prop:Landroid/net/LinkProperties;
    invoke-virtual {p1}, Landroid/net/LinkInfo;->getIpAddr()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/net/LinkProperties;->addAddress(Ljava/net/InetAddress;)V

    iget-object v0, p0, Lcom/android/server/CNE$CneCallbackAdapter;->mLsmh:Landroid/net/ILinkSocketMessageHandler;

    invoke-interface {v0, v6}, Landroid/net/ILinkSocketMessageHandler;->onLinkAvail(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public onLinkLost(Landroid/net/LinkInfo;)V
    .locals 2
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "CneCallbackAdapter"

    const-string v1, "onLinkLost EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/CNE$CneCallbackAdapter;->mLsmh:Landroid/net/ILinkSocketMessageHandler;

    invoke-interface {v0}, Landroid/net/ILinkSocketMessageHandler;->onLinkLost()V

    return-void
.end method
