.class public Landroid/app/Activity;
.super Landroid/view/ContextThemeWrapper;
.source "Activity.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Activity$1;,
        Landroid/app/Activity$ManagedCursor;,
        Landroid/app/Activity$ManagedDialog;
    }
.end annotation


# static fields
.field public static final DEFAULT_KEYS_DIALER:I = 0x1

.field public static final DEFAULT_KEYS_DISABLE:I = 0x0

.field public static final DEFAULT_KEYS_SEARCH_GLOBAL:I = 0x4

.field public static final DEFAULT_KEYS_SEARCH_LOCAL:I = 0x3

.field public static final DEFAULT_KEYS_SHORTCUT:I = 0x2

.field protected static final FOCUSED_STATE_SET:[I = null

.field public static final RESULT_CANCELED:I = 0x0

.field public static final RESULT_FIRST_USER:I = 0x1

.field public static final RESULT_OK:I = -0x1

.field private static final SAVED_DIALOGS_TAG:Ljava/lang/String; = "android:savedDialogs"

.field private static final SAVED_DIALOG_ARGS_KEY_PREFIX:Ljava/lang/String; = "android:dialog_args_"

.field private static final SAVED_DIALOG_IDS_KEY:Ljava/lang/String; = "android:savedDialogIds"

.field private static final SAVED_DIALOG_KEY_PREFIX:Ljava/lang/String; = "android:dialog_"

.field private static final TAG:Ljava/lang/String; = "Activity"

.field private static final WINDOW_HIERARCHY_TAG:Ljava/lang/String; = "android:viewHierarchyState"

.field private static sInstanceCount:J


# instance fields
.field mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mApplication:Landroid/app/Application;

.field mCalled:Z

.field private mComponent:Landroid/content/ComponentName;

.field mConfigChangeFlags:I

.field mCurrentConfig:Landroid/content/res/Configuration;

.field mDecor:Landroid/view/View;

.field private mDefaultKeyMode:I

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field mEmbeddedID:Ljava/lang/String;

.field mFinished:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIdent:I

.field private mInstrumentation:Landroid/app/Instrumentation;

.field mIntent:Landroid/content/Intent;

.field mLastNonConfigurationChildInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mLastNonConfigurationInstance:Ljava/lang/Object;

.field mMainThread:Landroid/app/ActivityThread;

.field private final mManagedCursors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity$ManagedCursor;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedDialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Activity$ManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field mParent:Landroid/app/Activity;

.field mResultCode:I

.field mResultData:Landroid/content/Intent;

.field mResumed:Z

.field private mSearchManager:Landroid/app/SearchManager;

.field mStartedActivity:Z

.field private mStopped:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleReady:Z

.field private mToken:Landroid/os/IBinder;

.field private mUiThread:Ljava/lang/Thread;

.field mVisibleFromClient:Z

.field mVisibleFromServer:Z

.field private mWindow:Landroid/view/Window;

.field mWindowAdded:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 619
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/app/Activity;->sInstanceCount:J

    .line 689
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009c

    aput v2, v0, v1

    sput-object v0, Landroid/app/Activity;->FOCUSED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 606
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;-><init>()V

    .line 658
    iput-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 659
    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 660
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 664
    iput v1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    .line 681
    iput v1, p0, Landroid/app/Activity;->mResultCode:I

    .line 682
    iput-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 684
    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 686
    iput v1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 687
    iput-object v2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 692
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "dialogId"
    .parameter "state"
    .parameter "args"

    .prologue
    .line 894
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 895
    .local v0, dialog:Landroid/app/Dialog;
    if-nez v0, :cond_0

    .line 896
    const/4 v1, 0x0

    .line 899
    :goto_0
    return-object v1

    .line 898
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    move-object v1, v0

    .line 899
    goto :goto_0
.end method

.method private ensureSearchManager()V
    .locals 2

    .prologue
    .line 3587
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_0

    .line 3592
    :goto_0
    return-void

    .line 3591
    :cond_0
    new-instance v0, Landroid/app/SearchManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/SearchManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    goto :goto_0
.end method

.method public static getInstanceCount()J
    .locals 2

    .prologue
    .line 708
    sget-wide v0, Landroid/app/Activity;->sInstanceCount:J

    return-wide v0
.end method

.method private final launchFromHome()Z
    .locals 2

    .prologue
    .line 1980
    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private missingDialog(I)Ljava/lang/IllegalArgumentException;
    .locals 3
    .parameter "id"

    .prologue
    .line 2661
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no dialog with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was ever "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "shown via Activity#showDialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private overwriteOnBackPressed()Z
    .locals 1

    .prologue
    .line 1976
    const/4 v0, 0x0

    return v0
.end method

.method private restoreManagedDialogs(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 867
    const-string v7, "android:savedDialogs"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 868
    .local v0, b:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 891
    :cond_0
    return-void

    .line 872
    :cond_1
    const-string v7, "android:savedDialogIds"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 873
    .local v4, ids:[I
    array-length v6, v4

    .line 874
    .local v6, numDialogs:I
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7, v6}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 875
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 876
    aget v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 877
    .local v1, dialogId:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 878
    .local v2, dialogState:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 881
    new-instance v5, Landroid/app/Activity$ManagedDialog;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$1;)V

    .line 882
    .local v5, md:Landroid/app/Activity$ManagedDialog;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 883
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2, v7}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 884
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_2

    .line 885
    iget-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 886
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    iget-object v9, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v8, v9}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 887
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 875
    .end local v5           #md:Landroid/app/Activity$ManagedDialog;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private saveManagedDialogs(Landroid/os/Bundle;)V
    .locals 8
    .parameter "outState"

    .prologue
    .line 1108
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v6, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1113
    .local v5, numDialogs:I
    if-eqz v5, :cond_0

    .line 1117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1119
    .local v0, dialogState:Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    new-array v2, v6, [I

    .line 1122
    .local v2, ids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 1123
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1124
    .local v3, key:I
    aput v3, v2, v1

    .line 1125
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedDialog;

    .line 1126
    .local v4, md:Landroid/app/Activity$ManagedDialog;
    invoke-static {v3}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1127
    iget-object v6, v4, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 1128
    invoke-static {v3}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1122
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1132
    .end local v3           #key:I
    .end local v4           #md:Landroid/app/Activity$ManagedDialog;
    :cond_3
    const-string v6, "android:savedDialogIds"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1133
    const-string v6, "android:savedDialogs"

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static savedDialogArgsKeyFor(I)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:dialog_args_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static savedDialogKeyFor(I)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:dialog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;)V
    .locals 12
    .parameter "intent"
    .parameter "requestCode"
    .parameter "fillInIntent"
    .parameter "flagsMask"
    .parameter "flagsValues"
    .parameter "activity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 2948
    const/4 v5, 0x0

    .line 2949
    .local v5, resolvedType:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 2950
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 2952
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v7, v0

    move-object v3, p1

    move-object v4, p3

    move v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-interface/range {v1 .. v10}, Landroid/app/IActivityManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;III)I

    move-result v11

    .line 2956
    .local v11, result:I
    const/4 v1, -0x6

    if-ne v11, v1, :cond_2

    .line 2957
    new-instance v1, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v1}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2960
    .end local v11           #result:I
    :catch_0
    move-exception v1

    .line 2962
    :goto_0
    if-ltz p2, :cond_1

    .line 2970
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 2972
    :cond_1
    return-void

    .line 2959
    .restart local v11       #result:I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v11, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 1721
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1722
    return-void
