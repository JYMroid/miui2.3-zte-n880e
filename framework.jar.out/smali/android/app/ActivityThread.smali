.class public final Landroid/app/ActivityThread;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$StopInfo;,
        Landroid/app/ActivityThread$ResourcesKey;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$ProfilerControlData;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$ResultData;,
        Landroid/app/ActivityThread$DumpServiceInfo;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$NewIntentData;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$ActivityClientRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_BACKUP:Z = false

.field static final DEBUG_BROADCAST:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_MESSAGES:Z = false

.field private static final DEBUG_RESULTS:Z = false

.field private static final LOG_ON_PAUSE_CALLED:I = 0x7545

.field private static final LOG_ON_RESUME_CALLED:I = 0x7546

.field private static final MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final PATTERN_SEMICOLON:Ljava/util/regex/Pattern; = null

.field private static final SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field static final TAG:Ljava/lang/String; = "ActivityThread"

.field private static final THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

.field static final localLOGV:Z

.field static mSystemContext:Landroid/app/ContextImpl;

.field static sMainThreadHandler:Landroid/os/Handler;

.field static sPackageManager:Landroid/content/pm/IPackageManager;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/app/ActivityThread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mActiveResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/ActivityThread$ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field final mActivities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mAllApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field final mAppThread:Landroid/app/ActivityThread$ApplicationThread;

.field final mBackupAgents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field mConfiguration:Landroid/content/res/Configuration;

.field mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mGcIdler:Landroid/app/ActivityThread$GcIdler;

.field mGcIdlerScheduled:Z

.field final mH:Landroid/app/ActivityThread$H;

.field mInitialApplication:Landroid/app/Application;

.field mInstrumentation:Landroid/app/Instrumentation;

.field mInstrumentationAppDir:Ljava/lang/String;

.field mInstrumentationAppPackage:Ljava/lang/String;

.field mInstrumentedAppDir:Ljava/lang/String;

.field mJitEnabled:Z

.field final mLocalProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLooper:Landroid/os/Looper;

.field mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

.field mNumVisibleActivities:I

.field final mOnPauseListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/OnActivityPausedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingConfiguration:Landroid/content/res/Configuration;

.field final mProviderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProviderRefCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRefCount;",
            ">;"
        }
    .end annotation
.end field

.field final mRelaunchingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field mResConfiguration:Landroid/content/res/Configuration;

.field final mResourcePackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field mSystemThread:Z

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 145
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->PATTERN_SEMICOLON:Ljava/util/regex/Pattern;

    .line 150
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 174
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 155
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    .line 156
    new-instance v0, Landroid/app/ActivityThread$H;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    .line 161
    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 163
    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    .line 176
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 177
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppPackage:Ljava/lang/String;

    .line 178
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 179
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 180
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    .line 189
    iput-object v1, p0, Landroid/app/ActivityThread;->mDisplay:Landroid/view/Display;

    .line 190
    iput-object v1, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 195
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    .line 208
    new-instance v0, Landroid/app/ActivityThread$GcIdler;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 209
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2363
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 2364
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 1439
    return-void
.end method

.method static synthetic access$1500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZI)V

    return-void
.end method

.method static synthetic access$1800(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V

    return-void
.end method

.method static synthetic access$1900(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$2000(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    return-void
.end method

.method static synthetic access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleRequestThumbnail(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpServiceInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpServiceInfo;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method private final attach(Z)V
    .locals 7
    .parameter "system"

    .prologue
    .line 3729
    sget-object v4, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3730
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 3731
    if-nez p1, :cond_0

    .line 3732
    new-instance v4, Landroid/app/ActivityThread$1;

    invoke-direct {v4, p0}, Landroid/app/ActivityThread$1;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v4}, Landroid/view/ViewRoot;->addFirstDrawHandler(Ljava/lang/Runnable;)V

    .line 3737
    const-string v4, "<pre-initialized>"

    invoke-static {v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;)V

    .line 3738
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    .line 3739
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 3741
    .local v3, mgr:Landroid/app/IActivityManager;
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3762
    .end local v3           #mgr:Landroid/app/IActivityManager;
    :goto_0
    new-instance v4, Landroid/app/ActivityThread$2;

    invoke-direct {v4, p0}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v4}, Landroid/view/ViewRoot;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 3783
    return-void

    .line 3747
    :cond_0
    const-string/jumbo v4, "system_process"

    invoke-static {v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;)V

    .line 3749
    :try_start_1
    new-instance v4, Landroid/app/Instrumentation;

    invoke-direct {v4}, Landroid/app/Instrumentation;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 3750
    new-instance v1, Landroid/app/ContextImpl;

    invoke-direct {v1}, Landroid/app/ContextImpl;-><init>()V

    .line 3751
    .local v1, context:Landroid/app/ContextImpl;
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v4

    iget-object v4, v4, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 3752
    const-class v4, Landroid/app/Application;

    invoke-static {v4, v1}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 3753
    .local v0, app:Landroid/app/Application;
    iget-object v4, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3754
    iput-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 3755
    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3756
    .end local v0           #app:Landroid/app/Application;
    .end local v1           #context:Landroid/app/ContextImpl;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 3757
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate Application():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3742
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #mgr:Landroid/app/IActivityManager;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private final createThumbnailBitmap(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "r"

    .prologue
    .line 2367
    const/4 v4, 0x0

    .line 2369
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    :try_start_0
    iget v6, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 2371
    .local v6, w:I
    if-gez v6, :cond_1

    .line 2372
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2373
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x1050001

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, h:I
    iput v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 2376
    const v7, 0x1050002

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 2383
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    if-lez v6, :cond_0

    if-lez v2, :cond_0

    .line 2384
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 2387
    .local v5, topView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 2388
    sget-object v7, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2393
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 2394
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2395
    .local v0, cv:Landroid/graphics/Canvas;
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v4, v0}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2396
    const/4 v4, 0x0

    .line 2410
    .end local v0           #cv:Landroid/graphics/Canvas;
    .end local v2           #h:I
    .end local v5           #topView:Landroid/view/View;
    .end local v6           #w:I
    :cond_0
    :goto_2
    return-object v4

    .line 2379
    .restart local v6       #w:I
    :cond_1
    iget v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .restart local v2       #h:I
    goto :goto_0

    .line 2390
    .restart local v5       #topView:Landroid/view/View;
    :cond_2
    sget-object v7, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 2400
    .end local v2           #h:I
    .end local v5           #topView:Landroid/view/View;
    .end local v6           #w:I
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 2401
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v8, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2402
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to create thumbnail of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 2407
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static final currentActivityThread()Landroid/app/ActivityThread;
    .locals 1

    .prologue
    .line 1151
    sget-object v0, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread;

    return-object v0
.end method

.method public static final currentApplication()Landroid/app/Application;
    .locals 2

    .prologue
    .line 1161
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1162
    .local v0, am:Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final currentPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1155
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1156
    .local v0, am:Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 5
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1821
    .local p2, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1822
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1823
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1824
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1825
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1822
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1827
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private final deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 9
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2651
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2652
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2653
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResultInfo;

    .line 2655
    .local v3, ri:Landroid/app/ResultInfo;
    :try_start_0
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 2656
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2660
    :cond_0
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v5, v3, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget v6, v3, Landroid/app/ResultInfo;->mRequestCode:I

    iget v7, v3, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v8, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2652
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2662
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2663
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2664
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure delivering result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2671
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #ri:Landroid/app/ResultInfo;
    :cond_2
    return-void
.end method

.method private final detach()V
    .locals 2

    .prologue
    .line 3787
    sget-object v0, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3788
    return-void
.end method

.method private final getExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 3
    .parameter "context"
    .parameter "name"

    .prologue
    .line 3468
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3469
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3470
    .local v0, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v0, :cond_0

    .line 3471
    iget-object v2, v0, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    monitor-exit v1

    move-object v1, v2

    .line 3473
    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 3474
    .end local v0           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private final getPackageInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;
    .locals 10
    .parameter "aInfo"
    .parameter "baseLoader"
    .parameter "securityViolation"
    .parameter "includeCode"

    .prologue
    .line 1335
    iget-object v9, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v9

    .line 1337
    if-eqz p4, :cond_4

    .line 1338
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    .line 1342
    .local v8, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk;

    .line 1344
    .local v0, packageInfo:Landroid/app/LoadedApk;
    :goto_1
    if-eqz v0, :cond_0

    .line 1345
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setIncludeZTECode(Z)V

    .line 1346
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "test selfappwidget  getPackageInfo,packageInfo 000="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1356
    :cond_1
    new-instance v0, Landroid/app/LoadedApk;

    .end local v0           #packageInfo:Landroid/app/LoadedApk;
    if-eqz p4, :cond_6

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    move v6, v1

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/app/ActivityThread;Ljava/lang/ClassLoader;ZZ)V

    .line 1362
    .restart local v0       #packageInfo:Landroid/app/LoadedApk;
    if-eqz v0, :cond_2

    .line 1363
    if-eqz p4, :cond_7

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    move v7, v1

    .line 1365
    .local v7, b:Z
    :goto_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setIncludeZTECode(Z)V

    .line 1366
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "test selfappwidget  getPackageInfo,packageInfo 111,b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    .end local v7           #b:Z
    :cond_2
    if-eqz p4, :cond_8

    .line 1371
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    :cond_3
    :goto_4
    monitor-exit v9

    return-object v0

    .line 1340
    .end local v0           #packageInfo:Landroid/app/LoadedApk;
    .end local v8           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    .restart local v8       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto/16 :goto_0

    .line 1342
    :cond_5
    const/4 v1, 0x0

    move-object v0, v1

    goto/16 :goto_1

    .line 1356
    :cond_6
    const/4 v1, 0x0

    move v6, v1

    goto :goto_2

    .line 1363
    .restart local v0       #packageInfo:Landroid/app/LoadedApk;
    :cond_7
    const/4 v1, 0x0

    move v7, v1

    goto :goto_3

    .line 1374
    :cond_8
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1379
    .end local v0           #packageInfo:Landroid/app/LoadedApk;
    .end local v8           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    .prologue
    .line 1166
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_0

    .line 1168
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 1174
    :goto_0
    return-object v1

    .line 1170
    :cond_0
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1172
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 1174
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    goto :goto_0
.end method

