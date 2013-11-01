.class public Lcom/android/internal/telephony/AdnRecordLoader;
.super Landroid/os/Handler;
.source "AdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_ANR_EXT_RECORD_LOAD_DONE:I = 0xd

.field static final EVENT_ANR_LOAD_ALL_DONE:I = 0xc

.field static final EVENT_EF_LINEAR_ANR_RECORD_SIZE_DONE:I = 0x8

.field static final EVENT_EF_LINEAR_EMAIL_RECORD_SIZE_DONE:I = 0x6

.field static final EVENT_EF_LINEAR_IAP_RECORD_SIZE_DONE:I = 0xa

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_UPDATE_ANR_RECORD_DONE:I = 0x9

.field static final EVENT_UPDATE_EMAIL_RECORD_DONE:I = 0x7

.field static final EVENT_UPDATE_IAP_RECORD_DONE:I = 0xb

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static final LOG_TAG:Ljava/lang/String; = "RIL_AdnRecordLoader"


# instance fields
.field Anriniap:I

.field EmailadnNumber:I

.field Emailiniap:I

.field IapforAnr:I

.field IapforEmail:I

.field adns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field anrExtRecId:I

.field anradnNumber:I

.field anrextInx:I

.field ef:I

.field extInx:I

.field extRecId:I

.field extensionEF:I

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field pendingExtLoads:I

.field pin2:Ljava/lang/String;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field sfi:I

