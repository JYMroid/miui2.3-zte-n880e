.class public final Lcom/android/internal/telephony/AdnRecordCache;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field static final EVENT_UPDATE_ANR_DONE:I = 0x5

.field static final EVENT_UPDATE_EMAIL_DONE:I = 0x3

.field static final EVENT_UPDATE_IAP_DONE:I = 0x6

.field static final LOG_TAG:Ljava/lang/String; = "RIL_AdnRecordCache"

.field static final adnExt1_Index:I = 0x1

.field static final adn_Index:I = 0x0

.field static final anrExt1_Index:I = 0x2

.field static final anr_Index:I = 0x4

.field static final email_Index:I = 0x3

.field static final pbr_Index:I = 0x5


# instance fields
.field adnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field adnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field anrLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field public mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

.field pbrIndex:I

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field protected recordSize:[I

.field userWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 2
    .parameter "fh"

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->pbrIndex:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->anrLikeWaiters:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    return-void
.end method

.method private clearUserWriters()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private clearWaiters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .local v3, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private getpbrNumbers()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getpbrNumbers()I

    move-result v0

    return v0
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .local v2, waiter:Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "errString"

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public GetAnriniap()I
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnriniap()I

    move-result v0

    .local v0, Anriniap:I
    const-string v1, "RIL_AdnRecordCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetAnriniap Anriniap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public GetEmailiniap()I
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailiniap()I

    move-result v0

    .local v0, Emailiniap:I
    const-string v1, "RIL_AdnRecordCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetEmailiniap Emailiniap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public extensionEfForEf(I)I
    .locals 1
    .parameter "efid"

    .prologue
    const/16 v0, 0x6f4a

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEXT1efid()I

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/16 v0, 0x6fc8

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x6f4c

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x6f4b

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_1
    .end sparse-switch
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    move-object v0, p0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .end local p1
    :goto_0
    :pswitch_0
    return-void

    .restart local p1
    :pswitch_1
    const-string v19, "RIL_AdnRecordCache"

    const-string v20, "MY EVENT_LOAD_ALL_ADN_LIKE_DONE"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/os/AsyncResult;

    .local v9, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v10, v0

    .local v10, efid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .local v18, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    move-object v0, v9

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object v0, v9

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move v1, v10

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v10           #efid:I
    .end local v18           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :catch_0
    move-exception v19

    move-object/from16 v12, v19

    .local v12, ex:Ljava/lang/Exception;
    const-string v19, "RIL_AdnRecordCache"

    const-string v20, "adncache Exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v12           #ex:Ljava/lang/Exception;
    .restart local p1
    :pswitch_2
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/os/AsyncResult;

    .restart local v9       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v10, v0

    .restart local v10       #efid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .local v16, index:I
    move-object v0, v9

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v7, v0

    .local v7, adn:Lcom/android/internal/telephony/AdnRecord;
    move-object v0, v9

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    const/16 v19, 0x6f3a

    move v0, v10

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/16 v19, 0x6f3b

    move v0, v10

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    :cond_1
    const/16 v19, 0x6f3b

    move v0, v10

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/16 v19, 0x0

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/16 v19, 0x1

    sub-int v19, v16, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Message;

    .local v17, response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    const/16 v19, 0x0

    move-object v0, v9

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v17           #response:Landroid/os/Message;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->pbrIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v19

    const/16 v20, 0x1

    sub-int v20, v16, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v10           #efid:I
    .end local v16           #index:I
    .restart local p1
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/os/AsyncResult;

    .restart local v9       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v10, v0

    .restart local v10       #efid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v3, v0

    .local v3, Anrnumber:I
    move-object v0, v9

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v8, v0

    .local v8, anradn:Lcom/android/internal/telephony/AdnRecord;
    move-object v0, v9

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->pbrIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getanrlist(I)Ljava/util/ArrayList;

    move-result-object v19

    const/16 v20, 0x1

    sub-int v20, v3, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .local v6, Response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    const/16 v19, 0x0

    move-object v0, v9

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    move-object v0, v6

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v3           #Anrnumber:I
    .end local v6           #Response:Landroid/os/Message;
    .end local v8           #anradn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v10           #efid:I
    .restart local p1
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/os/AsyncResult;

    .restart local v9       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v10, v0

    .restart local v10       #efid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v4, v0

    .local v4, Emailrecnmber:I
    move-object v0, v9

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v11, v0

    .local v11, emailadn:Lcom/android/internal/telephony/AdnRecord;
    move-object v0, v9

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->pbrIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getemaillist(I)Ljava/util/ArrayList;

    move-result-object v19

    const/16 v20, 0x1

    sub-int v20, v4, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .local v5, REsponse:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    const/16 v19, 0x0

    move-object v0, v9

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v4           #Emailrecnmber:I
    .end local v5           #REsponse:Landroid/os/Message;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v10           #efid:I
    .end local v11           #emailadn:Lcom/android/internal/telephony/AdnRecord;
    .restart local p1
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/os/AsyncResult;

    .restart local v9       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v10, v0

    .restart local v10       #efid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v14, v0

    .local v14, iaprecnmber:I
    move-object v0, v9

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .local v13, iap:[B
    move-object v0, v9

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->pbrIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getiaplist(I)Ljava/util/ArrayList;

    move-result-object v19

    const/16 v20, 0x1

    sub-int v20, v14, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Message;

    .local v15, iapresponse:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    const/16 v19, 0x0

    move-object v0, v9

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    move-object v0, v15

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public requestAdnSize(I)I
    .locals 6
    .parameter "efid"

    .prologue
    const-string v5, ""

    const/4 v0, 0x0

    .local v0, curSimSize:I
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    .local v2, rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    .end local v2           #rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_2
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestAdnSize cursimsize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public requestAdnTotalSize(I)I
    .locals 4
    .parameter "efid"

    .prologue
    const/4 v0, 0x0

    .local v0, simTotalNumbers:I
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    const-string v1, "RIL_AdnRecordCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAdnTotalSize ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public requestEXT1Size(I)I
    .locals 6
    .parameter "efid"

    .prologue
    const/16 v4, 0xff

    const/4 v2, 0x0

    .local v2, temp:I
    const/4 v1, 0x0

    .local v1, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    const/16 v3, 0x6f3a

    if-ne p1, v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p0}, Lcom/android/internal/telephony/AdnRecord;->getExtNumber()I

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p0}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtNumber()I

    move-result v3

    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .restart local p0
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .end local p0
    :cond_3
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestEXT1Size ext1 current size ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public requestGetAdnFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnFileld(I)I

    move-result v0

    return v0
