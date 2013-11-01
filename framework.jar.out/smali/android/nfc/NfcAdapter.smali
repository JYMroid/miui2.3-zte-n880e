.class public final Landroid/nfc/NfcAdapter;
.super Ljava/lang/Object;
.source "NfcAdapter.java"


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGE:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGE"

.field public static final ACTION_LLCP_LINK_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.LLCP_LINK_STATE_CHANGED"

.field public static final ACTION_NDEF_DISCOVERED:Ljava/lang/String; = "android.nfc.action.NDEF_DISCOVERED"

.field public static final ACTION_TAG_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TAG_DISCOVERED"

.field public static final ACTION_TAG_LEFT_FIELD:Ljava/lang/String; = "android.nfc.action.TAG_LOST"

.field public static final ACTION_TECH_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TECH_DISCOVERED"

.field public static final DISCOVERY_15693_ID:Ljava/lang/String; = "discovery.iso15693"

.field public static final DISCOVERY_ALL_ID:Ljava/lang/String; = "discovery.all"

.field public static final DISCOVERY_A_ID:Ljava/lang/String; = "discovery.iso14443A"

.field public static final DISCOVERY_B_ID:Ljava/lang/String; = "discovery.iso14443B"

.field public static final DISCOVERY_F_ID:Ljava/lang/String; = "discovery.felica"

.field private static final DISCOVERY_MODE_CARD_EMULATION:I = 0x2

.field private static final DISCOVERY_MODE_NFCIP1:I = 0x1

.field private static final DISCOVERY_MODE_TAG_READER:I = 0x0

.field public static final DISCOVERY_NFCIP_ID:Ljava/lang/String; = "discovery.nfcip"

.field public static final EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final EXTRA_LLCP_LINK_STATE_CHANGED:Ljava/lang/String; = "android.nfc.extra.LLCP_LINK_STATE"

.field public static final EXTRA_NDEF_MESSAGES:Ljava/lang/String; = "android.nfc.extra.NDEF_MESSAGES"

.field public static final EXTRA_NEW_BOOLEAN_STATE:Ljava/lang/String; = "android.nfc.isEnabled"

.field public static final EXTRA_TAG:Ljava/lang/String; = "android.nfc.extra.TAG"

.field public static final LLCP_LINK_STATE_ACTIVATED:I = 0x0

.field public static final LLCP_LINK_STATE_DEACTIVATED:I = 0x1

.field public static final SMART_MX_ID:Ljava/lang/String; = "android.nfc.smart_mx.ID"

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final UICC_ID:Ljava/lang/String; = "android.nfc.uicc.ID"

.field private static sIsInitialized:Z

.field private static sService:Landroid/nfc/INfcAdapter;

.field private static sTagService:Landroid/nfc/INfcTag;


# instance fields
.field mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

.field mForegroundNdefPushListener:Landroid/app/OnActivityPausedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/nfc/NfcAdapter$1;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$1;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    new-instance v0, Landroid/nfc/NfcAdapter$2;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$2;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mForegroundNdefPushListener:Landroid/app/OnActivityPausedListener;

    invoke-static {}, Landroid/nfc/NfcAdapter;->setupService()Landroid/nfc/INfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public static getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string v0, "NFC"

    const-string v1, "WARNING: NfcAdapter.getDefaultAdapter() is deprecated, use NfcAdapter.getDefaultAdapter(Context) instead"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/nfc/NfcAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 2
    .parameter "context"

    .prologue
    const-string v1, "nfc"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .local v0, manager:Landroid/nfc/NfcManager;
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    return-object v1
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .locals 2

    .prologue
    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    goto :goto_0
.end method

.method private static hasNfcFeature()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "NFC"

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .local v1, pm:Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_0

    const-string v2, "NFC"

    const-string v2, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    :goto_0
    return v2

    :cond_0
    :try_start_0
    const-string v2, "android.hardware.nfc"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v2, "Package manager query failed, assuming no NFC feature"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    goto :goto_0
.end method

.method private static declared-synchronized setupService()Landroid/nfc/INfcAdapter;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v1, "NFC"

    const-class v1, Landroid/nfc/NfcAdapter;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    sput-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcFeature()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NFC"

    const-string v3, "this device does not have NFC support"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    :goto_0
    monitor-exit v1

    return-object v2

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v2, :cond_1

    const-string v2, "NFC"

    const-string v3, "could not retrieve NFC service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    goto :goto_0

    :cond_1
    :try_start_2
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :try_start_3
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "could not retrieve NFC Tag service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v4

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method


