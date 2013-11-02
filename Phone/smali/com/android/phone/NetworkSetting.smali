.class public Lcom/android/phone/NetworkSetting;
.super Landroid/preference/PreferenceActivity;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkSetting$NetworkListPreference;
    }
.end annotation


# static fields
.field private static final BUTTON_AUTO_SELECT_KEY:Ljava/lang/String; = "button_auto_select_key"

.field private static final BUTTON_SRCH_NETWRKS_KEY:Ljava/lang/String; = "button_srch_netwrks_key"

.field private static final DBG:Z = true

.field private static final DIALOG_NETWORK_AUTO_SELECT:I = 0x12c

.field private static final DIALOG_NETWORK_LIST_LOAD:I = 0xc8

.field private static final DIALOG_NETWORK_SELECTION:I = 0x64

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x12c

.field private static final EVENT_NETWORK_SCAN_COMPLETED:I = 0x64

.field private static final EVENT_NETWORK_SELECTION_DONE:I = 0xc8

.field private static final LIST_NETWORKS_KEY:Ljava/lang/String; = "list_networks_key"

.field private static final LOG_TAG:Ljava/lang/String; = "phone"


# instance fields
.field private mAutoSelect:Landroid/preference/Preference;

.field private final mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private mDialogNetworkListLoadShowing:Z

.field private final mHandler:Landroid/os/Handler;

.field protected mIsForeground:Z

.field private mNetworkList:Landroid/preference/PreferenceGroup;

.field private mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/internal/telephony/gsm/NetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkQueryComplete:Z

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private final mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field mNetworkSelectMsg:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mSearchButton:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryComplete:Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mDialogNetworkListLoadShowing:Z

    .line 99
    new-instance v0, Lcom/android/phone/NetworkSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$1;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    .line 155
    new-instance v0, Lcom/android/phone/NetworkSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$2;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    .line 176
    new-instance v0, Lcom/android/phone/NetworkSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$3;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    .line 522
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private clearList()V
    .locals 3

    .prologue
    .line 506
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 507
    .local v1, p:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 509
    .end local v1           #p:Landroid/preference/Preference;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 510
    return-void
.end method

