.class final Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$MaintainServiceStateTask;
    }
.end annotation


# static fields
.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final NETWORK_SELECTION_KEY:Ljava/lang/String; = "network_selection_key"

.field private static final TASK_PEEDING_TIMEOUT:I = 0x1f40

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"

.field private static hasQueryCF:Z

.field private static isManagedRoamingDialogDisplayed:Z


# instance fields
.field cellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private cr:Landroid/content/ContentResolver;

.field private curPlmn:Ljava/lang/String;

.field private curSpn:Ljava/lang/String;

.field private curSpnRule:I

.field m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mEmergencyOnly:Z

.field private mFakeStateEnabled:Z

.field private mGotCountryCode:Z

.field private mGsmRoaming:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIsServiceStateTaskPending:Z

.field mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mNeedFixZone:Z

.field private mNewEmergencyOnly:Z

.field private mNotification:Landroid/app/Notification;

.field mPreferredNetworkType:I

.field mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field mUiccManager:Lcom/android/internal/telephony/UiccManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field private m_nCFSearchRetry:I

.field private networkType:I

.field newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private newNetworkType:I

.field onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field public realSS:Landroid/telephony/ServiceState;

.field rs:Lcom/android/internal/telephony/gsm/RestrictedState;

.field private ssChangeToAvailable:Z

.field private final timer:Ljava/util/Timer;

.field private timerTask:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$MaintainServiceStateTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isManagedRoamingDialogDisplayed:Z

    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hasQueryCF:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 6
    .parameter "phone"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewEmergencyOnly:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m_nCFSearchRetry:I

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFakeStateEnabled:Z

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->timer:Ljava/util/Timer;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->timerTask:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$MaintainServiceStateTask;

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsServiceStateTaskPending:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ssChangeToAvailable:Z

    new-instance v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    new-instance v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->realSS:Landroid/telephony/ServiceState;

    new-instance v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v2}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    new-instance v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v2}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    new-instance v2, Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .local v1, powerManager:Landroid/os/PowerManager;
    const-string v2, "ServiceStateTracker"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xd

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x2b

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xb

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x17

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/16 v3, 0x2c

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v3, "auto_time"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitz()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Landroid/telephony/ServiceState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isManagedRoamingDialogDisplayed:Z

    return p0
.end method

.method private createManagedRoamingDialog()V
    .locals 7

    .prologue
    const-string v6, "GSM"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, r:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "network_selection_key"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, networkSelection:Ljava/lang/String;
    const-string v3, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Managed Roaming case, networkSelection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isManagedRoamingDialogDisplayed:Z

    if-nez v3, :cond_0

    const-string v3, "GSM"

    const-string v3, "Show Managed Roaming Dialog"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x104039b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104039c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104039d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104039e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, managedRoamingDialog:Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mManagedRoamingDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isManagedRoamingDialogDisplayed:Z

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .end local v0           #managedRoamingDialog:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method private static displayNameFor(I)Ljava/lang/String;
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    const/16 v3, 0x9

    new-array v0, v3, [C

    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    if-gez p0, :cond_0

    const/16 v3, 0x2d

    aput-char v3, v0, v5

    neg-int p0, p0

    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .local v1, hours:I
    rem-int/lit8 v2, p0, 0x3c

    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 10
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    move v5, p1

    .local v5, rawOffset:I
    if-eqz p2, :cond_0

    const v9, 0x36ee80

    sub-int/2addr v5, v9

    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .local v8, zones:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, guess:Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .local v1, d:Ljava/util/Date;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .local v7, zone:Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .local v6, tz:Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    move-object v2, v6

    .end local v6           #tz:Ljava/util/TimeZone;
    .end local v7           #zone:Ljava/lang/String;
    :cond_1
    return-object v2

    .restart local v6       #tz:Ljava/util/TimeZone;
    .restart local v7       #zone:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    goto :goto_0
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 4
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .local v0, guess:Ljava/util/TimeZone;
    if-nez v0, :cond_0

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    :cond_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNitzTimeZone returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 13
    .parameter "gsmRoaming"
    .parameter "s"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v9, "gsm.sim.operator.alpha"

    const-string v10, "empty"

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .local v3, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    .local v4, onss:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v1, v12

    .local v1, equalsOnsl:Z
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v12

    .local v2, equalsOnss:Z
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v9, "gsm.sim.operator.numeric"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, simNumeric:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .local v5, operatorNumeric:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, equalsMcc:Z
    const/4 v8, 0x0

    const/4 v9, 0x3

    :try_start_0
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    :cond_0
    move v8, v12

    :goto_3
    return v8

    .end local v0           #equalsMcc:Z
    .end local v1           #equalsOnsl:Z
    .end local v2           #equalsOnss:Z
    .end local v5           #operatorNumeric:Ljava/lang/String;
    .end local v6           #simNumeric:Ljava/lang/String;
    :cond_1
    move v1, v11

    goto :goto_0

    .restart local v1       #equalsOnsl:Z
    :cond_2
    move v2, v11

    goto :goto_1

    .restart local v0       #equalsMcc:Z
    .restart local v2       #equalsOnss:Z
    .restart local v5       #operatorNumeric:Ljava/lang/String;
    .restart local v6       #simNumeric:Ljava/lang/String;
    :cond_3
    move v8, v11

    goto :goto_3

    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmServiceStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter "ar"

    .prologue
    const/16 v10, 0x3ed

    const/16 v9, 0x3ec

    const/16 v8, 0x3eb

    const/4 v7, 0x0

    const-string v6, "GSM"

    const-string v4, "GSM"

    const-string v4, "[DSAC DEB] onRestrictedStateChanged"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;-><init>()V

    .local v2, newRs:Lcom/android/internal/telephony/gsm/RestrictedState;
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DSAC DEB] current rs at enter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v1, v0

    .local v1, ints:[I
    aget v3, v1, v7

    .local v3, state:I
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_0

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_5

    :cond_0
    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->setCsEmergencyRestricted(Z)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v4, v5, :cond_2

    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_1

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_6

    :cond_1
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->setCsNormalRestricted(Z)V

    :cond_2
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DSAC DEB] new rs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    :cond_3
    :goto_2
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    .end local v1           #ints:[I
    .end local v3           #state:I
    :cond_4
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DSAC DEB] current rs at return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .restart local v1       #ints:[I
    .restart local v3       #state:I
    :cond_5
    move v4, v7

    goto :goto_0

    :cond_6
    move v4, v7

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v4, 0x3ee

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_2

    :cond_b
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_2

    :cond_c
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_2

    :cond_d
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x3ee

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_2

    :cond_f
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-eqz v4, :cond_11

    const/16 v4, 0x3ee

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_2

    :cond_11
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_2
.end method