.method private final getProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 8
    .parameter "context"
    .parameter "name"

    .prologue
    .line 3478
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->getExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 3479
    .local v0, existing:Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 3506
    :goto_0
    return-object v3

    .line 3483
    :cond_0
    const/4 v1, 0x0

    .line 3485
    .local v1, holder:Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)Landroid/app/IActivityManager$ContentProviderHolder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3489
    :goto_1
    if-nez v1, :cond_1

    .line 3490
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find provider info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    const/4 v3, 0x0

    goto :goto_0

    .line 3494
    :cond_1
    iget-object v3, v1, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    iget-object v4, v1, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    invoke-direct {p0, p1, v3, v4, v5}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/content/IContentProvider;Landroid/content/pm/ProviderInfo;Z)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3497
    .local v2, prov:Landroid/content/IContentProvider;
    iget-boolean v3, v1, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v3, :cond_3

    .line 3502
    :cond_2
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3503
    :try_start_1
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Landroid/app/ActivityThread$ProviderRefCount;

    const/16 v7, 0x2710

    invoke-direct {v6, p0, v7}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ActivityThread;I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3504
    monitor-exit v3

    :cond_3
    move-object v3, v2

    .line 3506
    goto :goto_0

    .line 3504
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 3487
    .end local v2           #prov:Landroid/content/IContentProvider;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private final getZTEPackageInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;
    .locals 10
    .parameter "aInfo"
    .parameter "baseLoader"
    .parameter "securityViolation"
    .parameter "includeCode"

    .prologue
    .line 1387
    iget-object v9, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v9

    .line 1389
    if-eqz p4, :cond_4

    .line 1390
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    .line 1394
    .local v8, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk;

    .line 1397
    .local v0, packageInfo:Landroid/app/LoadedApk;
    :goto_1
    if-eqz v0, :cond_0

    .line 1398
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setIncludeZTECode(Z)V

    .line 1399
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "test selfappwidget  getPackageInfo,packageInfo 000="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1411
    :cond_1
    new-instance v0, Landroid/app/LoadedApk;

    .end local v0           #packageInfo:Landroid/app/LoadedApk;
    if-eqz p4, :cond_6

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    move v6, v1

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/app/ActivityThread;Ljava/lang/ClassLoader;ZZ)V

    .line 1417
    .restart local v0       #packageInfo:Landroid/app/LoadedApk;
    if-eqz v0, :cond_2

    .line 1418
    if-eqz p4, :cond_7

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    move v7, v1

    .line 1420
    .local v7, b:Z
    :goto_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setIncludeZTECode(Z)V

    .line 1421
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "test selfappwidget  getPackageInfo,packageInfo 111,b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    .end local v7           #b:Z
    :cond_2
    if-eqz p4, :cond_8

    .line 1426
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    :cond_3
    :goto_4
    monitor-exit v9

    return-object v0

    .line 1392
    .end local v0           #packageInfo:Landroid/app/LoadedApk;
    .end local v8           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    .restart local v8       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto/16 :goto_0

    .line 1394
    :cond_5
    const/4 v1, 0x0

    move-object v0, v1

    goto/16 :goto_1

    .line 1411
    :cond_6
    const/4 v1, 0x0

    move v6, v1

    goto :goto_2

    .line 1418
    .restart local v0       #packageInfo:Landroid/app/LoadedApk;
    :cond_7
    const/4 v1, 0x0

    move v7, v1

    goto :goto_3

    .line 1429
    :cond_8
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1434
    .end local v0           #packageInfo:Landroid/app/LoadedApk;
    .end local v8           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .locals 20
    .parameter "data"

    .prologue
    .line 3254
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 3255
    new-instance v5, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 3258
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 3259
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;)V

    .line 3267
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 3272
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v5}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 3279
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3281
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 3283
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 3284
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/LoadedApk;->setIncludeZTECode(Z)V

    .line 3285
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "test selfappwidget  handleBindApplication,packageInfo 000="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x81

    if-eqz v5, :cond_1

    .line 3296
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    .line 3302
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_2

    .line 3304
    const/16 v5, 0xa0

    invoke-static {v5}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 3307
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    move v5, v0

    if-eqz v5, :cond_3

    .line 3309
    const/16 v5, 0x1fa4

    invoke-static {v5}, Landroid/os/Debug;->changeDebugPort(I)V

    .line 3310
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 3311
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is waiting for the debugger on port 8100..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v17

    .line 3316
    .local v17, mgr:Landroid/app/IActivityManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    .line 3320
    :goto_0
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 3323
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 3333
    .end local v17           #mgr:Landroid/app/IActivityManager;
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v5, v0

    if-eqz v5, :cond_9

    .line 3334
    new-instance v8, Landroid/app/ContextImpl;

    invoke-direct {v8}, Landroid/app/ContextImpl;-><init>()V

    .line 3335
    .local v8, appContext:Landroid/app/ContextImpl;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 3336
    const/4 v15, 0x0

    .line 3338
    .local v15, ii:Landroid/content/pm/InstrumentationInfo;
    :try_start_2
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v15

    .line 3342
    :goto_2
    if-nez v15, :cond_5

    .line 3343
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find instrumentation info for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3328
    .end local v8           #appContext:Landroid/app/ContextImpl;
    .end local v15           #ii:Landroid/content/pm/InstrumentationInfo;
    :cond_4
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can be debugged on port 8100..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3348
    .restart local v8       #appContext:Landroid/app/ContextImpl;
    .restart local v15       #ii:Landroid/content/pm/InstrumentationInfo;
    :cond_5
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 3349
    iget-object v5, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentationAppPackage:Ljava/lang/String;

    .line 3350
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 3352
    new-instance v16, Landroid/content/pm/ApplicationInfo;

    invoke-direct/range {v16 .. v16}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 3353
    .local v16, instrApp:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 3354
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 3355
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 3356
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 3357
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 3358
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v5

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;

    move-result-object v18

    .line 3360
    .local v18, pi:Landroid/app/LoadedApk;
    new-instance v7, Landroid/app/ContextImpl;

    invoke-direct {v7}, Landroid/app/ContextImpl;-><init>()V

    .line 3361
    .local v7, instrContext:Landroid/app/ContextImpl;
    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, v18

    move-object v2, v5

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 3364
    :try_start_3
    invoke-virtual {v7}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    .line 3365
    .local v12, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Instrumentation;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v5, v0

    new-instance v9, Landroid/content/ComponentName;

    iget-object v6, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, v15, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v6, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    move-object v10, v0

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v10}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;)V

    .line 3376
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_6

    iget-boolean v5, v15, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-nez v5, :cond_6

    .line 3377
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->handlingProfiling:Z

    .line 3378
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    move-object v5, v0

    invoke-direct {v14, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3379
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 3380
    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x80

    invoke-static {v5, v6}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 3384
    .end local v14           #file:Ljava/io/File;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 3398
    .end local v7           #instrContext:Landroid/app/ContextImpl;
    .end local v8           #appContext:Landroid/app/ContextImpl;
    .end local v12           #cl:Ljava/lang/ClassLoader;
    .end local v15           #ii:Landroid/content/pm/InstrumentationInfo;
    .end local v16           #instrApp:Landroid/content/pm/ApplicationInfo;
    .end local v18           #pi:Landroid/app/LoadedApk;
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    move v6, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v11

    .line 3399
    .local v11, app:Landroid/app/Application;
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 3401
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    move-object/from16 v19, v0

    .line 3402
    .local v19, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz v19, :cond_7

    .line 3403
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 3406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    move-object v5, v0

    const/16 v6, 0x84

    const-wide/16 v7, 0x2710

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/ActivityThread$H;->sendEmptyMessageDelayed(IJ)Z

    .line 3410
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v5, v0

    invoke-virtual {v5, v11}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 3418
    :cond_8
    return-void

    .line 3367
    .end local v11           #app:Landroid/app/Application;
    .end local v19           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .restart local v7       #instrContext:Landroid/app/ContextImpl;
    .restart local v8       #appContext:Landroid/app/ContextImpl;
    .restart local v15       #ii:Landroid/content/pm/InstrumentationInfo;
    .restart local v16       #instrApp:Landroid/content/pm/ApplicationInfo;
    .restart local v18       #pi:Landroid/app/LoadedApk;
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 3368
    .local v13, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate instrumentation "

    .end local v7           #instrContext:Landroid/app/ContextImpl;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 3386
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v7       #instrContext:Landroid/app/ContextImpl;
    .restart local v12       #cl:Ljava/lang/ClassLoader;
    :catch_1
    move-exception v5

    move-object v13, v5

    .line 3387
    .restart local v13       #e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown in onCreate() of "

    .end local v7           #instrContext:Landroid/app/ContextImpl;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 3393
    .end local v8           #appContext:Landroid/app/ContextImpl;
    .end local v12           #cl:Ljava/lang/ClassLoader;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v15           #ii:Landroid/content/pm/InstrumentationInfo;
    .end local v16           #instrApp:Landroid/content/pm/ApplicationInfo;
    .end local v18           #pi:Landroid/app/LoadedApk;
    :cond_9
    new-instance v5, Landroid/app/Instrumentation;

    invoke-direct {v5}, Landroid/app/Instrumentation;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    goto/16 :goto_3

    .line 3411
    .restart local v11       #app:Landroid/app/Application;
    .restart local v19       #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :catch_2
    move-exception v5

    move-object v13, v5

    .line 3412
    .restart local v13       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v5, v0

    invoke-virtual {v5, v11, v13}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 3413
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 3340
    .end local v11           #app:Landroid/app/Application;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v19           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .restart local v8       #appContext:Landroid/app/ContextImpl;
    .restart local v15       #ii:Landroid/content/pm/InstrumentationInfo;
    :catch_3
    move-exception v5

    goto/16 :goto_2

    .line 3324
    .end local v8           #appContext:Landroid/app/ContextImpl;
    .end local v15           #ii:Landroid/content/pm/InstrumentationInfo;
    .restart local v17       #mgr:Landroid/app/IActivityManager;
    :catch_4
    move-exception v5

    goto/16 :goto_1

    .line 3317
    :catch_5
    move-exception v5

    goto/16 :goto_0
.end method

.method private final handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 2095
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2096
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_0

    .line 2098
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2100
    :try_start_1
    iget-boolean v3, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    if-nez v3, :cond_1

    .line 2101
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 2102
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v0}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 2109
    .end local v0           #binder:Landroid/os/IBinder;
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 2120
    :cond_0
    :goto_1
    return-void

    .line 2105
    :cond_1
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 2106
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2110
    :catch_0
    move-exception v3

    goto :goto_1

    .line 2112
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 2113
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2114
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private final handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 12
    .parameter "data"

    .prologue
    const-string v11, "ActivityThread"

    .line 1949
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 1952
    iget-object v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v9}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v7

    .line 1954
    .local v7, packageInfo:Landroid/app/LoadedApk;
    if-eqz v7, :cond_0

    .line 1955
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/app/LoadedApk;->setIncludeZTECode(Z)V

    .line 1956
    const-string v9, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "test selfappwidget handleCreateBackupAgent,packageInfo 000="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :cond_0
    iget-object v8, v7, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1960
    .local v8, packageName:Ljava/lang/String;
    iget-object v9, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1961
    const-string v9, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BackupAgent   for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " already exists"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :goto_0
    return-void

    .line 1966
    :cond_1
    const/4 v1, 0x0

    .line 1967
    .local v1, agent:Landroid/app/backup/BackupAgent;
    iget-object v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 1968
    .local v4, classname:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 1969
    iget v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    if-nez v9, :cond_2

    .line 1970
    const-string v9, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted incremental backup but no defined agent for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1974
    :cond_2
    const-string v4, "android.app.FullBackupAgent"

    .line 1977
    :cond_3
    const/4 v2, 0x0

    .line 1979
    .local v2, binder:Landroid/os/IBinder;
    :try_start_0
    invoke-virtual {v7}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1980
    .local v3, cl:Ljava/lang/ClassLoader;
    iget-object v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/app/backup/BackupAgent;

    move-object v1, v0

    .line 1986
    new-instance v5, Landroid/app/ContextImpl;

    invoke-direct {v5}, Landroid/app/ContextImpl;-><init>()V

    .line 1987
    .local v5, context:Landroid/app/ContextImpl;
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 1988
    invoke-virtual {v5, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 1989
    invoke-virtual {v1, v5}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 1991
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 1992
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v2

    .line 1993
    iget-object v9, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2006
    .end local v3           #cl:Ljava/lang/ClassLoader;
    .end local v5           #context:Landroid/app/ContextImpl;
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9, v8, v2}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 2007
    :catch_0
    move-exception v9

    goto :goto_0

    .line 1994
    :catch_1
    move-exception v9

    move-object v6, v9

    .line 1997
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "ActivityThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Agent threw during creation: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    iget v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    .line 1999
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2010
    .end local v6           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v9

    move-object v6, v9

    .line 2011
    .restart local v6       #e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to create BackupAgent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method private final handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 13
    .parameter "data"

    .prologue
    const-string v12, ": "

    .line 2045
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2047
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v3}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v10

    .line 2050
    .local v10, packageInfo:Landroid/app/LoadedApk;
    if-eqz v10, :cond_0

    .line 2051
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Landroid/app/LoadedApk;->setIncludeZTECode(Z)V

    .line 2052
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "test selfappwidget  handleCreateService,packageInfo 000="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :cond_0
    const/4 v1, 0x0

    .line 2057
    .local v1, service:Landroid/app/Service;
    :try_start_0
    invoke-virtual {v10}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 2058
    .local v8, cl:Ljava/lang/ClassLoader;
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/Service;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2070
    .end local v8           #cl:Ljava/lang/ClassLoader;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/app/ContextImpl;

    invoke-direct {v2}, Landroid/app/ContextImpl;-><init>()V

    .line 2071
    .local v2, context:Landroid/app/ContextImpl;
    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 2073
    const/4 v3, 0x0

    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v10, v3, v4}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v6

    .line 2074
    .local v6, app:Landroid/app/Application;
    invoke-virtual {v2, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 2075
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 2077
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    .line 2078
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2080
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-interface {v3, v4, v5, v7, v11}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2092
    .end local v2           #context:Landroid/app/ContextImpl;
    .end local v6           #app:Landroid/app/Application;
    :cond_2
    :goto_0
    return-void

    .line 2059
    :catch_0
    move-exception v3

    move-object v9, v3

    .line 2060
    .local v9, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v9}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2061
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2085
    .end local v9           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    move-object v9, v3

    .line 2086
    .restart local v9       #e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v9}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2087
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2082
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v2       #context:Landroid/app/ContextImpl;
    .restart local v6       #app:Landroid/app/Application;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private final handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    .locals 9
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"
    .parameter "getNonConfigInstance"

    .prologue
    const-string v8, "Activity"

    .line 2822
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    .line 2824
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_4

    .line 2825
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 2826
    .local v3, wm:Landroid/view/WindowManager;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2827
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2828
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v5, :cond_0

    .line 2829
    iget v5, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 2831
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 2832
    .local v4, wtoken:Landroid/os/IBinder;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mWindowAdded:Z

    if-eqz v5, :cond_1

    .line 2833
    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2835
    :cond_1
    if-eqz v4, :cond_2

    .line 2836
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    invoke-virtual {v5, v4, v6, v8}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    :cond_2
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2841
    .end local v4           #wtoken:Landroid/os/IBinder;
    :cond_3
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    invoke-virtual {v5, p1, v6, v8}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 2848
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2849
    .local v0, c:Landroid/content/Context;
    instance-of v5, v0, Landroid/app/ContextImpl;

    if-eqz v5, :cond_4

    .line 2850
    check-cast v0, Landroid/app/ContextImpl;

    .end local v0           #c:Landroid/content/Context;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Activity"

    invoke-virtual {v0, v5, v8}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    .end local v2           #v:Landroid/view/View;
    .end local v3           #wm:Landroid/view/WindowManager;
    :cond_4
    if-eqz p2, :cond_5

    .line 2856
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/app/IActivityManager;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2861
    :cond_5
    :goto_0
    return-void

    .line 2857
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private final handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 7
    .parameter "data"

    .prologue
    const-string v6, "ActivityThread"

    .line 2020
    iget-object v4, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v2

    .line 2022
    .local v2, packageInfo:Landroid/app/LoadedApk;
    if-eqz v2, :cond_0

    .line 2023
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/LoadedApk;->setIncludeZTECode(Z)V

    .line 2024
    const-string v4, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "test selfappwidget handleDestroyBackupAgent,packageInfo 000="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_0
    iget-object v3, v2, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 2028
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/backup/BackupAgent;

    .line 2029
    .local v0, agent:Landroid/app/backup/BackupAgent;
    if-eqz v0, :cond_1

    .line 2031
    :try_start_0
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2036
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    :goto_1
    return-void

    .line 2032
    :catch_0
    move-exception v1

    .line 2033
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown in onDestroy by backup agent of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2038
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const-string v4, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to destroy unknown backup agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleDumpService(Landroid/app/ActivityThread$DumpServiceInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 2150
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpServiceInfo;->service:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 2151
    .local v1, s:Landroid/app/Service;
    if-eqz v1, :cond_0

    .line 2152
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpServiceInfo;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2153
    .local v0, pw:Ljava/io/PrintWriter;
    iget-object v2, p1, Landroid/app/ActivityThread$DumpServiceInfo;->fd:Ljava/io/FileDescriptor;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpServiceInfo;->args:[Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2154
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2157
    .end local v0           #pw:Ljava/io/PrintWriter;
    :cond_0
    monitor-enter p1

    .line 2158
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p1, Landroid/app/ActivityThread$DumpServiceInfo;->dumped:Z

    .line 2159
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 2160
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2162
    return-void

    .line 2157
    .end local v1           #s:Landroid/app/Service;
    :catchall_0
    move-exception v2

    monitor-enter p1

    .line 2158
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p1, Landroid/app/ActivityThread$DumpServiceInfo;->dumped:Z

    .line 2159
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 2160
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2157
    throw v2

    .line 2160
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .restart local v1       #s:Landroid/app/Service;
    :catchall_2
    move-exception v2

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2
.end method

.method private final handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    .locals 7
    .parameter "r"
    .parameter "customIntent"

    .prologue
    const/4 v5, 0x0

    .line 1762
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 1766
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 1768
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 1769
    new-instance v3, Landroid/content/res/Configuration;

    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 1770
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 1771
    .local v2, oldState:Landroid/os/Bundle;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    invoke-virtual {p0, v3, v5, v4}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZ)V

    .line 1773
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_1

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    if-eqz v3, :cond_1

    .line 1784
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/Activity;->mCalled:Z

    .line 1785
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 1788
    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 1789
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_0

    .line 1790
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onPause()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/app/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1795
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1796
    .local v1, e:Landroid/app/SuperNotCalledException;
    throw v1

    .line 1798
    .end local v1           #e:Landroid/app/SuperNotCalledException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1799
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1800
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to pause activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1806
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 1817
    .end local v2           #oldState:Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 1812
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1814
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private final handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 1845
    iget-object v0, p1, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    iget-object v1, p1, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V

    .line 1846
    return-void
.end method

.method private final handlePauseActivity(Landroid/os/IBinder;ZZI)V
    .locals 4
    .parameter "token"
    .parameter "finished"
    .parameter "userLeaving"
    .parameter "configChanges"

    .prologue
    .line 2415
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2416
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    .line 2418
    if-eqz p3, :cond_0

    .line 2419
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 2422
    :cond_0
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p4

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 2423
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    move-result-object v1

    .line 2426
    .local v1, state:Landroid/os/Bundle;
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 2430
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/app/IActivityManager;->activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2434
    .end local v1           #state:Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 2431
    .restart local v1       #state:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private final handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .locals 14
    .parameter "data"

    .prologue
    const-string v13, ": "

    .line 1851
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 1853
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 1856
    .local v8, component:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1860
    .local v11, packageInfo:Landroid/app/LoadedApk;
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->getZTEPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v11

    .line 1862
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "test selfappwidget handleReceiver,packageInfo 000="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1871
    .local v0, mgr:Landroid/app/IActivityManager;
    const/4 v12, 0x0

    .line 1873
    .local v12, receiver:Landroid/content/BroadcastReceiver;
    :try_start_0
    invoke-virtual {v11}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 1874
    .local v7, cl:Ljava/lang/ClassLoader;
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1875
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1876
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1878
    :cond_0
    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #receiver:Landroid/content/BroadcastReceiver;
    check-cast v12, Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1893
    .restart local v12       #receiver:Landroid/content/BroadcastReceiver;
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v11, v1, v2}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v6

    .line 1903
    .local v6, app:Landroid/app/Application;
    invoke-virtual {v6}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/ContextImpl;

    .line 1904
    .local v9, context:Landroid/app/ContextImpl;
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/content/BroadcastReceiver;->setOrderedHint(Z)V

    .line 1905
    iget v1, p1, Landroid/app/ActivityThread$ReceiverData;->resultCode:I

    iget-object v2, p1, Landroid/app/ActivityThread$ReceiverData;->resultData:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    invoke-virtual {v12, v1, v2, v3}, Landroid/content/BroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1907
    iget-boolean v1, p1, Landroid/app/ActivityThread$ReceiverData;->sync:Z

    invoke-virtual {v12, v1}, Landroid/content/BroadcastReceiver;->setOrderedHint(Z)V

    .line 1908
    invoke-virtual {v9}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v12, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1925
    .end local v6           #app:Landroid/app/Application;
    .end local v9           #context:Landroid/app/ContextImpl;
    :cond_1
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 1928
    :try_start_2
    iget-boolean v1, p1, Landroid/app/ActivityThread$ReceiverData;->sync:Z

    if-eqz v1, :cond_2

    .line 1931
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v2

    invoke-virtual {v12}, Landroid/content/BroadcastReceiver;->getResultData()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v12}, Landroid/content/BroadcastReceiver;->getAbortBroadcast()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1942
    :goto_0
    return-void

    .line 1879
    .end local v7           #cl:Ljava/lang/ClassLoader;
    .end local v12           #receiver:Landroid/content/BroadcastReceiver;
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 1883
    .local v10, e:Ljava/lang/Exception;
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p1, Landroid/app/ActivityThread$ReceiverData;->resultCode:I

    iget-object v3, p1, Landroid/app/ActivityThread$ReceiverData;->resultData:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p1, Landroid/app/ActivityThread$ReceiverData;->resultAbort:Z

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1887
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1910
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v7       #cl:Ljava/lang/ClassLoader;
    .restart local v12       #receiver:Landroid/content/BroadcastReceiver;
    :catch_1
    move-exception v1

    move-object v10, v1

    .line 1914
    .restart local v10       #e:Ljava/lang/Exception;
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p1, Landroid/app/ActivityThread$ReceiverData;->resultCode:I

    iget-object v3, p1, Landroid/app/ActivityThread$ReceiverData;->resultData:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p1, Landroid/app/ActivityThread$ReceiverData;->resultAbort:Z

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1918
    :goto_2
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1, v12, v10}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1919
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1938
    .end local v10           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_5
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 1940
    :catch_2
    move-exception v1

    goto/16 :goto_0

    .line 1916
    .restart local v10       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    goto :goto_2

    .line 1885
    .end local v7           #cl:Ljava/lang/ClassLoader;
    .end local v12           #receiver:Landroid/content/BroadcastReceiver;
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private final handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;I)V
    .locals 12
    .parameter "tmp"
    .parameter "configChanges"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2866
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2868
    const/4 v1, 0x0

    .line 2877
    .local v1, changedConfig:Landroid/content/res/Configuration;
    iget-object v7, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 2878
    :try_start_0
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2879
    .local v0, N:I
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 2880
    .local v6, token:Landroid/os/IBinder;
    const/4 p1, 0x0

    .line 2881
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 2882
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2883
    .local v4, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v8, v6, :cond_0

    .line 2884
    move-object p1, v4

    .line 2885
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2886
    add-int/lit8 v3, v3, -0x1

    .line 2887
    add-int/lit8 v0, v0, -0x1

    .line 2881
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2891
    .end local v4           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_1
    if-nez p1, :cond_3

    .line 2893
    monitor-exit v7

    .line 2965
    :cond_2
    :goto_1
    return-void

    .line 2896
    :cond_3
    iget-object v8, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v8, :cond_4

    .line 2897
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 2898
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 2900
    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2902
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v7, :cond_7

    .line 2906
    iget-object v7, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v7, :cond_5

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    iget-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v7

    if-eqz v7, :cond_7

    .line 2909
    :cond_5
    if-eqz v1, :cond_6

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2911
    :cond_6
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 2920
    :cond_7
    if-eqz v1, :cond_8

    .line 2921
    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2924
    :cond_8
    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2926
    .restart local v4       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v4, :cond_2

    .line 2930
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v8, v7, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v8, p2

    iput v8, v7, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 2931
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, v7, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 2933
    .local v2, currentIntent:Landroid/content/Intent;
    const/4 v5, 0x0

    .line 2934
    .local v5, savedState:Landroid/os/Bundle;
    iget-boolean v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v7, :cond_9

    .line 2935
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v7, v10, v11}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    move-result-object v5

    .line 2938
    :cond_9
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-direct {p0, v7, v10, p2, v11}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    .line 2940
    iput-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 2941
    iput-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 2942
    iput-boolean v10, v4, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 2943
    iput-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2945
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v7, :cond_a

    .line 2946
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-nez v7, :cond_d

    .line 2947
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iput-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 2952
    :cond_a
    :goto_2
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v7, :cond_b

    .line 2953
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-nez v7, :cond_e

    .line 2954
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iput-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 2959
    :cond_b
    :goto_3
    iget-boolean v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iput-boolean v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 2960
    if-eqz v5, :cond_c

    .line 2961
    iput-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2964
    :cond_c
    invoke-direct {p0, v4, v2}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2900
    .end local v0           #N:I
    .end local v2           #currentIntent:Landroid/content/Intent;
    .end local v3           #i:I
    .end local v4           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v5           #savedState:Landroid/os/Bundle;
    .end local v6           #token:Landroid/os/IBinder;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 2949
    .restart local v0       #N:I
    .restart local v2       #currentIntent:Landroid/content/Intent;
    .restart local v3       #i:I
    .restart local v4       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v5       #savedState:Landroid/os/Bundle;
    .restart local v6       #token:Landroid/os/IBinder;
    :cond_d
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 2956
    :cond_e
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method private final handleRequestThumbnail(Landroid/os/IBinder;)V
    .locals 7
    .parameter "token"

    .prologue
    .line 2968
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2969
    .local v2, r:Landroid/app/ActivityThread$ActivityClientRecord;
    invoke-direct {p0, v2}, Landroid/app/ActivityThread;->createThumbnailBitmap(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2970
    .local v3, thumbnail:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 2972
    .local v0, description:Ljava/lang/CharSequence;
    :try_start_0
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2983
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1, v3, v0}, Landroid/app/IActivityManager;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2987
    :goto_0
    return-void

    .line 2973
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2974
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2975
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create description of activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2985
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private final handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    .locals 7
    .parameter "res"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2674
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2676
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_3

    .line 2677
    iget-boolean v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v3, :cond_1

    move v2, v6

    .line 2678
    .local v2, resumed:Z
    :goto_0
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 2683
    invoke-direct {p0, v1, v6}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 2685
    :cond_0
    if-eqz v2, :cond_2

    .line 2688
    :try_start_0
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/Activity;->mCalled:Z

    .line 2689
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 2690
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_2

    .line 2691
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onPause()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/app/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2695
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2696
    .local v0, e:Landroid/app/SuperNotCalledException;
    throw v0

    .end local v0           #e:Landroid/app/SuperNotCalledException;
    .end local v2           #resumed:Z
    :cond_1
    move v2, v5

    .line 2677
    goto :goto_0

    .line 2697
    .restart local v2       #resumed:Z
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 2698
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2699
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to pause activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2706
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v3, p1, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    invoke-direct {p0, v1, v3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 2707
    if-eqz v2, :cond_3

    .line 2708
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 2711
    .end local v2           #resumed:Z
    :cond_3
    return-void
.end method

.method private final handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 2165
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2166
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_1

    .line 2168
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 2169
    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2171
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iget v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    .line 2173
    .local v1, res:I
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2176
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    const/4 v5, 0x1

    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-interface {v3, v4, v5, v6, v1}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2181
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2190
    .end local v1           #res:I
    :cond_1
    return-void

    .line 2182
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2183
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2184
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2178
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #res:I
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private final handleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 6
    .parameter "token"
    .parameter "show"
    .parameter "configChanges"

    .prologue
    .line 2603
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2604
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p3

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 2606
    new-instance v0, Landroid/app/ActivityThread$StopInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/app/ActivityThread$StopInfo;-><init>(Landroid/app/ActivityThread$1;)V

    .line 2607
    .local v0, info:Landroid/app/ActivityThread$StopInfo;
    invoke-direct {p0, v1, v0, p2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;Z)V

    .line 2613
    invoke-direct {p0, v1, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 2617
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v4, v0, Landroid/app/ActivityThread$StopInfo;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v5, v0, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->activityStopped(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2621
    :goto_0
    return-void

    .line 2619
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private final handleStopService(Landroid/os/IBinder;)V
    .locals 8
    .parameter "token"

    .prologue
    .line 2193
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2194
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_1

    .line 2197
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Service;->onDestroy()V

    .line 2198
    invoke-virtual {v2}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2199
    .local v0, context:Landroid/content/Context;
    instance-of v4, v0, Landroid/app/ContextImpl;

    if-eqz v4, :cond_0

    .line 2200
    invoke-virtual {v2}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 2201
    .local v3, who:Ljava/lang/String;
    check-cast v0, Landroid/app/ContextImpl;

    .end local v0           #context:Landroid/content/Context;
    const-string v4, "Service"

    invoke-virtual {v0, v3, v4}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    .end local v3           #who:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2207
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v4, p1, v5, v6, v7}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2221
    :cond_1
    :goto_0
    return-void

    .line 2212
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2213
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2214
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to stop service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2209
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private final handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 2123
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2124
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_0

    .line 2126
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2127
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2129
    .local v0, doRebind:Z
    if-eqz v0, :cond_1

    .line 2130
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v0}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 2146
    .end local v0           #doRebind:Z
    :cond_0
    :goto_0
    return-void

    .line 2133
    .restart local v0       #doRebind:Z
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2136
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2138
    .end local v0           #doRebind:Z
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 2139
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2140
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to unbind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private final handleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .parameter "token"
    .parameter "show"

    .prologue
    .line 2632
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2633
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez p2, :cond_2

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v1, :cond_2

    .line 2634
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;Z)V

    .line 2643
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2646
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 2648
    :cond_1
    return-void

    .line 2635
    :cond_2
    if-eqz p2, :cond_0

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_0

    .line 2638
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2640
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    .line 2641
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto :goto_0
.end method