.method private displayEmptyNetworkList(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    if-eqz p1, :cond_0

    const v1, 0x7f0c00e0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 335
    return-void

    .line 334
    :cond_0
    const v1, 0x7f0c00de

    goto :goto_0
.end method

.method private displayNetworkQueryFailed(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 351
    return-void
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "ex"

    .prologue
    .line 356
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, status:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 367
    return-void

    .line 362
    .end local v0           #status:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #status:Ljava/lang/String;
    goto :goto_0
.end method

.method private displayNetworkSelectionSucceeded()V
    .locals 5

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 375
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/NetworkSetting$4;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkSetting$4;-><init>(Lcom/android/phone/NetworkSetting;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 380
    return-void
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 4
    .parameter "networkStr"

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    .line 341
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 342
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 344
    :cond_0
    return-void
.end method

.method private getNetworkTitle(Lcom/android/internal/telephony/gsm/NetworkInfo;)Ljava/lang/String;
    .locals 1
    .parameter "ni"

    .prologue
    .line 496
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 501
    :goto_0
    return-object v0

    .line 498
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 499
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 501
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadNetworksList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 383
    const-string v0, "load networks list..."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 386
    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryComplete:Z

    .line 388
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 389
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mDialogNetworkListLoadShowing:Z

    .line 397
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v0, v1}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 402
    return-void

    .line 398
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 568
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworksList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .locals 12
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/NetworkInfo;>;"
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v11, "50506"

    const-string v10, "50501"

    const-string v8, "NetworkSetting.java"

    .line 412
    const-string v6, "networks list loaded"

    invoke-direct {p0, v6}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 415
    const-string v6, "hideProgressPanel"

    invoke-direct {p0, v6}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 417
    iget-boolean v6, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v6, :cond_0

    .line 418
    const/16 v6, 0xc8

    invoke-virtual {p0, v6}, Lcom/android/phone/NetworkSetting;->dismissDialog(I)V

    .line 420
    iput-boolean v9, p0, Lcom/android/phone/NetworkSetting;->mDialogNetworkListLoadShowing:Z

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 425
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    .line 427
    iput-boolean v7, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryComplete:Z

    .line 431
    if-eqz p2, :cond_2

    .line 432
    const-string v6, "error while querying available networks"

    invoke-direct {p0, v6}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 433
    invoke-direct {p0, p2}, Lcom/android/phone/NetworkSetting;->displayNetworkQueryFailed(I)V

    .line 434
    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 484
    :cond_1
    :goto_0
    return-void

    .line 436
    :cond_2
    if-eqz p1, :cond_7

    .line 437
    invoke-direct {p0, v9}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 443
    const/4 v2, 0x0

    .line 444
    .local v2, networkListCode:I
    const-string v6, "gsm.sim.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 445
    .local v4, numeric:Ljava/lang/String;
    const/4 v5, 0x0

    .line 446
    .local v5, numericNi:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/NetworkInfo;

    .line 447
    .local v3, ni:Lcom/android/internal/telephony/gsm/NetworkInfo;
    const-string v6, "NetworkSetting.java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shenzhan SystemProperties.get() numeric == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 449
    const-string v6, "NetworkSetting.java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shenzhan SystemProperties.get() numericNi == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 451
    const/4 v2, 0x1

    .line 470
    :goto_2
    new-instance v0, Landroid/preference/Preference;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 471
    .local v0, carrier:Landroid/preference/Preference;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 472
    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 473
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 474
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 452
    .end local v0           #carrier:Landroid/preference/Preference;
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getState()Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    if-ne v6, v7, :cond_4

    .line 453
    const/4 v2, 0x2

    goto :goto_2

    .line 454
    :cond_4
    const-string v6, "50501"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "50506"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 455
    const-string v6, "NetworkSetting.java"

    const-string v6, "50501 !!!!!"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v2, 0x1

    goto :goto_2

    .line 457
    :cond_5
    const-string v6, "50506"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "50501"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 458
    const-string v6, "NetworkSetting.java"

    const-string v6, "50506 !!!!!"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v2, 0x1

    goto :goto_2

    .line 461
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 481
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #networkListCode:I
    .end local v3           #ni:Lcom/android/internal/telephony/gsm/NetworkInfo;
    .end local v4           #numeric:Ljava/lang/String;
    .end local v5           #numericNi:Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v7}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    goto/16 :goto_0
.end method

.method private selectNetworkAutomatic()V
    .locals 3

    .prologue
    const/16 v2, 0x12c

    .line 513
    const-string v1, "select network automatically..."

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 514
    iget-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v1, :cond_0

    .line 515
    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 519
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 520
    return-void
.end method


# virtual methods
.method public getNormalizedCarrierName(Lcom/android/internal/telephony/gsm/NetworkInfo;)Ljava/lang/String;
    .locals 2
    .parameter "ni"

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    .line 223
    return-void

    .line 219
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 220
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const-class v5, Lcom/android/phone/NetworkQueryService;

    const-string v4, "SUBSCRIPTION_ID"

    .line 234
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 236
    const v2, 0x7f050005

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->addPreferencesFromResource(I)V

    .line 238
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SUBSCRIPTION_ID"

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 239
    .local v1, subscription:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate subscription :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 240
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "SUBSCRIPTION_ID"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "list_networks_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Landroid/preference/PreferenceGroup;

    .line 245
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    .line 247
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "button_srch_netwrks_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    .line 248
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "button_auto_select_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 256
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/NetworkSetting;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 258
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 291
    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x12c

    if-ne p1, v1, :cond_1

    .line 293
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 294
    .local v0, dialog:Landroid/app/ProgressDialog;
    sparse-switch p1, :sswitch_data_0

    .line 313
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 314
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 315
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :goto_0
    move-object v1, v0

    .line 320
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_1
    return-object v1

    .line 301
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 303
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 306
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 308
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 320
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 294
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x12c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->unbindService(Landroid/content/ServiceConnection;)V

    .line 285
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 286
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 274
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 191
    .local v0, handled:Z
    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mSearchButton:Landroid/preference/Preference;

    if-ne p2, v4, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    .line 193
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    .line 194
    :cond_0
    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mAutoSelect:Landroid/preference/Preference;

    if-ne p2, v4, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic()V

    .line 196
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    :cond_1
    move-object v3, p2

    .line 200
    .local v3, selectedCarrier:Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, networkStr:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selected network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 203
    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 204
    .local v1, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/NetworkInfo;

    invoke-interface {v5, v4, v1}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/gsm/NetworkInfo;Landroid/os/Message;)V

    .line 206
    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 325
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_1

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 331
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    .line 265
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mDialogNetworkListLoadShowing:Z

    if-eqz v0, :cond_0

    .line 266
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->dismissDialog(I)V

    .line 268
    :cond_0
    return-void
.end method