.method private pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aput v3, v0, v3

    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getRegistrationState(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pollStateDone()V
    .locals 31

    .prologue
    const-string v27, "GSM"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[SUB: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscription()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "] Poll ServiceState done: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " oldSS=["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "] newSS=["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "] "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getState()I

    move-result v27

    if-eqz v27, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getState()I

    move-result v27

    if-nez v27, :cond_b

    const/16 v27, 0x1

    move/from16 v13, v27

    .local v13, hasRegistered:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getState()I

    move-result v27

    if-nez v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getState()I

    move-result v27

    if-eqz v27, :cond_c

    const/16 v27, 0x1

    move/from16 v10, v27

    .local v10, hasDeregistered:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_d

    const/16 v27, 0x1

    move/from16 v12, v27

    .local v12, hasNetworkTypeChanged:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_e

    const/16 v27, 0x1

    move/from16 v9, v27

    .local v9, hasChanged:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v27

    if-nez v27, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v27

    if-eqz v27, :cond_f

    const/16 v27, 0x1

    move/from16 v15, v27

    .local v15, hasRoamingOn:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v27

    if-eqz v27, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v27

    if-nez v27, :cond_10

    const/16 v27, 0x1

    move/from16 v14, v27

    .local v14, hasRoamingOff:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_11

    const/16 v27, 0x1

    move/from16 v11, v27

    .local v11, hasLocationChanged:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getState()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getState()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    const v27, 0xc3c2

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getState()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getState()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getState()I

    move-result v27

    if-nez v27, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getState()I

    move-result v27

    if-nez v27, :cond_12

    :cond_1
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ssChangeToAvailable:Z

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    .local v22, tss:Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v21, v0

    .local v21, tcl:Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v12, :cond_3

    const/4 v7, -0x1

    .local v7, cid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v18

    check-cast v18, Landroid/telephony/gsm/GsmCellLocation;

    .local v18, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v7

    :cond_2
    const v27, 0xc3c0

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const-string v27, "GSM"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "RAT switched "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " -> "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " at cell "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7           #cid:I
    .end local v18           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const-string v5, "callforward_query_key"

    .local v5, CALLFORWARD_QUERY_KEY:Ljava/lang/String;
    const-string v6, "callforward_pref"

    .local v6, PREF_NAME:Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, isQuery:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object v1, v6

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .local v20, sp:Landroid/content/SharedPreferences;
    const/16 v27, 0x1

    move-object/from16 v0, v20

    move-object v1, v5

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    const-string v27, "GSM"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "wyb!!isQuery: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v27, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hasQueryCF:Z

    if-nez v27, :cond_4

    if-eqz v16, :cond_4

    const-string v27, "GSM"

    const-string v28, "ghh0406 Reading CF forwarding Begin !"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m_nCFSearchRetry:I

    const-string v27, "persist.radio.gcftest"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    const-string v27, "GSM"

    const-string v28, "wangcheng this is GCF test not get call forwarding !"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    const/16 v27, 0x1

    sput-boolean v27, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hasQueryCF:Z

    .end local v5           #CALLFORWARD_QUERY_KEY:Ljava/lang/String;
    .end local v6           #PREF_NAME:Ljava/lang/String;
    .end local v16           #isQuery:Z
    .end local v20           #sp:Landroid/content/SharedPreferences;
    :cond_4
    const-string v27, "GSM"

    const-string v28, "Network State Changed, get EONS and update operator name display"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateEons()V

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    const-string v28, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v19

    .local v19, operatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    const-string v28, "gsm.operator.numeric"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    const-string v28, "gsm.operator.iso-country"

    const-string v29, ""

    invoke-virtual/range {v27 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    const-string v28, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    if-eqz v29, :cond_1a

    const-string v29, "true"

    :goto_a
    invoke-virtual/range {v27 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .end local v19           #operatorNumeric:Ljava/lang/String;
    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    :cond_7
    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->roamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_8
    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->roamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_9
    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    :cond_a
    return-void

    .end local v9           #hasChanged:Z
    .end local v10           #hasDeregistered:Z
    .end local v11           #hasLocationChanged:Z
    .end local v12           #hasNetworkTypeChanged:Z
    .end local v13           #hasRegistered:Z
    .end local v14           #hasRoamingOff:Z
    .end local v15           #hasRoamingOn:Z
    .end local v21           #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .end local v22           #tss:Landroid/telephony/ServiceState;
    :cond_b
    const/16 v27, 0x0

    move/from16 v13, v27

    goto/16 :goto_0

    .restart local v13       #hasRegistered:Z
    :cond_c
    const/16 v27, 0x0

    move/from16 v10, v27

    goto/16 :goto_1

    .restart local v10       #hasDeregistered:Z
    :cond_d
    const/16 v27, 0x0

    move/from16 v12, v27

    goto/16 :goto_2

    .restart local v12       #hasNetworkTypeChanged:Z
    :cond_e
    const/16 v27, 0x0

    move/from16 v9, v27

    goto/16 :goto_3

    .restart local v9       #hasChanged:Z
    :cond_f
    const/16 v27, 0x0

    move/from16 v15, v27

    goto/16 :goto_4

    .restart local v15       #hasRoamingOn:Z
    :cond_10
    const/16 v27, 0x0

    move/from16 v14, v27

    goto/16 :goto_5

    .restart local v14       #hasRoamingOff:Z
    :cond_11
    const/16 v27, 0x0

    move/from16 v11, v27

    goto/16 :goto_6

    .restart local v11       #hasLocationChanged:Z
    :cond_12
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ssChangeToAvailable:Z

    goto/16 :goto_7

    .restart local v5       #CALLFORWARD_QUERY_KEY:Ljava/lang/String;
    .restart local v6       #PREF_NAME:Ljava/lang/String;
    .restart local v16       #isQuery:Z
    .restart local v20       #sp:Landroid/content/SharedPreferences;
    .restart local v21       #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v22       #tss:Landroid/telephony/ServiceState;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v27, v0

    if-eqz v27, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->EfCfPresent:Z

    move/from16 v27, v0

    if-eqz v27, :cond_14

    const-string v27, "GSM"

    const-string v28, "Cf has been found in simcard, no need to query network"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_14
    const-string v27, "GSM"

    const-string v28, "wangcheng this is not in GCF test so get call forwarding !"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x64

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_8

    .end local v5           #CALLFORWARD_QUERY_KEY:Ljava/lang/String;
    .end local v6           #PREF_NAME:Ljava/lang/String;
    .end local v16           #isQuery:Z
    .end local v20           #sp:Landroid/content/SharedPreferences;
    .restart local v19       #operatorNumeric:Ljava/lang/String;
    :cond_15
    const-string v17, ""

    .local v17, iso:Ljava/lang/String;
    const/16 v27, 0x0

    const/16 v28, 0x3

    :try_start_0
    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v27, v0

    const-string v28, "gsm.operator.iso-country"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    const/16 v25, 0x0

    .local v25, zone:Ljava/util/TimeZone;
    const-string v27, "persist.sys.timezone"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .local v26, zoneName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v27, v0

    if-nez v27, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v27, v0

    if-nez v27, :cond_18

    if-eqz v26, :cond_18

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_18

    sget-object v27, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v27

    if-gez v27, :cond_18

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-object/from16 v0, v25

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v23, v0

    .local v23, tzOffset:J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v27

    if-eqz v27, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    sub-long v27, v27, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .end local v23           #tzOffset:J
    :goto_c
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    if-eqz v25, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v27

    if-eqz v27, :cond_16

    invoke-virtual/range {v25 .. v25}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    :cond_16
    invoke-virtual/range {v25 .. v25}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_9

    .end local v25           #zone:Ljava/util/TimeZone;
    .end local v26           #zoneName:Ljava/lang/String;
    :catch_0
    move-exception v27

    move-object/from16 v8, v27

    .local v8, ex:Ljava/lang/NumberFormatException;
    const-string v27, "GSM"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "countryCodeForMcc error"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .end local v8           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v27

    move-object/from16 v8, v27

    .local v8, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v27, "GSM"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "countryCodeForMcc error"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .end local v8           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v23       #tzOffset:J
    .restart local v25       #zone:Ljava/util/TimeZone;
    .restart local v26       #zoneName:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v27, v0

    sub-long v27, v27, v23

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    goto :goto_c

    .end local v23           #tzOffset:J
    :cond_18
    const-string v27, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-wide/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v25

    goto/16 :goto_c

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move-wide/from16 v2, v29

    move-object/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v25

    goto/16 :goto_c

    .end local v17           #iso:Ljava/lang/String;
    .end local v25           #zone:Ljava/util/TimeZone;
    .end local v26           #zoneName:Ljava/lang/String;
    :cond_1a
    const-string v29, "false"

    goto/16 :goto_a
.end method

.method private processIccRecordEvents(I)V
    .locals 4
    .parameter "eventCode"

    .prologue
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto :goto_0

    :pswitch_1
    const/4 v0, -0x1

    .local v0, lac:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateEons(Ljava/lang/String;I)Z

    move-result v1

    .local v1, needsSpnUpdate:Z
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->dontPollSignalStrength:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .parameter "code"

    .prologue
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 4
    .parameter "code"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPowerSaveStatus(Z)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPowerSaveStatus(Z)V

    move v0, v3

    goto :goto_0

    :pswitch_2
    move v0, v3

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private revertToNitz()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reverting to NITZ: tz=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' mSavedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSavedAtTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private saveNitzTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneId"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .parameter "zoneId"

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setNotification(I)V
    .locals 10
    .parameter "notifyType"

    .prologue
    const-string v9, "GSM"

    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DSAC DEB] create notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v7, 0x0

    const/high16 v8, 0x1000

    invoke-static {v0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const-string v1, ""

    .local v1, details:Ljava/lang/CharSequence;
    const v6, 0x10400e1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, title:Ljava/lang/CharSequence;
    const/16 v3, 0x3e7

    .local v3, notificationId:I
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DSAC DEB] put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v0, v5, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v6, "notification"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .local v4, notificationManager:Landroid/app/NotificationManager;
    const/16 v6, 0x3ec

    if-ne p1, v6, :cond_0

    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_1
    return-void

    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    :pswitch_1
    const v6, 0x10400e9

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const v6, 0x10400e4

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    const v6, 0x10400e3

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .restart local v4       #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 2

    .prologue
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setGsm(Z)V

    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 31
    .parameter "nitz"
    .parameter "nitzReceiveTime"

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .local v19, start:J
    const-string v25, "GSM"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "NITZ: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " start="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " delay="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sub-long v27, v19, p2

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v25, "GMT"

    invoke-static/range {v25 .. v25}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .local v5, c:Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    const/16 v25, 0x10

    const/16 v26, 0x0

    move-object v0, v5

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const-string v25, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .local v16, nitzSubs:[Ljava/lang/String;
    const/16 v25, 0x0

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v23, v0

    .local v23, year:I
    const/16 v25, 0x1

    move-object v0, v5

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v25, 0x1

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0x1

    sub-int v15, v25, v26

    .local v15, month:I
    const/16 v25, 0x2

    move-object v0, v5

    move/from16 v1, v25

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v25, 0x2

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .local v6, date:I
    const/16 v25, 0x5

    move-object v0, v5

    move/from16 v1, v25

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v25, 0x3

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .local v9, hour:I
    const/16 v25, 0xa

    move-object v0, v5

    move/from16 v1, v25

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v25, 0x4

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .local v14, minute:I
    const/16 v25, 0xc

    move-object v0, v5

    move/from16 v1, v25

    move v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v25, 0x5

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .local v17, second:I
    const/16 v25, 0xd

    move-object v0, v5

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v25, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    const/16 v25, 0x1

    move/from16 v18, v25

    .local v18, sign:Z
    :goto_0
    const/16 v25, 0x6

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .local v21, tzOffset:I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    const/16 v25, 0x7

    aget-object v25, v16, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v7, v25

    .local v7, dst:I
    :goto_1
    if-eqz v18, :cond_7

    const/16 v25, 0x1

    :goto_2
    mul-int v25, v25, v21

    mul-int/lit8 v25, v25, 0xf

    mul-int/lit8 v25, v25, 0x3c

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    const/16 v24, 0x0

    .local v24, zone:Ljava/util/TimeZone;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    const/16 v25, 0x8

    aget-object v25, v16, v25

    const/16 v26, 0x21

    const/16 v27, 0x2f

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v22

    .local v22, tzname:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    .end local v22           #tzname:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    const-string v26, "gsm.operator.iso-country"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, iso:Ljava/lang/String;
    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_a

    if-eqz v7, :cond_8

    const/16 v25, 0x1

    :goto_3
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move/from16 v0, v21

    move/from16 v1, v25

    move-wide/from16 v2, v26

    move-object v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    if-nez v24, :cond_1

    if-nez v7, :cond_9

    const/16 v25, 0x1

    :goto_4
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move/from16 v0, v21

    move/from16 v1, v25

    move-wide/from16 v2, v26

    move-object v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    :cond_1
    :goto_5
    if-nez v24, :cond_2

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    if-eqz v7, :cond_c

    const/16 v25, 0x1

    :goto_6
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    :cond_2
    if-eqz v24, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    :cond_3
    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    :cond_4
    const-string v25, "gsm.ignore-nitz"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, ignore:Ljava/lang/String;
    if-eqz v10, :cond_d

    const-string v25, "yes"

    move-object v0, v10

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    const-string v25, "GSM"

    const-string v26, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v9           #hour:I
    .end local v10           #ignore:Ljava/lang/String;
    .end local v11           #iso:Ljava/lang/String;
    .end local v14           #minute:I
    .end local v15           #month:I
    .end local v16           #nitzSubs:[Ljava/lang/String;
    .end local v17           #second:I
    .end local v18           #sign:Z
    .end local v21           #tzOffset:I
    .end local v23           #year:I
    .end local v24           #zone:Ljava/util/TimeZone;
    :goto_7
    return-void

    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v9       #hour:I
    .restart local v14       #minute:I
    .restart local v15       #month:I
    .restart local v16       #nitzSubs:[Ljava/lang/String;
    .restart local v17       #second:I
    .restart local v23       #year:I
    :cond_5
    const/16 v25, 0x0

    move/from16 v18, v25

    goto/16 :goto_0

    .restart local v18       #sign:Z
    .restart local v21       #tzOffset:I
    :cond_6
    const/16 v25, 0x0

    move/from16 v7, v25

    goto/16 :goto_1

    .restart local v7       #dst:I
    :cond_7
    const/16 v25, -0x1

    goto/16 :goto_2

    .restart local v11       #iso:Ljava/lang/String;
    .restart local v24       #zone:Ljava/util/TimeZone;
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_3

    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_4

    :cond_a
    if-eqz v7, :cond_b

    const/16 v25, 0x1

    :goto_8
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v25

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v24

    goto/16 :goto_5

    :cond_b
    const/16 v25, 0x0

    goto :goto_8

    :cond_c
    const/16 v25, 0x0

    goto :goto_6

    .restart local v10       #ignore:Ljava/lang/String;
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v25

    if-eqz v25, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    sub-long v12, v25, p2

    .local v12, millisSinceNitzReceived:J
    const-wide/16 v25, 0x0

    cmp-long v25, v12, v25

    if-gez v25, :cond_e

    const-string v25, "GSM"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v9           #hour:I
    .end local v10           #ignore:Ljava/lang/String;
    .end local v11           #iso:Ljava/lang/String;
    .end local v12           #millisSinceNitzReceived:J
    .end local v14           #minute:I
    .end local v15           #month:I
    .end local v16           #nitzSubs:[Ljava/lang/String;
    .end local v17           #second:I
    .end local v18           #sign:Z
    .end local v21           #tzOffset:I
    .end local v23           #year:I
    .end local v24           #zone:Ljava/util/TimeZone;
    :catch_0
    move-exception v25

    move-object/from16 v8, v25

    .local v8, ex:Ljava/lang/NumberFormatException;
    const-string v25, "GSM"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .end local v8           #ex:Ljava/lang/NumberFormatException;
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v7       #dst:I
    .restart local v9       #hour:I
    .restart local v10       #ignore:Ljava/lang/String;
    .restart local v11       #iso:Ljava/lang/String;
    .restart local v12       #millisSinceNitzReceived:J
    .restart local v14       #minute:I
    .restart local v15       #month:I
    .restart local v16       #nitzSubs:[Ljava/lang/String;
    .restart local v17       #second:I
    .restart local v18       #sign:Z
    .restart local v21       #tzOffset:I
    .restart local v23       #year:I
    .restart local v24       #zone:Ljava/util/TimeZone;
    :cond_e
    const-wide/32 v25, 0x7fffffff

    cmp-long v25, v12, v25

    if-lez v25, :cond_f

    :try_start_3
    const-string v25, "GSM"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-wide/32 v27, 0x5265c00

    div-long v27, v12, v27

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " days"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_7

    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v9           #hour:I
    .end local v10           #ignore:Ljava/lang/String;
    .end local v11           #iso:Ljava/lang/String;
    .end local v12           #millisSinceNitzReceived:J
    .end local v14           #minute:I
    .end local v15           #month:I
    .end local v16           #nitzSubs:[Ljava/lang/String;
    .end local v17           #second:I
    .end local v18           #sign:Z
    .end local v21           #tzOffset:I
    .end local v23           #year:I
    .end local v24           #zone:Ljava/util/TimeZone;
    :catch_1
    move-exception v25

    move-object/from16 v8, v25

    .local v8, ex:Ljava/lang/RuntimeException;
    const-string v25, "GSM"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .end local v8           #ex:Ljava/lang/RuntimeException;
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v7       #dst:I
    .restart local v9       #hour:I
    .restart local v10       #ignore:Ljava/lang/String;
    .restart local v11       #iso:Ljava/lang/String;
    .restart local v12       #millisSinceNitzReceived:J
    .restart local v14       #minute:I
    .restart local v15       #month:I
    .restart local v16       #nitzSubs:[Ljava/lang/String;
    .restart local v17       #second:I
    .restart local v18       #sign:Z
    .restart local v21       #tzOffset:I
    .restart local v23       #year:I
    .restart local v24       #zone:Ljava/util/TimeZone;
    :cond_f
    const/16 v25, 0xe

    move-wide v0, v12

    long-to-int v0, v0

    move/from16 v26, v0

    :try_start_5
    move-object v0, v5

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const-string v25, "GSM"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "NITZ: Setting time of day to "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " NITZ receive delay(ms): "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " gained(ms): "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    sub-long v27, v27, v29

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " from "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    const-string v25, "GSM"

    const-string v26, "NITZ: after Setting time of day"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v12           #millisSinceNitzReceived:J
    :cond_10
    const-string v25, "gsm.nitz.time"

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    :catchall_0
    move-exception v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v25
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method private static twoDigitsAt(Ljava/lang/String;I)I
    .locals 4
    .parameter "s"
    .parameter "offset"

    .prologue
    const/16 v3, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .local v0, a:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .local v1, b:I
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "invalid format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    return v2
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRestrictedStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    :cond_1
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v0, "GSM"

    const-string v1, "GsmServiceStateTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Received message "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "] while being destroyed. Ignoring."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local p0
    .end local p1
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .restart local p0
    .restart local p1
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    sparse-switch v16, :sswitch_data_0

    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unhandled message with number: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateIccAvailability()V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .local v4, ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->processIccRecordEvents(I)V

    goto :goto_0

    .end local v4           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x10d0013

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .local v13, skipRestoringSelection:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .end local v13           #skipRestoringSelection:Z
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto :goto_0

    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Lcom/android/internal/telephony/PhoneBase;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    iget-object v12, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/RegStateResponse;

    .local v12, r:Lcom/android/internal/telephony/RegStateResponse;
    invoke-virtual {v12}, Lcom/android/internal/telephony/RegStateResponse;->getValues()[Ljava/lang/String;

    move-result-object v14

    .local v14, states:[Ljava/lang/String;
    const/4 v7, -0x1

    .local v7, lac:I
    const/4 v5, -0x1

    .local v5, cid:I
    move-object v0, v14

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    const/16 v16, 0x1

    :try_start_0
    aget-object v16, v14, v16

    if-eqz v16, :cond_2

    const/16 v16, 0x1

    aget-object v16, v14, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_2

    const/16 v16, 0x1

    aget-object v16, v14, v16

    const/16 v17, 0x10

    invoke-static/range {v16 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    :cond_2
    const/16 v16, 0x2

    aget-object v16, v14, v16

    if-eqz v16, :cond_3

    const/16 v16, 0x2

    aget-object v16, v14, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_3

    const/16 v16, 0x2

    aget-object v16, v14, v16

    const/16 v17, 0x10

    invoke-static/range {v16 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v7

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .end local v5           #cid:I
    .end local v7           #lac:I
    .end local v12           #r:Lcom/android/internal/telephony/RegStateResponse;
    .end local v14           #states:[Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .restart local v5       #cid:I
    .restart local v7       #lac:I
    .restart local v12       #r:Lcom/android/internal/telephony/RegStateResponse;
    .restart local v14       #states:[Ljava/lang/String;
    :catch_0
    move-exception v16

    move-object/from16 v6, v16

    .local v6, ex:Ljava/lang/NumberFormatException;
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "error parsing location: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #cid:I
    .end local v6           #ex:Ljava/lang/NumberFormatException;
    .end local v7           #lac:I
    .end local v12           #r:Lcom/android/internal/telephony/RegStateResponse;
    .end local v14           #states:[Ljava/lang/String;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget-object v11, p1, v16

    check-cast v11, Ljava/lang/String;

    .local v11, nitzString:Ljava/lang/String;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/16 v16, 0x1

    aget-object p1, p1, v16

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .local v9, nitzReceiveTime:J
    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v2, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v9           #nitzReceiveTime:J
    .end local v11           #nitzString:Ljava/lang/String;
    .restart local p1
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .restart local v4       #ar:Landroid/os/AsyncResult;
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->dontPollSignalStrength:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Lcom/android/internal/telephony/PhoneBase;Z)V

    goto/16 :goto_0

    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0xf

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .restart local v4       #ar:Landroid/os/AsyncResult;
    const/16 v16, 0x15

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .local v8, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v8           #message:Landroid/os/Message;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-static/range {p0 .. p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v16

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .end local v4           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_5

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    check-cast p1, [I

    const/16 v16, 0x0

    aget v16, p1, v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    :goto_2
    const/16 v16, 0x14

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .restart local v8       #message:Landroid/os/Message;
    const/4 v15, 0x7

    .local v15, toggledNetworkType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v15

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v8           #message:Landroid/os/Message;
    .end local v15           #toggledNetworkType:I
    .restart local p1
    :cond_5
    const/16 v16, 0x7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_2

    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_11
    const-string v16, "GSM"

    const-string v17, "[DSAC DEB] EVENT_RESTRICTED_STATE_CHANGED"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m_nCFSearchRetry:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m_nCFSearchRetry:I

    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ghh0406 Reading cf retry  m_nCFSearchRetry = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m_nCFSearchRetry:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m_nCFSearchRetry:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x64

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_6
    const-string v16, "GSM"

    const-string v17, "ghh0406 Reading cf suc"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m_nCFSearchRetry:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x3 -> :sswitch_6
        0x4 -> :sswitch_8
        0x6 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_0
        0xe -> :sswitch_8
        0xf -> :sswitch_7
        0x10 -> :sswitch_c
        0x11 -> :sswitch_3
        0x12 -> :sswitch_d
        0x13 -> :sswitch_10
        0x14 -> :sswitch_e
        0x15 -> :sswitch_f
        0x17 -> :sswitch_11
        0x2c -> :sswitch_1
        0x2d -> :sswitch_2
        0x64 -> :sswitch_12
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 20
    .parameter "what"
    .parameter "ar"

    .prologue
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1

    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local p1
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    const/4 v4, 0x0

    .local v4, err:Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    :cond_2
    sget-object v16, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    move-object v0, v4

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    :cond_4
    sget-object v16, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    move-object v0, v4

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_5

    sget-object v16, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    move-object v0, v4

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_5

    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "RIL implementation has returned an error where it must succeed"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "event id=:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4           #err:Lcom/android/internal/telephony/CommandException$Error;
    .end local p1
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v18, v16, v17

    const/16 v19, 0x1

    sub-int v18, v18, v19

    aput v18, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move v13, v0

    .local v13, roaming:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v16

    if-nez v16, :cond_6

    const/4 v13, 0x0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .end local v13           #roaming:Z
    .restart local p1
    :cond_7
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    :try_start_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/android/internal/telephony/RegStateResponse;

    .local v10, r:Lcom/android/internal/telephony/RegStateResponse;
    invoke-virtual {v10}, Lcom/android/internal/telephony/RegStateResponse;->getValues()[Ljava/lang/String;

    move-result-object v14

    .local v14, states:[Ljava/lang/String;
    const/4 v7, -0x1

    .local v7, lac:I
    const/4 v3, -0x1

    .local v3, cid:I
    const/4 v11, -0x1

    .local v11, regState:I
    const/4 v9, -0x1

    .local v9, psc:I
    const/4 v15, 0x0

    .local v15, type:I
    move-object v0, v14

    array-length v0, v0

    move/from16 v16, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v16, :cond_b

    const/16 v16, 0x0

    :try_start_1
    aget-object v16, v14, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move-object v0, v14

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_a

    const/16 v16, 0x1

    aget-object v16, v14, v16

    if-eqz v16, :cond_8

    const/16 v16, 0x1

    aget-object v16, v14, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_8

    const/16 v16, 0x1

    aget-object v16, v14, v16

    const/16 v17, 0x10

    invoke-static/range {v16 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    :cond_8
    const/16 v16, 0x2

    aget-object v16, v14, v16

    if-eqz v16, :cond_9

    const/16 v16, 0x2

    aget-object v16, v14, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_9

    const/16 v16, 0x2

    aget-object v16, v14, v16

    const/16 v17, 0x10

    invoke-static/range {v16 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    :cond_9
    const/16 v16, 0x3

    aget-object v16, v14, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    :cond_a
    move-object v0, v14

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0xe

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_b

    const/16 v16, 0xe

    aget-object v16, v14, v16

    if-eqz v16, :cond_b

    const/16 v16, 0xe

    aget-object v16, v14, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_b

    const/16 v16, 0xe

    aget-object v16, v14, v16

    const/16 v17, 0x10

    invoke-static/range {v16 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    :cond_b
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFakeStateEnabled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    :cond_c
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    const/16 v16, 0x3

    move v0, v11

    move/from16 v1, v16

    if-eq v0, v1, :cond_d

    const/16 v16, 0xd

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_e

    :cond_d
    move-object v0, v14

    array-length v0, v0

    move/from16 v16, v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v17, 0xe

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_e

    const/16 v16, 0xd

    :try_start_3
    aget-object v16, v14, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .local v12, rejCode:I
    const/16 v16, 0xa

    move v0, v12

    move/from16 v1, v16

    if-ne v0, v1, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->createManagedRoamingDialog()V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v12           #rejCode:I
    :cond_e
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/telephony/ServiceState;->setState(I)V

    const/16 v16, 0xa

    move v0, v11

    move/from16 v1, v16

    if-eq v0, v1, :cond_f

    const/16 v16, 0xc

    move v0, v11

    move/from16 v1, v16

    if-eq v0, v1, :cond_f

    const/16 v16, 0xd

    move v0, v11

    move/from16 v1, v16

    if-eq v0, v1, :cond_f

    const/16 v16, 0xe

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_10

    :cond_f
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v7

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .end local v3           #cid:I
    .end local v7           #lac:I
    .end local v9           #psc:I
    .end local v10           #r:Lcom/android/internal/telephony/RegStateResponse;
    .end local v11           #regState:I
    .end local v14           #states:[Ljava/lang/String;
    .end local v15           #type:I
    .end local p1
    :catch_0
    move-exception v16

    move-object/from16 v5, v16

    .local v5, ex:Ljava/lang/RuntimeException;
    const-string v16, "GSM"

    const-string v17, "Exception while polling service state. Probably malformed RIL response."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v5           #ex:Ljava/lang/RuntimeException;
    .restart local v3       #cid:I
    .restart local v7       #lac:I
    .restart local v9       #psc:I
    .restart local v10       #r:Lcom/android/internal/telephony/RegStateResponse;
    .restart local v11       #regState:I
    .restart local v14       #states:[Ljava/lang/String;
    .restart local v15       #type:I
    .restart local p1
    :catch_1
    move-exception v16

    move-object/from16 v5, v16

    .local v5, ex:Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "error parsing RegistrationState: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v5           #ex:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v16

    move-object/from16 v5, v16

    .restart local v5       #ex:Ljava/lang/NumberFormatException;
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "error parsing regCode: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v5           #ex:Ljava/lang/NumberFormatException;
    :cond_10
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto/16 :goto_4

    .end local v3           #cid:I
    .end local v7           #lac:I
    .end local v9           #psc:I
    .end local v10           #r:Lcom/android/internal/telephony/RegStateResponse;
    .end local v11           #regState:I
    .end local v14           #states:[Ljava/lang/String;
    .end local v15           #type:I
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0

    .local v8, opNames:[Ljava/lang/String;
    if-eqz v8, :cond_5

    move-object v0, v8

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v17, v8, v17

    const/16 v18, 0x1

    aget-object v18, v8, v18

    const/16 v19, 0x2

    aget-object v19, v8, v19

    invoke-virtual/range {v16 .. v19}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v8           #opNames:[Ljava/lang/String;
    .restart local p1
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object v6, v0

    .local v6, ints:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v17, v6, v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    const/16 v17, 0x1

    :goto_5
    invoke-virtual/range {v16 .. v17}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :cond_11
    const/16 v17, 0x0

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6 -> :sswitch_1
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method registerForNetworkAttach(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method unregisterForNetworkAttach(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public updateEons()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .local v2, needsUpdate:Z
    const/4 v1, -0x1

    .local v1, lac:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateEons(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEons()Ljava/lang/String;

    move-result-object v0

    .local v0, eonsLong:Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto :goto_0
.end method

.method updateIccAvailability()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .local v0, new3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriptionInfo()Lcom/android/internal/telephony/ProxyManager$Subscription;

    move-result-object v1

    .local v1, subscriptionData:Lcom/android/internal/telephony/ProxyManager$Subscription;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget v3, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->slotId:I

    iget v4, v1, Lcom/android/internal/telephony/ProxyManager$Subscription;->m3gppIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/UiccManager;->getApplication(II)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v2, :cond_1

    const-string v2, "Removing stale 3gpp Application."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    :cond_0
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "New 3gpp application found"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/16 v3, 0x11

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m3gppApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/16 v3, 0x10

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/16 v3, 0x2d

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public updateRecords()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateIccAvailability()V

    return-void
.end method

.method public updateSpnDisplay()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, ", spn= "

    const-string v11, ", plmn="

    const-string v8, "GSM"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-nez v6, :cond_0

    const-string v6, "GSM"

    const-string v6, "mSIMRecords null while updateSpnDisplay was called."

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v2

    .local v2, rule:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    .local v5, spn:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEons()Ljava/lang/String;

    move-result-object v1

    .local v1, plmn:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10402b4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSpnDisplay rule= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spn= "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", plmn="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    if-ne v2, v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ssChangeToAvailable:Z

    if-eqz v6, :cond_5

    :cond_4
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ssChangeToAvailable:Z

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v6, :cond_6

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v10, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-nez v6, :cond_6

    move v4, v10

    .local v4, showSpn:Z
    :goto_1
    and-int/lit8 v6, v2, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    move v3, v10

    .local v3, showPlmn:Z
    :goto_2
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSpnDisplay, showSpn= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", showPlmn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spn= "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", plmn="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v6, 0x2000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v6, "showSpn"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "spn"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "showPlmn"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "plmn"

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "subscription"

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscription()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSpnDisplay sending on sub :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscription()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #showPlmn:Z
    .end local v4           #showSpn:Z
    :cond_5
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    move v4, v9

    goto/16 :goto_1

    .restart local v4       #showSpn:Z
    :cond_7
    move v3, v9

    goto/16 :goto_2
.end method