.method private final installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .locals 11
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3435
    .local p2, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3438
    .local v5, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3439
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ProviderInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3440
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;

    .line 3441
    .local v3, cpi:Landroid/content/pm/ProviderInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3442
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v6, "Pub "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3443
    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3444
    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3445
    iget-object v6, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3446
    const-string v6, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p1, v6, v3, v7}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/content/IContentProvider;Landroid/content/pm/ProviderInfo;Z)Landroid/content/IContentProvider;

    move-result-object v1

    .line 3448
    .local v1, cp:Landroid/content/IContentProvider;
    if-eqz v1, :cond_0

    .line 3449
    new-instance v2, Landroid/app/IActivityManager$ContentProviderHolder;

    invoke-direct {v2, v3}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 3451
    .local v2, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    iput-object v1, v2, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 3452
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3454
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 3455
    :try_start_0
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-interface {v1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    new-instance v9, Landroid/app/ActivityThread$ProviderRefCount;

    const/16 v10, 0x2710

    invoke-direct {v9, p0, v10}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ActivityThread;I)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3456
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3461
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v1           #cp:Landroid/content/IContentProvider;
    .end local v2           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v3           #cpi:Landroid/content/pm/ProviderInfo;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3465
    :goto_1
    return-void

    .line 3463
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private final installProvider(Landroid/content/Context;Landroid/content/IContentProvider;Landroid/content/pm/ProviderInfo;Z)Landroid/content/IContentProvider;
    .locals 18
    .parameter "context"
    .parameter "provider"
    .parameter "info"
    .parameter "noisy"

    .prologue
    .line 3651
    const/4 v10, 0x0

    .line 3652
    .local v10, localProvider:Landroid/content/ContentProvider;
    if-nez p2, :cond_5

    .line 3653
    if-eqz p4, :cond_0

    .line 3654
    const-string v13, "ActivityThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Loading provider "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    :cond_0
    const/4 v6, 0x0

    .line 3658
    .local v6, c:Landroid/content/Context;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    .line 3659
    .local v5, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 3660
    move-object/from16 v6, p1

    .line 3671
    :goto_0
    if-nez v6, :cond_3

    .line 3672
    const-string v13, "ActivityThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to get context for package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " while loading content provider "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    const/4 v13, 0x0

    .line 3725
    .end local v5           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #c:Landroid/content/Context;
    :goto_1
    return-object v13

    .line 3661
    .restart local v5       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #c:Landroid/content/Context;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object v13, v0

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 3663
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object v6, v0

    goto :goto_0

    .line 3666
    :cond_2
    :try_start_0
    iget-object v13, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    move-object v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    goto :goto_0

    .line 3679
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 3680
    .local v7, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v7, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/content/ContentProvider;

    move-object v10, v0

    .line 3682
    invoke-virtual {v10}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object p2

    .line 3683
    if-nez p2, :cond_4

    .line 3684
    const-string v13, "ActivityThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to instantiate class "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from sourceDir "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v15, v0

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    const/4 v13, 0x0

    goto :goto_1

    .line 3692
    :cond_4
    move-object v0, v10

    move-object v1, v6

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3706
    .end local v5           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #c:Landroid/content/Context;
    .end local v7           #cl:Ljava/lang/ClassLoader;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    move-object v13, v0

    monitor-enter v13

    .line 3708
    :try_start_2
    sget-object v14, Landroid/app/ActivityThread;->PATTERN_SEMICOLON:Ljava/util/regex/Pattern;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v11

    .line 3709
    .local v11, names:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    array-length v14, v11

    if-ge v9, v14, :cond_7

    .line 3710
    new-instance v12, Landroid/app/ActivityThread$ProviderClientRecord;

    aget-object v14, v11, v9

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3713
    .local v12, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :try_start_3
    invoke-interface/range {p2 .. p2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v12, v15}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    move-object v14, v0

    aget-object v15, v11, v9

    invoke-virtual {v14, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3709
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3693
    .end local v9           #i:I
    .end local v11           #names:[Ljava/lang/String;
    .end local v12           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    .restart local v5       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #c:Landroid/content/Context;
    :catch_0
    move-exception v13

    move-object v8, v13

    .line 3694
    .local v8, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v8}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 3695
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to get provider "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 3699
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 3715
    .end local v5           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #c:Landroid/content/Context;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #i:I
    .restart local v11       #names:[Ljava/lang/String;
    .restart local v12       #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :catch_1
    move-exception v14

    move-object v8, v14

    .line 3716
    .local v8, e:Landroid/os/RemoteException;
    const/4 v14, 0x0

    :try_start_4
    monitor-exit v13

    move-object v13, v14

    goto/16 :goto_1

    .line 3719
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v12           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_7
    if-eqz v10, :cond_8

    .line 3720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    move-object v14, v0

    invoke-interface/range {p2 .. p2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    new-instance v16, Landroid/app/ActivityThread$ProviderClientRecord;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;)V

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3723
    :cond_8
    monitor-exit v13

    move-object/from16 v13, p2

    .line 3725
    goto/16 :goto_1

    .line 3723
    .end local v9           #i:I
    .end local v11           #names:[Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v14

    .line 3668
    .restart local v5       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #c:Landroid/content/Context;
    :catch_2
    move-exception v13

    goto/16 :goto_0
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"

    .prologue
    .line 3804
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 3806
    const-string v2, "<pre-initialized>"

    invoke-static {v2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 3808
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 3809
    sget-object v2, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 3810
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    sput-object v2, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    .line 3813
    :cond_0
    new-instance v1, Landroid/app/ActivityThread;

    invoke-direct {v1}, Landroid/app/ActivityThread;-><init>()V

    .line 3814
    .local v1, thread:Landroid/app/ActivityThread;
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/ActivityThread;->attach(Z)V

    .line 3821
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3823
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3824
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Main thread loop unexpectedly exited"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3827
    :cond_1
    invoke-direct {v1}, Landroid/app/ActivityThread;->detach()V

    .line 3828
    iget-object v2, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 3831
    .local v0, name:Ljava/lang/String;
    :goto_0
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Main thread of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is now exiting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    return-void

    .line 3828
    .end local v0           #name:Ljava/lang/String;
    :cond_2
    const-string v2, "<unknown>"

    move-object v0, v2

    goto :goto_0
.end method

.method private final performConfigurationChanged(Landroid/content/ComponentCallbacks;Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "cb"
    .parameter "config"

    .prologue
    const/4 v5, 0x0

    .line 3045
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    move-object v1, v4

    .line 3046
    .local v1, activity:Landroid/app/Activity;
    :goto_0
    if-eqz v1, :cond_0

    .line 3047
    iput-boolean v5, v1, Landroid/app/Activity;->mCalled:Z

    .line 3050
    :cond_0
    const/4 v3, 0x0

    .line 3051
    .local v3, shouldChangeConfig:Z
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    if-nez v4, :cond_4

    .line 3052
    :cond_1
    const/4 v3, 0x1

    .line 3072
    :cond_2
    :goto_1
    if-eqz v3, :cond_6

    .line 3073
    invoke-interface {p1, p2}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3075
    if-eqz v1, :cond_6

    .line 3076
    iget-boolean v4, v1, Landroid/app/Activity;->mCalled:Z

    if-nez v4, :cond_5

    .line 3077
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onConfigurationChanged()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3045
    .end local v1           #activity:Landroid/app/Activity;
    .end local v3           #shouldChangeConfig:Z
    :cond_3
    const/4 v4, 0x0

    move-object v1, v4

    goto :goto_0

    .line 3058
    .restart local v1       #activity:Landroid/app/Activity;
    .restart local v3       #shouldChangeConfig:Z
    :cond_4
    iget-object v4, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, p2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    .line 3059
    .local v2, diff:I
    if-eqz v2, :cond_2

    .line 3064
    iget-object v4, v1, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v2

    if-nez v4, :cond_2

    .line 3065
    const/4 v3, 0x1

    goto :goto_1

    .line 3081
    .end local v2           #diff:I
    :cond_5
    iput v5, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 3082
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v4, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 3085
    :cond_6
    return-void
.end method

.method private final performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 7
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"
    .parameter "getNonConfigInstance"

    .prologue
    const/4 v6, 0x1

    const-string v2, "Activity "

    const-string v5, ": "

    .line 2719
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2721
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_8

    .line 2722
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p3

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 2723
    if-eqz p2, :cond_0

    .line 2724
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v6, v2, Landroid/app/Activity;->mFinished:Z

    .line 2726
    :cond_0
    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v2, :cond_2

    .line 2728
    :try_start_0
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/Activity;->mCalled:Z

    .line 2729
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 2730
    const/16 v2, 0x7545

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2732
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-nez v2, :cond_1

    .line 2733
    new-instance v2, Landroid/app/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onPause()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/app/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2737
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2738
    .local v0, e:Landroid/app/SuperNotCalledException;
    throw v0

    .line 2739
    .end local v0           #e:Landroid/app/SuperNotCalledException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 2740
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2741
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to pause activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2747
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iput-boolean v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 2749
    :cond_2
    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v2, :cond_4

    .line 2751
    :try_start_1
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performStop()V
    :try_end_1
    .catch Landroid/app/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2762
    :cond_3
    iput-boolean v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2764
    :cond_4
    if-eqz p4, :cond_6

    .line 2766
    :try_start_2
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstance:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 2777
    :cond_5
    :try_start_3
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onRetainNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationChildInstances:Ljava/util/HashMap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 2790
    :cond_6
    :try_start_4
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/Activity;->mCalled:Z

    .line 2791
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onDestroy()V

    .line 2792
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-nez v2, :cond_7

    .line 2793
    new-instance v2, Landroid/app/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onDestroy()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Landroid/app/SuperNotCalledException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 2800
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 2801
    .local v0, e:Landroid/app/SuperNotCalledException;
    throw v0

    .line 2752
    .end local v0           #e:Landroid/app/SuperNotCalledException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 2753
    .restart local v0       #e:Landroid/app/SuperNotCalledException;
    throw v0

    .line 2754
    .end local v0           #e:Landroid/app/SuperNotCalledException;
    :catch_4
    move-exception v2

    move-object v0, v2

    .line 2755
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2756
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to stop activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2768
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v2

    move-object v0, v2

    .line 2769
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2770
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retain activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2779
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v2

    move-object v0, v2

    .line 2780
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2781
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retain child activities "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2797
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_5
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v2, :cond_8

    .line 2798
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->closeAllPanels()V
    :try_end_5
    .catch Landroid/app/SuperNotCalledException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 2810
    :cond_8
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2812
    return-object v1

    .line 2802
    :catch_7
    move-exception v2

    move-object v0, v2

    .line 2803
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2804
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to destroy activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 24
    .parameter "r"
    .parameter "customIntent"

    .prologue
    .line 1643
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    .line 1644
    .local v19, aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object v6, v0

    if-nez v6, :cond_0

    .line 1645
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;I)Landroid/app/LoadedApk;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 1649
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    .line 1650
    .local v21, component:Landroid/content/ComponentName;
    if-nez v21, :cond_1

    .line 1651
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v21

    .line 1653
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1656
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1657
    new-instance v21, Landroid/content/ComponentName;

    .end local v21           #component:Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    .restart local v21       #component:Landroid/content/ComponentName;
    :cond_2
    const/4 v4, 0x0

    .line 1663
    .local v4, activity:Landroid/app/Activity;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    .line 1664
    .local v20, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object v8, v0

    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v4

    .line 1666
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1667
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object v6, v0

    if-eqz v6, :cond_3

    .line 1668
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1679
    .end local v20           #cl:Ljava/lang/ClassLoader;
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v10

    .line 1689
    .local v10, app:Landroid/app/Application;
    if-eqz v4, :cond_9

    .line 1690
    new-instance v5, Landroid/app/ContextImpl;

    invoke-direct {v5}, Landroid/app/ContextImpl;-><init>()V

    .line 1691
    .local v5, appContext:Landroid/app/ContextImpl;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object v7, v0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 1692
    invoke-virtual {v5, v4}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 1693
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    invoke-virtual {v5}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1694
    .local v13, title:Ljava/lang/CharSequence;
    new-instance v18, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1697
    .local v18, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    move v9, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object v11, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v12, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    move-object v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstance:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationChildInstances:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v6, p0

    invoke-virtual/range {v4 .. v18}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;Landroid/content/res/Configuration;)V

    .line 1702
    if-eqz p2, :cond_4

    .line 1703
    move-object/from16 v0, p2

    move-object v1, v4

    iput-object v0, v1, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 1705
    :cond_4
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstance:Ljava/lang/Object;

    .line 1706
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationChildInstances:Ljava/util/HashMap;

    .line 1707
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/app/Activity;->mStartedActivity:Z

    .line 1708
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v23

    .line 1709
    .local v23, theme:I
    if-eqz v23, :cond_5

    .line 1710
    move-object v0, v4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 1713
    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    .line 1714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object v7, v0

    invoke-virtual {v6, v4, v7}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1715
    iget-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    if-nez v6, :cond_6

    .line 1716
    new-instance v6, Landroid/app/SuperNotCalledException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not call through to super.onCreate()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Landroid/app/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1745
    .end local v5           #appContext:Landroid/app/ContextImpl;
    .end local v10           #app:Landroid/app/Application;
    .end local v13           #title:Ljava/lang/CharSequence;
    .end local v18           #config:Landroid/content/res/Configuration;
    .end local v23           #theme:I
    :catch_0
    move-exception v6

    move-object/from16 v22, v6

    .line 1746
    .local v22, e:Landroid/app/SuperNotCalledException;
    throw v22

    .line 1670
    .end local v22           #e:Landroid/app/SuperNotCalledException;
    :catch_1
    move-exception v6

    move-object/from16 v22, v6

    .line 1671
    .local v22, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1672
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1720
    .end local v22           #e:Ljava/lang/Exception;
    .restart local v5       #appContext:Landroid/app/ContextImpl;
    .restart local v10       #app:Landroid/app/Application;
    .restart local v13       #title:Ljava/lang/CharSequence;
    .restart local v18       #config:Landroid/content/res/Configuration;
    .restart local v23       #theme:I
    :cond_6
    :try_start_2
    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 1721
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 1722
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_7

    .line 1723
    invoke-virtual {v4}, Landroid/app/Activity;->performStart()V

    .line 1724
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 1726
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_8

    .line 1727
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object v6, v0

    if-eqz v6, :cond_8

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object v7, v0

    invoke-virtual {v6, v4, v7}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1731
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_9

    .line 1732
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object v7, v0

    invoke-virtual {v6, v4, v7}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1734
    iget-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    if-nez v6, :cond_9

    .line 1735
    new-instance v6, Landroid/app/SuperNotCalledException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not call through to super.onPostCreate()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Landroid/app/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1748
    .end local v5           #appContext:Landroid/app/ContextImpl;
    .end local v10           #app:Landroid/app/Application;
    .end local v13           #title:Ljava/lang/CharSequence;
    .end local v18           #config:Landroid/content/res/Configuration;
    .end local v23           #theme:I
    :catch_2
    move-exception v6

    move-object/from16 v22, v6

    .line 1749
    .restart local v22       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1750
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to start activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1741
    .end local v22           #e:Ljava/lang/Exception;
    .restart local v10       #app:Landroid/app/Application;
    :cond_9
    const/4 v6, 0x1

    :try_start_3
    move v0, v6

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object v7, v0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/app/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1756
    .end local v10           #app:Landroid/app/Application;
    :cond_a
    return-object v4
