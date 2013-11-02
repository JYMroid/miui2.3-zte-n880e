.class Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;
.super Ljava/lang/Thread;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mInstalledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledPackageList:Ljava/lang/String;

.field private mIsLaunching:Z

.field private mLoadAndBindStepFinished:Z

.field private final mManager:Landroid/content/pm/PackageManager;

.field private mStopped:Z

.field private mWaitThread:Ljava/lang/Thread;

.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$Loader;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$Loader;Landroid/content/Context;Ljava/lang/Thread;Z)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "waitThread"
    .parameter "isLaunching"

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 673
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    .line 677
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    .line 678
    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    .line 679
    iput-boolean p4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    .line 680
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    .line 681
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    .line 682
    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    return v0
.end method

.method private bindWorkspace()V
    .locals 20

    .prologue
    .line 1176
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 1180
    .local v17, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1181
    .local v7, oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-nez v7, :cond_0

    .line 1183
    const-string v4, "Launcher.Model"

    const-string v5, "LoaderThread running with no launcher"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :goto_0
    return-void

    .line 1189
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/DeferredHandler;->cancel()V

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$5;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$5;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1201
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1202
    .local v6, itemClone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1203
    .local v10, N:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_2

    .line 1204
    move/from16 v8, v16

    .line 1205
    .local v8, start:I
    add-int/lit8 v4, v16, 0x6

    if-gt v4, v10, :cond_1

    const/4 v4, 0x6

    move v9, v4

    .line 1206
    .local v9, chunkSize:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v11

    new-instance v4, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;II)V

    invoke-virtual {v11, v4}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1203
    add-int/lit8 v16, v16, 0x6

    goto :goto_1

    .line 1205
    .end local v9           #chunkSize:I
    :cond_1
    sub-int v4, v10, v16

    move v9, v4

    goto :goto_2

    .line 1216
    .end local v8           #start:I
    :cond_2
    new-instance v13, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    invoke-direct {v13, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1217
    .local v13, foldersClone:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$7;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$7;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$8;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$8;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1235
    invoke-interface {v7}, Lcom/android/launcher2/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v12

    .line 1236
    .local v12, currentScreen:I
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1237
    .local v11, appWidgetsClone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    const/4 v4, -0x1

    if-eq v12, v4, :cond_4

    .line 1238
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1240
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_4

    .line 1241
    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1242
    .local v19, widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->screenId:J

    move-wide v4, v0

    int-to-long v8, v12

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$9;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$9;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1240
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1255
    .end local v19           #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_4
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_6

    .line 1256
    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1257
    .restart local v19       #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->screenId:J

    move-wide v4, v0

    int-to-long v8, v12

    cmp-long v4, v4, v8

    if-eqz v4, :cond_5

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$10;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$10;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1255
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1270
    .end local v19           #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_6
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mGadgets:Ljava/util/ArrayList;

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1271
    .local v15, gadgetsClone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/gadget/GadgetInfo;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1273
    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_8

    .line 1274
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 1275
    .local v14, gadget:Lcom/android/launcher2/gadget/GadgetInfo;
    iget-wide v4, v14, Lcom/android/launcher2/gadget/GadgetInfo;->screenId:J

    int-to-long v8, v12

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$11;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$11;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1273
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1287
    .end local v14           #gadget:Lcom/android/launcher2/gadget/GadgetInfo;
    :cond_8
    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_a

    .line 1288
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 1289
    .restart local v14       #gadget:Lcom/android/launcher2/gadget/GadgetInfo;
    iget-wide v4, v14, Lcom/android/launcher2/gadget/GadgetInfo;->screenId:J

    int-to-long v8, v12

    cmp-long v4, v4, v8

    if-eqz v4, :cond_9

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$12;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$12;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1287
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1302
    .end local v14           #gadget:Lcom/android/launcher2/gadget/GadgetInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$13;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$13;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$14;

    move-object v0, v5

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$14;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;J)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private doLoad()V
    .locals 4

    .prologue
    const/16 v2, 0xa

    const-string v3, "Launcher.Model"

    .line 834
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 835
    :try_start_0
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 837
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    const-string v0, "Launcher.Model"

    const-string v0, "step 1: loading workspace"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadAndBindWorkspace()V

    .line 847
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 848
    :try_start_1
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    if-eqz v1, :cond_0

    .line 849
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 851
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 853
    const-string v0, "Launcher.Model"

    const-string v0, "step 2: loading missing icons"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadAndBindMissingIcons()V

    .line 856
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 859
    :try_start_2
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    const/4 v2, 0x0

    #setter for: Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;
    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel$Loader;->access$1102(Lcom/android/launcher2/LauncherModel$Loader;Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    .line 860
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 868
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$3;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 873
    return-void

    :cond_1
    move v1, v2

    .line 835
    goto :goto_0

    .line 837
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 851
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 860
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private ensureItemUnique(J)Z
    .locals 6
    .parameter "id"

    .prologue
    .line 1001
    const/4 v0, 0x0

    .line 1002
    .local v0, args:Landroid/os/Bundle;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledPackageList:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1003
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    :try_start_1
    const-string v3, "ensureItemUniqueArgPackagelist"

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledPackageList:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 1006
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v3

    const-string v4, "ensureItemUnique"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1008
    .local v2, r:Landroid/os/Bundle;
    if-eqz v2, :cond_1

    const-string v3, "resultBoolean"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1009
    const/4 v3, 0x1

    .line 1013
    .end local v2           #r:Landroid/os/Bundle;
    :goto_0
    return v3

    .line 1011
    :catch_0
    move-exception v3

    .line 1013
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1011
    .end local v0           #args:Landroid/os/Bundle;
    .restart local v1       #args:Landroid/os/Bundle;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_1
.end method

.method private loadAndBindMissingIcons()V
    .locals 13

    .prologue
    const-string v12, "Launcher.Model"

    .line 711
    iget-boolean v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v8, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v1, v8

    .line 716
    .local v1, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_1
    if-nez v1, :cond_3

    .line 717
    const-string v8, "Launcher.Model"

    const-string v8, "No callback to call back"

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 715
    .end local v1           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_2
    const/4 v8, 0x0

    move-object v1, v8

    goto :goto_1

    .line 722
    .restart local v1       #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 723
    const-string v8, "Launcher.Model"

    const-string v8, "No main activity found, the system is so clean"

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 727
    :cond_4
    const/4 v3, 0x0

    .line 728
    .local v3, count:I
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 729
    .local v7, updatedPackages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 730
    .local v2, cn:Landroid/content/ComponentName;
    iget-boolean v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-nez v8, :cond_0

    .line 734
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 738
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 743
    :try_start_0
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherSettings;->updateHomeScreen(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 749
    :try_start_1
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v9, v9, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher2/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 750
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 754
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 744
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 745
    .local v4, e:Landroid/database/sqlite/SQLiteException;
    const-string v8, "Launcher.Model"

    const-string v8, "database didnot ready,ignore this package."

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 750
    .end local v4           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 757
    .end local v2           #cn:Landroid/content/ComponentName;
    :cond_6
    iget-boolean v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 758
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 759
    .local v6, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 760
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v8

    new-instance v9, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$1;

    invoke-direct {v9, p0, v6, v1}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$1;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v8, v9}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 769
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v9, v9, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v9

    iget-object v9, v9, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    #calls: Lcom/android/launcher2/LauncherModel$Loader;->onRemoveItems(Ljava/util/ArrayList;)V
    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherModel$Loader;->access$100(Lcom/android/launcher2/LauncherModel$Loader;Ljava/util/ArrayList;)V

    .line 772
    .end local v6           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    :cond_7
    iget-boolean v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 773
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 774
    .local v0, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 775
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v8

    new-instance v9, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$2;

    invoke-direct {v9, p0, v0, v1}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$2;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v8, v9}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 784
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v9, v9, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v9

    iget-object v9, v9, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    #calls: Lcom/android/launcher2/LauncherModel$Loader;->onLoadShortcuts(Ljava/util/ArrayList;)V
    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherModel$Loader;->access$200(Lcom/android/launcher2/LauncherModel$Loader;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 4

    .prologue
    .line 795
    monitor-enter p0

    .line 796
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$900(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    .line 797
    .local v0, loaded:Z
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x1

    #setter for: Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel;->access$902(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 798
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndBindWorkspace loaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadWorkspace()V

    .line 807
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x0

    #setter for: Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel;->access$902(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 815
    :goto_0
    return-void

    .line 798
    .end local v0           #loaded:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 814
    .restart local v0       #loaded:Z
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->bindWorkspace()V

    goto :goto_0
.end method

.method private loadAppWidget(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v9, "Launcher.Model"

    .line 954
    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 955
    .local v0, appWidgetId:I
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 957
    .local v2, id:J
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 960
    .local v4, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 962
    :cond_0
    const-string v5, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " appWidgetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 965
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    :cond_1
    :goto_0
    return-void

    .line 968
    :cond_2
    new-instance v1, Lcom/android/launcher2/LauncherAppWidgetInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(I)V

    .line 969
    .local v1, appWidgetInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    iput-wide v2, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->id:J

    .line 970
    invoke-virtual {v1, p1}, Lcom/android/launcher2/LauncherAppWidgetInfo;->load(Landroid/database/Cursor;)V

    .line 971
    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 973
    iget-wide v5, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .line 974
    const-string v5, "Launcher.Model"

    const-string v5, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 979
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadGadget(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 984
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 985
    .local v0, gadgetId:I
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 986
    .local v2, id:J
    invoke-static {v0}, Lcom/android/launcher2/gadget/GadgetFactory;->getInfo(I)Lcom/android/launcher2/gadget/GadgetInfo;

    move-result-object v4

    if-nez v4, :cond_1

    .line 987
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 988
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    new-instance v1, Lcom/android/launcher2/gadget/GadgetInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher2/gadget/GadgetInfo;-><init>(I)V

    .line 993
    .local v1, gadgetInfo:Lcom/android/launcher2/gadget/GadgetInfo;
    iput-wide v2, v1, Lcom/android/launcher2/gadget/GadgetInfo;->id:J

    .line 994
    invoke-virtual {v1, p1}, Lcom/android/launcher2/gadget/GadgetInfo;->load(Landroid/database/Cursor;)V

    .line 995
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadLiveFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 926
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 927
    .local v6, id:J
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 930
    .local v9, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    .line 933
    .local v8, providerInfo:Landroid/content/pm/ProviderInfo;
    if-nez v8, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    #calls: Lcom/android/launcher2/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;
    invoke-static {v0, v6, v7}, Lcom/android/launcher2/LauncherModel;->access$1300(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;

    move-result-object v5

    .line 937
    .local v5, liveFolderInfo:Lcom/android/launcher2/LiveFolderInfo;
    iput-object v9, v5, Lcom/android/launcher2/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 938
    invoke-virtual {v5, p1}, Lcom/android/launcher2/LiveFolderInfo;->load(Landroid/database/Cursor;)V

    .line 940
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x6

    move-object v1, p1

    #calls: Lcom/android/launcher2/LauncherModel;->loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V
    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel;->access$1400(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V

    .line 943
    iget-wide v0, v5, Lcom/android/launcher2/LiveFolderInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    iget-wide v1, v5, Lcom/android/launcher2/LiveFolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private loadShortcut(Landroid/database/Cursor;I)V
    .locals 20
    .parameter "c"
    .parameter "itemType"

    .prologue
    .line 1019
    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1024
    .local v7, intent:Landroid/content/Intent;
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1026
    .local v17, id:J
    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    move-object v5, v0

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->ensureItemUnique(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1068
    .end local v7           #intent:Landroid/content/Intent;
    .end local v17           #id:J
    :cond_0
    :goto_0
    return-void

    .line 1020
    :catch_0
    move-exception v5

    move-object v15, v5

    .line 1021
    .local v15, e:Ljava/net/URISyntaxException;
    goto :goto_0

    .line 1032
    .end local v15           #e:Ljava/net/URISyntaxException;
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v17       #id:J
    :cond_1
    if-nez p2, :cond_4

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v8, v0

    const/4 v10, 0x4

    const/4 v11, 0x2

    move-object/from16 v9, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v19

    .line 1035
    .local v19, info:Lcom/android/launcher2/ShortcutInfo;
    if-eqz v19, :cond_2

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    :cond_2
    :goto_1
    if-eqz v19, :cond_6

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/4 v8, 0x4

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/ShortcutInfo;Landroid/database/Cursor;I)V

    .line 1045
    move-object v0, v7

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1046
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShortcutInfo;->load(Landroid/database/Cursor;)V

    .line 1048
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher2/ShortcutInfo;->container:J

    move-wide v5, v0

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .end local v7           #intent:Landroid/content/Intent;
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher2/ShortcutInfo;->container:J

    move-wide v5, v0

    const-wide/16 v7, -0x65

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    .line 1050
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    #calls: Lcom/android/launcher2/LauncherModel$Loader;->onLoadShortcut(Lcom/android/launcher2/ShortcutInfo;)V
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel$Loader;->access$1500(Lcom/android/launcher2/LauncherModel$Loader;Lcom/android/launcher2/ShortcutInfo;)V

    goto/16 :goto_0

    .line 1039
    .end local v19           #info:Lcom/android/launcher2/ShortcutInfo;
    .restart local v7       #intent:Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v6, v5, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v9, v0

    const/4 v10, 0x3

    const/4 v11, 0x5

    const/4 v12, 0x6

    const/4 v13, 0x4

    const/4 v14, 0x2

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v14}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v19

    .restart local v19       #info:Lcom/android/launcher2/ShortcutInfo;
    goto :goto_1

    .line 1053
    .end local v7           #intent:Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher2/ShortcutInfo;->container:J

    move-wide v6, v0

    #calls: Lcom/android/launcher2/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;
    invoke-static {v5, v6, v7}, Lcom/android/launcher2/LauncherModel;->access$1200(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;

    move-result-object v16

    .line 1054
    .local v16, folderInfo:Lcom/android/launcher2/UserFolderInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/UserFolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_2

    .line 1065
    .end local v16           #folderInfo:Lcom/android/launcher2/UserFolderInfo;
    .restart local v7       #intent:Landroid/content/Intent;
    :cond_6
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut "

    .end local v7           #intent:Landroid/content/Intent;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", removing it"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    invoke-static/range {v17 .. v18}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private loadUserFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 913
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 914
    .local v1, id:J
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    #calls: Lcom/android/launcher2/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;
    invoke-static {v3, v1, v2}, Lcom/android/launcher2/LauncherModel;->access$1200(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;

    move-result-object v0

    .line 915
    .local v0, folderInfo:Lcom/android/launcher2/UserFolderInfo;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/UserFolderInfo;->load(Landroid/database/Cursor;)V

    .line 917
    iget-wide v3, v0, Lcom/android/launcher2/UserFolderInfo;->container:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, v0, Lcom/android/launcher2/UserFolderInfo;->container:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 919
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/android/launcher2/UserFolderInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    return-void
.end method

.method private loadWorkspace()V
    .locals 27

    .prologue
    .line 1071
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    .line 1073
    .local v25, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedUris:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1082
    new-instance v21, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1083
    .local v21, mainIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, v21

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 1085
    .local v18, installedApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    .line 1086
    .local v24, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1087
    .local v23, packageName:Ljava/lang/String;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1088
    .local v11, className:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    move-object v4, v0

    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1093
    .end local v11           #className:Ljava/lang/String;
    .end local v23           #packageName:Ljava/lang/String;
    .end local v24           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1094
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 1095
    .local v22, packageList:Ljava/lang/StringBuilder;
    const/16 v4, 0x28

    move-object/from16 v0, v22

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 1097
    .local v13, cn:Landroid/content/ComponentName;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1099
    .end local v13           #cn:Landroid/content/ComponentName;
    :cond_2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/16 v5, 0x29

    move-object/from16 v0, v22

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1100
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledPackageList:Ljava/lang/String;

    .line 1105
    .end local v22           #packageList:Ljava/lang/StringBuilder;
    :goto_2
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    .local v20, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/launcher2/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1110
    .local v10, c:Landroid/database/Cursor;
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    move v4, v0

    if-nez v4, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 1112
    const/16 v4, 0x8

    :try_start_1
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1114
    .local v19, itemType:I
    packed-switch v19, :pswitch_data_0

    goto :goto_3

    .line 1117
    :pswitch_0
    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadShortcut(Landroid/database/Cursor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1136
    .end local v19           #itemType:I
    :catch_0
    move-exception v4

    move-object v14, v4

    .line 1137
    .local v14, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Launcher.Model"

    const-string v5, "Desktop items loading interrupted:"

    invoke-static {v4, v5, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1141
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1102
    .end local v10           #c:Landroid/database/Cursor;
    .end local v20           #itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledPackageList:Ljava/lang/String;

    goto :goto_2

    .line 1121
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v19       #itemType:I
    .restart local v20       #itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :pswitch_1
    :try_start_3
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadUserFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1125
    :pswitch_2
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadLiveFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1129
    :pswitch_3
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadAppWidget(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1133
    :pswitch_4
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadGadget(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 1141
    .end local v19           #itemType:I
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1144
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v12

    .line 1148
    .local v12, client:Landroid/content/ContentProviderClient;
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1150
    .local v16, id:J
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :try_start_4
    invoke-static/range {v16 .. v17}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v12, v4, v5, v6}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 1155
    :catch_1
    move-exception v4

    move-object v14, v4

    .line 1156
    .local v14, e:Landroid/os/RemoteException;
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not remove id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1157
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v4

    move-object v14, v4

    .line 1158
    .local v14, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not remove id(database readonly) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1162
    .end local v12           #client:Landroid/content/ContentProviderClient;
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    .end local v16           #id:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$4;

    move-object v0, v5

    move-object/from16 v1, p0

    move-wide/from16 v2, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$4;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;J)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1170
    return-void

    .line 1114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private waitForOtherThread()V
    .locals 2

    .prologue
    .line 696
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, done:Z
    :goto_0
    if-nez v0, :cond_0

    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    const/4 v0, 0x1

    goto :goto_0

    .line 706
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    .line 708
    .end local v0           #done:Z
    :cond_1
    return-void

    .line 702
    .restart local v0       #done:Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .prologue
    const-string v2, "Launcher.Model"

    .line 1322
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mWaitThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mIsLaunching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mLoadAndBindStepFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mLoadAndBindStepFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    return-void
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #getter for: Lcom/android/launcher2/LauncherModel$Loader;->mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel$Loader;->access$1000(Lcom/android/launcher2/LauncherModel$Loader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 819
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    monitor-enter v0

    .line 820
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->waitForOtherThread()V

    .line 821
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->doLoad()V

    .line 822
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #getter for: Lcom/android/launcher2/LauncherModel$Loader;->mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel$Loader;->access$1000(Lcom/android/launcher2/LauncherModel$Loader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 824
    return-void

    .line 822
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 876
    monitor-enter p0

    .line 877
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    .line 878
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 879
    monitor-exit p0

    .line 880
    return-void

    .line 879
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 5
    .parameter "oldCallbacks"

    .prologue
    const/4 v4, 0x0

    .line 890
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 891
    :try_start_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v2, :cond_0

    .line 892
    monitor-exit v1

    move-object v1, v4

    .line 908
    :goto_0
    return-object v1

    .line 895
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 896
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 899
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 900
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 901
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 903
    :cond_2
    if-nez v0, :cond_3

    .line 904
    const-string v2, "Launcher.Model"

    const-string v3, "no mCallbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 908
    :cond_3
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 909
    .end local v0           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