.end method

.method public requestGetAllAdnFileld()[I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllAdnFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllAnrFileld()[I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllAnrFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllEmailFileld()[I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllEmailFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllExt1Fileld()[I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllExt1Fileld()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllIapFileld()[I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllIapFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllSfiFileld()[I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllSfiFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAnrFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrFileId(I)I

    move-result v0

    return v0
.end method

.method public requestGetEmailFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailFileId(I)I

    move-result v0

    return v0
.end method

.method public requestGetExt1Fileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getExt1Fileld(I)I

    move-result v0

    return v0
.end method

.method public requestGetIapFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getIapFileId(I)I

    move-result v0

    return v0
.end method

.method public requestGetSfiFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSfiFileld(I)I

    move-result v0

    return v0
.end method

.method public requestIsANRTYP2()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isANRTYP2()Z

    move-result v0

    return v0
.end method

.method public requestIsEMAILTYP2()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v0

    return v0
.end method

.method public requestIsSupANR(I)Z
    .locals 1
    .parameter "pbrindex"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportANR(I)Z

    move-result v0

    return v0
.end method

.method public requestIsSupEmail(I)Z
    .locals 1
    .parameter "pbrindex"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportEmail(I)Z

    move-result v0

    return v0
.end method

.method public requestIsSupIAP(I)Z
    .locals 1
    .parameter "pbrindex"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportIAP(I)Z

    move-result v0

    return v0
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 6
    .parameter "efid"
    .parameter "extensionEf"
    .parameter "response"

    .prologue
    const/16 v2, 0x4f30

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_0
    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_1
    return-void

    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .local v1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1       #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-gez p2, :cond_4

    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto :goto_1
.end method

.method public requestPbrFileld()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimRecordSize()I

    move-result v0

    return v0
.end method

.method public requestUsimAdnSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadUsimRecord()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadUsimRecord()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecordCache;->clearWaiters()V

    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecordCache;->clearUserWriters()V

    return-void
.end method

.method public searchAdnIndex(ILcom/android/internal/telephony/AdnRecord;I)I
    .locals 10
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "pbrIndex"

    .prologue
    const/16 v9, 0x6f3b

    const/4 v8, -0x1

    const-string v7, "RIL_AdnRecordCache"

    const-string v5, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchAdnIndex pbrIndex=  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x6f3a

    if-eq p1, v5, :cond_0

    if-ne p1, v9, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v4

    .local v4, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_0
    if-nez v4, :cond_2

    const-string v5, "RIL_AdnRecordCache"

    const-string v5, "searchAdnIndex oldAdnList is null "

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .end local p0
    :goto_1
    return v5

    .end local v4           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    .restart local p0
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v5, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v4

    .restart local v4       #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .local v1, index:I
    const/4 v0, 0x1

    .local v0, count:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne p1, v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/AdnRecord;->isFDNEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v0

    :cond_3
    :goto_3
    const-string v5, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchAdnIndex index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v8, :cond_6

    const-string v5, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchAdnIndex Adn record don\'t exist for oldAdn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .local v3, itoldadn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v0

    goto :goto_3

    .end local v3           #itoldadn:Lcom/android/internal/telephony/AdnRecord;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v5, v1

    goto :goto_1
.end method

.method public searchExt1Index(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;[II)[I
    .locals 16
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "index"
    .parameter "extsize"

    .prologue
    const/4 v10, 0x0

    .local v10, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    const/4 v12, 0x0

    .local v12, oldAnrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v5

    .local v5, extensionEF:I
    const/4 v4, 0x0

    .local v4, extCount:I
    const/4 v13, 0x1

    const/16 v14, 0xff

    aput v14, p4, v13

    const/4 v13, 0x2

    const/16 v14, 0xff

    aput v14, p4, v13

    const/4 v9, 0x0

    .local v9, oldAdnHasEXT1:Z
    const/4 v11, 0x0

    .local v11, oldAnrHasEXT1:Z
    const/4 v8, 0x0

    .local v8, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-gez v5, :cond_1

    const-string v13, "RIL_AdnRecordCache"

    const-string v14, "ext1 is not exist"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local p0
    :cond_0
    :goto_0
    return-object p4

    .restart local p0
    :cond_1
    if-lez p5, :cond_0

    add-int/lit8 v4, p5, 0x1

    const-string v13, "RIL_AdnRecordCache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "searchExt1Index extsize "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v6, v4, [I

    .local v6, extnumber:[I
    const/16 v13, 0x6f3a

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v10

    :goto_1
    if-nez v10, :cond_3

    const/4 v13, 0x1

    const/4 v14, -0x1

    aput v14, p4, v13

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object v13, v0

    const/4 v14, 0x5

    aget v14, p4, v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object v13, v0

    const/4 v14, 0x5

    aget v14, p4, v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getanrlist(I)Ljava/util/ArrayList;

    move-result-object v12

    goto :goto_1

    :cond_3
    const/4 v13, 0x4

    aget v13, p4, v13

    const/16 v14, 0xff

    if-eq v13, v14, :cond_4

    const/4 v13, 0x4

    aget v13, p4, v13

    if-lez v13, :cond_4

    if-nez v12, :cond_4

    const/4 v13, 0x1

    const/4 v14, -0x1

    aput v14, p4, v13

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    aget v13, p4, v13

    const/16 v14, 0xff

    if-eq v13, v14, :cond_5

    const/4 v13, 0x0

    aget v13, p4, v13

    if-lez v13, :cond_5

    const/4 v13, 0x1

    const/4 v14, 0x0

    aget v14, p4, v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/AdnRecord;->getExtNumber()I

    move-result v14

    aput v14, p4, v13

    :cond_5
    const/4 v13, 0x1

    aget v13, p4, v13

    const/16 v14, 0xff

    if-eq v13, v14, :cond_6

    const/4 v13, 0x1

    aget v13, p4, v13

    if-lez v13, :cond_6

    const-string v13, "RIL_AdnRecordCache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "searchExt1Index adn update ext1 index[adnExt1_Index] = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget v15, p4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x14

    if-ge v13, v14, :cond_6

    const/4 v13, 0x0

    aget v13, p4, v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/AdnRecord;

    const/16 v13, 0xff

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->setExtNumber(I)V

    :cond_6
    const/4 v13, 0x4

    aget v13, p4, v13

    const/16 v14, 0xff

    if-eq v13, v14, :cond_7

    const/4 v13, 0x4

    aget v13, p4, v13

    if-lez v13, :cond_7

    if-eqz v12, :cond_7

    const/4 v13, 0x2

    const/4 v14, 0x4

    aget v14, p4, v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtNumber()I

    move-result v14

    aput v14, p4, v13

    :cond_7
    const/4 v13, 0x2

    aget v13, p4, v13

    const/16 v14, 0xff

    if-eq v13, v14, :cond_8

    const/4 v13, 0x2

    aget v13, p4, v13

    if-lez v13, :cond_8

    const-string v13, "RIL_AdnRecordCache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "searchExt1Index anr update ext1 index[anrExt1_Index] = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget v15, p4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x14

    if-ge v13, v14, :cond_8

    const/4 v13, 0x4

    aget v13, p4, v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/AdnRecord;

    const/16 v13, 0xff

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->setAnrExtNumber(I)V

    :cond_8
    if-nez v9, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x14

    if-gt v13, v14, :cond_a

    :cond_9
    if-nez v11, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x14

    if-le v13, v14, :cond_0

    :cond_a
    const-string v13, "RIL_AdnRecordCache"

    const-string v14, "searchExt1Index insert ext1"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v4, :cond_b

    const/16 v13, 0xff

    aput v13, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_d

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/AdnRecord;->getExtNumber()I

    move-result v2

    .local v2, adntemp:I
    const/16 v13, 0xff

    if-eq v2, v13, :cond_c

    const/4 v13, 0x1

    aput v13, v6, v2

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .end local v2           #adntemp:I
    :cond_d
    if-eqz v12, :cond_f

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_f

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtNumber()I

    move-result v3

    .local v3, anrtemp:I
    const/16 v13, 0xff

    if-eq v3, v13, :cond_e

    const/4 v13, 0x1

    aput v13, v6, v3

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .end local v3           #anrtemp:I
    :cond_f
    if-nez v9, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x14

    if-le v13, v14, :cond_12

    const/4 v7, 0x1

    :goto_5
    if-ge v7, v4, :cond_10

    aget v13, v6, v7

    const/16 v14, 0xff

    if-ne v13, v14, :cond_11

    aput v7, v6, v7

    const/4 v13, 0x1

    aget v14, v6, v7

    aput v14, p4, v13

    :cond_10
    const-string v13, "RIL_AdnRecordCache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "searchExt1Index insert adn ext1 index[adnExt1_Index] ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget v15, p4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    aget v13, p4, v13

    const/16 v14, 0xff

    if-ne v13, v14, :cond_12

    const/4 v13, 0x1

    const/4 v14, -0x1

    aput v14, p4, v13

    const-string v13, "RIL_AdnRecordCache"

    const-string v14, "adn ext1 is full"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_12
    if-nez v11, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x14

    if-le v13, v14, :cond_0

    const/4 v7, 0x1

    :goto_6
    if-ge v7, v4, :cond_13

    aget v13, v6, v7

    const/16 v14, 0xff

    if-ne v13, v14, :cond_14

    aput v7, v6, v7

    const/4 v13, 0x2

    aget v14, v6, v7

    aput v14, p4, v13

    :cond_13
    const-string v13, "RIL_AdnRecordCache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "searchExt1Index insert adn ext1 index[anrExt1_Index] ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget v15, p4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x2

    aget v13, p4, v13

    const/16 v14, 0xff

    if-ne v13, v14, :cond_0

    const/4 v13, 0x2

    const/4 v14, -0x1

    aput v14, p4, v13

    const-string v13, "RIL_AdnRecordCache"

    const-string v14, "anr ext1 is full"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_6
.end method

.method public searchIndex(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)[I
    .locals 22
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "extsize"
    .parameter "srecid"

    .prologue
    const-string v4, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchIndex efid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " srecid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x6

    new-array v8, v4, [I

    .local v8, index:[I
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v8, v4

    const/4 v4, 0x1

    const/4 v5, -0x1

    aput v5, v8, v4

    const/4 v4, 0x2

    const/4 v5, -0x1

    aput v5, v8, v4

    const/4 v4, 0x3

    const/4 v5, -0x1

    aput v5, v8, v4

    const/4 v4, 0x4

    const/4 v5, -0x1

    aput v5, v8, v4

    const/4 v4, 0x5

    const/4 v5, -0x1

    aput v5, v8, v4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/AdnRecordCache;->getpbrNumbers()I

    move-result v19

    .local v19, pbnumber:I
    if-nez p5, :cond_0

    const-string p5, ""

    :cond_0
    const-string v4, ""

    move-object/from16 v0, p5

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x6f3a

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_1

    const/16 v4, 0x6f3b

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_6

    :cond_1
    const/4 v4, 0x5

    const/4 v5, 0x0

    aput v5, v8, v4

    const-string v4, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchIndex  index[pbr_Index]  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    aget v6, v8, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x5

    aget v5, v8, v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/AdnRecordCache;->searchAdnIndex(ILcom/android/internal/telephony/AdnRecord;I)I

    move-result v5

    aput v5, v8, v4

    const/4 v4, 0x0

    aget v4, v8, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    move-object/from16 v16, v8

    .end local v8           #index:[I
    .local v16, index:[I
    :goto_0
    return-object v16

    .end local v16           #index:[I
    .restart local v8       #index:[I
    :cond_2
    const/16 v4, 0x6f3a

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_3

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/AdnRecordCache;->searchExt1Index(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;[II)[I

    move-result-object v8

    :cond_3
    const/16 v4, 0x6f3b

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_4

    const/4 v4, 0x1

    const/16 v5, 0xff

    aput v5, v8, v4

    :cond_4
    const-string v4, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchIndex  index[adn_Index] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v8, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    const-string v4, ""

    move-object/from16 v0, p5

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v20

    .local v20, recid:[B
    const-string v4, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchIndex recid[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v6, v20, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "recid[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-byte v6, v20, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v20, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v8, v4

    const-string v4, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchIndex index[adn_Index] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v8, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    aget v4, v8, v4

    if-gez v4, :cond_15

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v8, v4

    move-object/from16 v16, v8

    .end local v8           #index:[I
    .restart local v16       #index:[I
    goto/16 :goto_0

    .end local v16           #index:[I
    .end local v20           #recid:[B
    .restart local v8       #index:[I
    :cond_6
    const-string v18, ""

    .local v18, oldemail:Ljava/lang/String;
    const-string v21, ""

    .local v21, tag:Ljava/lang/String;
    const-string v17, ""

    .local v17, number:Ljava/lang/String;
    const-string v11, ""

    .local v11, anr:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v18, v4, v5

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v21

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v11

    :cond_a
    const-string v4, ""

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, ""

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, ""

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, ""

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    const-string v4, "RIL_AdnRecordCache"

    const-string v5, "searchIndex for update or delte and srecid is null  "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->searchsrecid(Lcom/android/internal/telephony/AdnRecord;)Ljava/lang/String;

    move-result-object p5

    const-string v4, ""

    move-object/from16 v0, p5

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v8, v4

    move-object/from16 v16, v8

    .end local v8           #index:[I
    .restart local v16       #index:[I
    goto/16 :goto_0

    .end local v16           #index:[I
    .restart local v8       #index:[I
    :cond_c
    const-string v4, "RIL_AdnRecordCache"

    const-string v5, "searchIndex for insert "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move v0, v14

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    const/4 v4, 0x5

    aput v14, v8, v4

    const/4 v4, 0x0

    const/4 v5, 0x5

    aget v5, v8, v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/AdnRecordCache;->searchAdnIndex(ILcom/android/internal/telephony/AdnRecord;I)I

    move-result v5

    aput v5, v8, v4

    const-string v4, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchIndex index[adn_Index] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v8, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    const/4 v4, 0x5

    aget v4, v8, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsSupEmail(I)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    if-eqz v4, :cond_f

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsEMAILTYP2()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x3

    const/4 v5, 0x5

    aget v5, v8, v5

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->searchemailindex(ILcom/android/internal/telephony/AdnRecord;)I

    move-result v5

    aput v5, v8, v4

    :goto_3
    const-string v4, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchIndex index[email_Index] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget v6, v8, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x5

    aget v4, v8, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsSupANR(I)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsANRTYP2()Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x4

    const/4 v5, 0x5

    aget v5, v8, v5

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->searchanrindex(ILcom/android/internal/telephony/AdnRecord;)I

    move-result v5

    aput v5, v8, v4

    :goto_4
    const-string v4, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchIndex index[anr_Index] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget v6, v8, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    aget v4, v8, v4

    if-lez v4, :cond_13

    const/4 v4, 0x3

    aget v4, v8, v4

    if-lez v4, :cond_13

    const/4 v4, 0x4

    aget v4, v8, v4

    if-lez v4, :cond_13

    :cond_d
    const/4 v4, 0x0

    aget v4, v8, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_14

    move-object/from16 v16, v8

    .end local v8           #index:[I
    .restart local v16       #index:[I
    goto/16 :goto_0

    .end local v16           #index:[I
    .restart local v8       #index:[I
    :cond_e
    const/4 v4, 0x3

    const/4 v5, 0x0

    aget v5, v8, v5

    aput v5, v8, v4

    goto/16 :goto_3

    :cond_f
    const/4 v4, 0x3

    const/16 v5, 0xff

    aput v5, v8, v4

    goto/16 :goto_3

    :cond_10
    const/4 v4, 0x3

    const/16 v5, 0xff

    aput v5, v8, v4

    goto/16 :goto_3

    :cond_11
    const/4 v4, 0x4

    const/4 v5, 0x0

    aget v5, v8, v5

    aput v5, v8, v4

    goto :goto_4

    :cond_12
    const/4 v4, 0x4

    const/16 v5, 0xff

    aput v5, v8, v4

    goto :goto_4

    :cond_13
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    :cond_14
    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/AdnRecordCache;->searchExt1Index(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;[II)[I

    move-result-object v8

    goto/16 :goto_1

    .end local v11           #anr:Ljava/lang/String;
    .end local v14           #i:I
    .end local v17           #number:Ljava/lang/String;
    .end local v18           #oldemail:Ljava/lang/String;
    .end local v21           #tag:Ljava/lang/String;
    .restart local v20       #recid:[B
    :cond_15
    const/16 v4, 0x6f3a

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_16

    const/16 v4, 0x6f3b

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_19

    :cond_16
    const/4 v4, 0x5

    const/4 v5, 0x0

    aput v5, v8, v4

    const/16 v4, 0x6f3a

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_17

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/AdnRecordCache;->searchExt1Index(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;[II)[I

    move-result-object v8

    :cond_17
    const/16 v4, 0x6f3b

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_18

    const/4 v4, 0x1

    const/16 v5, 0xff

    aput v5, v8, v4

    .end local v20           #recid:[B
    :cond_18
    :goto_5
    move-object/from16 v16, v8

    .end local v8           #index:[I
    .restart local v16       #index:[I
    goto/16 :goto_0

    .end local v16           #index:[I
    .restart local v8       #index:[I
    .restart local v20       #recid:[B
    :cond_19
    const/4 v4, 0x5

    const/4 v5, 0x1

    aget-byte v5, v20, v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aput v5, v8, v4

    const-string v4, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchIndex index[pbr_Index] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    aget v6, v8, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    .local v15, iap:[B
    const/4 v10, 0x0

    .local v10, IapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x5

    aget v4, v8, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsSupIAP(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object v4, v0

    const/4 v5, 0x5

    aget v5, v8, v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getiaplist(I)Ljava/util/ArrayList;

    move-result-object v10

    :cond_1a
    if-eqz v10, :cond_1b

    const/4 v4, 0x0

    aget v4, v8, v4

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v4, v5, :cond_1b

    const/4 v4, 0x0

    aget v4, v8, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #iap:[B
    check-cast v15, [B

    .restart local v15       #iap:[B
    :cond_1b
    const/4 v4, 0x5

    aget v4, v8, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsSupEmail(I)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsEMAILTYP2()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/AdnRecordCache;->GetEmailiniap()I

    move-result v13

    .local v13, emailiniap:I
    const-string v4, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchIndex emailiniap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v15, :cond_1e

    const-string v4, "RIL_AdnRecordCache"

    const-string v5, "searchIndex email type2 iap is null "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    const/16 v5, 0xff

    aput v5, v8, v4

    .end local v13           #emailiniap:I
    :goto_6
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1c

    const/4 v4, 0x3

    aget v4, v8, v4

    const/16 v5, 0xff

    if-ne v4, v5, :cond_1c

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    if-eqz v4, :cond_1c

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsEMAILTYP2()Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, 0x3

    const/4 v5, 0x5

    aget v5, v8, v5

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->searchemailindex(ILcom/android/internal/telephony/AdnRecord;)I

    move-result v5

    aput v5, v8, v4

    :cond_1c
    :goto_7
    const-string v4, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchIndex index[email_Index] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget v6, v8, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x5

    aget v4, v8, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsSupANR(I)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsANRTYP2()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/AdnRecordCache;->GetAnriniap()I

    move-result v12

    .local v12, anrliniap:I
    if-nez v15, :cond_22

    const-string v4, "RIL_AdnRecordCache"

    const-string v5, "searchIndex anr type2 iap is null "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    const/16 v5, 0xff

    aput v5, v8, v4

    .end local v12           #anrliniap:I
    :goto_8
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v4, 0x4

    aget v4, v8, v4

    const/16 v5, 0xff

    if-ne v4, v5, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsANRTYP2()Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 v4, 0x4

    const/4 v5, 0x5

    aget v5, v8, v5

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->searchanrindex(ILcom/android/internal/telephony/AdnRecord;)I

    move-result v5

    aput v5, v8, v4

    :cond_1d
    :goto_9
    const-string v4, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchIndex index[anr_Index] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget v6, v8, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/AdnRecordCache;->searchExt1Index(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;[II)[I

    move-result-object v8

    goto/16 :goto_5

    .restart local v13       #emailiniap:I
    :cond_1e
    const/4 v4, 0x3

    aget-byte v5, v15, v13

    and-int/lit16 v5, v5, 0xff

    aput v5, v8, v4

    goto/16 :goto_6

    .end local v13           #emailiniap:I
    :cond_1f
    const/4 v4, 0x3

    const/4 v5, 0x0

    aget v5, v8, v5

    aput v5, v8, v4

    goto/16 :goto_6

    :cond_20
    const/4 v4, 0x3

    const/4 v5, 0x0

    aget v5, v8, v5

    aput v5, v8, v4

    goto/16 :goto_7

    :cond_21
    const/4 v4, 0x3

    const/16 v5, 0xff

    aput v5, v8, v4

    goto/16 :goto_7

    .restart local v12       #anrliniap:I
    :cond_22
    const/4 v4, 0x4

    aget-byte v5, v15, v12

    and-int/lit16 v5, v5, 0xff

    aput v5, v8, v4

    goto/16 :goto_8

    .end local v12           #anrliniap:I
    :cond_23
    const/4 v4, 0x4

    const/4 v5, 0x0

    aget v5, v8, v5

    aput v5, v8, v4

    goto/16 :goto_8

    :cond_24
    const/4 v4, 0x4

    const/4 v5, 0x0

    aget v5, v8, v5

    aput v5, v8, v4

    goto :goto_9

    :cond_25
    const/4 v4, 0x4

    const/16 v5, 0xff

    aput v5, v8, v4

    goto :goto_9
.end method

.method public searchanrindex(ILcom/android/internal/telephony/AdnRecord;)I
    .locals 8
    .parameter "pbrIndex"
    .parameter "oldAnr"

    .prologue
    const-string v7, "RIL_AdnRecordCache"

    const-string v5, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY searchanrindex pbrIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .local v2, count:I
    const/4 v0, -0x1

    .local v0, anrIndex:I
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getanrlist(I)Ljava/util/ArrayList;

    move-result-object v4

    .local v4, oldAnrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-nez v4, :cond_0

    const-string v5, "RIL_AdnRecordCache"

    const-string v5, "MY searchanrindex oldAnrList is null "

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .end local v0           #anrIndex:I
    .end local p0
    .local v1, anrIndex:I
    :goto_0
    return v1

    .end local v1           #anrIndex:I
    .restart local v0       #anrIndex:I
    .restart local p0
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/AdnRecord;->isAnrEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v2

    :cond_1
    const-string v5, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchanrindex anrIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .end local v0           #anrIndex:I
    .restart local v1       #anrIndex:I
    goto :goto_0

    .end local v1           #anrIndex:I
    .restart local v0       #anrIndex:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public searchemailindex(ILcom/android/internal/telephony/AdnRecord;)I
    .locals 7
    .parameter "pbrIndex"
    .parameter "oldEmail"

    .prologue
    const-string v6, "RIL_AdnRecordCache"

    const/4 v0, 0x1

    .local v0, count:I
    const/4 v1, -0x1

    .local v1, emailIndex:I
    const-string v4, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MY searchemailindex pbrIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getemaillist(I)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, oldEmailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/AdnRecord;->isEmailEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v0

    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_0
    :goto_1
    const-string v4, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchemailindex emailIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    .restart local p0
    :cond_2
    const-string v4, "RIL_AdnRecordCache"

    const-string v4, "searchemailindex oldEmailList is null"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public searchsrecid(Lcom/android/internal/telephony/AdnRecord;)Ljava/lang/String;
    .locals 9
    .parameter "oldAdn"

    .prologue
    const-string v4, ""

    .local v4, srecid:Ljava/lang/String;
    const/4 v1, -0x1

    .local v1, index:I
    const/4 v0, 0x0

    .local v0, count:I
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v3

    .local v3, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/AdnRecord;->isUsimEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v0

    :cond_0
    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    move-object v5, v4

    .end local v4           #srecid:Ljava/lang/String;
    .local v5, srecid:Ljava/lang/String;
    :goto_1
    return-object v5

    .end local v5           #srecid:Ljava/lang/String;
    .restart local v4       #srecid:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p0}, Lcom/android/internal/telephony/AdnRecord;->getRecid()Ljava/lang/String;

    move-result-object v4

    const-string v6, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchsrecid srecid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .end local v4           #srecid:Ljava/lang/String;
    .restart local v5       #srecid:Ljava/lang/String;
    goto :goto_1
.end method

.method public updateAdnByIndex(IILcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V
    .locals 14
    .parameter "efid"
    .parameter "pbrIndex"
    .parameter "adn"
    .parameter "extensionIndex"
    .parameter "recordIndex"
    .parameter "pin2"
    .parameter "response"

    .prologue
    move/from16 v0, p2

    move-object v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordCache;->pbrIndex:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v8

    .local v8, extensionEF:I
    if-gez v8, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF is not known ADN-like EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object/from16 v1, p7

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Message;

    .local v13, pendingResponse:Landroid/os/Message;
    if-eqz v13, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Have pending update for EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object/from16 v1, p7

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object v0, v5

    move v1, p1

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v5, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v6, 0x2

    move-object v0, p0

    move v1, v6

    move v2, p1

    move/from16 v3, p5

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v6, p3

    move v7, p1

    move/from16 v9, p5

    move/from16 v10, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/AdnRecordLoader;->updateAdnEF(Lcom/android/internal/telephony/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public updateAdnBySearch(IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)[I
    .locals 27
    .parameter "efid"
    .parameter "pbrIndex"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    const/16 v17, 0x0

    .local v17, extCount:I
    const/16 v21, 0x0

    .local v21, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    const/4 v5, 0x3

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .local v25, recAndAnr:[I
    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v25, v5

    const/4 v5, 0x1

    const/16 v6, 0xff

    aput v6, v25, v5

    const/4 v5, 0x2

    const/16 v6, 0xff

    aput v6, v25, v5

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v8

    .local v8, extensionEF:I
    :try_start_0
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v21

    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    move v1, v8

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordCache;->recordSize:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->recordSize:[I

    move-object v5, v0

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->recordSize:[I

    move-object v5, v0

    const/4 v6, 0x2

    aget v5, v5, v6

    add-int/lit8 v17, v5, 0x1

    :cond_1
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MY updateAdnBySearch extCount"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .local v18, extIndex:[I
    if-gez v8, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF is not known ADN-like EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v25, v5

    .end local p2
    :goto_1
    return-object v25

    .end local v18           #extIndex:[I
    .restart local p2
    :catch_0
    move-exception v5

    move-object/from16 v16, v5

    .local v16, e:Ljava/lang/Exception;
    const-string v5, "GSM"

    const-string v6, "ServiceManager.getService() exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v16           #e:Ljava/lang/Exception;
    .restart local v18       #extIndex:[I
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v23

    .local v23, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    const/16 v5, 0x6f3a

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_3

    const/16 v5, 0x6f3b

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v23

    :goto_2
    if-nez v23, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adn list not exist for EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v25, v5

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v23

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v25, v5

    const/16 v10, 0xff

    .local v10, extRecId:I
    const/16 v14, 0xff

    .local v14, anrExtRecId:I
    const/16 v19, 0x0

    .local v19, hasAdnExt:Z
    const/4 v15, 0x1

    .local v15, count:I
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .end local p2
    .local v22, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x6f3a

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    aput v15, v25, v5

    :cond_6
    :goto_4
    const/4 v5, 0x0

    aget v5, v25, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_16

    const/16 v5, 0x6f3b

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_16

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-gt v5, v6, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_9

    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_8

    const/4 v5, 0x0

    aget v5, v25, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getExtNumber()I

    move-result v5

    const/16 v6, 0xff

    if-eq v5, v6, :cond_8

    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MY  ---------update  adn..ext   recAndAnr[0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v25, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "oldAdnList.get(recAndAnr[0]-1)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v25, v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    move-object/from16 v0, v23

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    aget v5, v25, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getExtNumber()I

    move-result v5

    const/4 v6, 0x0

    aget v6, v25, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, v23

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getExtNumber()I

    move-result v6

    aput v6, v18, v5

    const/4 v5, 0x0

    aget v5, v25, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getExtNumber()I

    move-result v5

    aget v10, v18, v5

    const/4 v5, 0x1

    aput v10, v25, v5

    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_9

    const/4 v5, 0x0

    aget v5, v25, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtNumber()I

    move-result v5

    const/16 v6, 0xff

    if-eq v5, v6, :cond_9

    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MY  ---------update  anr..ext   recAndAnr[0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v25, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "oldAdnList.get(recAndAnr[0]-1)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v25, v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    move-object/from16 v0, v23

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    aget v5, v25, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtNumber()I

    move-result v5

    const/4 v6, 0x0

    aget v6, v25, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, v23

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtNumber()I

    move-result v6

    aput v6, v18, v5

    const/4 v5, 0x0

    aget v5, v25, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtNumber()I

    move-result v5

    aget v14, v18, v5

    const/4 v5, 0x2

    aput v14, v25, v5

    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-gt v5, v6, :cond_a

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-gt v5, v6, :cond_b

    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-gt v5, v6, :cond_13

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_13

    :cond_b
    const-string v5, "GSM"

    const-string v6, "MY  ---------insert  ext"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    .local v20, i:I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_f

    const/16 v5, 0xff

    aput v5, v18, v20

    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .end local v20           #i:I
    :cond_c
    const/16 v5, 0x6f3b

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->isFDNEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    aput v15, v25, v5

    goto/16 :goto_4

    :cond_d
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->isUsimEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    aput v15, v25, v5

    goto/16 :goto_4

    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .restart local v20       #i:I
    :cond_f
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_10
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getExtNumber()I

    move-result v26

    .local v26, temp:I
    const/16 v5, 0xff

    move/from16 v0, v26

    move v1, v5

    if-eq v0, v1, :cond_10

    const/4 v5, 0x1

    aput v5, v18, v26

    goto :goto_6

    .end local v26           #temp:I
    :cond_11
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_12
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtNumber()I

    move-result v26

    .restart local v26       #temp:I
    const/16 v5, 0xff

    move/from16 v0, v26

    move v1, v5

    if-eq v0, v1, :cond_12

    const/4 v5, 0x1

    aput v5, v18, v26

    goto :goto_7

    .end local v20           #i:I
    .end local v26           #temp:I
    :cond_13
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_14

    const/16 v20, 0x1

    .restart local v20       #i:I
    :goto_8
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_14

    aget v5, v18, v20

    const/16 v6, 0xff

    if-ne v5, v6, :cond_17

    aput v20, v18, v20

    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MY  ---------insert  adn ..extIndex["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v18, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    aget v10, v18, v20

    const/4 v5, 0x1

    aput v10, v25, v5

    .end local v20           #i:I
    :cond_14
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_15

    const/16 v20, 0x1

    .restart local v20       #i:I
    :goto_9
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_15

    aget v5, v18, v20

    const/16 v6, 0xff

    if-ne v5, v6, :cond_18

    aput v20, v18, v20

    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MY  ---------insert  anr ..extIndex["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v18, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    aget v14, v18, v20

    const/4 v5, 0x2

    aput v14, v25, v5

    .end local v20           #i:I
    :cond_15
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MY  ---------extRecId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " anrExtRecId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/4 v5, 0x0

    aget v5, v25, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adn record don\'t exist for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adn record don\'t exist for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v25, v5

    goto/16 :goto_1

    .restart local v20       #i:I
    :cond_17
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    :cond_18
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_9

    .end local v20           #i:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/Message;

    .local v24, pendingResponse:Landroid/os/Message;
    if-eqz v24, :cond_1a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Have pending update for EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v25, v5

    goto/16 :goto_1

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/AdnRecordCache;->requestGetAllAdnFileld()[I

    move-result-object v13

    .local v13, adnEfid:[I
    new-instance v5, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v6, 0x0

    aget v9, v25, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aget v7, v25, v7

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p1

    move v3, v7

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v6, p4

    move/from16 v7, p1

    move-object/from16 v11, p5

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/AdnRecordLoader;->updateAdnEF(Lcom/android/internal/telephony/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1
.end method

.method public updateAnrByIndex(I[ILcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 17
    .parameter "efid"
    .parameter "index"
    .parameter "adn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    const/4 v5, 0x5

    aget v5, p2, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordCache;->pbrIndex:I

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v8

    .local v8, extensionEF:I
    if-gez v8, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF is not known ADN-like EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Message;

    .local v15, pendingResponse:Landroid/os/Message;
    if-eqz v15, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Have pending update for EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/AdnRecordCache;->requestGetAllSfiFileld()[I

    move-result-object v16

    .local v16, sfi:[I
    new-instance v5, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v6, 0x4

    aget v9, p2, v6

    const/4 v6, 0x0

    aget v10, p2, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->pbrIndex:I

    move v6, v0

    aget v11, v16, v6

    const/4 v6, 0x2

    aget v13, p2, v6

    const/4 v6, 0x5

    const/4 v7, 0x4

    aget v7, p2, v7

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p1

    move v3, v7

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    move-object/from16 v6, p3

    move/from16 v7, p1

    move-object/from16 v12, p4

    invoke-virtual/range {v5 .. v14}, Lcom/android/internal/telephony/AdnRecordLoader;->updateAnrEF(Lcom/android/internal/telephony/AdnRecord;IIIIILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public updateEmailByIndex(I[ILcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "efid"
    .parameter "index"
    .parameter "adn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x5

    aget v0, p2, v0

    iput v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->pbrIndex:I

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Message;

    .local v8, pendingResponse:Landroid/os/Message;
    if-eqz v8, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Have pending update for EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/AdnRecordCache;->requestGetAllSfiFileld()[I

    move-result-object v9

    .local v9, sfi:[I
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    aget v3, p2, v2

    const/4 v1, 0x0

    aget v4, p2, v1

    iget v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->pbrIndex:I

    aget v5, v9, v1

    aget v1, p2, v2

    invoke-virtual {p0, v2, p1, v1, p3}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object v1, p3

    move v2, p1

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEmailEF(Lcom/android/internal/telephony/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public updateIapByIndex(III[I[BLcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 16
    .parameter "efid"
    .parameter "Emailiniap"
    .parameter "Anriniap"
    .parameter "index"
    .parameter "iapRecord"
    .parameter "adn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    const/4 v5, 0x5

    aget v5, p4, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordCache;->pbrIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Message;

    .local v15, pendingResponse:Landroid/os/Message;
    if-eqz v15, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Have pending update for EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v5, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v6, 0x3

    aget v9, p4, v6

    const/4 v6, 0x4

    aget v10, p4, v6

    const/4 v6, 0x0

    aget v12, p4, v6

    const/4 v6, 0x6

    const/4 v7, 0x0

    aget v7, p4, v7

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p1

    move v3, v7

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    move-object/from16 v6, p6

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v11, p1

    move-object/from16 v13, p7

    invoke-virtual/range {v5 .. v14}, Lcom/android/internal/telephony/AdnRecordLoader;->updateIapEF(Lcom/android/internal/telephony/AdnRecord;IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public updateusimphonebook(Lcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;[I)Z
    .locals 11
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "index"

    .prologue
    const/16 v9, 0x14

    const/16 v8, 0xff

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v10, "RIL_AdnRecordCache"

    const-string v4, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateusimphonebook index[adnExt1_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " index[anrExt1_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    .local v3, usimindex:I
    const/4 v0, 0x1

    .local v0, count:I
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v2

    .local v2, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/AdnRecord;->isUsimEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v0

    :cond_0
    const-string v4, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateusimphonebook usimindex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v9, :cond_3

    aput v8, p3, v6

    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v9, :cond_4

    aput v8, p3, v7

    :cond_4
    aget v4, p3, v6

    if-lez v4, :cond_5

    aget v4, p3, v6

    if-eq v4, v8, :cond_5

    aget v4, p3, v6

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/AdnRecord;->setExtNumber(I)V

    :cond_5
    aget v4, p3, v7

    if-lez v4, :cond_6

    aget v4, p3, v7

    if-eq v4, v8, :cond_6

    aget v4, p3, v7

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/AdnRecord;->setAnrExtNumber(I)V

    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v4

    sub-int v5, v3, v6

    invoke-virtual {v4, v5, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v4, v6

    goto :goto_1
.end method