.end method

.method final attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "context"
    .parameter "aThread"
    .parameter "instr"
    .parameter "token"
    .parameter "ident"
    .parameter "application"
    .parameter "intent"
    .parameter "info"
    .parameter "title"
    .parameter "parent"
    .parameter "id"
    .parameter "lastNonConfigurationInstance"
    .parameter
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/ActivityThread;",
            "Landroid/app/Instrumentation;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3815
    .local p13, lastNonConfigurationChildInstances:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 3817
    invoke-static {p0}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 3818
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 3819
    iget v2, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v2, :cond_0

    .line 3820
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v3, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3822
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    .line 3824
    iput-object p2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 3825
    iput-object p3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 3826
    iput-object p4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 3827
    iput p5, p0, Landroid/app/Activity;->mIdent:I

    .line 3828
    iput-object p6, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    .line 3829
    iput-object p7, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 3830
    invoke-virtual {p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 3831
    iput-object p8, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 3832
    iput-object p9, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 3833
    move-object/from16 v0, p10

    move-object v1, p0

    iput-object v0, v1, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 3834
    move-object/from16 v0, p11

    move-object v1, p0

    iput-object v0, v1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 3835
    move-object/from16 v0, p12

    move-object v1, p0

    iput-object v0, v1, Landroid/app/Activity;->mLastNonConfigurationInstance:Ljava/lang/Object;

    .line 3836
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Landroid/app/Activity;->mLastNonConfigurationChildInstances:Ljava/util/HashMap;

    .line 3838
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3839
    iget-object v2, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 3840
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 3842
    :cond_1
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    .line 3843
    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 3844
    return-void
.end method

.method final attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Landroid/content/res/Configuration;)V
    .locals 15
    .parameter "context"
    .parameter "aThread"
    .parameter "instr"
    .parameter "token"
    .parameter "application"
    .parameter "intent"
    .parameter "info"
    .parameter "title"
    .parameter "parent"
    .parameter "id"
    .parameter "lastNonConfigurationInstance"
    .parameter "config"

    .prologue
    .line 3804
    const/4 v5, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v14, p12

    invoke-virtual/range {v0 .. v14}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;Landroid/content/res/Configuration;)V

    .line 3806
    return-void