.end method

.method private final performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;Z)V
    .locals 5
    .parameter "r"
    .parameter "info"
    .parameter "keepShown"

    .prologue
    const/4 v3, 0x1

    const-string v4, ": "

    .line 2527
    if-eqz p1, :cond_0

    .line 2528
    if-nez p3, :cond_2

    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_2

    .line 2529
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-eqz v1, :cond_1

    .line 2573
    :cond_0
    :goto_0
    return-void

    .line 2535
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing stop of activity that is not resumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2538
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2541
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_2
    if-eqz p2, :cond_3

    .line 2544
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->createThumbnailBitmap(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p2, Landroid/app/ActivityThread$StopInfo;->thumbnail:Landroid/graphics/Bitmap;

    .line 2545
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p2, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2556
    :cond_3
    if-nez p3, :cond_5

    .line 2559
    :try_start_1
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2568
    :cond_4
    iput-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2571
    :cond_5
    iput-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    goto :goto_0

    .line 2546
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2547
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2548
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save state of activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2560
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 2561
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2562
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to stop activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final queueOrSendMessage(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v0, 0x0

    .line 1610
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V

    .line 1611
    return-void
.end method

.method private final queueOrSendMessage(ILjava/lang/Object;I)V
    .locals 1
    .parameter "what"
    .parameter "obj"
    .parameter "arg1"

    .prologue
    .line 1614
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V

    .line 1615
    return-void
.end method

.method private final queueOrSendMessage(ILjava/lang/Object;II)V
    .locals 2
    .parameter "what"
    .parameter "obj"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1618
    monitor-enter p0

    .line 1622
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1623
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1624
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1625
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 1626
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 1627
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 1628
    monitor-exit p0

    .line 1629
    return-void

    .line 1628
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 2816
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2817
    .local v0, component:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const-string v1, "[Unknown]"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final systemMain()Landroid/app/ActivityThread;
    .locals 2

    .prologue
    .line 3791
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 3792
    .local v0, thread:Landroid/app/ActivityThread;
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/app/ActivityThread;->attach(Z)V

    .line 3793
    return-object v0
.end method

.method private final updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 4
    .parameter "r"
    .parameter "show"

    .prologue
    const/4 v3, 0x1

    .line 2576
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2577
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2578
    if-eqz p2, :cond_2

    .line 2579
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    if-nez v1, :cond_0

    .line 2580
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 2581
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 2582
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v1, :cond_0

    .line 2583
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->makeVisible()V

    .line 2586
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_1

    .line 2589
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks;Landroid/content/res/Configuration;)V

    .line 2590
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 2600
    :cond_1
    :goto_0
    return-void

    .line 2593
    :cond_2
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v1, :cond_1

    .line 2594
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 2595
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 2596
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 7
    .parameter "c"
    .parameter "name"

    .prologue
    .line 3526
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->getExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3527
    .local v2, provider:Landroid/content/IContentProvider;
    if-nez v2, :cond_0

    .line 3528
    const/4 v3, 0x0

    .line 3538
    :goto_0
    return-object v3

    .line 3529
    :cond_0
    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3530
    .local v0, jBinder:Landroid/os/IBinder;
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3531
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;

    .line 3532
    .local v1, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v1, :cond_1

    .line 3533
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    new-instance v5, Landroid/app/ActivityThread$ProviderRefCount;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ActivityThread;I)V

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3537
    :goto_1
    monitor-exit v3

    move-object v3, v2

    .line 3538
    goto :goto_0

    .line 3535
    :cond_1
    iget v4, v1, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    goto :goto_1

    .line 3537
    .end local v1           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public final acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 7
    .parameter "c"
    .parameter "name"

    .prologue
    .line 3510
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->getProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3511
    .local v2, provider:Landroid/content/IContentProvider;
    if-nez v2, :cond_0

    .line 3512
    const/4 v3, 0x0

    .line 3522
    :goto_0
    return-object v3

    .line 3513
    :cond_0
    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3514
    .local v0, jBinder:Landroid/os/IBinder;
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3515
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;

    .line 3516
    .local v1, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v1, :cond_1

    .line 3517
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    new-instance v5, Landroid/app/ActivityThread$ProviderRefCount;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ActivityThread;I)V

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3521
    :goto_1
    monitor-exit v3

    move-object v3, v2

    .line 3522
    goto :goto_0

    .line 3519
    :cond_1
    iget v4, v1, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    goto :goto_1

    .line 3521
    .end local v1           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;)Z
    .locals 8
    .parameter "config"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3088
    iget-object v5, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    if-nez v5, :cond_0

    .line 3089
    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    iput-object v5, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    .line 3091
    :cond_0
    iget-object v5, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    .line 3128
    :goto_0
    return v5

    .line 3096
    :cond_1
    iget-object v5, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 3097
    .local v0, changes:I
    invoke-static {v0}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(I)V

    invoke-virtual {p0, v7}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Z)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3100
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v5, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v5, :cond_2

    .line 3101
    iget-object v5, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v5}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 3104
    :cond_2
    invoke-static {p1, v1}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3106
    invoke-static {}, Landroid/app/ContextImpl$ApplicationPackageManager;->configurationChanged()V

    .line 3109
    iget-object v5, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3113
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 3115
    .local v4, v:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 3116
    .local v3, r:Landroid/content/res/Resources;
    if-eqz v3, :cond_3

    .line 3119
    invoke-virtual {v3, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 3124
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 3128
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #v:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_4
    if-eqz v0, :cond_5

    move v5, v7

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_0
.end method

.method collectComponentCallbacksLocked(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;
    .locals 10
    .parameter "allActivities"
    .parameter "newConfig"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/res/Configuration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2991
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2994
    .local v3, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks;>;"
    iget-object v8, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 2995
    iget-object v8, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2996
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ActivityClientRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2997
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2998
    .local v2, ar:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v1, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 2999
    .local v1, a:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 3000
    iget-object v8, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v8, v8, Landroid/app/Activity;->mFinished:Z

    if-nez v8, :cond_2

    if-nez p1, :cond_1

    if-eqz v1, :cond_2

    iget-boolean v8, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v8, :cond_2

    .line 3004
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3005
    :cond_2
    if-eqz p2, :cond_0

    .line 3013
    iput-object p2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    goto :goto_0

    .line 3018
    .end local v1           #a:Landroid/app/Activity;
    .end local v2           #ar:Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ActivityClientRecord;>;"
    :cond_3
    iget-object v8, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 3019
    iget-object v8, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 3020
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/Service;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3021
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3024
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/Service;>;"
    :cond_4
    iget-object v9, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 3025
    :try_start_0
    iget-object v8, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 3026
    iget-object v8, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3027
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ProviderClientRecord;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3028
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v8, v8, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3031
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ProviderClientRecord;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_5
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3032
    iget-object v8, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3033
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v0, :cond_6

    .line 3034
    iget-object v8, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3033
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3037
    :cond_6
    return-object v3
.end method

.method final completeRemoveProvider(Landroid/content/IContentProvider;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 3568
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3569
    .local v0, jBinder:Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 3570
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3571
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderRefCount;

    .line 3572
    .local v2, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    if-nez v4, :cond_0

    .line 3573
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3575
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->removeProviderLocked(Landroid/content/IContentProvider;)Ljava/lang/String;

    move-result-object v1

    .line 3577
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3579
    if-eqz v1, :cond_1

    .line 3583
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3589
    :cond_1
    :goto_0
    return-void

    .line 3577
    .end local v2           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 3585
    .restart local v2       #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method doGcIfNeeded()V
    .locals 6

    .prologue
    .line 1523
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 1524
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1527
    .local v0, now:J
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 1529
    const-string v2, "bg"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 1531
    :cond_0
    return-void
.end method

.method ensureJitEnabled()V
    .locals 1

    .prologue
    .line 1500
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    if-nez v0, :cond_0

    .line 1501
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 1502
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 1504
    :cond_0
    return-void
.end method

.method final finishInstrumentation(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 3421
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3422
    .local v0, am:Landroid/app/IActivityManager;
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-boolean v1, v1, Landroid/app/ActivityThread$AppBindData;->handlingProfiling:Z

    if-eqz v1, :cond_0

    .line 3423
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 3428
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3431
    :goto_0
    return-void

    .line 3429
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 1
    .parameter "token"

    .prologue
    .line 1594
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 1468
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getDisplayMetricsLocked(Z)Landroid/util/DisplayMetrics;
    .locals 3
    .parameter "forceUpdate"

    .prologue
    .line 1178
    iget-object v2, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 1179
    iget-object v2, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1190
    :goto_0
    return-object v2

    .line 1181
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_1

    .line 1182
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    .line 1183
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityThread;->mDisplay:Landroid/view/Display;

    .line 1185
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1186
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Landroid/app/ActivityThread;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object v2, v0

    .line 1190
    goto :goto_0
.end method

.method final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    return-object v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final getPackageInfo(Landroid/content/pm/ApplicationInfo;I)Landroid/app/LoadedApk;
    .locals 9
    .parameter "ai"
    .parameter "flags"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v8, ")"

    const-string v7, " (with uid "

    .line 1308
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    move v0, v5

    .line 1309
    .local v0, includeCode:Z
    :goto_0
    if-eqz v0, :cond_3

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v3, :cond_3

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v3, :cond_0

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v4, :cond_3

    :cond_0
    move v2, v5

    .line 1312
    .local v2, securityViolation:Z
    :goto_1
    and-int/lit8 v3, p2, 0x3

    if-ne v3, v5, :cond_4

    .line 1315
    if-eqz v2, :cond_4

    .line 1316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting code from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (with uid "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1318
    .local v1, msg:Ljava/lang/String;
    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v3, :cond_1

    .line 1319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to be run in process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (with uid "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1323
    :cond_1
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0           #includeCode:Z
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #securityViolation:Z
    :cond_2
    move v0, v6

    .line 1308
    goto/16 :goto_0

    .restart local v0       #includeCode:Z
    :cond_3
    move v2, v6

    .line 1309
    goto :goto_1

    .line 1326
    .restart local v2       #securityViolation:Z
    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2, v0}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;

    move-result-object v3

    return-object v3
.end method

.method public final getPackageInfo(Ljava/lang/String;I)Landroid/app/LoadedApk;
    .locals 7
    .parameter "packageName"
    .parameter "flags"

    .prologue
    const/4 v5, 0x0

    .line 1268
    iget-object v4, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1270
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1

    .line 1271
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1275
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk;

    move-object v1, v3

    .line 1279
    .local v1, packageInfo:Landroid/app/LoadedApk;
    :goto_1
    if-eqz v1, :cond_4

    iget-object v3, v1, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1281
    :cond_0
    invoke-virtual {v1}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result v3

    if-eqz v3, :cond_3

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_3

    .line 1283
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting code from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to be run in process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1291
    .end local v1           #packageInfo:Landroid/app/LoadedApk;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1273
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    :cond_2
    move-object v1, v5

    .line 1275
    goto :goto_1

    .line 1289
    .restart local v1       #packageInfo:Landroid/app/LoadedApk;
    :cond_3
    monitor-exit v4

    move-object v3, v1

    .line 1304
    :goto_2
    return-object v3

    .line 1291
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1293
    const/4 v0, 0x0

    .line 1295
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x400

    invoke-interface {v3, p1, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 1300
    :goto_3
    if-eqz v0, :cond_5

    .line 1301
    invoke-virtual {p0, v0, p2}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;I)Landroid/app/LoadedApk;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v5

    .line 1304
    goto :goto_2

    .line 1297
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method public final getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;
    .locals 3
    .parameter "ai"

    .prologue
    .line 1330
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemContext()Landroid/app/ContextImpl;
    .locals 5

    .prologue
    .line 1476
    monitor-enter p0

    .line 1477
    :try_start_0
    sget-object v2, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v2, :cond_0

    .line 1478
    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 1480
    .local v0, context:Landroid/app/ContextImpl;
    new-instance v1, Landroid/app/LoadedApk;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    .line 1481
    .local v1, info:Landroid/app/LoadedApk;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 1482
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Z)Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1484
    sput-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 1488
    .end local v0           #context:Landroid/app/ContextImpl;
    .end local v1           #info:Landroid/app/LoadedApk;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1489
    sget-object v2, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    return-object v2

    .line 1488
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method getTopLevelResources(Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 1
    .parameter "resDir"
    .parameter "pkgInfo"

    .prologue
    .line 1260
    iget-object v0, p2, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 9
    .parameter "resDir"
    .parameter "compInfo"

    .prologue
    const/4 v8, 0x0

    .line 1201
    new-instance v2, Landroid/app/ActivityThread$ResourcesKey;

    iget v6, p2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-direct {v2, p1, v6}, Landroid/app/ActivityThread$ResourcesKey;-><init>(Ljava/lang/String;F)V

    .line 1203
    .local v2, key:Landroid/app/ActivityThread$ResourcesKey;
    iget-object v7, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 1209
    :try_start_0
    iget-object v6, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 1210
    .local v5, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Resources;

    move-object v4, v6

    .line 1212
    .local v4, r:Landroid/content/res/Resources;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1217
    monitor-exit v7

    move-object v6, v4

    .line 1252
    :goto_1
    return-object v6

    .end local v4           #r:Landroid/content/res/Resources;
    :cond_0
    move-object v4, v8

    .line 1210
    goto :goto_0

    .line 1219
    .restart local v4       #r:Landroid/content/res/Resources;
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1226
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 1227
    .local v0, assets:Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v8

    .line 1228
    goto :goto_1

    .line 1219
    .end local v0           #assets:Landroid/content/res/AssetManager;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1232
    .restart local v0       #assets:Landroid/content/res/AssetManager;
    .restart local v4       #r:Landroid/content/res/Resources;
    .restart local v5       #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Z)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1233
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-static {v0, v3, v6, p2}, Landroid/content/res/MiuiClassFactory;->newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v4

    iget-object v7, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 1241
    :try_start_2
    iget-object v6, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 1242
    .restart local v5       #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Resources;

    move-object v1, v6

    .line 1243
    .local v1, existing:Landroid/content/res/Resources;
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1246
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    .line 1247
    monitor-exit v7

    move-object v6, v1

    goto :goto_1

    .end local v1           #existing:Landroid/content/res/Resources;
    :cond_3
    move-object v1, v8

    .line 1242
    goto :goto_2

    .line 1251
    .restart local v1       #existing:Landroid/content/res/Resources;
    :cond_4
    iget-object v6, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    monitor-exit v7

    move-object v6, v4

    goto :goto_1

    .line 1253
    .end local v1           #existing:Landroid/content/res/Resources;
    .end local v5           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6
.end method

.method public final getZTEPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;
    .locals 3
    .parameter "ai"

    .prologue
    .line 1383
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/app/ActivityThread;->getZTEPackageInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method final handleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 3172
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3173
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 3181
    :cond_0
    :goto_0
    return-void

    .line 3180
    :cond_1
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks;Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method final handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "config"

    .prologue
    .line 3133
    const/4 v1, 0x0

    .line 3135
    .local v1, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks;>;"
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 3136
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v4, :cond_1

    .line 3137
    iget-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3138
    iget-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3140
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3143
    :cond_1
    if-nez p1, :cond_3

    .line 3144
    monitor-exit v3

    .line 3169
    :cond_2
    :goto_0
    return-void

    .line 3150
    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;)Z

    .line 3152
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v4, :cond_4

    .line 3153
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 3155
    :cond_4
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3156
    monitor-exit v3

    goto :goto_0

    .line 3161
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3158
    :cond_5
    :try_start_1
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 3160
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Landroid/app/ActivityThread;->collectComponentCallbacksLocked(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3161
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3163
    if-eqz v1, :cond_2

    .line 3164
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3165
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 3166
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks;

    invoke-direct {p0, v3, p1}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks;Landroid/content/res/Configuration;)V

    .line 3165
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method final handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 5
    .parameter "cmd"
    .parameter "packages"

    .prologue
    .line 3204
    const/4 v0, 0x0

    .line 3205
    .local v0, hasPkgInfo:Z
    if-eqz p2, :cond_2

    .line 3206
    array-length v3, p2

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 3208
    if-nez v0, :cond_0

    .line 3210
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 3211
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3212
    const/4 v0, 0x1

    .line 3220
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3221
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3206
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3214
    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 3215
    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3216
    const/4 v0, 0x1

    goto :goto_1

    .line 3224
    .end local v1           #i:I
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2
    invoke-static {p1, p2, v0}, Landroid/app/ContextImpl$ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    .line 3226
    return-void
.end method

.method final handleLowMemory()V
    .locals 7

    .prologue
    .line 3229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3232
    .local v1, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks;>;"
    iget-object v4, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 3233
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, v5, v6}, Landroid/app/ActivityThread;->collectComponentCallbacksLocked(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3234
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3236
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3237
    .local v0, N:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3238
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentCallbacks;

    invoke-interface {p0}, Landroid/content/ComponentCallbacks;->onLowMemory()V

    .line 3237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3234
    .end local v0           #N:I
    .end local v2           #i:I
    .restart local p0
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 3242
    .end local p0
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_1

    .line 3243
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    move-result v3

    .line 3244
    .local v3, sqliteReleased:I
    const v4, 0x124fb

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3248
    .end local v3           #sqliteReleased:I
    :cond_1
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 3250
    const-string v4, "mem"

    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 3251
    return-void
.end method

.method final handleProfilerControl(ZLandroid/app/ActivityThread$ProfilerControlData;)V
    .locals 7
    .parameter "start"
    .parameter "pcd"

    .prologue
    const-string v6, "Failure closing profile fd"

    const-string v5, "ActivityThread"

    .line 3184
    if-eqz p1, :cond_0

    .line 3186
    :try_start_0
    iget-object v1, p2, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    iget-object v2, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/high16 v3, 0x80

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3193
    :try_start_1
    iget-object v1, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3201
    :goto_0
    return-void

    .line 3188
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3189
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profiling failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3193
    :try_start_3
    iget-object v1, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3194
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 3195
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ActivityThread"

    const-string v1, "Failure closing profile fd"

    :goto_1
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3192
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 3193
    :try_start_4
    iget-object v2, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3192
    :goto_2
    throw v1

    .line 3199
    :cond_0
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    goto :goto_0

    .line 3194
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 3195
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3194
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 3195
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "ActivityThread"

    const-string v1, "Failure closing profile fd"

    goto :goto_1
.end method

.method final handleResumeActivity(Landroid/os/IBinder;ZZ)V
    .locals 11
    .parameter "token"
    .parameter "clearHide"
    .parameter "isForward"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2265
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2267
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v4

    .line 2269
    .local v4, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v4, :cond_8

    .line 2270
    iget-object v0, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 2277
    .local v0, a:Landroid/app/Activity;
    if-eqz p3, :cond_5

    const/16 v7, 0x100

    move v2, v7

    .line 2283
    .local v2, forwardBit:I
    :goto_0
    iget-boolean v7, v0, Landroid/app/Activity;->mStartedActivity:Z

    if-nez v7, :cond_6

    move v5, v9

    .line 2284
    .local v5, willBeVisible:Z
    :goto_1
    if-nez v5, :cond_0

    .line 2286
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->willActivityBeVisible(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 2291
    :cond_0
    :goto_2
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-nez v7, :cond_7

    iget-boolean v7, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v7, :cond_7

    if-eqz v5, :cond_7

    .line 2292
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    iput-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 2293
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 2294
    .local v1, decor:Landroid/view/View;
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2295
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    .line 2296
    .local v6, wm:Landroid/view/ViewManager;
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2297
    .local v3, l:Landroid/view/WindowManager$LayoutParams;
    iput-object v1, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2298
    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2299
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/2addr v7, v2

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2300
    iget-boolean v7, v0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v7, :cond_1

    .line 2301
    iput-boolean v9, v0, Landroid/app/Activity;->mWindowAdded:Z

    .line 2302
    invoke-interface {v6, v1, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2316
    .end local v1           #decor:Landroid/view/View;
    .end local v3           #l:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #wm:Landroid/view/ViewManager;
    :cond_1
    :goto_3
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v7, v7, Landroid/app/Activity;->mFinished:Z

    if-nez v7, :cond_4

    if-eqz v5, :cond_4

    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v7, v7, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v7, :cond_4

    iget-boolean v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-nez v7, :cond_4

    .line 2318
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v7, :cond_2

    .line 2321
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v7, v8}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks;Landroid/content/res/Configuration;)V

    .line 2322
    iput-object v10, v4, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 2326
    :cond_2
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2327
    .restart local v3       #l:Landroid/view/WindowManager$LayoutParams;
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v7, v7, 0x100

    if-eq v7, v2, :cond_3

    .line 2330
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v7, v7, -0x101

    or-int/2addr v7, v2

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2333
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v7, v7, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v7, :cond_3

    .line 2334
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    .line 2335
    .restart local v6       #wm:Landroid/view/ViewManager;
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 2336
    .restart local v1       #decor:Landroid/view/View;
    invoke-interface {v6, v1, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2339
    .end local v1           #decor:Landroid/view/View;
    .end local v6           #wm:Landroid/view/ViewManager;
    :cond_3
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v9, v7, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 2340
    iget v7, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 2341
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v7, v7, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v7, :cond_4

    .line 2342
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->makeVisible()V

    .line 2346
    .end local v3           #l:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    iget-object v7, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2347
    iput-object v4, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2350
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v7

    new-instance v8, Landroid/app/ActivityThread$Idler;

    invoke-direct {v8, p0, v10}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    invoke-virtual {v7, v8}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2361
    .end local v0           #a:Landroid/app/Activity;
    .end local v2           #forwardBit:I
    .end local v5           #willBeVisible:Z
    :goto_4
    return-void

    .restart local v0       #a:Landroid/app/Activity;
    :cond_5
    move v2, v8

    .line 2277
    goto/16 :goto_0

    .restart local v2       #forwardBit:I
    :cond_6
    move v5, v8

    .line 2283
    goto/16 :goto_1

    .line 2308
    .restart local v5       #willBeVisible:Z
    :cond_7
    if-nez v5, :cond_1

    .line 2311
    iput-boolean v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    goto :goto_3

    .line 2356
    .end local v0           #a:Landroid/app/Activity;
    .end local v2           #forwardBit:I
    .end local v5           #willBeVisible:Z
    :cond_8
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, p1, v8, v9}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 2358
    :catch_0
    move-exception v7

    goto :goto_4

    .line 2288
    .restart local v0       #a:Landroid/app/Activity;
    .restart local v2       #forwardBit:I
    .restart local v5       #willBeVisible:Z
    :catch_1
    move-exception v7

    goto/16 :goto_2
.end method

.method public installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1493
    monitor-enter p0

    .line 1494
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1495
    .local v0, context:Landroid/app/ContextImpl;
    new-instance v1, Landroid/app/LoadedApk;

    const-string v2, "android"

    invoke-direct {v1, p0, v2, v0, p1}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 1496
    monitor-exit p0

    .line 1497
    return-void

    .line 1496
    .end local v0           #context:Landroid/app/ContextImpl;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final installSystemProviders(Ljava/util/List;)V
    .locals 1
    .parameter "providers"

    .prologue
    .line 3797
    if-eqz p1, :cond_0

    .line 3798
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 3801
    :cond_0
    return-void
.end method

.method public isProfiling()Z
    .locals 1

    .prologue
    .line 1456
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 1
    .parameter "token"
    .parameter "finishing"

    .prologue
    const/4 v0, 0x0

    .line 2714
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    return-object v0
.end method

.method public final performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 4
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1831
    .local p2, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1832
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    .line 1833
    iget-boolean v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move v1, v2

    .line 1834
    .local v1, resumed:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1835
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 1837
    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 1838
    if-eqz v1, :cond_1

    .line 1839
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 1842
    .end local v1           #resumed:Z
    :cond_1
    return-void

    .line 1833
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method final performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZ)Landroid/os/Bundle;
    .locals 11
    .parameter "r"
    .parameter "finished"
    .parameter "saveState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2448
    iget-boolean v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v6, :cond_1

    .line 2449
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-eqz v6, :cond_0

    .line 2453
    const/4 v6, 0x0

    .line 2504
    .end local p0
    :goto_0
    return-object v6

    .line 2455
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Performing pause of activity that is not resumed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2458
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v6, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2460
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    const/4 v4, 0x0

    .line 2461
    .local v4, state:Landroid/os/Bundle;
    if-eqz p2, :cond_2

    .line 2462
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v10, v6, Landroid/app/Activity;->mFinished:Z

    .line 2466
    :cond_2
    :try_start_0
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_3

    if-eqz p3, :cond_3

    .line 2467
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Landroid/app/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2468
    .end local v4           #state:Landroid/os/Bundle;
    .local v5, state:Landroid/os/Bundle;
    :try_start_1
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v5}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2469
    iput-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/app/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 2472
    .end local v5           #state:Landroid/os/Bundle;
    .restart local v4       #state:Landroid/os/Bundle;
    :cond_3
    :try_start_2
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/app/Activity;->mCalled:Z

    .line 2473
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 2474
    const/16 v6, 0x7545

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2475
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mCalled:Z

    if-nez v6, :cond_4

    .line 2476
    new-instance v6, Landroid/app/SuperNotCalledException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not call through to super.onPause()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Landroid/app/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2481
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 2482
    .local v0, e:Landroid/app/SuperNotCalledException;
    :goto_1
    throw v0

    .line 2484
    .end local v0           #e:Landroid/app/SuperNotCalledException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 2485
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2486
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to pause activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2492
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    iput-boolean v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 2496
    iget-object v6, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    monitor-enter v6

    .line 2497
    :try_start_3
    iget-object v7, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2498
    .local v2, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2499
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 2500
    .local v3, size:I
    :goto_3
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_4
    if-ge v1, v3, :cond_6

    .line 2501
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/OnActivityPausedListener;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-interface {p0, v6}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    .line 2500
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2498
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    .end local v3           #size:I
    .restart local p0
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .restart local v2       #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :cond_5
    move v3, v9

    .line 2499
    goto :goto_3

    .end local p0
    .restart local v1       #i:I
    .restart local v3       #size:I
    :cond_6
    move-object v6, v4

    .line 2504
    goto/16 :goto_0

    .line 2484
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    .end local v3           #size:I
    .end local v4           #state:Landroid/os/Bundle;
    .restart local v5       #state:Landroid/os/Bundle;
    .restart local p0
    :catch_2
    move-exception v6

    move-object v0, v6

    move-object v4, v5

    .end local v5           #state:Landroid/os/Bundle;
    .restart local v4       #state:Landroid/os/Bundle;
    goto :goto_2

    .line 2481
    .end local v4           #state:Landroid/os/Bundle;
    .restart local v5       #state:Landroid/os/Bundle;
    :catch_3
    move-exception v6

    move-object v0, v6

    move-object v4, v5

    .end local v5           #state:Landroid/os/Bundle;
    .restart local v4       #state:Landroid/os/Bundle;
    goto :goto_1
.end method

.method final performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;
    .locals 2
    .parameter "token"
    .parameter "finished"
    .parameter "saveState"

    .prologue
    .line 2442
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2443
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZ)Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final performRestartActivity(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 2624
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2625
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_0

    .line 2626
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    .line 2627
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2629
    :cond_0
    return-void
.end method

.method public final performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 5
    .parameter "token"
    .parameter "clearHide"

    .prologue
    const/4 v3, 0x0

    .line 2225
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2228
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_3

    .line 2229
    if-eqz p2, :cond_0

    .line 2230
    iput-boolean v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 2231
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v2, Landroid/app/Activity;->mStartedActivity:Z

    .line 2234
    :cond_0
    :try_start_0
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 2235
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 2236
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 2238
    :cond_1
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 2239
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 2240
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 2242
    :cond_2
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performResume()V

    .line 2244
    const/16 v2, 0x7546

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2247
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 2248
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2249
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2259
    :cond_3
    return-object v1

    .line 2250
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2251
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2252
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resume activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method final performStopActivity(Landroid/os/IBinder;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 2508
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2509
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;Z)V

    .line 2510
    return-void
.end method

.method final performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 2437
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 2438
    return-void
.end method

.method public registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 1535
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 1536
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1537
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-nez v0, :cond_0

    .line 1538
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1539
    .restart local v0       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1542
    monitor-exit v1

    .line 1543
    return-void

    .line 1542
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final releaseProvider(Landroid/content/IContentProvider;)Z
    .locals 7
    .parameter "provider"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3542
    if-nez p1, :cond_0

    move v3, v5

    .line 3564
    :goto_0
    return v3

    .line 3545
    :cond_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3546
    .local v0, jBinder:Landroid/os/IBinder;
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3547
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderRefCount;

    .line 3548
    .local v2, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v2, :cond_1

    .line 3550
    monitor-exit v3

    move v3, v5

    goto :goto_0

    .line 3552
    :cond_1
    iget v4, v2, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    sub-int/2addr v4, v6

    iput v4, v2, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    .line 3553
    iget v4, v2, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    if-nez v4, :cond_2

    .line 3559
    iget-object v4, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v5, 0x83

    invoke-virtual {v4, v5, p1}, Landroid/app/ActivityThread$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3560
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v4, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 3563
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    monitor-exit v3

    move v3, v6

    .line 3564
    goto :goto_0

    .line 3563
    .end local v2           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method final removeDeadProvider(Ljava/lang/String;Landroid/content/IContentProvider;)V
    .locals 6
    .parameter "name"
    .parameter "provider"

    .prologue
    .line 3626
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3627
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3628
    .local v0, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v3, v0, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v3}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 3629
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing dead content provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3631
    .local v1, removed:Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v1, :cond_0

    .line 3632
    iget-object v3, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v3}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3635
    .end local v1           #removed:Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_0
    monitor-exit v2

    .line 3636
    return-void

    .line 3635
    .end local v0           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method final removeDeadProviderLocked(Ljava/lang/String;Landroid/content/IContentProvider;)V
    .locals 5
    .parameter "name"
    .parameter "provider"

    .prologue
    .line 3639
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3640
    .local v0, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v2, v0, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 3641
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing dead content provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3643
    .local v1, removed:Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v1, :cond_0

    .line 3644
    iget-object v2, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3647
    .end local v1           #removed:Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_0
    return-void
