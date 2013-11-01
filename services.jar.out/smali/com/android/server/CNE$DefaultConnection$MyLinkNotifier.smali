.class Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;
.super Landroid/net/IConSvcEventListener$Stub;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CNE$DefaultConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLinkNotifier"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/CNE$DefaultConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/CNE$DefaultConnection;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->this$1:Lcom/android/server/CNE$DefaultConnection;

    invoke-direct {p0}, Landroid/net/IConSvcEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBetterLinkAvail(Landroid/net/LinkInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const-string v0, "CNE_DEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBetterLinkAvail pid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->this$1:Lcom/android/server/CNE$DefaultConnection;

    iget-object v0, v0, Lcom/android/server/CNE$DefaultConnection;->this$0:Lcom/android/server/CNE;

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->getCallingPid()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/CNE;->switchLink_LP(IILandroid/net/LinkInfo;Z)Z

    iget-object v0, p0, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->this$1:Lcom/android/server/CNE$DefaultConnection;

    iget-object v0, v0, Lcom/android/server/CNE$DefaultConnection;->this$0:Lcom/android/server/CNE;

    invoke-virtual {p1}, Landroid/net/LinkInfo;->getNwId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/CNE;->notifyDefaultNwChange(I)V

    return-void
.end method

.method public onGetLinkFailure(I)V
    .locals 0
    .parameter "reason"

    .prologue
    return-void
.end method

.method public onLinkAvail(Landroid/net/LinkInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->this$1:Lcom/android/server/CNE$DefaultConnection;

    iget-object v0, v0, Lcom/android/server/CNE$DefaultConnection;->this$0:Lcom/android/server/CNE;

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->getCallingPid()I

    move-result v2

    move-object v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/CNE;->reportLinkSatisfaction_LP(IILandroid/net/LinkInfo;ZZ)Z

    iget-object v0, p0, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->this$1:Lcom/android/server/CNE$DefaultConnection;

    iget-object v0, v0, Lcom/android/server/CNE$DefaultConnection;->this$0:Lcom/android/server/CNE;

    invoke-virtual {p1}, Landroid/net/LinkInfo;->getNwId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/CNE;->notifyDefaultNwChange(I)V

    return-void
.end method

.method public onLinkLost(Landroid/net/LinkInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    return-void
.end method