.end method

.method public closeContextMenu()V
    .locals 2

    .prologue
    .line 2468
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 2469
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 2

    .prologue
    .line 2409
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 2410
    return-void
.end method

.method public createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 11
    .parameter "requestCode"
    .parameter "data"
    .parameter "flags"

    .prologue
    const/4 v10, 0x0

    .line 3431
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3433
    .local v2, packageName:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    :goto_0
    iget-object v4, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v7, 0x0

    move v5, p1

    move-object v6, p2

    move v8, p3

    invoke-interface/range {v0 .. v8}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;I)Landroid/content/IIntentSender;

    move-result-object v9

    .line 3438
    .local v9, target:Landroid/content/IIntentSender;
    if-eqz v9, :cond_1

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v9}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    .line 3442
    .end local v9           #target:Landroid/content/IIntentSender;
    :goto_1
    return-object v0

    .line 3433
    :cond_0
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .restart local v9       #target:Landroid/content/IIntentSender;
    :cond_1
    move-object v0, v10

    .line 3438
    goto :goto_1

    .line 3439
    .end local v9           #target:Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    move-object v0, v10

    .line 3442
    goto :goto_1
.end method

.method public final dismissDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 2645
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 2646
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 2649
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 2650
    .local v0, md:Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_1

    .line 2651
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 2653
    :cond_1
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2654
    return-void
.end method

.method dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 0
    .parameter "who"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3968
    if-nez p1, :cond_0

    .line 3969
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3971
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 2132
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2133
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2134
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2135
    const/4 v2, 0x1

    .line 2139
    :goto_0
    return v2

    .line 2137
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2138
    .local v0, decor:Landroid/view/View;
    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2139
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, p0, v2, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 2182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2183
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2185
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2186
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_1

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_1

    move v0, v5

    .line 2188
    .local v0, isFullScreen:Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 2190
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2191
    .local v2, title:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2192
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2195
    :cond_0
    return v5

    .line 2186
    .end local v0           #isFullScreen:Z
    .end local v2           #title:Ljava/lang/CharSequence;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2155
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2157
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2158
    const/4 v0, 0x1

    .line 2160
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2174
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2175
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2176
    const/4 v0, 0x1

    .line 2178
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 1677
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 3303
    iget-object v2, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 3306
    monitor-enter p0

    .line 3307
    :try_start_0
    iget v0, p0, Landroid/app/Activity;->mResultCode:I

    .line 3308
    .local v0, resultCode:I
    iget-object v1, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 3309
    .local v1, resultData:Landroid/content/Intent;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3312
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, v0, v1}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3314
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/Activity;->mFinished:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3322
    .end local v0           #resultCode:I
    .end local v1           #resultData:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 3309
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3320
    :cond_1
    iget-object v2, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v2, p0}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    goto :goto_0

    .line 3316
    .restart local v0       #resultCode:I
    .restart local v1       #resultData:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public finishActivity(I)V
    .locals 3
    .parameter "requestCode"

    .prologue
    .line 3347
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 3349
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3357
    :goto_0
    return-void

    .line 3355
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    goto :goto_0

    .line 3351
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 3
    .parameter "child"
    .parameter "requestCode"

    .prologue
    .line 3369
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p2}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3374
    :goto_0
    return-void

    .line 3371
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 3334
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3335
    return-void
.end method

