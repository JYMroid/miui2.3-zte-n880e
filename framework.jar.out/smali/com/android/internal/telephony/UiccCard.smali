.class public Lcom/android/internal/telephony/UiccCard;
.super Landroid/os/Handler;
.source "UiccCard.java"


# instance fields
.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

.field private mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mLogTag:Ljava/lang/String;

.field private mSubscription3gpp2AppIndex:I

.field private mSubscription3gppAppIndex:I

.field private mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

.field private mUiccManager:Lcom/android/internal/telephony/UiccManager;

.field private mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

.field private mUnavailableRegistrants:Landroid/os/RegistrantList;

.field private mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccManager;Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/cat/CatService;)V
    .locals 9
    .parameter "uiccManager"
    .parameter "ics"
    .parameter "c"
    .parameter "ci"
    .parameter "catService"

    .prologue
    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, "RIL_UiccCard"

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLogTag:Ljava/lang/String;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    iput-boolean v8, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z

    iput-object p1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->card_state:Lcom/android/internal/telephony/UiccConstants$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->universal_pin_state:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;

    iget v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp_app_index:I

    iput v0, p0, Lcom/android/internal/telephony/UiccCard;->mSubscription3gppAppIndex:I

    iget v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp2_app_index:I

    iput v0, p0, Lcom/android/internal/telephony/UiccCard;->mSubscription3gpp2AppIndex:I

    new-instance v0, Lcom/android/internal/telephony/UiccRecords;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/UiccRecords;-><init>(Lcom/android/internal/telephony/UiccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    iput-object p3, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " applications"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v0, Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v1, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v2, v1, v6

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/UiccCardApplication;-><init>(Lcom/android/internal/telephony/UiccCard;Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v0, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v0, v0, v8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cat/CatService;->update(Lcom/android/internal/telephony/UiccApplicationRecords;Lcom/android/internal/telephony/IccFileHandler;)V

    :cond_1
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 5

    .prologue
    monitor-enter p0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z

    sget-object v4, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccRecords;->dispose()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatService;->cleanSTKIcon()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    .local v1, arr$:[Lcom/android/internal/telephony/UiccCardApplication;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .local v0, app:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->dispose()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #app:Lcom/android/internal/telephony/UiccCardApplication;
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v1           #arr$:[Lcom/android/internal/telephony/UiccCardApplication;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected finalize()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "UiccCard finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    return-object v0
.end method

.method public getNumApplications()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .local v2, count:I
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    .local v1, arr$:[Lcom/android/internal/telephony/UiccCardApplication;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .local v0, a:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #a:Lcom/android/internal/telephony/UiccCardApplication;
    :cond_1
    return v2
.end method

.method public declared-synchronized getRecords()Lcom/android/internal/telephony/UiccRecords;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSubscription3gpp2AppIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/UiccCard;->mSubscription3gpp2AppIndex:I

    return v0
.end method

.method public getSubscription3gppAppIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/UiccCard;->mSubscription3gppAppIndex:I

    return v0
.end method

.method public declared-synchronized getUiccCardApplication(I)Lcom/android/internal/telephony/UiccCardApplication;
    .locals 2
    .parameter "appIndex"

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUiccManager()Lcom/android/internal/telephony/UiccManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    return-object v0
.end method

.method public getUniversalPinState()Lcom/android/internal/telephony/UiccConstants$PinState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;

    return-object v0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z
    .locals 5
    .parameter "type"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    .local v1, arr$:[Lcom/android/internal/telephony/UiccCardApplication;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .local v0, a:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    if-ne v4, p1, :cond_0

    const/4 v4, 0x1

    .end local v0           #a:Lcom/android/internal/telephony/UiccCardApplication;
    :goto_1
    return v4

    .restart local v0       #a:Lcom/android/internal/telephony/UiccCardApplication;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #a:Lcom/android/internal/telephony/UiccCardApplication;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public declared-synchronized registerForUnavailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z
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
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUnavailableRegistrants:Landroid/os/RegistrantList;

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

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public declared-synchronized unregisterForUnavailable(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUnavailableRegistrants:Landroid/os/RegistrantList;

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

.method public update(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 9
    .parameter "ics"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "Updated after destroyed! Fix me!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->card_state:Lcom/android/internal/telephony/UiccConstants$CardState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->cleanSTKIcon()V

    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->card_state:Lcom/android/internal/telephony/UiccConstants$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    iget-object v0, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->universal_pin_state:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;

    iget v0, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp_app_index:I

    iput v0, p0, Lcom/android/internal/telephony/UiccCard;->mSubscription3gppAppIndex:I

    iget v0, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp2_app_index:I

    iput v0, p0, Lcom/android/internal/telephony/UiccCard;->mSubscription3gpp2AppIndex:I

    iput-object p2, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v0, v0

    if-ge v6, v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v0, v0, v6

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    array-length v0, v0

    if-ge v6, v0, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v0, Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v1, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v2, v1, v6

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/UiccCardApplication;-><init>(Lcom/android/internal/telephony/UiccCard;Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v0, v7, v6

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    array-length v0, v0

    if-lt v6, v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->dispose()V

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x0

    aput-object v1, v0, v6

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v0, v0, v6

    iget-object v1, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/UiccCardApplication;->update(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v0, v0, v8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cat/CatService;->update(Lcom/android/internal/telephony/UiccApplicationRecords;Lcom/android/internal/telephony/IccFileHandler;)V

    goto/16 :goto_0
.end method
