.class public abstract Lcom/android/internal/telephony/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_RECORD_SIZE_IMG_DONE:I = 0xb

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected mAid:Ljava/lang/String;

.field protected mApplication:Lcom/android/internal/telephony/UiccCardApplication;

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    iput-object p2, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method private processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z
    .locals 5
    .parameter "response"
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, flag:Z
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccIoResult;

    .local v2, result:Lcom/android/internal/telephony/IccIoResult;
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v4, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v1

    .local v1, iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v4, v1}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    :sswitch_1
    const-string v0, "3F00"

    goto :goto_0

    :sswitch_2
    const-string v0, "3F007F105F3A"

    goto :goto_0

    :sswitch_3
    const-string v0, "3F007F105F50"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2fe2 -> :sswitch_1
        0x4f01 -> :sswitch_3
        0x4f02 -> :sswitch_3
        0x4f03 -> :sswitch_3
        0x4f04 -> :sswitch_3
        0x4f05 -> :sswitch_3
        0x4f20 -> :sswitch_3
        0x4f30 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v2, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xf

    move v3, p1

    move v6, v5

    move-object v9, v8

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 33
    .parameter "msg"

    .prologue
    const/16 v31, 0x0

    .local v31, response:Landroid/os/Message;
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local p1
    :pswitch_0
    const-string v5, "IccFileHandler: get record size img done"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .local v24, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .local v28, lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/internal/telephony/IccIoResult;

    .local v32, result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v25, v0

    .local v25, data:[B
    const/16 v5, 0xe

    aget-byte v5, v25, v5

    and-int/lit16 v5, v5, 0xff

    move v0, v5

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v5, 0x4

    const/4 v6, 0x6

    aget-byte v6, v25, v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    const/16 v6, 0xd

    aget-byte v6, v25, v6

    if-eq v5, v6, :cond_2

    :cond_1
    const-string v5, "IccFileHandler: File type mismatch: Throw Exception"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v25           #data:[B
    .end local v28           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v32           #result:Lcom/android/internal/telephony/IccIoResult;
    :catch_0
    move-exception v5

    move-object/from16 v26, v5

    .local v26, exc:Ljava/lang/Exception;
    if-eqz v31, :cond_c

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object v2, v5

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v26           #exc:Ljava/lang/Exception;
    .restart local v24       #ar:Landroid/os/AsyncResult;
    .restart local v25       #data:[B
    .restart local v28       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .restart local v32       #result:Lcom/android/internal/telephony/IccIoResult;
    :cond_2
    :try_start_1
    const-string v5, "IccFileHandler: xuyang don\'t read EF IMG"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    const-string v5, "IccFileHandler: read EF IMG"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object v6, v0

    const/16 v7, 0xb2

    const/16 v8, 0x4f20

    const/16 v9, 0x4f20

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move v10, v0

    const/4 v11, 0x4

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x9

    const/16 v16, 0x4f20

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface/range {v5 .. v15}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v25           #data:[B
    .end local v28           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v32           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local p1
    :pswitch_1
    const-string v5, "IccFileHandler: read IMG done"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    check-cast v0, Landroid/os/Message;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/internal/telephony/IccIoResult;

    .restart local v32       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "IccFileHandler: read img success"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v27

    .local v27, iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v27, :cond_0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v5, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v27           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v32           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local p1
    :pswitch_2
    const-string v5, "IccFileHandler: read icon done"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    check-cast v0, Landroid/os/Message;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/internal/telephony/IccIoResult;

    .restart local v32       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "IccFileHandler: read icon success"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v32           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local p1
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .restart local v28       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/internal/telephony/IccIoResult;

    .restart local v32       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v25, v0

    .restart local v25       #data:[B
    const/4 v5, 0x4

    const/4 v6, 0x6

    aget-byte v6, v25, v6

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    const/16 v6, 0xd

    aget-byte v6, v25, v6

    if-eq v5, v6, :cond_4

    :cond_3
    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_4
    const/4 v5, 0x3

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v30, v0

    .local v30, recordSize:[I
    const/4 v5, 0x0

    const/16 v6, 0xe

    aget-byte v6, v25, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v30, v5

    const/4 v5, 0x1

    const/4 v6, 0x2

    aget-byte v6, v25, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x3

    aget-byte v7, v25, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    aput v6, v30, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    aget v6, v30, v6

    const/4 v7, 0x0

    aget v7, v30, v7

    div-int/2addr v6, v7

    aput v6, v30, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v25           #data:[B
    .end local v28           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v30           #recordSize:[I
    .end local v32           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local p1
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .restart local v28       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/internal/telephony/IccIoResult;

    .restart local v32       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v25, v0

    .restart local v25       #data:[B
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v8, v0

    .local v8, fileid:I
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v29, v0

    .local v29, recordNum:I
    const/4 v5, 0x4

    const/4 v6, 0x6

    aget-byte v6, v25, v6

    if-eq v5, v6, :cond_5

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_5
    const/4 v5, 0x1

    const/16 v6, 0xd

    aget-byte v6, v25, v6

    if-eq v5, v6, :cond_6

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_6
    const/16 v5, 0xe

    aget-byte v5, v25, v5

    and-int/lit16 v5, v5, 0xff

    move v0, v5

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v5, 0x2

    aget-byte v5, v25, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-byte v6, v25, v6

    and-int/lit16 v6, v6, 0xff

    add-int v12, v5, v6

    .local v12, size:I
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move v5, v0

    div-int v5, v12, v5

    move v0, v5

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    move v5, v0

    if-eqz v5, :cond_7

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    move v6, v0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object v6, v0

    const/16 v7, 0xb2

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v8, v0

    .end local v8           #fileid:I
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v9, v0

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move v10, v0

    const/4 v11, 0x4

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move v12, v0

    .end local v12           #size:I
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x7

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface/range {v5 .. v15}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v25           #data:[B
    .end local v28           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v29           #recordNum:I
    .end local v32           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local p1
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    check-cast v0, Landroid/os/Message;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/internal/telephony/IccIoResult;

    .restart local v32       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v25, v0

    .restart local v25       #data:[B
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    .restart local v8       #fileid:I
    const/4 v5, 0x4

    const/4 v6, 0x6

    aget-byte v6, v25, v6

    if-eq v5, v6, :cond_8

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_8
    const/16 v5, 0xd

    aget-byte v5, v25, v5

    if-eqz v5, :cond_9

    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    :cond_9
    const/4 v5, 0x2

    aget-byte v5, v25, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-byte v6, v25, v6

    and-int/lit16 v6, v6, 0xff

    add-int v12, v5, v6

    .restart local v12       #size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object v6, v0

    const/16 v7, 0xb0

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x5

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move v2, v8

    move/from16 v3, v16

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface/range {v5 .. v15}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v8           #fileid:I
    .end local v12           #size:I
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v25           #data:[B
    .end local v32           #result:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .restart local v28       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/internal/telephony/IccIoResult;

    .restart local v32       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    move v5, v0

    if-nez v5, :cond_a

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move v5, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    move v6, v0

    if-le v5, v6, :cond_b

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object v14, v0

    const/16 v15, 0xb2

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v16, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v5, 0x7

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v13 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v28           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v32           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local p1
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    check-cast v0, Landroid/os/Message;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/internal/telephony/IccIoResult;

    .restart local v32       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v32           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local v26       #exc:Ljava/lang/Exception;
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uncaught exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 11
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v8, 0x0

    const/16 v3, 0x4f20

    const/16 v0, 0xb

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v3, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v2, 0xc0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/16 v7, 0xa

    move v5, p1

    move-object v9, v8

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 16
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    const/16 v5, 0xa

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, p1

    move v3, v6

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .local v15, response:Landroid/os/Message;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IccFileHandler: loadEFImgTransparent fileid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " filePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " highOffset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lowOffset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object v6, v0

    const/16 v7, 0xb0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v8, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-interface/range {v5 .. v15}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v2, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xf

    move v3, p1

    move v6, v5

    move-object v9, v8

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v2, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xf

    move v3, p1

    move v6, v5

    move-object v9, v8

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v5, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v2, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xf

    move v3, p1

    move v6, v5

    move-object v9, v8

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v2, 0xdc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    array-length v7, p3

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    move v3, p1

    move v5, p2

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v2, 0xd6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    array-length v7, p2

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move v3, p1

    move v6, v5

    move-object v10, p3

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method
