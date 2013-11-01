.class public final Lcom/android/internal/telephony/cdma/RuimFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "RuimFileHandler.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v0, "CDMA"

    const-string v1, "RuimFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 2
    .parameter "efid"

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/RuimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "3F007F25"

    goto :goto_0

    :sswitch_1
    const-string v0, "3F007F10"

    goto :goto_0

    :sswitch_2
    const-string v0, "persist.dsds.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "3F007F20"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6f07 -> :sswitch_2
        0x6f22 -> :sswitch_0
        0x6f31 -> :sswitch_0
        0x6f32 -> :sswitch_0
        0x6f38 -> :sswitch_0
        0x6f3b -> :sswitch_1
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_1
        0x6f41 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

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

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/RuimFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .local v15, response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object v6, v0

    const/16 v7, 0xc0

    const-string v9, "img"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v8, p1

    invoke-interface/range {v5 .. v15}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
