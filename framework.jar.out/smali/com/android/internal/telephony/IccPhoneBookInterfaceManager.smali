.class public abstract Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.super Ljava/lang/Object;
.source "IccPhoneBookInterfaceManager.java"


# static fields
.field protected static final ALLOW_SIM_OP_IN_UI_THREAD:Z = false

.field protected static final DBG:Z = true

.field protected static final EVENT_ANR_UPDATE_DONE:I = 0x6

.field protected static final EVENT_EMAIL_UPDATE_DONE:I = 0x5

.field protected static final EVENT_GET_SIZE_DONE:I = 0x1

.field protected static final EVENT_IAP_UPDATE_DONE:I = 0x7

.field protected static final EVENT_LOAD_DONE:I = 0x2

.field protected static final EVENT_UPDATE_DONE:I = 0x3

.field protected static final EVENT_USIM_UPDATE_DONE:I = 0x4


# instance fields
.field protected adnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field adnSizeInfo:[I

.field anrSizeInfo:[I

.field protected anrsuccess:Z

.field emailSizeInfo:[I

.field protected emailsuccess:Z

.field ext1SizeInfo:[I

.field protected iapsuccess:Z

.field protected mBaseHandler:Landroid/os/Handler;

.field protected mLock:Ljava/lang/Object;

.field public msimcap:Lcom/android/internal/telephony/simcap;

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field protected recordSize:[I

.field protected records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field simSize:I

.field protected success:Z

.field usimSize:I

.field protected usimsuccess:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    iput-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailSizeInfo:[I

    iput-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->anrSizeInfo:[I

    iput-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    iput v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->simSize:I

    iput v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimSize:I

    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    new-instance v0, Lcom/android/internal/telephony/simcap;

    invoke-direct {v0}, Lcom/android/internal/telephony/simcap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    return-void
.end method

.method private updateAdnEmailRecordsInEfByIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;)Z
    .locals 20
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmail"
    .parameter "newAnr"
    .parameter "index"
    .parameter "pin2"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/16 v19, 0x0

    .local v19, usimsuccess:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x5

    aget v18, p5, v5

    .local v18, pbrIndex:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetAdnFileld(I)I

    move-result v6

    .local v6, adnefid:I
    const-string v10, ""

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    const/4 v5, 0x0

    .end local v6           #adnefid:I
    :goto_0
    return v5

    .restart local v6       #adnefid:I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupEmail(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x3

    aget v5, p5, v5

    const/16 v6, 0xff

    if-eq v5, v6, :cond_2

    .end local v6           #adnefid:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAdnEmailRecordsInEfByIndex index[adnCache.email_Index] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v6, v0

    const/4 v6, 0x3

    aget v6, p5, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetEmailFileld(I)I

    move-result v15

    .local v15, emailefid:I
    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, p5

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEmailRecordsInEfByIndex(I[ILjava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .end local v15           #emailefid:I
    :goto_1
    if-nez v19, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const-string p3, ""

    const/16 v19, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupANR(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x4

    aget v5, p5, v5

    const/16 v6, 0xff

    if-eq v5, v6, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAdnEmailRecordsInEfByIndex index[adnCache.anr_Index] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v6, v0

    const/4 v6, 0x4

    aget v6, p5, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetAnrFileld(I)I

    move-result v14

    .local v14, anrefid:I
    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAnrRecordsInEfByIndex(I[ILjava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .end local v14           #anrefid:I
    :goto_2
    if-nez v19, :cond_5

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_4
    const-string p4, ""

    const/16 v19, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupIAP(I)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsEMAILTYP2()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsANRTYP2()Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_6
    const-string v5, "updateAdnEmailRecordsInEfByIndex iap "

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetIapFileld(I)I

    move-result v8

    .local v8, iapefid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecordCache;->GetEmailiniap()I

    move-result v9

    .local v9, emailiniap:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecordCache;->GetAnriniap()I

    move-result v10

    .local v10, anriniap:I
    const-string v5, ""

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x3

    const/16 v6, 0xff

    aput v6, p5, v5

    :cond_7
    const-string v5, ""

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x4

    const/16 v6, 0xff

    aput v6, p5, v5

    :cond_8
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v17

    .local v17, iapSizeInfo:[I
    const/16 v16, 0x0

    .local v16, iapSize:I
    const/4 v12, 0x0

    .local v12, iapRecord:[B
    if-eqz v17, :cond_c

    const/4 v5, 0x0

    aget v16, v17, v5

    if-lez v16, :cond_b

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v12, v0

    const/4 v5, -0x1

    if-eq v9, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x3

    aget v5, p5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v12, v9

    :cond_9
    const/4 v5, -0x1

    if-eq v10, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x4

    aget v5, p5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v12, v10

    :cond_a
    move-object/from16 v7, p0

    move-object/from16 v11, p5

    move-object/from16 v13, p6

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIapRecordsInEfByIndex(III[I[BLjava/lang/String;)Z

    move-result v19

    .end local v8           #iapefid:I
    .end local v9           #emailiniap:I
    .end local v10           #anriniap:I
    .end local v12           #iapRecord:[B
    .end local v16           #iapSize:I
    .end local v17           #iapSizeInfo:[I
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAdnEmailRecordsInEfByIndex usimsuccess = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move/from16 v5, v19

    goto/16 :goto_0

    .restart local v8       #iapefid:I
    .restart local v9       #emailiniap:I
    .restart local v10       #anriniap:I
    .restart local v12       #iapRecord:[B
    .restart local v16       #iapSize:I
    .restart local v17       #iapSizeInfo:[I
    :cond_b
    const/16 v19, 0x0

    goto :goto_3

    :cond_c
    const/16 v19, 0x0

    goto :goto_3

    .end local v8           #iapefid:I
    .end local v9           #emailiniap:I
    .end local v10           #anriniap:I
    .end local v12           #iapRecord:[B
    .end local v16           #iapSize:I
    .end local v17           #iapSizeInfo:[I
    :cond_d
    const/16 v19, 0x1

    goto :goto_3
.end method

.method private updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "index"
    .parameter "srecid"
    .parameter "pin2"

    .prologue
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAdnRecordsInEfByIndex: efid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " index[adnCache.adn_Index]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/4 v6, 0x0

    aget v6, p4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pin2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    iget-object v14, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .local v12, response:Landroid/os/Message;
    new-instance v8, Lcom/android/internal/telephony/AdnRecord;

    const-string v5, ""

    move-object v0, v8

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v5

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v8, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/4 v6, 0x5

    aget v7, p4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/4 v6, 0x1

    aget v9, p4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/4 v6, 0x0

    aget v10, p4, v6

    move/from16 v6, p1

    move-object/from16 v11, p6

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/AdnRecordCache;->updateAdnByIndex(IILcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    return v5

    :catch_0
    move-exception v5

    move-object v13, v5

    .local v13, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v5, "interrupted while trying to update by index"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .end local v8           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v12           #response:Landroid/os/Message;
    .end local v13           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .restart local v8       #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v12       #response:Landroid/os/Message;
    :cond_1
    :try_start_4
    const-string v5, "Failure while trying to update by index due to uninitialised adncache"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private updateAnrRecordsInEfByIndex(I[ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efid"
    .parameter "index"
    .parameter "newAnr"
    .parameter "pin2"

    .prologue
    const/4 v4, 0x0

    const-string v0, ""

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAnrRecordsInEfByIndex: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->anrsuccess:Z

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .local v5, response:Landroid/os/Message;
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v3, v0, v1, p3, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v3, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/4 v0, 0x4

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    monitor-exit v7

    move v0, v4

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecordCache;->updateAnrByIndex(I[ILcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->anrsuccess:Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "interrupted while trying to update by search"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    .end local v3           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v5           #response:Landroid/os/Message;
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private updateEfForIccType(I)I
    .locals 2
    .parameter "efid"

    .prologue
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f30

    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private updateEmailRecordsInEfByIndex(I[ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "efid"
    .parameter "index"
    .parameter "newEmail"
    .parameter "pin2"

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x0

    const-string v0, ""

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v7, 0x0

    .local v7, newEmails:[Ljava/lang/String;
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    aput-object p3, v7, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEmailRecordsInEfByIndex: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    aget v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailsuccess:Z

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .local v5, response:Landroid/os/Message;
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v3, v0, v1, v7, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .local v3, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/4 v0, 0x3

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    monitor-exit v8

    move v0, v4

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecordCache;->updateEmailByIndex(I[ILcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailsuccess:Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "interrupted while trying to update by search"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    .end local v3           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v5           #response:Landroid/os/Message;
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private updateIapRecordsInEfByIndex(III[I[BLjava/lang/String;)Z
    .locals 11
    .parameter "efid"
    .parameter "Emailiniap"
    .parameter "Anriniap"
    .parameter "index"
    .parameter "iapRecord"
    .parameter "pin2"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIapRecordsInEfByIndex: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->iapsuccess:Z

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .local v8, response:Landroid/os/Message;
    new-instance v6, Lcom/android/internal/telephony/AdnRecord;

    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/4 v2, 0x3

    aget v2, p4, v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/4 v3, 0x4

    aget v3, p4, v3

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .local v6, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/4 v0, 0x0

    aget v0, p4, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    monitor-exit v10

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/AdnRecordCache;->updateIapByIndex(III[I[BLcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->iapsuccess:Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v9, v0

    .local v9, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "interrupted while trying to update by search"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    .end local v6           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #response:Landroid/os/Message;
    .end local v9           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method


# virtual methods
.method public changeEfForIccType(I)I
    .locals 2
    .parameter "efid"

    .prologue
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->requestGetAdnFileld(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method protected checkThread()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "query() called on the main UI thread!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call query on this provder from the main UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    return-void
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 5
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsInEF: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    return-object v2

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .restart local v1       #response:Landroid/os/Message;
    :cond_1
    :try_start_4
    const-string v3, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public abstract getAdnRecordsSize(I)[I
.end method

.method public getAdnSize(I)I
    .locals 1
    .parameter "efid"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestAdnSize(I)I

    move-result v0

    return v0
.end method

.method public getAdnTotalSize(I)I
    .locals 2
    .parameter "efid"

    .prologue
    const/4 v0, -0x1

    .local v0, mRecordTotalSize:I
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestAdnTotalSize(I)I

    move-result v0

    return v0
.end method

.method public abstract getAnrRecordsSize(I)I
.end method

.method public abstract getEmailRecordsSize(I)I
.end method

.method public abstract getExt1RecordsSize(I)I
.end method

.method public getExt1Size(I)I
    .locals 1
    .parameter "efid"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestEXT1Size(I)I

    move-result v0

    return v0
.end method

.method public getGetAdnFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestGetAdnFileld(I)I

    move-result v0

    return v0
.end method

.method public getGetAnrFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestGetAnrFileld(I)I

    move-result v0

    return v0
.end method

.method public getGetEmailFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestGetEmailFileld(I)I

    move-result v0

    return v0
.end method

.method public getGetIapFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestGetIapFileld(I)I

    move-result v0

    return v0
.end method

.method public getIsANRTYP2()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsANRTYP2()Z

    move-result v0

    return v0
.end method

.method public getIsEMAILTYP2()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsEMAILTYP2()Z

    move-result v0

    return v0
.end method

.method public getIsSupANR(I)Z
    .locals 1
    .parameter "pbrindex"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsSupANR(I)Z

    move-result v0

    return v0
.end method

.method public getIsSupEmail(I)Z
    .locals 1
    .parameter "pbrindex"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsSupEmail(I)Z

    move-result v0

    return v0
.end method

.method public getIsSupIAP(I)Z
    .locals 1
    .parameter "pbrindex"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->requestIsSupIAP(I)Z

    move-result v0

    return v0
.end method

.method public getPbrFileld()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->requestPbrFileld()I

    move-result v0

    return v0
.end method

.method public getSimCardType()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z

    move-result v0

    return v0
.end method

.method public abstract getSimTotalSize(I)I
.end method

.method public abstract getTagRecordsSize(I)I
.end method

.method public abstract getUsimAdnRecordsSize(I)I
.end method

.method public getUsimAdnSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->requestUsimAdnSize()I

    move-result v0

    return v0
.end method

.method public getsimcap(Ljava/lang/String;)Lcom/android/internal/telephony/simcap;
    .locals 21
    .parameter "srecid"

    .prologue
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/16 v5, 0x6f3a

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->changeEfForIccType(I)I

    move-result v6

    .local v6, adnEfid:I
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .local v17, index:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x0

    const/4 v7, -0x1

    aput v7, v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x1

    const/4 v7, -0x1

    aput v7, v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x2

    const/4 v7, -0x1

    aput v7, v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x3

    const/4 v7, -0x1

    aput v7, v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x4

    const/4 v7, -0x1

    aput v7, v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x5

    const/4 v7, -0x1

    aput v7, v17, v5

    const/16 v19, 0x0

    .local v19, oldEmails:[Ljava/lang/String;
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v5, 0x0

    const-string v7, ""

    aput-object v7, v19, v5

    const/16 v18, 0x0

    .local v18, newEmails:[Ljava/lang/String;
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v5, 0x0

    const-string v7, ""

    aput-object v7, v18, v5

    new-instance v7, Lcom/android/internal/telephony/AdnRecord;

    const-string v5, ""

    const-string v8, ""

    const-string v9, ""

    move-object v0, v7

    move-object v1, v5

    move-object v2, v8

    move-object/from16 v3, v19

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .local v7, oldAdn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v8, Lcom/android/internal/telephony/AdnRecord;

    const-string v5, ""

    const-string v9, ""

    const-string v10, ""

    move-object v0, v8

    move-object v1, v5

    move-object v2, v9

    move-object/from16 v3, v18

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .local v8, newAdn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v9, 0x0

    .local v9, ext1Size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v16

    .local v16, extensionEF:I
    if-gtz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    move-object v5, v0

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v11, v5, v10

    :cond_1
    if-lez v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    move-object v5, v0

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    move-object v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    move-object v5, v0

    const/4 v9, 0x2

    aget v9, v5, v9

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    move-object v5, v0

    if-nez v5, :cond_4

    const/4 v9, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/AdnRecordCache;->requestAdnTotalSize(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->simSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/AdnRecordCache;->requestAdnSize(I)I

    move-result v13

    .local v13, curSimSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->simSize:I

    move v10, v0

    iput v10, v5, Lcom/android/internal/telephony/simcap;->simSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    iput v13, v5, Lcom/android/internal/telephony/simcap;->curSimSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecordCache;->requestUsimAdnSize()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecordCache;->requestPbrFileld()I

    move-result v14

    .local v14, curUsimSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->usimSize:I

    move v10, v0

    iput v10, v5, Lcom/android/internal/telephony/simcap;->usimSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    iput v14, v5, Lcom/android/internal/telephony/simcap;->curUsimSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    move-object/from16 v10, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/AdnRecordCache;->searchIndex(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)[I

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x0

    aget v5, v17, v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_5

    .end local v7           #oldAdn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    .end local v8           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    :goto_0
    return-object v5

    .restart local v8       #newAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x5

    aget v20, v17, v5

    .local v20, pbrIndex:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getsimcap pbrIndex = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    const/16 v5, 0x6f3a

    if-eq v6, v5, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetAdnFileld(I)I

    move-result v6

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    iput v9, v5, Lcom/android/internal/telephony/simcap;->ext1Size:I

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getExt1Size(I)I

    move-result v12

    .local v12, curExt1Size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    iput v12, v5, Lcom/android/internal/telephony/simcap;->curExt1Size:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getsimcap 233 msimcap.curExt1Size = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v7, v0

    iget v7, v7, Lcom/android/internal/telephony/simcap;->curExt1Size:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "ext1Size = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    move-object v5, v0

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    move-object v5, v0

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/internal/telephony/simcap;->taglength:I

    .end local v8           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    move-object v5, v0

    if-nez v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/internal/telephony/simcap;->numberlength:I

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupEmail(I)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetEmailFileld(I)I

    move-result v15

    .local v15, emailEfid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailSizeInfo:[I

    move-object v5, v0

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailSizeInfo:[I

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailSizeInfo:[I

    move-object v5, v0

    if-nez v5, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/internal/telephony/simcap;->emaillength:I

    .end local v15           #emailEfid:I
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupANR(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetAnrFileld(I)I

    move-result v11

    .local v11, anrEfid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->anrSizeInfo:[I

    move-object v5, v0

    if-nez v5, :cond_9

    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->anrSizeInfo:[I

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->anrSizeInfo:[I

    move-object v5, v0

    if-nez v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/internal/telephony/simcap;->anrlength:I

    .end local v11           #anrEfid:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    goto/16 :goto_0

    .restart local v8       #newAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    move-object v5, v0

    const/4 v7, 0x0

    aget v5, v5, v7

    const/16 v7, 0xe

    if-gt v5, v7, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x0

    aget v5, v17, v5

    if-lez v5, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    .end local v8           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    const/16 v8, 0xe

    sub-int/2addr v7, v8

    iput v7, v5, Lcom/android/internal/telephony/simcap;->taglength:I

    goto/16 :goto_1

    .restart local v8       #newAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/internal/telephony/simcap;->taglength:I

    goto/16 :goto_1

    .end local v8           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnSizeInfo:[I

    move-object v5, v0

    const/4 v7, 0x0

    aget v5, v5, v7

    if-lez v5, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x0

    aget v5, v17, v5

    if-lez v5, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    move-object v5, v0

    if-nez v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/internal/telephony/simcap;->numberlength:I

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getExt1Size(I)I

    move-result v5

    if-lt v5, v9, :cond_f

    const-string v5, ""

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/16 v7, 0xa

    iput v7, v5, Lcom/android/internal/telephony/simcap;->numberlength:I

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getExt1Size(I)I

    move-result v5

    if-le v5, v9, :cond_10

    const-string v5, ""

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/16 v7, 0xa

    iput v7, v5, Lcom/android/internal/telephony/simcap;->numberlength:I

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/16 v7, 0x14

    iput v7, v5, Lcom/android/internal/telephony/simcap;->numberlength:I

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/internal/telephony/simcap;->numberlength:I

    goto/16 :goto_2

    .restart local v15       #emailEfid:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x3

    aget v5, v17, v5

    if-lez v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailSizeInfo:[I

    move-object v5, v0

    const/4 v7, 0x0

    aget v5, v5, v7

    if-lez v5, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsEMAILTYP2()Z

    move-result v5

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailSizeInfo:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v5, Lcom/android/internal/telephony/simcap;->emaillength:I

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailSizeInfo:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    iput v7, v5, Lcom/android/internal/telephony/simcap;->emaillength:I

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/internal/telephony/simcap;->emaillength:I

    goto/16 :goto_3

    .end local v15           #emailEfid:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/internal/telephony/simcap;->emaillength:I

    goto/16 :goto_3

    .restart local v11       #anrEfid:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x4

    aget v5, v17, v5

    if-lez v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->anrSizeInfo:[I

    move-object v5, v0

    const/4 v7, 0x0

    aget v5, v5, v7

    if-lez v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    move-object v5, v0

    if-nez v5, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/internal/telephony/simcap;->anrlength:I

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getExt1Size(I)I

    move-result v5

    if-lt v5, v9, :cond_18

    const-string v5, ""

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/16 v7, 0xa

    iput v7, v5, Lcom/android/internal/telephony/simcap;->numberlength:I

    goto/16 :goto_4

    :cond_18
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getExt1Size(I)I

    move-result v5

    if-le v5, v9, :cond_19

    const-string v5, ""

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/16 v7, 0xa

    iput v7, v5, Lcom/android/internal/telephony/simcap;->numberlength:I

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/16 v7, 0x14

    iput v7, v5, Lcom/android/internal/telephony/simcap;->anrlength:I

    goto/16 :goto_4

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/internal/telephony/simcap;->anrlength:I

    goto/16 :goto_4

    .end local v11           #anrEfid:I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->msimcap:Lcom/android/internal/telephony/simcap;

    move-object v5, v0

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/internal/telephony/simcap;->anrlength:I

    goto/16 :goto_4
.end method

.method public hasloadcontacts()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, iccContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getSimCardType()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, v1, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadUsimRecord()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "hasloadcontacts true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    const/4 v1, 0x1

    .end local v0           #iccContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_1
    return v1

    .restart local v0       #iccContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, v1, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    const/16 v2, 0x6f3a

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #iccContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    check-cast v0, Ljava/util/ArrayList;

    .restart local v0       #iccContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    goto :goto_0

    :cond_1
    const-string v1, "hasloadcontacts  iccContacts isEmpty "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move v1, v3

    goto :goto_1

    :cond_2
    const-string v1, "hasloadcontacts iccContacts is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move v1, v3

    goto :goto_1

    .end local v0           #iccContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_3
    const-string v1, "hasloadcontacts uicc is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move v1, v3

    goto :goto_1
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x0

    .local v2, pbrIndex:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfBySearch: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .local v6, response:Landroid/os/Message;
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v3, p2, p3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, oldAdn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v4, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v4, p4, p5}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, newAdn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move v1, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordCache;->updateAdnBySearch(IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    return v0

    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "interrupted while trying to update by search"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .end local v3           #oldAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v4           #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v6           #response:Landroid/os/Message;
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .restart local v3       #oldAdn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v4       #newAdn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v6       #response:Landroid/os/Message;
    :cond_1
    :try_start_4
    const-string v0, "Failure while trying to update by search due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public updatepbRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 29
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "oldEmail"
    .parameter "oldAnr"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmail"
    .parameter "newAnr"
    .parameter "srecid"
    .parameter "pin2"

    .prologue
    const-string v5, "updatepbRecordsInEfBySearch"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatepbRecordsInEfBySearch efid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " srecid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pin2= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatepbRecordsInEfBySearch oldTag= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oldPhoneNumber= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oldEmail= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oldAnr= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatepbRecordsInEfBySearch newTag= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newPhoneNumber= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newEmail= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newAnr= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->changeEfForIccType(I)I

    move-result p1

    const/4 v5, 0x6

    new-array v14, v5, [I

    .local v14, index:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x2

    const/4 v6, -0x1

    aput v6, v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x3

    const/4 v6, -0x1

    aput v6, v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x4

    const/4 v6, -0x1

    aput v6, v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x5

    const/4 v6, -0x1

    aput v6, v14, v5

    const/16 v24, 0x0

    .local v24, oldEmails:[Ljava/lang/String;
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v5, 0x0

    aput-object p4, v24, v5

    const/16 v23, 0x0

    .local v23, newEmails:[Ljava/lang/String;
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v5, 0x0

    aput-object p8, v23, v5

    new-instance v7, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v7

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v24

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .local v7, oldAdn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v8, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v8

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, v23

    move-object/from16 v4, p9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .local v8, newAdn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v22

    .local v22, extensionEF:I
    const/4 v9, 0x0

    .local v9, ext1Size:I
    if-lez v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    move-object v5, v0

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    move-object v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    move-object v5, v0

    const/4 v6, 0x2

    aget v9, v5, v6

    :cond_2
    if-lez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->ext1SizeInfo:[I

    move-object v5, v0

    if-nez v5, :cond_4

    :cond_3
    const/4 v9, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    move/from16 v6, p1

    move-object/from16 v10, p10

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/AdnRecordCache;->searchIndex(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)[I

    move-result-object v14

    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .local v25, recid:[B
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v6, v0

    const/4 v6, 0x0

    aget v6, v14, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v25, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v6, v0

    const/4 v6, 0x5

    aget v6, v14, v6

    add-int/lit8 v6, v6, 0x1

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v25, v5

    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p10

    if-nez p10, :cond_5

    const-string p10, ""

    :cond_5
    const/16 v5, 0x6f3b

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x0

    aget v5, v14, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x2

    aget v5, v14, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x5

    aget v5, v14, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_9

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatepbRecordsInEfBySearch index[adnCache.adn_Index]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v6, v0

    const/4 v6, 0x0

    aget v6, v14, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatepbRecordsInEfBySearch index[adnCache.adnExt1_Index]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v6, v0

    const/4 v6, 0x1

    aget v6, v14, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatepbRecordsInEfBySearch index[adnCache.anrExt1_Index]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v6, v0

    const/4 v6, 0x2

    aget v6, v14, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatepbRecordsInEfBySearch index[adnCache.pbr_Index]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v6, v0

    const/4 v6, 0x5

    aget v6, v14, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    const-string p10, ""

    move-object/from16 v26, p10

    .end local p10
    .local v26, srecid:Ljava/lang/String;
    :goto_0
    return-object v26

    .end local v26           #srecid:Ljava/lang/String;
    .restart local p10
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x0

    aget v5, v14, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x5

    aget v5, v14, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_9

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatepbRecordsInEfBySearch index[adnCache.adn_Index]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v6, v0

    const/4 v6, 0x0

    aget v6, v14, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatepbRecordsInEfBySearch index[adnCache.pbr_Index]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v6, v0

    const/4 v6, 0x5

    aget v6, v14, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    const-string p10, ""

    move-object/from16 v26, p10

    .end local p10
    .restart local v26       #srecid:Ljava/lang/String;
    goto :goto_0

    .end local v26           #srecid:Ljava/lang/String;
    .restart local p10
    :cond_9
    const/16 v5, 0x6f3a

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_a

    const/16 v5, 0x6f3b

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_c

    :cond_a
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    invoke-direct/range {v10 .. v16}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .local v27, success:Z
    if-nez v27, :cond_b

    const-string p10, ""

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatepbRecordsInEfBySearch srecid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "success= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move-object/from16 v26, p10

    .end local p10
    .restart local v26       #srecid:Ljava/lang/String;
    goto/16 :goto_0

    .end local v26           #srecid:Ljava/lang/String;
    .end local v27           #success:Z
    .restart local p10
    :cond_c
    if-nez p8, :cond_d

    const-string p8, ""

    :cond_d
    const-string v5, ""

    move-object/from16 v0, p8

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p8

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x3

    const/16 v6, 0xff

    aput v6, v14, v5

    :cond_e
    if-nez p9, :cond_f

    const-string p9, ""

    :cond_f
    const-string v5, ""

    move-object/from16 v0, p9

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    move-object/from16 v0, p9

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x4

    const/16 v6, 0xff

    aput v6, v14, v5

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x3

    aget v5, v14, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    const/4 v5, 0x4

    aget v5, v14, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_12

    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updatepbRecordsInEfBySearch index[adnCache.email_Index]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v6, v0

    const/4 v6, 0x3

    aget v6, v14, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updatepbRecordsInEfBySearch index[adnCache.anr_Index]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v6, v0

    const/4 v6, 0x4

    aget v6, v14, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    const-string p10, ""

    move-object/from16 v26, p10

    .end local p10
    .restart local v26       #srecid:Ljava/lang/String;
    goto/16 :goto_0

    .end local v26           #srecid:Ljava/lang/String;
    .restart local p10
    :cond_12
    move-object/from16 v15, p0

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, v14

    move-object/from16 v21, p11

    invoke-direct/range {v15 .. v21}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnEmailRecordsInEfByIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;)Z

    move-result v28

    .local v28, usimsuccess:Z
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_13

    new-instance v15, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v18, v23

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    invoke-direct/range {v15 .. v20}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v15, newusimAdn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object v5, v0

    invoke-virtual {v5, v7, v15, v14}, Lcom/android/internal/telephony/AdnRecordCache;->updateusimphonebook(Lcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;[I)Z

    .end local v15           #newusimAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_13
    if-nez v28, :cond_14

    const-string p10, ""

    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatepbRecordsInEfBySearch srecid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "usimsuccess= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move-object/from16 v26, p10

    .end local p10
    .restart local v26       #srecid:Ljava/lang/String;
    goto/16 :goto_0
.end method