.method final getActivityToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 3847
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public final getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 3247
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3249
    :goto_0
    return-object v1

    .line 3248
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3249
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3225
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3227
    :goto_0
    return-object v1

    .line 3226
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3227
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 1419
    iget v0, p0, Landroid/app/Activity;->mConfigChangeFlags:I

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 3566
    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getLastNonConfigurationChildInstances()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1508
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationChildInstances:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 2830
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLocalClassName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3549
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3550
    .local v2, pkg:Ljava/lang/String;
    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 3551
    .local v0, cls:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 3552
    .local v1, packageLen:I
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1

    :cond_0
    move-object v3, v0

    .line 3556
    :goto_0
    return-object v3

    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 2837
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getParent()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "mode"

    .prologue
    .line 3583
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedOrientation()I
    .locals 2

    .prologue
    .line 3478
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 3480
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getRequestedOrientation(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3488
    :goto_0
    return v0

    .line 3486
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    goto :goto_0

    .line 3482
    :catch_0
    move-exception v0

    .line 3488
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 3596
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3597
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System services not available to Activities before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3601
    :cond_0
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3602
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    .line 3607
    :goto_0
    return-object v0

    .line 3603
    :cond_1
    const-string/jumbo v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3604
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 3605
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    goto :goto_0

    .line 3607
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getTaskId()I
    .locals 4

    .prologue
    .line 3499
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3502
    :goto_0
    return v1

    .line 3501
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3502
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3641
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleColor()I
    .locals 1

    .prologue
    .line 3645
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    return v0
.end method

.method public final getVolumeControlStream()I
    .locals 1

    .prologue
    .line 3764
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .locals 2

    .prologue
    .line 783
    invoke-super {p0}, Landroid/view/ContextThemeWrapper;->getWallpaperDesiredMinimumHeight()I

    move-result v0

    .line 784
    .local v0, height:I
    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .locals 2

    .prologue
    .line 777
    invoke-super {p0}, Landroid/view/ContextThemeWrapper;->getWallpaperDesiredMinimumWidth()I

    move-result v0

    .line 778
    .local v0, width:I
    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public hasWindowFocus()Z
    .locals 3

    .prologue
    .line 2112
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2113
    .local v1, w:Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 2114
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2115
    .local v0, d:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2116
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    .line 2119
    .end local v0           #d:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isChild()Z
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinishing()Z
    .locals 1

    .prologue
    .line 3294
    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    return v0
.end method

.method public final isResumed()Z
    .locals 1

    .prologue
    .line 3960
    iget-boolean v0, p0, Landroid/app/Activity;->mResumed:Z

    return v0
.end method

.method public isTaskRoot()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3514
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    move v1, v5

    .line 3517
    :goto_0
    return v1

    :cond_0
    move v1, v4

    .line 3514
    goto :goto_0

    .line 3516
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v4

    .line 3517
    goto :goto_0
.end method

.method makeVisible()V
    .locals 3

    .prologue
    .line 3274
    iget-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v1, :cond_0

    .line 3275
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 3276
    .local v0, wm:Landroid/view/ViewManager;
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3277
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 3279
    .end local v0           #wm:Landroid/view/ViewManager;
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3280
    return-void
.end method

.method public managedCommitUpdates(Landroid/database/Cursor;)V
    .locals 7
    .parameter "c"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1606
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1607
    :try_start_0
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1608
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1609
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 1610
    .local v2, mc:Landroid/app/Activity$ManagedCursor;
    #getter for: Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->access$100(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 1611
    invoke-interface {p1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 1612
    const/4 v4, 0x1

    #setter for: Landroid/app/Activity$ManagedCursor;->mUpdated:Z
    invoke-static {v2, v4}, Landroid/app/Activity$ManagedCursor;->access$202(Landroid/app/Activity$ManagedCursor;Z)Z

    .line 1613
    monitor-exit v3

    return-void

    .line 1608
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1616
    .end local v2           #mc:Landroid/app/Activity$ManagedCursor;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cursor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not currently managed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1618
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "sortOrder"

    .prologue
    .line 1549
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1550
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1551
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 1553
    :cond_0
    return-object v6
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1580
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1581
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1582
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 1584
    :cond_0
    return-object v6
.end method

.method public moveTaskToBack(Z)Z
    .locals 2
    .parameter "nonRoot"

    .prologue
    .line 3534
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3539
    :goto_0
    return v0

    .line 3536
    :catch_0
    move-exception v0

    .line 3539
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3400
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 2843
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 2844
    invoke-super {p0, p1, p2, p3}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 2853
    :goto_0
    return-void

    .line 2847
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2851
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 2848
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 2091
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1953
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1954
    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 3661
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1396
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1398
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1402
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 2051
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2489
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2490
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 2492
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 2503
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2504
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 2506
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 814
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 816
    iput-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    .line 817
    return-void

    :cond_0
    move v0, v2

    .line 814
    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 2426
    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1293
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2513
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 2543
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 2327
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2328
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 2330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 2218
    if-nez p1, :cond_0

    .line 2219
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 2221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 2206
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 12
    .parameter "outBitmap"
    .parameter "canvas"

    .prologue
    .line 1239
    iget-object v9, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-nez v9, :cond_0

    .line 1240
    const/4 v9, 0x0

    .line 1272
    :goto_0
    return v9

    .line 1243
    :cond_0
    const/4 v3, 0x0

    .line 1244
    .local v3, paddingLeft:I
    const/4 v4, 0x0

    .line 1245
    .local v4, paddingRight:I
    const/4 v5, 0x0

    .line 1246
    .local v5, paddingTop:I
    const/4 v2, 0x0

    .line 1250
    .local v2, paddingBottom:I
    iget-object v6, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1251
    .local v6, top:Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 1252
    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1253
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isFitsSystemWindowsFlagSet()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1254
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 1255
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 1256
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 1257
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 1262
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget-object v9, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v9, v3

    sub-int v8, v9, v4

    .line 1263
    .local v8, visibleWidth:I
    iget-object v9, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v9, v5

    sub-int v7, v9, v2

    .line 1265
    .local v7, visibleHeight:I
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 1266
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v8

    div-float/2addr v9, v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v7

    div-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1268
    neg-int v9, v3

    int-to-float v9, v9

    neg-int v10, v5

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1269
    iget-object v9, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v9, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1270
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 1272
    const/4 v9, 0x1

    goto :goto_0

    .line 1251
    .end local v7           #visibleHeight:I
    .end local v8           #visibleWidth:I
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter "name"
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 3791
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    .line 1347
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    .line 1350
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v5, :cond_2

    .line 1351
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1352
    .local v4, numDialogs:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1353
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedDialog;

    .line 1354
    .local v2, md:Landroid/app/Activity$ManagedDialog;
    iget-object v5, v2, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1355
    iget-object v5, v2, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 1352
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1358
    .end local v2           #md:Landroid/app/Activity$ManagedDialog;
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 1362
    .end local v1           #i:I
    .end local v4           #numDialogs:I
    :cond_2
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1363
    :try_start_0
    iget-object v6, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1364
    .local v3, numCursors:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1365
    iget-object v6, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedCursor;

    .line 1366
    .local v0, c:Landroid/app/Activity$ManagedCursor;
    if-eqz v0, :cond_3

    .line 1367
    #getter for: Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Landroid/app/Activity$ManagedCursor;->access$100(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1364
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1370
    .end local v0           #c:Landroid/app/Activity$ManagedCursor;
    :cond_4
    iget-object v6, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1371
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1374
    iget-object v5, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v5, :cond_5

    .line 1375
    iget-object v5, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {v5}, Landroid/app/SearchManager;->stopSearch()V

    .line 1377
    :cond_5
    return-void

    .line 1371
    .end local v1           #i:I
    .end local v3           #numCursors:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 2101
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1841
    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    .line 1842
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    .line 1844
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    :cond_0
    :goto_0
    move v4, v6

    .line 1897
    :goto_1
    return v4

    .line 1846
    :cond_1
    invoke-direct {p0}, Landroid/app/Activity;->overwriteOnBackPressed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1847
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 1853
    :cond_2
    iget v4, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    if-nez v4, :cond_3

    move v4, v7

    .line 1854
    goto :goto_1

    .line 1855
    :cond_3
    iget v4, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    if-ne v4, v5, :cond_5

    .line 1856
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7, p1, p2, v5}, Landroid/view/Window;->performPanelShortcut(IILandroid/view/KeyEvent;I)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v6

    .line 1858
    goto :goto_1

    :cond_4
    move v4, v7

    .line 1860
    goto :goto_1

    .line 1863
    :cond_5
    const/4 v0, 0x0

    .line 1865
    .local v0, clearSpannable:Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1866
    :cond_6
    const/4 v0, 0x1

    .line 1867
    const/4 v1, 0x0

    .line 1892
    .local v1, handled:Z
    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 1893
    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1894
    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1895
    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v4, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_8
    move v4, v1

    .line 1897
    goto :goto_1

    .line 1869
    .end local v1           #handled:Z
    :cond_9
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v8, v5, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1871
    .restart local v1       #handled:Z
    if-eqz v1, :cond_7

    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 1874
    iget-object v4, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1875
    .local v3, str:Ljava/lang/String;
    const/4 v0, 0x1

    .line 1877
    iget v4, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 1879
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1880
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1881
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1884
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0, v3, v7, v8, v7}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 1887
    :pswitch_3
    invoke-virtual {p0, v3, v7, v8, v6}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 1877
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1907
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 1944
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1926
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 1928
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1930
    invoke-direct {p0}, Landroid/app/Activity;->overwriteOnBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1931
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1932
    :cond_0
    const/4 v0, 0x1

    .line 1935
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1523
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1524
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 5
    .parameter "featureId"
    .parameter "item"

    .prologue
    const v4, 0xc350

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2260
    sparse-switch p1, :sswitch_data_0

    move v0, v2

    .line 2273
    :goto_0
    return v0

    .line 2265
    :sswitch_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2266
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 2269
    :sswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2270
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 2260
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 2247
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 1038
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2377
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2378
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 2380
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 2391
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2392
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2394
    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 2287
    sparse-switch p1, :sswitch_data_0

    .line 2296
    :goto_0
    return-void

    .line 2289
    :sswitch_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 2293
    :sswitch_1
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 2287
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1177
    invoke-virtual {p0}, Landroid/app/Activity;->shutDownInputmethod()Z

    .line 1179
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1180
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 926
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    iput-boolean v2, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 928
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getTitleColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 930
    :cond_0
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 931
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 1011
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1012
    .local v0, win:Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->makeActive()V

    .line 1013
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    .line 1014
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2552
    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 2553
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 2576
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 2577
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 2352
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2353
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 2355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 2234
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 2235
    invoke-virtual {p0, p3}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 2236
    .local v0, goforit:Z
    if-eqz v0, :cond_0

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 2238
    .end local v0           #goforit:Z
    :goto_0
    return v1

    .line 2236
    .restart local v0       #goforit:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #goforit:Z
    :cond_1
    move v1, v2

    .line 2238
    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 971
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 972
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 853
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 854
    const-string v1, "android:viewHierarchyState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 855
    .local v0, windowState:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 856
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 859
    .end local v0           #windowState:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 995
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 996
    return-void
