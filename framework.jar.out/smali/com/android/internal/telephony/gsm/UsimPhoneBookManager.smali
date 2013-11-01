.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ANR_ALL_LOAD_DONE:I = 0x7

.field private static final EVENT_ANR_EXT_RECORD_LOAD_DONE:I = 0x6

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field private static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field private static final EXT_RECORD_TYPE_MASK:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_UsimPhoneBookManager"

.field private static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa

.field private static mEmailPresentInIap:Z


# instance fields
.field private Anrdatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private Emaildatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private anrExtRecId:I

.field private anrRecordExt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ext1Efid:I

.field private mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field private mAnrFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAnrForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrPresentInIap:Z

.field private mAnrTagNumberInIap:I

.field private mAnrsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mIapFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIapForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPbrFileSfi:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private oldNumAdnRec:I

.field private pbrNumbers:I

.field private upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/AdnRecordCache;)V
    .locals 3
    .parameter "fh"
    .parameter "cache"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->anrExtRecId:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ext1Efid:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Emaildatas:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    return p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ext1Efid:I

    return p1
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private createPbrFileSfi(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFileSfi:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFileSfi:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;

    goto :goto_0
.end method

.method public static isEMAILTYP2()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    const-string v0, "RIL_UsimPhoneBookManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readAdnFileAndWait(I)V
    .locals 8
    .parameter "recNum"

    .prologue
    const/16 v7, 0xc2

    const/16 v4, 0xc0

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v6, p1, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "RIL_UsimPhoneBookManager"

    const-string v3, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v6, p1, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v2, v5, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto :goto_1
.end method

.method private readAnrFileAndWait(I)V
    .locals 8
    .parameter "recNum"

    .prologue
    const/16 v5, 0xc2

    const/4 v7, 0x7

    const/16 v6, 0xc4

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v7, v2, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllAnrFromEF(IILandroid/os/Message;)V

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "RIL_UsimPhoneBookManager"

    const-string v3, "Interrupted Exception in readAnrFileAndWait"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v7, v2, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllAnrFromEF(IILandroid/os/Message;)V

    goto :goto_1
.end method

.method private readAnrRecord(I)Ljava/lang/String;
    .locals 7
    .parameter "recNum"

    .prologue
    const/4 v3, 0x0

    .local v3, anrRec:[B
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v2, v5, 0xff

    .local v2, anrLength:I
    const/4 v5, 0x2

    add-int/lit8 v6, v2, 0x1

    invoke-static {v3, v5, v6}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v1

    .local v1, anr:Ljava/lang/String;
    move-object v5, v1

    .end local v1           #anr:Ljava/lang/String;
    .end local v2           #anrLength:I
    :goto_0
    return-object v5

    :catch_0
    move-exception v5

    move-object v4, v5

    .local v4, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readAnrRecord mAnrFileRecord.get exception anrRec = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 8
    .parameter "recNum"

    .prologue
    const/16 v5, 0xca

    const-string v7, "RIL_UsimPhoneBookManager"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, efid:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {p0, v5, p1, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    const-string v3, "RIL_UsimPhoneBookManager"

    const-string v3, "Error: Email file is empty"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "RIL_UsimPhoneBookManager"

    const-string v3, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 8
    .parameter "recNum"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .local v3, emailRec:[B
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v4, v3

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-static {v3, v7, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .local v2, email:Ljava/lang/String;
    const/4 v4, -0x1

    array-length v5, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-byte v5, v3, v5

    if-ne v4, v5, :cond_0

    array-length v4, v3

    invoke-static {v3, v7, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    :cond_0
    move-object v4, v2

    .end local v2           #email:Ljava/lang/String;
    :goto_0
    return-object v4

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private readIapFileAndWait(I)V
    .locals 6
    .parameter "recNum"

    .prologue
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, efid:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "RIL_UsimPhoneBookManager"

    const-string v4, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readIapRecord(I)[B
    .locals 4
    .parameter "recNum"

    .prologue
    const/4 v2, 0x0

    .local v2, iapRec:[B
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "RIL_UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readPbrFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePhoneAdnRecord(I)V
    .locals 14
    .parameter "recordNum"

    .prologue
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, numAdnRecs:I
    if-nez p1, :cond_2

    iput v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    :cond_2
    const/4 v7, 0x0

    .local v7, recIndex:I
    if-lez p1, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    :goto_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v10

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    invoke-virtual {p0, p1, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1IapFile(II)V

    move v3, v7

    .local v3, i:I
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_5

    const/4 v9, 0x0

    .local v9, record:[B
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #record:[B
    check-cast v9, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v9       #record:[B
    if-nez v9, :cond_6

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3           #i:I
    .end local v9           #record:[B
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .restart local v3       #i:I
    :catch_0
    move-exception v10

    move-object v0, v10

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "RIL_UsimPhoneBookManager"

    const-string v11, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v3           #i:I
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, len:I
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    invoke-virtual {p0, p1, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(II)V

    move v3, v7

    .restart local v3       #i:I
    :goto_4
    if-ge v3, v5, :cond_0

    const/4 v1, 0x0

    .local v1, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_8

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #len:I
    .restart local v9       #record:[B
    :cond_6
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v10, v9, v10

    and-int/lit16 v8, v10, 0xff

    .local v8, recNum:I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/String;

    .local v2, emails:[Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x1

    sub-int v11, v8, v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    .local v6, rec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v6, :cond_7

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    :goto_6
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    new-instance v6, Lcom/android/internal/telephony/AdnRecord;

    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v10, ""

    const-string v11, ""

    invoke-direct {v6, v10, v11, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_6

    .end local v2           #emails:[Ljava/lang/String;
    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #recNum:I
    .end local v9           #record:[B
    .restart local v4       #len:I
    :catch_1
    move-exception v10

    move-object v0, v10

    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v2, v10, [Ljava/lang/String;

    .restart local v2       #emails:[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v10, v11, v2, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method private updatePhoneAnrAdnRecord(I)V
    .locals 23
    .parameter "recNum"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, numAdnRecs:I
    const-string v8, ""

    .local v8, anr:Ljava/lang/String;
    if-nez p1, :cond_0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    :cond_0
    const/16 v18, 0x0

    .local v18, recIndex:I
    if-lez p1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    move/from16 v18, v0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isANRTYP2()Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1IapFile(II)V

    move/from16 v13, v18

    .local v13, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move v0, v13

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    const/16 v19, 0x0

    .local v19, record:[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #record:[B
    check-cast v19, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v19       #record:[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    move/from16 v20, v0

    aget-byte v20, v19, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move v10, v0

    .local v10, anrrecNum:I
    const/16 v20, 0xff

    move v0, v10

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    :cond_1
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .end local v10           #anrrecNum:I
    .end local v13           #i:I
    .end local v19           #record:[B
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .restart local v13       #i:I
    :catch_0
    move-exception v20

    move-object/from16 v11, v20

    .local v11, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v20, "RIL_UsimPhoneBookManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error: Improper ICC card: No IAP record for ADN, continuing i= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v11           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v13           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    const/4 v14, 0x0

    .local v14, index:I
    if-nez p1, :cond_7

    const/4 v14, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_4
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    .local v6, REC:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v6}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtNumber()I

    move-result v12

    .local v12, extAnrIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isANRTYP2()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual {v6}, Lcom/android/internal/telephony/AdnRecord;->getAnrIndex()I

    move-result v5

    .local v5, AnrIndex:I
    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    if-eqz v5, :cond_4

    const/16 v20, 0xff

    move v0, v5

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    const/16 v20, 0x1

    sub-int v5, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/AdnRecord;

    .local v17, rec:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->setAnr(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v12, :cond_4

    const/16 v20, 0xff

    move v0, v12

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/AdnRecord;

    .local v7, Rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v7, v12}, Lcom/android/internal/telephony/AdnRecord;->setAnrExtNumber(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .end local v5           #AnrIndex:I
    .end local v6           #REC:Lcom/android/internal/telephony/AdnRecord;
    .end local v7           #Rec:Lcom/android/internal/telephony/AdnRecord;
    .end local v12           #extAnrIndex:I
    .end local v14           #index:I
    .end local v15           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    .end local v17           #rec:Lcom/android/internal/telephony/AdnRecord;
    .restart local v10       #anrrecNum:I
    .restart local v13       #i:I
    .restart local v19       #record:[B
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    sub-int v21, v10, v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/AdnRecord;

    .local v9, anrrec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v9, :cond_6

    invoke-virtual {v9, v8}, Lcom/android/internal/telephony/AdnRecord;->setAnr(Ljava/lang/String;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v13

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_6
    new-instance v9, Lcom/android/internal/telephony/AdnRecord;

    .end local v9           #anrrec:Lcom/android/internal/telephony/AdnRecord;
    const-string v20, ""

    const-string v21, ""

    const-string v22, ""

    move-object v0, v9

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object v3, v8

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v9       #anrrec:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_5

    .end local v9           #anrrec:Lcom/android/internal/telephony/AdnRecord;
    .end local v10           #anrrecNum:I
    .end local v13           #i:I
    .end local v19           #record:[B
    .restart local v14       #index:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    move v14, v0

    goto/16 :goto_3

    .restart local v6       #REC:Lcom/android/internal/telephony/AdnRecord;
    .restart local v12       #extAnrIndex:I
    .restart local v15       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_8
    move v0, v14

    move/from16 v1, v16

    if-lt v0, v1, :cond_a

    .end local v6           #REC:Lcom/android/internal/telephony/AdnRecord;
    .end local v12           #extAnrIndex:I
    .end local v14           #index:I
    .end local v15           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_9
    return-void

    .restart local v6       #REC:Lcom/android/internal/telephony/AdnRecord;
    .restart local v12       #extAnrIndex:I
    .restart local v14       #index:I
    .restart local v15       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/AdnRecord;

    .restart local v17       #rec:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->setAnr(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v14

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v12, :cond_b

    const/16 v20, 0xff

    move v0, v12

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/AdnRecord;

    .restart local v7       #Rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v7, v12}, Lcom/android/internal/telephony/AdnRecord;->setAnrExtNumber(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v14

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .end local v7           #Rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4
.end method

.method private updatePhoneRecord(I)V
    .locals 23
    .parameter "recordNum"

    .prologue
    const-string v19, "RIL_UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updatePhoneRecord recordNum = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, numAdnRecs:I
    const-string v19, "RIL_UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updatePhoneRecord numAdnRecs = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v13, :cond_15

    :try_start_0
    const-string v18, ""

    .local v18, tag:Ljava/lang/String;
    const-string v14, ""

    .local v14, number:Ljava/lang/String;
    const/4 v10, -0x1

    .local v10, ext1id:I
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object v8, v0

    .local v8, emails:[Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, ""

    aput-object v20, v8, v19

    const/16 v7, 0xff

    .local v7, emailrecNum:I
    const-string v5, ""

    .local v5, anr:Ljava/lang/String;
    const/16 v6, 0xff

    .local v6, anrrecNum:I
    const/4 v12, 0x0

    .local v12, iaprecord:[B
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .local v16, recid:[B
    const/16 v19, 0x1

    add-int/lit8 v20, p1, 0x1

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v16, v19

    new-instance v15, Lcom/android/internal/telephony/AdnRecord;

    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    const-string v22, ""

    move-object v0, v15

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v15, rec:Lcom/android/internal/telephony/AdnRecord;
    const/16 v19, 0x0

    add-int/lit8 v20, v11, 0x1

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v16, v19

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v17

    .local v17, srecid:Ljava/lang/String;
    if-eqz v15, :cond_d

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->setRecid(Ljava/lang/String;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {v9}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {v9}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v14

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->setAlphaTag(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Lcom/android/internal/telephony/AdnRecord;->setNumber(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {v9}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {v9}, Lcom/android/internal/telephony/AdnRecord;->getExtNumber()I

    move-result v10

    invoke-virtual {v15, v10}, Lcom/android/internal/telephony/AdnRecord;->setExtNumber(I)V

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportIAP(I)Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move v0, v11

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #iaprecord:[B
    check-cast v12, [B

    .restart local v12       #iaprecord:[B
    const-string v19, "RIL_UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updatePhoneRecord IAP i = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportEmail(I)Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v19

    if-eqz v19, :cond_10

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v19, v0

    aget-byte v19, v12, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move v7, v0

    const-string v19, "RIL_UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updatePhoneRecord IAP  emailrecNum = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "i = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0xff

    move v0, v7

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    const/16 v19, -0x1

    move v0, v7

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    move-object/from16 v19, v0

    add-int/lit8 v20, v11, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    move-object/from16 v19, v0

    add-int/lit8 v20, v11, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #emailrecNum:I
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .restart local v7       #emailrecNum:I
    :cond_3
    const-string v19, "RIL_UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updatePhoneRecord EMAIL  emailrecNum = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "i = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0xff

    move v0, v7

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    const/16 v19, -0x1

    move v0, v7

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v19, v0

    move v0, v7

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v12, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string v19, "RIL_UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updatePhoneRecord EMAIL  upb[recordNum].iaplist.get(i)[mEmailTagNumberInIap] = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v21, v0

    aget-object v21, v21, p1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v21, v0

    aget-byte v21, v9, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "i = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v19, -0x1

    move v0, v7

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/16 v7, 0xff

    :cond_5
    :goto_2
    const-string v19, "RIL_UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updatePhoneRecord emailrecNum = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "i = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0xff

    move v0, v7

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move v0, v7

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    sub-int v20, v7, v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #emails:[Ljava/lang/String;
    check-cast v8, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {v8}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v8

    .restart local v8       #emails:[Ljava/lang/String;
    :cond_6
    invoke-virtual {v15, v8}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportANR(I)Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isANRTYP2()Z

    move-result v19

    if-eqz v19, :cond_13

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    move/from16 v19, v0

    aget-byte v19, v12, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move v6, v0

    const/16 v19, 0xff

    move v0, v6

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v19, -0x1

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v19, v0

    add-int/lit8 v20, v11, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v19, v0

    add-int/lit8 v20, v11, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #anr:Ljava/lang/String;
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_8
    const-string v19, "RIL_UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updatePhoneRecord ANR  anrrecNum = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "i = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0xff

    move v0, v6

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    const/16 v19, -0x1

    move v0, v6

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    move/from16 v19, v0

    move v0, v6

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v12, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string v19, "RIL_UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updatePhoneRecord upb[recordNum].iaplist.get(i)[mAnrTagNumberInIap] = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v21, v0

    aget-object v21, v21, p1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    move/from16 v21, v0

    aget-byte v21, v5, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "i = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    const/16 v19, -0x1

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const/16 v6, 0xff

    :cond_a
    const/16 v19, 0xff

    move v0, v6

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move v0, v6

    move/from16 v1, v19

    if-gt v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    sub-int v20, v6, v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #anr:Ljava/lang/String;
    :cond_b
    :goto_4
    invoke-virtual {v15, v5}, Lcom/android/internal/telephony/AdnRecord;->setAnr(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportANR(I)Z

    move-result v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move v0, v6

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #anr:Ljava/lang/String;
    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->hasAnrExtendedRecord()Z

    move-result v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtNumber()I

    move-result v10

    invoke-virtual {v15, v10}, Lcom/android/internal/telephony/AdnRecord;->setAnrExtNumber(I)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .restart local v5       #anr:Ljava/lang/String;
    :cond_d
    new-instance v15, Lcom/android/internal/telephony/AdnRecord;

    .end local v15           #rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    move-object v0, v15

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v15       #rec:Lcom/android/internal/telephony/AdnRecord;
    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    move-object/from16 v19, v0

    add-int/lit8 v20, v11, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    move-object/from16 v19, v0

    add-int/lit8 v20, v11, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #emailrecNum:I
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .restart local v7       #emailrecNum:I
    goto/16 :goto_2

    :cond_f
    const/16 v7, 0xff

    goto/16 :goto_2

    :cond_10
    add-int/lit8 v7, v11, 0x1

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v19, v0

    add-int/lit8 v20, v11, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v19, v0

    add-int/lit8 v20, v11, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #anr:Ljava/lang/String;
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto/16 :goto_3

    .restart local v5       #anr:Ljava/lang/String;
    :cond_12
    const/16 v6, 0xff

    goto/16 :goto_3

    :cond_13
    add-int/lit8 v6, v11, 0x1

    goto/16 :goto_3

    .end local v5           #anr:Ljava/lang/String;
    :cond_14
    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v5       #anr:Ljava/lang/String;
    goto/16 :goto_4

    .end local v5           #anr:Ljava/lang/String;
    .end local v6           #anrrecNum:I
    .end local v7           #emailrecNum:I
    .end local v8           #emails:[Ljava/lang/String;
    .end local v10           #ext1id:I
    .end local v12           #iaprecord:[B
    .end local v14           #number:Ljava/lang/String;
    .end local v15           #rec:Lcom/android/internal/telephony/AdnRecord;
    .end local v16           #recid:[B
    .end local v17           #srecid:Ljava/lang/String;
    .end local v18           #tag:Ljava/lang/String;
    :catch_0
    move-exception v19

    move-object/from16 v9, v19

    .local v9, ex:Ljava/lang/Exception;
    const-string v19, "RIL_UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updatePhoneRecord ex = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9           #ex:Ljava/lang/Exception;
    :cond_15
    const-string v19, "RIL_UsimPhoneBookManager"

    const-string v20, "updatePhoneRecord done "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public GetAnrdatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public GetEmaildatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Emaildatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAdnFileld(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_0

    move v2, v3

    .end local p0
    :goto_0
    return v2

    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, efid:I
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_4
    move v2, v0

    goto :goto_0
.end method

.method public getAllAdnFileId()[I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, FileId:[I
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnFileld(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllAnrFileId()[I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, FileId:[I
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrFileld(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllEmailFileId()[I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, FileId:[I
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailFileId(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllExt1Fileld()[I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, FileId:[I
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getExt1Fileld(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllIapFileId()[I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, FileId:[I
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getIapFileId(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllSfiFileId()[I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, FileId:[I
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSfiFileld(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAnrFileId(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_0

    move v2, v3

    .end local p0
    :goto_0
    return v2

    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, efid:I
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_4
    move v2, v0

    goto :goto_0
.end method

.method public getAnrFileld(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_0

    move v2, v3

    .end local p0
    :goto_0
    return v2

    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, efid:I
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_4
    move v2, v0

    goto :goto_0
.end method

.method public getAnriniap()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    return v0
.end method

.method public getEXT1efid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ext1Efid:I

    return v0
.end method

.method public getEmailFileId(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xca

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_0

    move v2, v3

    .end local p0
    :goto_0
    return v2

    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, efid:I
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_4
    move v2, v0

    goto :goto_0
.end method

.method public getEmailiniap()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return v0
.end method

.method public getExt1Fileld(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc2

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_0

    move v2, v3

    .end local p0
    :goto_0
    return v2

    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, efid:I
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_4
    move v2, v0

    goto :goto_0
.end method

.method public getIapFileId(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_0

    move v2, v3

    .end local p0
    :goto_0
    return v2

    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, efid:I
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_4
    move v2, v0

    goto :goto_0
.end method

.method public getSfiFileld(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_0

    move v2, v3

    .end local p0
    :goto_0
    return v2

    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFileSfi:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->mSfiFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, sfi:I
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method public getUsimRecordSize()I
    .locals 7

    .prologue
    const-string v6, ""

    const/4 v3, 0x0

    .local v3, usimNumbers:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    .local v2, rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v0, ""

    .local v0, email:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v0, v4, v5

    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #email:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_3
    const-string v4, "RIL_UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY getUsimRecordSize ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public getadnlist(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "recnumber"
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
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getanrlist(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "recnumber"
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
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getemaillist(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "recnumber"
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
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getiaplist(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "recnumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getpbrNumbers()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .end local p1
    :goto_0
    :pswitch_0
    return-void

    .restart local p1
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .local v6, ar:Landroid/os/AsyncResult;
    iget-object v11, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_0

    iget-object p1, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    iget-object p1, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFileSfi(Ljava/util/ArrayList;)V

    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notify()V

    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .end local v6           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget v10, p1, Landroid/os/Message;->arg1:I

    .local v10, recNum:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_USIM_ADN_LOAD_DONE recNum = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v11, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_1

    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v11, v11, v10

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    iget-object p1, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_2
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notify()V

    monitor-exit v11

    goto :goto_0

    :catchall_1
    move-exception v12

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v12

    :catch_0
    move-exception v11

    move-object v8, v11

    .local v8, ex:Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_USIM_ADN_LOAD_DONE Exception  = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v10           #recNum:I
    .restart local p1
    :pswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget v10, p1, Landroid/os/Message;->arg1:I

    .restart local v10       #recNum:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_IAP_LOAD_DONE recNum = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v11, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_2

    iget-object p1, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    :try_start_3
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v11, v11, v10

    iget-object p1, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, v11, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_4
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notify()V

    monitor-exit v11

    goto/16 :goto_0

    :catchall_2
    move-exception v12

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v12

    :catch_1
    move-exception v11

    move-object v8, v11

    .restart local v8       #ex:Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_IAP_LOAD_DONE Exception ex = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v10           #recNum:I
    .restart local p1
    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget v10, p1, Landroid/os/Message;->arg1:I

    .restart local v10       #recNum:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_EMAIL_LOAD_DONE recNum = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v11, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_6

    iget-object p1, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    const/4 v7, 0x0

    .local v7, emailRec:[B
    const/16 v4, 0xff

    .local v4, adnEmailRecNum:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    :try_start_5
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [B

    move-object v7, v0

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v11

    if-eqz v11, :cond_5

    array-length v11, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    aget-byte v4, v7, v11

    :cond_3
    :goto_4
    const/4 v11, -0x1

    if-ne v4, v11, :cond_4

    const/16 v4, 0xff

    :cond_4
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v11, v11, v10

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    add-int/lit8 v13, v9, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/String;

    .local v2, RecEmail:[Ljava/lang/String;
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>([Ljava/lang/String;)V

    .local v1, Emaildata:Lcom/android/internal/telephony/AdnRecord;
    const/4 v11, 0x0

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v11

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Emaildatas:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v11, v11, v10

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .end local v1           #Emaildata:Lcom/android/internal/telephony/AdnRecord;
    .end local v2           #RecEmail:[Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v9, 0x1

    goto :goto_4

    :catch_2
    move-exception v11

    move-object v8, v11

    .restart local v8       #ex:Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_IAP_LOAD_DONE Exception ex = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .end local v4           #adnEmailRecNum:I
    .end local v7           #emailRec:[B
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v9           #i:I
    :cond_6
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_6
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notify()V

    monitor-exit v11

    goto/16 :goto_0

    :catchall_3
    move-exception v12

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v12

    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v10           #recNum:I
    .restart local p1
    :pswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget v10, p1, Landroid/os/Message;->arg2:I

    .restart local v10       #recNum:I
    const/16 v3, 0xff

    .local v3, adnAnrRecNum:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_ANR_ALL_LOAD_DONE recNum = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v11, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_9

    :try_start_7
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v11, v11, v10

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    iget-object p1, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_5
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v11, v11, v10

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_9

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v11, v11, v10

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    .local v5, anrAdn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isANRTYP2()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getAnrIndex()I

    move-result v3

    :goto_6
    const/4 v11, -0x1

    if-ne v3, v11, :cond_7

    const/16 v3, 0xff

    :cond_7
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v11, v11, v10

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    add-int/lit8 v13, v9, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v9, 0x1

    goto :goto_6

    .end local v5           #anrAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #i:I
    :catch_3
    move-exception v11

    move-object v8, v11

    .restart local v8       #ex:Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_ANR_ALL_LOAD_DONE Exception ex = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .end local v8           #ex:Ljava/lang/Exception;
    :cond_9
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_8
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notify()V

    monitor-exit v11

    goto/16 :goto_0

    :catchall_4
    move-exception v12

    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public isANRTYP2()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    return v0
.end method

.method public isSupportANR(I)Z
    .locals 4
    .parameter "pbrindex"

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method public isSupportEmail(I)Z
    .locals 4
    .parameter "pbrindex"

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method public isSupportIAP(I)Z
    .locals 4
    .parameter "pbrindex"

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v2

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v2

    move-object v2, v4

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_3

    monitor-exit v2

    move-object v2, v4

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    .local v1, numRecs:I
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    new-array v3, v1, [Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    new-instance v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V

    aput-object v4, v3, v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportIAP(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportEmail(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportANR(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFileAndWait(I)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_8

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneRecord(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #numRecs:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public loadUsimRecord()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method parseType1Anr(III)V
    .locals 5
    .parameter "numRecs"
    .parameter "recNum"
    .parameter "oldNumAdnRec"

    .prologue
    const-string v4, ""

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/Map;

    if-lez p2, :cond_2

    move v1, p3

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_5

    sub-int v2, v1, p3

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecord(I)Ljava/lang/String;

    move-result-object v0

    .local v0, anr:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0           #anr:Ljava/lang/String;
    .end local v1           #i:I
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, p1, :cond_5

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecord(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #anr:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .end local v0           #anr:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method parseType1EmailFile(II)V
    .locals 10
    .parameter "recordNum"
    .parameter "oldNumAdnRec"

    .prologue
    const/4 v9, 0x1

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    const/4 v3, 0x0

    .local v3, emailRec:[B
    const/4 v5, 0x0

    .local v5, recIndex:I
    const/16 v0, 0xff

    .local v0, adnRecNum:I
    if-lez p1, :cond_1

    move v5, p2

    :goto_0
    move v4, v5

    .local v4, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #emailRec:[B
    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3       #emailRec:[B
    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v7

    if-eqz v7, :cond_3

    array-length v7, v3

    sub-int/2addr v7, v9

    aget-byte v0, v3, v7

    const/16 v7, 0xff

    if-ne v0, v7, :cond_4

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v4           #i:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .end local v3           #emailRec:[B
    .restart local v4       #i:I
    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "RIL_UsimPhoneBookManager"

    const-string v8, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    return-void

    .restart local v3       #emailRec:[B
    :cond_3
    add-int/lit8 v0, v4, 0x1

    :cond_4
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .local v2, email:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    sub-int v8, v0, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .local v6, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6       #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    sub-int v8, v0, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method parseType1IapFile(II)V
    .locals 4
    .parameter "recordNum"
    .parameter "oldNumAdnRec"

    .prologue
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    if-lez p1, :cond_1

    move v0, p2

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    sub-int v2, v0, p2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapRecord(I)[B

    move-result-object v1

    .local v1, iap:[B
    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #iap:[B
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapRecord(I)[B

    move-result-object v1

    .restart local v1       #iap:[B
    if-nez v1, :cond_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .end local v1           #iap:[B
    :cond_3
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    return-void
.end method
