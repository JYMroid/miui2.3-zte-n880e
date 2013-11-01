.class public abstract Lcom/android/internal/telephony/UiccApplicationRecords;
.super Landroid/os/Handler;
.source "UiccApplicationRecords.java"


# static fields
.field protected static final DBG:Z = true

.field protected static final EVENT_APP_READY:I = 0x1

.field public static final EVENT_CFI:I = 0x1

.field public static final EVENT_EONS:I = 0x3

.field protected static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field public static final EVENT_SPN:I = 0x2

.field protected static final SPN_RULE_SHOW_PLMN:I = 0x2

.field protected static final SPN_RULE_SHOW_SPN:I = 0x1

.field protected static final UNINITIALIZED:I = -0x1

.field protected static final UNKNOWN:I


# instance fields
.field protected adnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field public iccid:Ljava/lang/String;

.field protected isVoiceMailFixed:Z

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field protected mDestroyed:Z

.field protected mFh:Lcom/android/internal/telephony/IccFileHandler;

.field protected mIccRefreshRegistrants:Landroid/os/RegistrantList;

.field protected mImsi:Ljava/lang/String;

.field protected mImsiReadyRegistrants:Landroid/os/RegistrantList;

.field protected mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

.field protected mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

.field protected mParentCard:Lcom/android/internal/telephony/UiccCard;

.field protected mRecordsEventsRegistrants:Landroid/os/RegistrantList;

.field protected mSubscription:I

.field protected mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

.field private mUnavailableRegistrants:Landroid/os/RegistrantList;

.field protected mailboxIndex:I

.field protected mncLength:I

.field protected msisdn:Ljava/lang/String;

.field protected msisdnTag:Ljava/lang/String;

.field protected newVoiceMailNum:Ljava/lang/String;

.field protected newVoiceMailTag:Ljava/lang/String;

.field protected recordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected recordsRequested:Z

.field protected recordsToLoad:I

.field protected spn:Ljava/lang/String;

.field protected spnDisplayCondition:I

.field protected voiceMailNum:Ljava/lang/String;

.field protected voiceMailTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/UiccRecords;)V
    .locals 3
    .parameter "parent"
    .parameter "c"
    .parameter "ci"
    .parameter "ur"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mDestroyed:Z

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    iput v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mSubscription:I

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    iput-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdn:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdnTag:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailNum:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailTag:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->newVoiceMailNum:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->newVoiceMailTag:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->isVoiceMailFixed:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    iput v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mailboxIndex:I

    iput-object p2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p4, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

    iput-object p1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentCard:Lcom/android/internal/telephony/UiccCard;

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mDestroyed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentCard:Lcom/android/internal/telephony/UiccCard;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    return-object v0
.end method

.method public getCardApplication()Lcom/android/internal/telephony/UiccCardApplication;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    return-object v0
.end method

.method protected abstract getDisplayRule(Ljava/lang/String;)I
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordsLoaded()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->spn:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract onAllRecordsLoaded()V
.end method

.method protected abstract onRecordLoaded()V
.end method

.method public abstract onRefresh(Z[I)V
.end method

.method public declared-synchronized registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerForUnavailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    iput-object p2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdn:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdnTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UiccApplicationRecords;->log(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/UiccApplicationRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setVoiceMessageWaiting(IILandroid/os/Message;)V
.end method

.method public declared-synchronized unregisterForImsiReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterForRecordsEvents(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterForUnavailable(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