.end method

.method onRetainNonConfigurationChildInstances()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1519
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1487
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1099
    const-string v0, "android:viewHierarchyState"

    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1100
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2711
    invoke-virtual {p0, v1, v0, v1, v0}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2712
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 947
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 948
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1315
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1316
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "title"
    .parameter "color"

    .prologue
    .line 3649
    iget-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    if-eqz v1, :cond_0

    .line 3650
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3651
    .local v0, win:Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 3652
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 3653
    if-eqz p2, :cond_0

    .line 3654
    invoke-virtual {v0, p2}, Landroid/view/Window;->setTitleColor(I)V

    .line 3658
    .end local v0           #win:Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1995
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2013
    const/4 v0, 0x0

    return v0
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 2036
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 1213
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 2042
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 2043
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2044
    .local v0, decor:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2045
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2048
    .end local v0           #decor:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 2081
    return-void
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 2461
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 2462
    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    .prologue
    .line 2401
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 2402
    return-void
.end method

.method public overridePendingTransition(II)V
    .locals 3
    .parameter "enterAnim"
    .parameter "exitAnim"

    .prologue
    .line 3164
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/app/IActivityManager;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3168
    :goto_0
    return-void

    .line 3166
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final performPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3911
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 3912
    invoke-virtual {p0}, Landroid/app/Activity;->onPause()V

    .line 3913
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 3915
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3919
    :cond_0
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    .line 3920
    return-void
