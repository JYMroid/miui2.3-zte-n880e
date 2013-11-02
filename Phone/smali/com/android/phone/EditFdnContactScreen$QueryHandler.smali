.class Lcom/android/phone/EditFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    .line 505
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 506
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 560
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    .line 515
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const-string v4, "onInsertComplete"

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 516
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V
    invoke-static {v3, v6}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;Z)V

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, bFull:Z
    const/4 v1, 0x0

    .line 523
    .local v1, bSuccess:Z
    if-eqz p3, :cond_2

    .line 525
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 526
    .local v2, status:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 528
    const-string v3, "Full"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 530
    const/4 v0, 0x1

    .line 546
    .end local v2           #status:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZZ)V
    invoke-static {v3, v1, v6, v0}, Lcom/android/phone/EditFdnContactScreen;->access$900(Lcom/android/phone/EditFdnContactScreen;ZZZ)V

    .line 549
    return-void

    .line 532
    .restart local v2       #status:Ljava/lang/String;
    :cond_1
    const-string v3, "Error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 538
    const/4 v1, 0x1

    goto :goto_0

    .line 543
    .end local v2           #status:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const-string v4, "uri == null"

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 510
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 553
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const-string v1, "onUpdateComplete"

    #calls: Lcom/android/phone/EditFdnContactScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;Z)V

    .line 555
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    if-lez p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/EditFdnContactScreen;->access$1000(Lcom/android/phone/EditFdnContactScreen;ZZ)V

    .line 556
    return-void

    :cond_0
    move v1, v2

    .line 555
    goto :goto_0
.end method