.field userResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 2
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->Emailiniap:I

    iput v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->Anriniap:I

    iput v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    iput v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->anrextInx:I

    iput v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->sfi:I

    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .parameter "msg"

    .prologue
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v4, :pswitch_data_0

    .end local p1
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    move-object v4, v0

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    move v4, v0

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    move-object v4, v0

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    move-object v5, v0

    iput-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    :cond_1
    :goto_1
    return-void

    .restart local p1
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object/from16 v17, v0

    .local v17, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v15, v0

    .local v15, adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v0

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "get EF record size failed"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v15           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v17           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v4

    move-object/from16 v19, v4

    .local v19, exc:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    move-object v4, v0

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    move-object v4, v0

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .end local v19           #exc:Ljava/lang/RuntimeException;
    .restart local v15       #adn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v17       #ar:Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v23, v0

    .local v23, recordSize:[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    move v4, v0

    if-nez v4, :cond_4

    move-object/from16 v0, v23

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move v4, v0

    const/4 v5, 0x2

    aget v5, v23, v5

    if-le v4, v5, :cond_4

    :cond_3
    const-string v4, "RIL_AdnRecordLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error  1recordSize.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    array-length v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "recordNumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "recordSize[2]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v23, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "get wrong EF record size format"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    move v4, v0

    if-lez v4, :cond_6

    move-object/from16 v0, v23

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extRecId:I

    move v4, v0

    const/4 v5, 0x2

    aget v5, v23, v5

    if-le v4, v5, :cond_6

    :cond_5
    const-string v4, "RIL_AdnRecordLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error  2recordSize.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    array-length v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "extRecId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extRecId:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "recordSize[2]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v23, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "get wrong EF record size format"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    move v4, v0

    if-nez v4, :cond_8

    const/4 v4, 0x0

    aget v4, v23, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extRecId:I

    move v5, v0

    invoke-virtual {v15, v4, v5}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(II)[B

    move-result-object v7

    .local v7, data:[B
    if-nez v7, :cond_7

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong ADN format"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x5

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .end local v7           #data:[B
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    move v4, v0

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extRecId:I

    move v4, v0

    const/16 v5, 0xff

    if-ne v4, v5, :cond_9

    invoke-virtual {v15}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    move v5, v0

    const/4 v6, 0x4

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extInx:I

    move v4, v0

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    aget v4, v23, v4

    invoke-virtual {v15, v4}, Lcom/android/internal/telephony/AdnRecord;->buildEXT1String(I)[B

    move-result-object v7

    .restart local v7       #data:[B
    if-nez v7, :cond_b

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "worong ADN format"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extRecId:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x5

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .end local v7           #data:[B
    .end local v15           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v17           #ar:Landroid/os/AsyncResult;
    .end local v23           #recordSize:[I
    .restart local p1
    :pswitch_1
    const-string v4, "RIL_AdnRecordLoader"

    const-string v5, "EVENT_EF_LINEAR_EMAIL_RECORD_SIZE_DONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object/from16 v17, v0

    .restart local v17       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v8, v0

    .local v8, adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v0

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "get email EF record size failed"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_c
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v25, v0

    .local v25, recordSizeEmail:[I
    move-object/from16 v0, v25

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move v4, v0

    const/4 v5, 0x2

    aget v5, v25, v5

    if-le v4, v5, :cond_e

    :cond_d
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "get wrong EF record size format"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_e
    const/4 v4, 0x0

    aget v4, v25, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->EmailadnNumber:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->sfi:I

    move v7, v0

    invoke-virtual {v8, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecord;->buildEmailString(IIII)[B

    move-result-object v7

    .restart local v7       #data:[B
    if-nez v7, :cond_f

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "worong ADN format"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    move-object v8, v0

    .end local v8           #adn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v9, 0x7

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .end local v7           #data:[B
    .end local v17           #ar:Landroid/os/AsyncResult;
    .end local v25           #recordSizeEmail:[I
    .restart local p1
    :pswitch_2
    const-string v4, "RIL_AdnRecordLoader"

    const-string v5, "EVENT_EF_LINEAR_IAP_RECORD_SIZE_DONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object/from16 v17, v0

    .restart local v17       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v8, v0

    .restart local v8       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v0

    if-eqz v4, :cond_10

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "get email EF record size failed"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_10
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v26, v0

    .local v26, recordSizeIap:[I
    move-object/from16 v0, v26

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move v4, v0

    const/4 v5, 0x2

    aget v5, v26, v5

    if-le v4, v5, :cond_12

    :cond_11
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "get wrong EF record size format"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_12
    const/4 v4, 0x0

    aget v9, v26, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->IapforEmail:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->IapforAnr:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->Emailiniap:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->Anriniap:I

    move v13, v0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/AdnRecord;->buildIapString(IIIII)[B

    move-result-object v7

    .restart local v7       #data:[B
    if-nez v7, :cond_13

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "worong ADN format"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    move-object v13, v0

    const/16 v4, 0xb

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    move-object v12, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .end local v7           #data:[B
    .end local v8           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v17           #ar:Landroid/os/AsyncResult;
    .end local v26           #recordSizeIap:[I
    .restart local p1
    :pswitch_3
    const-string v4, "RIL_AdnRecordLoader"

    const-string v5, "EVENT_EF_LINEAR_ANR_RECORD_SIZE_DONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object/from16 v17, v0

    .restart local v17       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v8, v0

    .restart local v8       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v0

    if-eqz v4, :cond_14

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "get email EF record size failed"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_14
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v24, v0

    .local v24, recordSizeAnr:[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrextInx:I

    move v4, v0

    if-nez v4, :cond_16

    move-object/from16 v0, v24

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move v4, v0

    const/4 v5, 0x2

    aget v5, v24, v5

    if-le v4, v5, :cond_16

    :cond_15
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "get wrong EF record size format"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrextInx:I

    move v4, v0

    if-lez v4, :cond_18

    move-object/from16 v0, v24

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrExtRecId:I

    move v4, v0

    const/4 v5, 0x2

    aget v5, v24, v5

    if-le v4, v5, :cond_18

    :cond_17
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "get wrong EF record size format"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrextInx:I

    move v4, v0

    if-nez v4, :cond_1a

    const/4 v4, 0x0

    aget v9, v24, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anradnNumber:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->sfi:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrExtRecId:I

    move v13, v0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/AdnRecord;->buildAnrString(IIIII)[B

    move-result-object v7

    .restart local v7       #data:[B
    if-nez v7, :cond_19

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "worong ADN format"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    move-object v13, v0

    const/16 v4, 0x9

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    move-object v12, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .end local v7           #data:[B
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrextInx:I

    move v4, v0

    if-nez v4, :cond_1c

    invoke-virtual {v8}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-gt v4, v5, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrExtRecId:I

    move v4, v0

    const/16 v5, 0xff

    if-eq v4, v5, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    move v5, v0

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrextInx:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->anrextInx:I

    const-string v4, "RIL_AdnRecordLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_EF_LINEAR_ANR_RECORD_SIZE_DONE anrextInx = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrextInx:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrextInx:I

    move v4, v0

    if-eqz v4, :cond_0

    const-string v4, "RIL_AdnRecordLoader"

    const-string v5, "EVENT_EF_LINEAR_ANR_RECORD_SIZE_DONE 385"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    aget v4, v24, v4

    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/AdnRecord;->buildAnrEXT1String(I)[B

    move-result-object v7

    .restart local v7       #data:[B
    const-string v4, "RIL_AdnRecordLoader"

    const-string v5, "EVENT_EF_LINEAR_ANR_RECORD_SIZE_DONE 390"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_1d

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "worong ADN format"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrExtRecId:I

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    move-object v13, v0

    const/16 v4, 0x9

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    move-object v12, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .end local v7           #data:[B
    .end local v8           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v17           #ar:Landroid/os/AsyncResult;
    .end local v24           #recordSizeAnr:[I
    .restart local p1
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object/from16 v17, v0

    .restart local v17       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v0

    if-eqz v4, :cond_1e

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "update EF adn record failed"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_1e
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .end local v17           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object/from16 v17, v0

    .restart local v17       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v0

    if-eqz v4, :cond_1f

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "update EF adn email record failed"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_1f
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .end local v17           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object/from16 v17, v0

    .restart local v17       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v0

    if-eqz v4, :cond_20

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "update EF adn anr record failed"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_20
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .end local v17           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object/from16 v17, v0

    .restart local v17       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v0

    if-eqz v4, :cond_21

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "update EF adn anr record failed"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_21
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .end local v17           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object/from16 v17, v0

    .restart local v17       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v7, v0

    .restart local v7       #data:[B
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v0

    if-eqz v4, :cond_22

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "load failed"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_22
    new-instance v8, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move v5, v0

    invoke-direct {v8, v4, v5, v7}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .restart local v8       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    move v5, v0

    iget v6, v8, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .end local v7           #data:[B
    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v8           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v17           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object/from16 v17, v0

    .restart local v17       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v7, v0

    .restart local v7       #data:[B
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v8, v0

    .restart local v8       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v0

    if-eqz v4, :cond_23

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "load failed"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_23
    const-string v4, "RIL_AdnRecordLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADN extension EF: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v8, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/AdnRecord;->appendExtRecord([B)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .end local v7           #data:[B
    .end local v8           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v17           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_a
    const-string v4, "RIL_AdnRecordLoader"

    const-string v5, "EVENT_ADN_LOAD_ALL_DONE "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object/from16 v17, v0

    .restart local v17       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .local v18, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v0

    if-eqz v4, :cond_24

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "load failed"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_24
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    const/16 v20, 0x0

    .local v20, i:I
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v27

    .local v27, s:I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    new-instance v8, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move v4, v0

    add-int/lit8 v5, v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    move-object v0, v8

    move v1, v4

    move v2, v5

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .restart local v8       #adn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v4, 0x2

    move v0, v4

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .local v22, recid:[B
    const/4 v4, 0x0

    add-int/lit8 v5, v20, 0x1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v22, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-byte v5, v22, v4

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v28

    .local v28, srecid:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->setRecid(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v4

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    move v5, v0

    iget v6, v8, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    :cond_25
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .end local v8           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v17           #ar:Landroid/os/AsyncResult;
    .end local v18           #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v20           #i:I
    .end local v22           #recid:[B
    .end local v27           #s:I
    .end local v28           #srecid:Ljava/lang/String;
    .restart local p1
    :pswitch_b
    const-string v4, "RIL_AdnRecordLoader"

    const-string v5, "EVENT_ANR_LOAD_ALL_DONE "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object/from16 v17, v0

    .restart local v17       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v21, v0

    .local v21, mAnrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v0

    if-eqz v4, :cond_26

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "load failed"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_26
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    const/16 v16, 0x0

    .local v16, anrRec:[B
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_3
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    move v1, v4

    if-ge v0, v1, :cond_0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #anrRec:[B
    check-cast v16, [B

    .restart local v16       #anrRec:[B
    new-instance v8, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move v4, v0

    move-object v0, v8

    move v1, v4

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(I[B)V

    .restart local v8       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/android/internal/telephony/AdnRecord;->hasAnrExtendedRecord()Z

    move-result v4

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    move v5, v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtNumber()I

    move-result v6

    const/16 v7, 0xd

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    :cond_27
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .end local v8           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v16           #anrRec:[B
    .end local v17           #ar:Landroid/os/AsyncResult;
    .end local v20           #i:I
    .end local v21           #mAnrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .restart local p1
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object/from16 v17, v0

    .restart local v17       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v7, v0

    .restart local v7       #data:[B
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v8, v0

    .restart local v8       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v0

    if-eqz v4, :cond_28

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "load failed"

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_28
    const-string v4, "RIL_AdnRecordLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANR extention EF: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/AdnRecord;->appendAnrExtRecord([B)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public loadAllAnrFromEF(IILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "response"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    return-void
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "response"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    return-void
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    return-void
.end method

.method public updateAdnEF(Lcom/android/internal/telephony/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "extRecId"
    .parameter "pin2"
    .parameter "response"

    .prologue
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    iput p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extRecId:I

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    return-void
.end method

.method public updateAnrEF(Lcom/android/internal/telephony/AdnRecord;IIIIILjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "anradnNumber"
    .parameter "sfi"
    .parameter "pin2"
    .parameter "anrExtRecId"
    .parameter "response"

    .prologue
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    iput p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->anradnNumber:I

    iput p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->sfi:I

    iput-object p9, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    iput p8, p0, Lcom/android/internal/telephony/AdnRecordLoader;->anrExtRecId:I

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    return-void
.end method

.method public updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    return-void
.end method

.method public updateEmailEF(Lcom/android/internal/telephony/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "recordNumber"
    .parameter "EmailadnNumber"
    .parameter "sfi"
    .parameter "pin2"
    .parameter "response"

    .prologue
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->EmailadnNumber:I

    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    iput p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->sfi:I

    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    return-void
.end method

.method public updateIapEF(Lcom/android/internal/telephony/AdnRecord;IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "Emailiniap"
    .parameter "Anriniap"
    .parameter "IapforEmail"
    .parameter "IapforAnr"
    .parameter "ef"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    iput p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->Emailiniap:I

    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->Anriniap:I

    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->IapforEmail:I

    iput p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->IapforAnr:I

    iput p7, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    iput-object p9, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    iput-object p8, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p6, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    return-void
.end method