.end method

.method final performRestart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3861
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3862
    :try_start_0
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3863
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3864
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 3865
    .local v2, mc:Landroid/app/Activity$ManagedCursor;
    #getter for: Landroid/app/Activity$ManagedCursor;->mReleased:Z
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->access$300(Landroid/app/Activity$ManagedCursor;)Z

    move-result v4

    if-nez v4, :cond_0

    #getter for: Landroid/app/Activity$ManagedCursor;->mUpdated:Z
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->access$200(Landroid/app/Activity$ManagedCursor;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3866
    :cond_0
    #getter for: Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->access$100(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->requery()Z

    .line 3867
    const/4 v4, 0x0

    #setter for: Landroid/app/Activity$ManagedCursor;->mReleased:Z
    invoke-static {v2, v4}, Landroid/app/Activity$ManagedCursor;->access$302(Landroid/app/Activity$ManagedCursor;Z)Z

    .line 3868
    const/4 v4, 0x0

    #setter for: Landroid/app/Activity$ManagedCursor;->mUpdated:Z
    invoke-static {v2, v4}, Landroid/app/Activity$ManagedCursor;->access$202(Landroid/app/Activity$ManagedCursor;Z)Z

    .line 3863
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3871
    .end local v2           #mc:Landroid/app/Activity$ManagedCursor;
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3873
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    if-eqz v3, :cond_4

    .line 3874
    iput-boolean v5, p0, Landroid/app/Activity;->mStopped:Z

    .line 3875
    iput-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    .line 3876
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 3877
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_3

    .line 3878
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onRestart()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3871
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 3882
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->performStart()V

    .line 3884
    :cond_4
    return-void
.end method

.method final performRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 828
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 829
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 830
    return-void
.end method

.method final performResume()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string v3, "Activity "

    .line 3887
    invoke-virtual {p0}, Landroid/app/Activity;->performRestart()V

    .line 3889
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstance:Ljava/lang/Object;

    .line 3891
    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    .line 3893
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 3894
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_0

    .line 3895
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3901
    :cond_0
    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    .line 3902
    invoke-virtual {p0}, Landroid/app/Activity;->onPostResume()V

    .line 3903
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_1

    .line 3904
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPostResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3908
    :cond_1
    return-void
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 1049
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1050
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 1051
    return-void
.end method

.method final performStart()V
    .locals 3

    .prologue
    .line 3851
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 3852
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 3853
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_0

    .line 3854
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3858
    :cond_0
    return-void
.end method

.method final performStop()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3928
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v3, :cond_4

    .line 3929
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v3, :cond_0

    .line 3930
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V

    .line 3933
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    .line 3934
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 3935
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_1

    .line 3936
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onStop()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3941
    :cond_1
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3942
    :try_start_0
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3943
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 3944
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 3945
    .local v2, mc:Landroid/app/Activity$ManagedCursor;
    #getter for: Landroid/app/Activity$ManagedCursor;->mReleased:Z
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->access$300(Landroid/app/Activity$ManagedCursor;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3946
    #getter for: Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->access$100(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->deactivate()V

    .line 3947
    const/4 v4, 0x1

    #setter for: Landroid/app/Activity$ManagedCursor;->mReleased:Z
    invoke-static {v2, v4}, Landroid/app/Activity$ManagedCursor;->access$302(Landroid/app/Activity$ManagedCursor;Z)Z

    .line 3943
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3950
    .end local v2           #mc:Landroid/app/Activity$ManagedCursor;
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3952
    iput-boolean v5, p0, Landroid/app/Activity;->mStopped:Z

    .line 3954
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_4
    return-void

    .line 3950
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method final performUserLeaving()V
    .locals 0

    .prologue
    .line 3923
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3924
    invoke-virtual {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 3925
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 2439
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 2440
    return-void
.end method

.method public final removeDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 2684
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 2685
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 2686
    .local v0, md:Landroid/app/Activity$ManagedDialog;
    if-eqz v0, :cond_0

    .line 2687
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2688
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2691
    .end local v0           #md:Landroid/app/Activity$ManagedDialog;
    :cond_0
    return-void
.end method

.method public final requestWindowFeature(I)Z
    .locals 1
    .parameter "featureId"

    .prologue
    .line 2790
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 3775
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 3776
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3780
    :goto_0
    return-void

    .line 3778
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 1687
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 1688
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1698
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 1699
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 1710
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1711
    return-void
.end method

.method public final setDefaultKeyMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1794
    iput p1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 1798
    packed-switch p1, :pswitch_data_0

    .line 1810
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1801
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 1812
    :goto_0
    return-void

    .line 1806
    :pswitch_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 1807
    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 1798
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "featureId"
    .parameter "drawable"

    .prologue
    .line 2814
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 2815
    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .locals 1
    .parameter "featureId"
    .parameter "alpha"

    .prologue
    .line 2822
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 2823
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 1
    .parameter "featureId"
    .parameter "resId"

    .prologue
    .line 2798
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 2799
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 1
    .parameter "featureId"
    .parameter "uri"

    .prologue
    .line 2806
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 2807
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "newIntent"

    .prologue
    .line 727
    iput-object p1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 728
    return-void
.end method

.method final setParent(Landroid/app/Activity;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 3797
    iput-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 3798
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .parameter "isPersistent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1668
    return-void
.end method

.method public final setProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 3714
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    add-int/lit8 v2, p1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 3715
    return-void
.end method

.method public final setProgressBarIndeterminate(Z)V
    .locals 3
    .parameter "indeterminate"

    .prologue
    .line 3699
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 v2, -0x3

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 3701
    return-void

    .line 3699
    :cond_0
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public final setProgressBarIndeterminateVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 3685
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 3687
    return-void

    .line 3685
    :cond_0
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public final setProgressBarVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 3672
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 3674
    return-void

    .line 3672
    :cond_0
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public setRequestedOrientation(I)V
    .locals 2
    .parameter "requestedOrientation"

    .prologue
    .line 3456
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 3458
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->setRequestedOrientation(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3466
    :goto_0
    return-void

    .line 3464
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 3460
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final setResult(I)V
    .locals 1
    .parameter "resultCode"

    .prologue
    .line 3183
    monitor-enter p0

    .line 3184
    :try_start_0
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 3185
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 3186
    monitor-exit p0

    .line 3187
    return-void

    .line 3186
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setResult(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3203
    monitor-enter p0

    .line 3204
    :try_start_0
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 3205
    iput-object p2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 3206
    monitor-exit p0

    .line 3207
    return-void

    .line 3206
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setSecondaryProgress(I)V
    .locals 3
    .parameter "secondaryProgress"

    .prologue
    .line 3731
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    add-int/lit16 v2, p1, 0x4e20

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 3733
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 3632
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3633
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 3617
    iput-object p1, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 3618
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 3620
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3621
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 3623
    :cond_0
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .parameter "textColor"

    .prologue
    .line 3636
    iput p1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 3637
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 3638
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 3264
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eq v0, p1, :cond_0

    .line 3265
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 3266
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v0, :cond_0

    .line 3267
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->makeVisible()V

    .line 3271
    :cond_0
    :goto_0
    return-void

    .line 3268
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setVolumeControlStream(I)V
    .locals 1
    .parameter "streamType"

    .prologue
    .line 3752
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 3753
    return-void
.end method

.method public final showDialog(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2585
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 2586
    return-void
.end method

.method public final showDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 2612
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 2613
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 2615
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 2616
    .local v0, md:Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_2

    .line 2617
    new-instance v0, Landroid/app/Activity$ManagedDialog;

    .end local v0           #md:Landroid/app/Activity$ManagedDialog;
    invoke-direct {v0, v2}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$1;)V

    .line 2618
    .restart local v0       #md:Landroid/app/Activity$ManagedDialog;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 2619
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 2620
    const/4 v1, 0x0

    .line 2628
    :goto_0
    return v1

    .line 2622
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2625
    :cond_2
    iput-object p2, v0, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 2626
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1, v1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 2627
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2628
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public shutDownInputmethod()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1184
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-nez v1, :cond_0

    move v1, v2

    .line 1194
    :goto_0
    return v1

    .line 1188
    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1190
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1191
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1194
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 2994
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2995
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 8
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 2887
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 2888
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v7

    .line 2892
    .local v7, ar:Landroid/app/Instrumentation$ActivityResult;
    if-eqz v7, :cond_0

    .line 2893
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v7}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2897
    :cond_0
    if-ltz p2, :cond_1

    .line 2905
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 2910
    .end local v7           #ar:Landroid/app/Instrumentation$ActivityResult;
    :cond_1
    :goto_0
    return-void

    .line 2908
    :cond_2
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 8
    .parameter "child"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 3128
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v7

    .line 3132
    .local v7, ar:Landroid/app/Instrumentation$ActivityResult;
    if-eqz v7, :cond_0

    .line 3133
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v7}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3137
    :cond_0
    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 12
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 3047
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 3048
    const/4 v11, 0x1

    .line 3050
    .local v11, result:I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v7, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p1

    move v8, p2

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 3060
    :goto_0
    invoke-static {v11, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 3062
    if-ltz p2, :cond_0

    .line 3070
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 3072
    :cond_0
    const/4 v0, 0x1

    if-eq v11, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3075
    .end local v11           #result:I
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "startActivityIfNeeded can only be called from a top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3056
    .restart local v11       #result:I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 7
    .parameter "intent"
    .parameter "fillInIntent"
    .parameter "flagsMask"
    .parameter "flagsValues"
    .parameter "extraFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 3015
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 3017
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 8
    .parameter "intent"
    .parameter "requestCode"
    .parameter "fillInIntent"
    .parameter "flagsMask"
    .parameter "flagsValues"
    .parameter "extraFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 2935
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p0

    .line 2936
    invoke-direct/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;)V

    .line 2942
    :goto_0
    return-void

    .line 2939
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 7
    .parameter "child"
    .parameter "intent"
    .parameter "requestCode"
    .parameter "fillInIntent"
    .parameter "flagsMask"
    .parameter "flagsValues"
    .parameter "extraFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 3149
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;)V

    .line 3151
    return-void
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1635
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1636
    :try_start_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/Activity$ManagedCursor;

    invoke-direct {v2, p1}, Landroid/app/Activity$ManagedCursor;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1637
    monitor-exit v0

    .line 1638
    return-void

    .line 1637
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 3096
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 3098
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3103
    :goto_0
    return v0

    .line 3100
    :catch_0
    move-exception v0

    .line 3103
    const/4 v0, 0x0

    goto :goto_0

    .line 3106
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "startNextMatchingActivity can only be called from a top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 2747
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 2748
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 2750
    return-void
.end method

.method public stopManagingCursor(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 1650
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1651
    :try_start_0
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1652
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1653
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 1654
    .local v2, mc:Landroid/app/Activity$ManagedCursor;
    #getter for: Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->access$100(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 1655
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1659
    .end local v2           #mc:Landroid/app/Activity$ManagedCursor;
    :cond_0
    monitor-exit v3

    .line 1660
    return-void

    .line 1652
    .restart local v2       #mc:Landroid/app/Activity$ManagedCursor;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1659
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #mc:Landroid/app/Activity$ManagedCursor;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .parameter "get"

    .prologue
    .line 2775
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 2776
    return-void
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "query"
    .parameter "appSearchData"

    .prologue
    .line 2763
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 2764
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/SearchManager;->triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 2765
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2450
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 2451
    return-void
.end method