.end method

.method public final removeProviderLocked(Landroid/content/IContentProvider;)Ljava/lang/String;
    .locals 6
    .parameter "provider"

    .prologue
    .line 3592
    if-nez p1, :cond_0

    .line 3593
    const/4 v5, 0x0

    .line 3622
    :goto_0
    return-object v5

    .line 3595
    :cond_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 3597
    .local v4, providerBinder:Landroid/os/IBinder;
    const/4 v2, 0x0

    .line 3600
    .local v2, name:Ljava/lang/String;
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3601
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ProviderClientRecord;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3602
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3603
    .local v3, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v5, v3, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v5}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3604
    .local v1, myBinder:Landroid/os/IBinder;
    if-ne v1, v4, :cond_1

    .line 3606
    iget-object v5, v3, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    if-eqz v5, :cond_2

    move-object v5, v2

    .line 3608
    goto :goto_0

    .line 3613
    :cond_2
    const/4 v5, 0x0

    invoke-interface {v1, v3, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3614
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3616
    if-nez v2, :cond_1

    .line 3617
    iget-object v2, v3, Landroid/app/ActivityThread$ProviderClientRecord;->mName:Ljava/lang/String;

    goto :goto_1

    .end local v1           #myBinder:Landroid/os/IBinder;
    .end local v3           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_3
    move-object v5, v2

    .line 3622
    goto :goto_0
.end method

.method public final resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 3
    .parameter "intent"

    .prologue
    .line 1556
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1558
    .local v0, aInfo:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 1560
    const/4 v1, -0x2

    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 1563
    :cond_0
    return-object v0
.end method

.method final scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "who"
    .parameter "what"

    .prologue
    .line 1633
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>(Landroid/app/ActivityThread$1;)V

    .line 1634
    .local v0, cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    .line 1635
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    .line 1636
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    .line 1637
    const/16 v1, 0x77

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 1638
    return-void
.end method

.method scheduleGcIdler()V
    .locals 2

    .prologue
    .line 1507
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-nez v0, :cond_0

    .line 1508
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 1509
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1511
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 1512
    return-void
.end method

.method public final sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 2
    .parameter "token"
    .parameter "id"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1603
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1604
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 1605
    return-void
.end method

.method public final startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/Object;)Landroid/app/Activity;
    .locals 2
    .parameter "parent"
    .parameter "id"
    .parameter "intent"
    .parameter "activityInfo"
    .parameter "token"
    .parameter "state"
    .parameter "lastNonConfigurationInstance"

    .prologue
    .line 1569
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 1570
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 1571
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 1572
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 1573
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 1574
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 1575
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 1576
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1577
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstance:Ljava/lang/Object;

    .line 1590
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 1547
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 1548
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1549
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-eqz v0, :cond_0

    .line 1550
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1552
    :cond_0
    monitor-exit v1

    .line 1553
    return-void

    .line 1552
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method unscheduleGcIdler()V
    .locals 2

    .prologue
    .line 1515
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_0

    .line 1516
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 1517
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1519
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 1520
    return-void
.end method