# virtual methods
.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 4
    .parameter "e"

    .prologue
    const-string v3, "NFC"

    const-string v2, "NFC"

    const-string v2, "NFC service dead - attempting to recover"

    invoke-static {v3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v1

    .local v1, service:Landroid/nfc/INfcAdapter;
    if-nez v1, :cond_0

    const-string v2, "NFC"

    const-string v2, "could not retrieve NFC service during service recovery"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sput-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    :try_start_0
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ee:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v2, "could not retrieve NFC tag service during service recovery"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deselectDefaultSecureElement(Ljava/lang/String;)V
    .locals 7
    .parameter "seId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "selectDefaultSecureElement: wrong Secure Element ID"

    const-string v6, "selectDefaultSecureElement failed: Wronf Secure Element ID"

    const-string v5, "Enable card emulation failed"

    const-string v4, "NFC"

    const/4 v1, 0x0

    .local v1, seID:I
    const-string v2, "android.nfc.uicc.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0xabcdf0

    :goto_0
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getSelectedSecureElement()I

    move-result v2

    if-eq v2, v1, :cond_2

    const-string v2, "NFC"

    const-string v3, "selectDefaultSecureElement: wrong Secure Element ID"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "selectDefaultSecureElement failed: Wronf Secure Element ID"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v2, "selectDefaultSecureElement: getSelectedSecureElement failed"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failure in deselecting the selected Secure Element"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "android.nfc.smart_mx.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0xabcdef

    goto :goto_0

    :cond_1
    const-string v2, "NFC"

    const-string v2, "selectDefaultSecureElement: wrong Secure Element ID"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "selectDefaultSecureElement failed: Wronf Secure Element ID"

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_1
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->deselectSecureElement()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v2

    move-object v0, v2

    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v2, "Enable card emulation failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Enable card emulation failed"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public disable()Z
    .locals 2

    .prologue
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->disable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableForegroundDispatch(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatchInternal(Landroid/app/Activity;Z)V

    return-void
.end method

.method disableForegroundDispatchInternal(Landroid/app/Activity;Z)V
    .locals 3
    .parameter "activity"
    .parameter "force"

    .prologue
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->disableForegroundDispatch(Landroid/content/ComponentName;)V

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You must disable forgeground dispatching while your activity is still resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public disableForegroundNdefPush(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mForegroundNdefPushListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundNdefPushInternal(Landroid/app/Activity;Z)V

    return-void
.end method

.method disableForegroundNdefPushInternal(Landroid/app/Activity;Z)V
    .locals 3
    .parameter "activity"
    .parameter "force"

    .prologue
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->disableForegroundNdefPush(Landroid/content/ComponentName;)V

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You must disable forgeground NDEF push while your activity is still resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public enable()Z
    .locals 2

    .prologue
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .locals 5
    .parameter "activity"
    .parameter "intent"
    .parameter "filters"
    .parameter "techLists"

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Foregorund dispatching can only be enabled when your activity is resumed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/4 v1, 0x0

    .local v1, parcel:Landroid/nfc/TechListParcel;
    if-eqz p4, :cond_3

    :try_start_0
    array-length v3, p4

    if-lez v3, :cond_3

    new-instance v2, Landroid/nfc/TechListParcel;

    invoke-direct {v2, p4}, Landroid/nfc/TechListParcel;-><init>([[Ljava/lang/String;)V

    .end local v1           #parcel:Landroid/nfc/TechListParcel;
    .local v2, parcel:Landroid/nfc/TechListParcel;
    move-object v1, v2

    .end local v2           #parcel:Landroid/nfc/TechListParcel;
    .restart local v1       #parcel:Landroid/nfc/TechListParcel;
    :cond_3
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v3, p1, v4}, Landroid/app/ActivityThread;->registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3, v1}, Landroid/nfc/INfcAdapter;->enableForegroundDispatch(Landroid/content/ComponentName;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    .locals 3
    .parameter "activity"
    .parameter "msg"

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Foregorund NDEF push can only be enabled when your activity is resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mForegroundNdefPushListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v1, p1, v2}, Landroid/app/ActivityThread;->registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/nfc/INfcAdapter;->enableForegroundNdefPush(Landroid/content/ComponentName;Landroid/nfc/NdefMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDefaultSelectedSecureElement()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "getSelectedSecureElement failed"

    const/4 v1, 0x0

    .local v1, seID:I
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getSelectedSecureElement()I

    move-result v1

    const v2, 0xabcdf0

    if-ne v1, v2, :cond_0

    const-string v2, "android.nfc.uicc.ID"

    :goto_0
    return-object v2

    :cond_0
    const v2, 0xabcdef

    if-ne v1, v2, :cond_1

    const-string v2, "android.nfc.smart_mx.ID"

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No Secure Element selected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "getSelectedSecureElement failed"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "getSelectedSecureElement failed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLocalNdefMessage()Landroid/nfc/NdefMessage;
    .locals 2

    .prologue
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->localGet()Landroid/nfc/NdefMessage;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;
    .locals 2

    .prologue
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getReaderProperties(Ljava/lang/String;)Z
    .locals 4
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "getReaderProperties failed"

    const-string v2, "NFC"

    const-string v1, "discovery.iso14443A"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :cond_1
    const-string v1, "discovery.iso14443B"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "discovery.felica"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "discovery.iso15693"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "discovery.nfcip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NFC"

    const-string v1, "getReaderProperties: wrong param"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/IOException;

    const-string v2, "getReaderProperties failed: Wrong DISCOVERY ID"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v1, "getReaderProperties failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/io/IOException;

    const-string v2, "getReaderProperties failed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getService()Landroid/nfc/INfcAdapter;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    return-object v0
.end method

.method public getTagService()Landroid/nfc/INfcTag;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    sget-object v0, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public selectDefaultSecureElement(Ljava/lang/String;)V
    .locals 9
    .parameter "seId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v8, "android.nfc.uicc.ID"

    const-string v6, "android.nfc.smart_mx.ID"

    const-string v7, "NFC"

    const/4 v2, 0x0

    .local v2, seID:I
    const/4 v4, 0x0

    .local v4, seSelected:Z
    const-string v5, "android.nfc.uicc.ID"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const v2, 0xabcdf0

    :goto_0
    :try_start_0
    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getSelectedSecureElement()I

    move-result v5

    if-eq v5, v2, :cond_0

    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->deselectSecureElement()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getSecureElementList()[I

    move-result-object v3

    .local v3, seList:[I
    array-length v5, v3

    if-eqz v5, :cond_4

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_4

    aget v5, v3, v1

    if-ne v5, v2, :cond_1

    sget-object v5, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v5, v2}, Landroid/nfc/INfcAdapter;->selectSecureElement(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v3           #seList:[I
    :cond_2
    const-string v5, "android.nfc.smart_mx.ID"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v2, 0xabcdef

    goto :goto_0

    :cond_3
    const-string v5, "NFC"

    const-string v5, "selectDefaultSecureElement: wrong Secure Element ID"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/IOException;

    const-string v6, "selectDefaultSecureElement failed: Wronf Secure Element ID"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "NFC"

    const-string v5, "selectDefaultSecureElement: getSelectedSecureElement failed"

    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failure in deselecting the selected Secure Element"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #seList:[I
    :cond_4
    if-nez v4, :cond_5

    :try_start_2
    const-string v5, "android.nfc.uicc.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/io/IOException;

    const-string v6, "UICC not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v3           #seList:[I
    :catch_1
    move-exception v5

    move-object v0, v5

    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v5, "NFC"

    const-string v5, "selectUiccCardEmulation: getSecureElementList failed"

    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    return-void

    .restart local v3       #seList:[I
    :cond_6
    :try_start_3
    const-string v5, "android.nfc.smart_mx.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/io/IOException;

    const-string v6, "SMART_MX not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public setDefaultSecureElementState(Z)V
    .locals 6
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "getSelectedSecureElement failed"

    const-string v2, "Enable card emulation failed"

    const-string v2, "Disable card emulation failed"

    const-string v4, "NFC"

    const/4 v1, 0x0

    .local v1, seID:I
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getSelectedSecureElement()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "No Secure Element selected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v2, "getSelectedSecureElement failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "getSelectedSecureElement failed"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/nfc/INfcAdapter;->setSecureElementState(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception v2

    move-object v0, v2

    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "NFC"

    const-string v3, "Enable card emulation failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Enable card emulation failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_3
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/nfc/INfcAdapter;->setSecureElementState(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v0, v2

    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_4
    const-string v2, "NFC"

    const-string v3, "Disable card emulation failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Disable card emulation failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public setLocalNdefMessage(Landroid/nfc/NdefMessage;)V
    .locals 2
    .parameter "message"

    .prologue
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->localSet(Landroid/nfc/NdefMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setReaderProperties(Ljava/lang/String;Z)V
    .locals 7
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "discovery.iso14443B"

    const-string v5, "discovery.iso14443A"

    const-string v3, "discovery.felica"

    const-string v2, "discovery.all"

    const-string v4, "NFC"

    const-string v1, "discovery.all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :try_start_0
    const-string v1, "discovery.all"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const-string v2, "discovery.iso14443A"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/nfc/INfcAdapter;->setProperties(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const-string v2, "discovery.iso14443B"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/nfc/INfcAdapter;->setProperties(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const-string v2, "discovery.felica"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/nfc/INfcAdapter;->setProperties(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const-string v2, "discovery.iso15693"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/nfc/INfcAdapter;->setProperties(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const-string v2, "discovery.nfcip"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/nfc/INfcAdapter;->setProperties(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_1
    const-string v1, "discovery.iso14443A"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "discovery.iso14443B"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "discovery.felica"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "discovery.iso15693"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "discovery.nfcip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NFC"

    const-string v1, "setReaderProperties: wrong param"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/IOException;

    const-string v2, "setReaderProperties failed: Wrong DISCOVERY ID"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_1
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/nfc/INfcAdapter;->setProperties(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v1, "setReaderProperties failed"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/io/IOException;

    const-string v2, "setReaderProperties failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
