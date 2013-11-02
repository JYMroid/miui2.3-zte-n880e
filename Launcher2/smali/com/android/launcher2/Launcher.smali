.class public final Lcom/android/launcher2/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/LauncherModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Launcher$WallpaperChangedIntentReceiver;,
        Lcom/android/launcher2/Launcher$AppWidgetResetObserver;,
        Lcom/android/launcher2/Launcher$ScreenOnOffReceiver;,
        Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher2/Launcher$CreateShortcut;,
        Lcom/android/launcher2/Launcher$LocaleConfiguration;
    }
.end annotation


# static fields
.field private static final DISABLE_TOUCH_IMPROVE:[B

.field private static final ENABLE_TOUCH_IMPROVE:[B

.field private static mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDeleteZone:Lcom/android/launcher2/DeleteZone;

.field private mDeleteZoneEditingEnter:Landroid/view/animation/Animation;

.field private mDeleteZoneEditingExit:Landroid/view/animation/Animation;

.field private mDesktopItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragLayer:Lcom/android/launcher2/DragLayer;

.field private mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

.field private mEditingState:I

.field private mErrorBar:Lcom/android/launcher2/ErrorBar;

.field public mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/gadget/Gadget;",
            ">;"
        }
    .end annotation
.end field

.field private mHotSeats:Lcom/android/launcher2/HotSeats;

.field private mHotseatEditingEnter:Landroid/view/animation/Animation;

.field private mHotseatEditingExit:Landroid/view/animation/Animation;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mLastPausedTime:J

.field private mMenuAddInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mOnResumeExpectedForActivityResult:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private final mScreenChangeObserver:Landroid/database/ContentObserver;

.field private final mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitingForResult:Z

.field private final mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWidgetEditingEnter:Landroid/view/animation/Animation;

.field private mWidgetEditingExit:Landroid/view/animation/Animation;

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

.field private mWidgetThumbnailViewAdapter:Lcom/android/launcher2/WidgetThumbnailViewAdapter;

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private mWorkspaceLoading:Z

.field private mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    .line 2035
    new-array v0, v3, [B

    const/16 v1, 0x30

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/launcher2/Launcher;->DISABLE_TOUCH_IMPROVE:[B

    .line 2036
    new-array v0, v3, [B

    const/16 v1, 0x31

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/launcher2/Launcher;->ENABLE_TOUCH_IMPROVE:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 150
    new-instance v0, Lcom/android/launcher2/Launcher$ScreenOnOffReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$ScreenOnOffReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    new-instance v0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    new-instance v0, Lcom/android/launcher2/Launcher$WallpaperChangedIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$WallpaperChangedIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v0, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 177
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeExpectedForActivityResult:Z

    .line 181
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Lcom/android/launcher2/Launcher$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$1;-><init>(Lcom/android/launcher2/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mScreenChangeObserver:Landroid/database/ContentObserver;

    .line 442
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/Launcher;->mLastPausedTime:J

    .line 1740
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 519
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 521
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->pickShortcut()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/DragLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    return-object v0
.end method

.method private addItems()V
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuAddInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->showAddDialog(Lcom/android/launcher2/CellLayout$CellInfo;)V

    .line 1000
    return-void
.end method

.method static addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher2/CellLayout$CellInfo;Z)Lcom/android/launcher2/LiveFolderInfo;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 1153
    const-string v1, "android.intent.extra.livefolder.BASE_INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1154
    const-string v2, "android.intent.extra.livefolder.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1159
    const-string v2, "android.intent.extra.livefolder.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 1160
    if-eqz v3, :cond_1

    instance-of v2, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_1

    .line 1162
    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1164
    iget-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 1166
    iget-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1167
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    .line 1173
    :goto_0
    if-nez v2, :cond_0

    .line 1174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f020074

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v5, v2

    .line 1177
    :goto_1
    new-instance v2, Lcom/android/launcher2/LiveFolderInfo;

    invoke-direct {v2}, Lcom/android/launcher2/LiveFolderInfo;-><init>()V

    .line 1178
    invoke-static {v5, p0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    .line 1179
    iput-object v4, v2, Lcom/android/launcher2/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    .line 1180
    iput-object v3, v2, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1181
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher2/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 1182
    iput-object v1, v2, Lcom/android/launcher2/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 1183
    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lcom/android/launcher2/LiveFolderInfo;->displayMode:I

    .line 1186
    const-wide/16 v3, -0x64

    iget-wide v5, p2, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    iget v7, p2, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v8, p2, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 1188
    sget-object v1, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v3, v2, Lcom/android/launcher2/LiveFolderInfo;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    return-object v2

    .line 1168
    :catch_0
    move-exception v2

    move-object v2, v9

    .line 1169
    :goto_2
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load live folder icon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    move-object v2, v9

    goto :goto_0

    .line 1168
    :catch_1
    move-exception v5

    goto :goto_2

    :cond_0
    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v3, v9

    move-object v2, v9

    goto :goto_0
.end method

.method private checkForLocaleChange()V
    .locals 10

    .prologue
    .line 261
    new-instance v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;

    const/4 v9, 0x0

    invoke-direct {v3, v9}, Lcom/android/launcher2/Launcher$LocaleConfiguration;-><init>(Lcom/android/launcher2/Launcher$1;)V

    .line 262
    .local v3, localeConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;
    invoke-static {p0, v3}, Lcom/android/launcher2/Launcher;->readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 266
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v6, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 267
    .local v6, previousLocale:Ljava/lang/String;
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, locale:Ljava/lang/String;
    iget v7, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 270
    .local v7, previousMcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 272
    .local v4, mcc:I
    iget v8, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 273
    .local v8, previousMnc:I
    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    .line 275
    .local v5, mnc:I
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-ne v4, v7, :cond_0

    if-eq v5, v8, :cond_2

    :cond_0
    const/4 v9, 0x1

    move v2, v9

    .line 277
    .local v2, localeChanged:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 278
    iput-object v1, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 279
    iput v4, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 280
    iput v5, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 282
    invoke-static {p0, v3}, Lcom/android/launcher2/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    .line 283
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v9}, Lcom/android/launcher2/IconCache;->flush()V

    .line 285
    :cond_1
    return-void

    .line 275
    .end local v2           #localeChanged:Z
    :cond_2
    const/4 v9, 0x0

    move v2, v9

    goto :goto_0
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 555
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 556
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 557
    return-void
.end method

.method private completeAddAppWidget(Landroid/content/Intent;)V
    .locals 20
    .parameter "data"

    .prologue
    .line 695
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 696
    .local v17, extras:Landroid/os/Bundle;
    const-string v4, "appWidgetId"

    const/4 v5, -0x1

    move-object/from16 v0, v17

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 700
    .local v13, appWidgetId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object v4, v0

    invoke-virtual {v4, v13}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v14

    .line 703
    .local v14, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v18

    .line 704
    .local v18, layout:Lcom/android/launcher2/CellLayout;
    iget v4, v14, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v5, v14, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->widgetFrameToCell(II)[I

    move-result-object v19

    .line 707
    .local v19, spans:[I
    const/4 v4, 0x0

    aget v4, v19, v4

    const/4 v5, 0x1

    aget v5, v19, v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->findSlot(IIZ)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v15

    .line 708
    .local v15, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v15, :cond_1

    .line 709
    const/4 v4, -0x1

    if-eq v13, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/launcher2/DragController;->getLastDragInfo()Lcom/android/launcher2/ItemInfo;

    move-result-object v16

    .line 714
    .local v16, dragInfo:Lcom/android/launcher2/ItemInfo;
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 715
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    move v4, v0

    iput v4, v15, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 716
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    move v4, v0

    iput v4, v15, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 720
    :cond_2
    new-instance v5, Lcom/android/launcher2/LauncherAppWidgetInfo;

    invoke-direct {v5, v13}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(I)V

    .line 721
    .local v5, launcherInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    const/4 v4, 0x0

    aget v4, v19, v4

    iput v4, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    .line 722
    const/4 v4, 0x1

    aget v4, v19, v4

    iput v4, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    .line 724
    const-wide/16 v6, -0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v8

    iget v10, v15, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v11, v15, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v11}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v13

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    iput-object v4, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 733
    iget-object v4, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v13, v14}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 734
    iget-object v4, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v6, v0

    iget-object v7, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v8, v15, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v9, v15, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    iget v10, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    iget v11, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v12

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher2/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto/16 :goto_0
.end method

.method private completeAddLiveFolder(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1139
    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->findSingleSlot(Z)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v3

    .line 1140
    if-nez v3, :cond_0

    .line 1148
    :goto_0
    return-void

    .line 1142
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v3, v0}, Lcom/android/launcher2/Launcher;->addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher2/CellLayout$CellInfo;Z)Lcom/android/launcher2/LiveFolderInfo;

    move-result-object v0

    .line 1144
    const v1, 0x7f03001e

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    invoke-static {v1, p0, v2, v0}, Lcom/android/launcher2/LiveFolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/LiveFolderInfo;)Lcom/android/launcher2/LiveFolderIcon;

    move-result-object v1

    .line 1146
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v2, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v6

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method private completeAddShortcut(Landroid/content/Intent;)V
    .locals 11
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 669
    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->findSingleSlot(Z)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v7

    .line 670
    .local v7, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v7, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->getLastDragInfo()Lcom/android/launcher2/ItemInfo;

    move-result-object v9

    .line 673
    .local v9, dragInfo:Lcom/android/launcher2/ItemInfo;
    if-eqz v9, :cond_2

    .line 674
    iget v0, v9, Lcom/android/launcher2/ItemInfo;->cellX:I

    iput v0, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 675
    iget v0, v9, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v0, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 678
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v8

    .line 679
    .local v8, cellLayout:Lcom/android/launcher2/CellLayout;
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0, p0, p1, v7}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher2/CellLayout$CellInfo;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v10

    .line 680
    .local v10, info:Lcom/android/launcher2/ShortcutInfo;
    if-eqz v10, :cond_0

    .line 681
    invoke-virtual {p0, v8, v10}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v1

    .line 682
    .local v1, shortcut:Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v2, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v3, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v6

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method private createShortcutIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/ShortcutIcon;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 659
    const v0, 0x7f030001

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher2/ShortcutIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/ShortcutIcon;

    move-result-object v0

    return-object v0
.end method

.method private createUserFolderIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/UserFolderInfo;)Lcom/android/launcher2/FolderIcon;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 642
    const v0, 0x7f030009

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/UserFolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v0

    .line 643
    invoke-virtual {p2}, Lcom/android/launcher2/UserFolderInfo;->getFolderCache()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 644
    invoke-virtual {p2}, Lcom/android/launcher2/UserFolderInfo;->getFolderCache()Lcom/android/launcher2/Folder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Folder;->setFolderIcon(Landroid/view/View;)V

    .line 646
    :cond_0
    return-object v0
.end method

.method private enableTouchImprove(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2040
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_0

    .line 2041
    const-string v0, "/proc/touch_ramp"

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/Launcher;->writeProcHandle(Ljava/lang/String;Z)V

    .line 2042
    const-string v0, "/proc/touch_idle_lock"

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/Launcher;->writeProcHandle(Ljava/lang/String;Z)V

    .line 2044
    :cond_0
    return-void
.end method

.method private findSingleSlot(Z)Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 1
    .parameter "showError"

    .prologue
    const/4 v0, 0x1

    .line 1194
    invoke-direct {p0, v0, v0, p1}, Lcom/android/launcher2/Launcher;->findSlot(IIZ)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method private findSlot(IIZ)Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1198
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 1199
    if-nez v0, :cond_0

    move-object v0, v6

    .line 1218
    :goto_0
    return-object v0

    :cond_0
    move v2, v1

    move v3, p1

    move v4, p2

    move v5, v1

    .line 1203
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIIZ)[I

    move-result-object v0

    .line 1204
    if-nez v0, :cond_2

    .line 1205
    if-eqz p3, :cond_1

    .line 1206
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showError(I)V

    :cond_1
    move-object v0, v6

    .line 1208
    goto :goto_0

    .line 1211
    :cond_2
    new-instance v2, Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {v2}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    .line 1212
    aget v1, v0, v1

    iput v1, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 1213
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 1214
    iput p1, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 1215
    iput p2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 1216
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    move-object v0, v2

    .line 1218
    goto :goto_0
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleFolderClick(Lcom/android/launcher2/FolderInfo;Landroid/view/View;)V
    .locals 4
    .parameter "folderInfo"
    .parameter "folderIcon"

    .prologue
    const/4 v3, 0x0

    .line 1392
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    iget-boolean v1, p1, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-nez v1, :cond_2

    .line 1397
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;Z)Z

    .line 1399
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->openFolder(Lcom/android/launcher2/FolderInfo;Landroid/view/View;)V

    goto :goto_0

    .line 1402
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1403
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1405
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne v2, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;Z)Z

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method private notifyGadgetStateChanged(I)V
    .locals 8
    .parameter "state"

    .prologue
    .line 455
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v2, v4, v5

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 456
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/gadget/Gadget;

    .line 457
    .local v1, gadget:Lcom/android/launcher2/gadget/Gadget;
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 458
    .local v3, info:Lcom/android/launcher2/gadget/GadgetInfo;
    packed-switch p1, :pswitch_data_0

    .line 455
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 460
    :pswitch_0
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onStart()V

    goto :goto_1

    .line 463
    :pswitch_1
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onStop()V

    goto :goto_1

    .line 466
    :pswitch_2
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onPause()V

    goto :goto_1

    .line 469
    :pswitch_3
    iget-wide v4, v3, Lcom/android/launcher2/gadget/GadgetInfo;->screenId:J

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 470
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onResume()V

    goto :goto_1

    .line 474
    :pswitch_4
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onCreate()V

    goto :goto_1

    .line 477
    :pswitch_5
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onDestroy()V

    goto :goto_1

    .line 480
    :pswitch_6
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onEditDisable()V

    goto :goto_1

    .line 483
    :pswitch_7
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onEditNormal()V

    goto :goto_1

    .line 487
    .end local v1           #gadget:Lcom/android/launcher2/gadget/Gadget;
    .end local v3           #info:Lcom/android/launcher2/gadget/GadgetInfo;
    :cond_1
    return-void

    .line 458
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 1318
    return-void
.end method

.method private openFolder(Lcom/android/launcher2/FolderInfo;Landroid/view/View;)V
    .locals 11
    .parameter "folderInfo"
    .parameter "folderIcon"

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x0

    .line 1418
    const/4 v1, 0x0

    .line 1419
    .local v1, openFolder:Lcom/android/launcher2/Folder;
    const/4 v8, 0x1

    .line 1420
    .local v8, needBind:Z
    instance-of v0, p1, Lcom/android/launcher2/UserFolderInfo;

    if-eqz v0, :cond_2

    .line 1421
    invoke-virtual {p1}, Lcom/android/launcher2/FolderInfo;->getFolderCache()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 1422
    if-nez v1, :cond_1

    .line 1423
    invoke-static {p0}, Lcom/android/launcher2/UserFolder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/UserFolder;

    move-result-object v1

    .line 1424
    invoke-virtual {p1, v1}, Lcom/android/launcher2/FolderInfo;->setFolderCache(Lcom/android/launcher2/Folder;)V

    .line 1434
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 1452
    :goto_1
    return-void

    .line 1426
    :cond_1
    iget-object v0, v1, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutsAdapter;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/ShortcutsAdapter;->enforceShow(Z)V

    .line 1427
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    .line 1428
    const/4 v8, 0x0

    goto :goto_0

    .line 1430
    :cond_2
    instance-of v0, p1, Lcom/android/launcher2/LiveFolderInfo;

    if-eqz v0, :cond_0

    .line 1431
    invoke-static {p0, p1}, Lcom/android/launcher2/LiveFolder;->fromXml(Landroid/content/Context;Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/LiveFolder;

    move-result-object v1

    goto :goto_0

    .line 1438
    :cond_3
    if-eqz v8, :cond_4

    .line 1439
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Folder;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 1440
    invoke-virtual {v1, p0}, Lcom/android/launcher2/Folder;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 1441
    invoke-virtual {v1, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderInfo;)V

    .line 1444
    :cond_4
    invoke-virtual {v1, p2}, Lcom/android/launcher2/Folder;->setFolderIcon(Landroid/view/View;)V

    .line 1446
    iget-wide v2, p1, Lcom/android/launcher2/FolderInfo;->container:J

    const-wide/16 v9, -0x65

    cmp-long v0, v2, v9

    if-nez v0, :cond_5

    .line 1447
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/launcher2/FolderInfo;->screenId:J

    .line 1450
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-wide v2, p1, Lcom/android/launcher2/FolderInfo;->screenId:J

    move v5, v4

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIII)V

    .line 1451
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Folder;->onOpen(Z)V

    goto :goto_1
.end method

.method private pickShortcut()V
    .locals 4

    .prologue
    .line 1621
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1622
    const-string v1, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1623
    const-string v1, "android.intent.extra.TITLE"

    const v2, 0x7f0a000e

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1625
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1626
    return-void
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 297
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 298
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 299
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 305
    if-eqz v1, :cond_2

    .line 307
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 313
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 308
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 310
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0

    .line 300
    :catch_1
    move-exception v2

    .line 305
    :goto_1
    if-eqz v0, :cond_0

    .line 307
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 308
    :catch_2
    move-exception v2

    goto :goto_0

    .line 302
    :catch_3
    move-exception v2

    .line 305
    :goto_2
    if-eqz v0, :cond_0

    .line 307
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 308
    :catch_4
    move-exception v2

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v0, :cond_1

    .line 307
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 310
    :cond_1
    :goto_4
    throw v2

    .line 308
    :catch_5
    move-exception v3

    goto :goto_4

    .line 305
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 302
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 300
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1239
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1240
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1242
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mScreenChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1244
    return-void
.end method

.method private setWallpaperDimension()V
    .locals 7

    .prologue
    .line 351
    const-string v5, "wallpaper"

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperManager;

    .line 353
    .local v4, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 354
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v5, 0x1

    move v2, v5

    .line 356
    .local v2, isPortrait:Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v3, v5

    .line 357
    .local v3, width:I
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v1, v5

    .line 358
    .local v1, height:I
    :goto_2
    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, v5, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 359
    return-void

    .line 354
    .end local v1           #height:I
    .end local v2           #isPortrait:Z
    .end local v3           #width:I
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    goto :goto_0

    .line 356
    .restart local v2       #isPortrait:Z
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v3, v5

    goto :goto_1

    .line 357
    .restart local v3       #width:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v1, v5

    goto :goto_2
.end method

.method private setupAnimations()V
    .locals 1

    .prologue
    .line 619
    const v0, 0x7f04000d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZoneEditingEnter:Landroid/view/animation/Animation;

    .line 620
    const v0, 0x7f04000e

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZoneEditingExit:Landroid/view/animation/Animation;

    .line 621
    const v0, 0x7f040013

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    .line 622
    const v0, 0x7f040014

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    .line 623
    const v0, 0x7f04001b

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetEditingEnter:Landroid/view/animation/Animation;

    .line 624
    const v0, 0x7f04001c

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetEditingExit:Landroid/view/animation/Animation;

    .line 625
    return-void
.end method

.method private setupViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 563
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 565
    .local v0, dragController:Lcom/android/launcher2/DragController;
    const v3, 0x7f07003d

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragLayer;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 567
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/DragLayer;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 568
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/DragLayer;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 570
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v4, 0x7f070042

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DeleteZone;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    .line 572
    const v3, 0x7f070040

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/WidgetThumbnailView;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

    .line 573
    new-instance v3, Lcom/android/launcher2/WidgetThumbnailViewAdapter;

    invoke-direct {v3, p0}, Lcom/android/launcher2/WidgetThumbnailViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailViewAdapter:Lcom/android/launcher2/WidgetThumbnailViewAdapter;

    .line 574
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailViewAdapter:Lcom/android/launcher2/WidgetThumbnailViewAdapter;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 575
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailViewAdapter:Lcom/android/launcher2/WidgetThumbnailViewAdapter;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/WidgetThumbnailView;->setAdapter(Lcom/android/launcher2/ThumbnailViewAdapter;)V

    .line 576
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/WidgetThumbnailView;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 578
    const v3, 0x7f070045

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ErrorBar;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mErrorBar:Lcom/android/launcher2/ErrorBar;

    .line 580
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v4, 0x7f07003e

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Workspace;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 581
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 582
    .local v2, workspace:Lcom/android/launcher2/Workspace;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 584
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v4, 0x7f07003f

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/WorkspaceThumbnailView;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    .line 586
    invoke-virtual {v2, p0}, Lcom/android/launcher2/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 587
    invoke-virtual {v2, v0}, Lcom/android/launcher2/Workspace;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 588
    invoke-virtual {v2, p0}, Lcom/android/launcher2/Workspace;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 589
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->setThumbnailView(Lcom/android/launcher2/WorkspaceThumbnailView;)V

    .line 591
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/DeleteZone;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 592
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/DeleteZone;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 594
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v4, 0x7f070041

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HotSeats;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    .line 595
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/HotSeats;->setLaucher(Lcom/android/launcher2/Launcher;)V

    .line 596
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/HotSeats;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 598
    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragController;->setDragScoller(Lcom/android/launcher2/DragScroller;)V

    .line 599
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragController;->setDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 600
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragController;->setScrollView(Landroid/view/View;)V

    .line 601
    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 604
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 605
    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 606
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 608
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setupAnimations()V

    .line 610
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 611
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_guide_tips_editing_mode"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 612
    new-instance v3, Lmiui/widget/GuidePopupWindow;

    invoke-direct {v3, p0}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    .line 613
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    const v4, 0x7f0a0057

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/widget/GuidePopupWindow;->setGuideText(Ljava/lang/String;)V

    .line 614
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v3, v5}, Lmiui/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 616
    :cond_0
    return-void
.end method

.method private showAddDialog(Lcom/android/launcher2/CellLayout$CellInfo;)V
    .locals 1
    .parameter "cellInfo"

    .prologue
    const/4 v0, 0x1

    .line 1616
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1617
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showDialog(I)V

    .line 1618
    return-void
.end method

.method private showEditPanel(ZZ)V
    .locals 6
    .parameter "show"
    .parameter "quickMode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1557
    if-nez p1, :cond_1

    move v1, v5

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->showStatusBar(Z)V

    .line 1559
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    if-eqz p1, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeleteZone;->setVisibility(I)V

    .line 1560
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDeleteZoneEditingEnter:Landroid/view/animation/Animation;

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1562
    if-eqz p2, :cond_4

    .line 1584
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v1, v3

    .line 1557
    goto :goto_0

    :cond_2
    move v2, v4

    .line 1559
    goto :goto_1

    .line 1560
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDeleteZoneEditingExit:Landroid/view/animation/Animation;

    goto :goto_2

    .line 1571
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    :goto_4
    invoke-virtual {v1, v2}, Lcom/android/launcher2/HotSeats;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1572
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    if-eqz p1, :cond_6

    move v2, v4

    :goto_5
    invoke-virtual {v1, v2}, Lcom/android/launcher2/HotSeats;->setVisibility(I)V

    .line 1573
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWidgetEditingEnter:Landroid/view/animation/Animation;

    :goto_6
    invoke-virtual {v1, v2}, Lcom/android/launcher2/WidgetThumbnailView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1574
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

    if-eqz p1, :cond_8

    move v2, v3

    :goto_7
    invoke-virtual {v1, v2}, Lcom/android/launcher2/WidgetThumbnailView;->setVisibility(I)V

    .line 1575
    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    if-eqz v1, :cond_9

    .line 1576
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

    invoke-virtual {v1, v2, v3, v3, v5}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 1577
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1578
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_guide_tips_editing_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1579
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 1571
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    goto :goto_4

    :cond_6
    move v2, v3

    .line 1572
    goto :goto_5

    .line 1573
    :cond_7
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWidgetEditingExit:Landroid/view/animation/Animation;

    goto :goto_6

    :cond_8
    move v2, v4

    .line 1574
    goto :goto_7

    .line 1580
    :cond_9
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    if-eqz v1, :cond_0

    .line 1581
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v1}, Lmiui/widget/GuidePopupWindow;->dismiss()V

    .line 1582
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    goto :goto_3
.end method

.method private showStatusBar(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1549
    .local v1, launcherWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1550
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1553
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1554
    return-void

    .line 1550
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    goto :goto_0
.end method

.method private sortDesktopItems()V
    .locals 0

    .prologue
    .line 981
    return-void
.end method

.method private startWallpaper()V
    .locals 3

    .prologue
    .line 1222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1223
    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.WallpaperSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1224
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1232
    return-void
.end method

.method private unbindDesktopItems()V
    .locals 3

    .prologue
    .line 1325
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 1326
    .local v1, item:Lcom/android/launcher2/ItemInfo;
    invoke-virtual {v1}, Lcom/android/launcher2/ItemInfo;->unbind()V

    goto :goto_0

    .line 1328
    .end local v1           #item:Lcom/android/launcher2/ItemInfo;
    :cond_0
    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"

    .prologue
    const-string v3, "launcher.preferences"

    .line 316
    const/4 v1, 0x0

    .line 318
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    .line 319
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 320
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 321
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 322
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8

    .line 336
    if-eqz v2, :cond_2

    .line 338
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 344
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 339
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 341
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0

    .line 323
    :catch_1
    move-exception v3

    .line 336
    :goto_1
    if-eqz v1, :cond_0

    .line 338
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 339
    :catch_2
    move-exception v3

    goto :goto_0

    .line 325
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 327
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 336
    if-eqz v1, :cond_0

    .line 338
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 339
    :catch_4
    move-exception v3

    goto :goto_0

    .line 328
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 336
    :goto_3
    if-eqz v1, :cond_0

    .line 338
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_0

    .line 339
    :catch_6
    move-exception v3

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v1, :cond_1

    .line 338
    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 341
    :cond_1
    :goto_5
    throw v3

    .line 339
    :catch_7
    move-exception v4

    goto :goto_5

    .line 336
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_4

    .line 328
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 325
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_9
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 323
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_a
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0
.end method

.method private writeProcHandle(Ljava/lang/String;Z)V
    .locals 2
    .parameter "path"
    .parameter "isEnable"

    .prologue
    .line 2048
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2049
    .local v0, fos:Ljava/io/FileOutputStream;
    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/launcher2/Launcher;->ENABLE_TOUCH_IMPROVE:[B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2050
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 2054
    .end local v0           #fos:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 2049
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    :cond_0
    sget-object v1, Lcom/android/launcher2/Launcher;->DISABLE_TOUCH_IMPROVE:[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2052
    .end local v0           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 2051
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method addAppWidget(Lcom/android/launcher2/LauncherAppWidgetProviderInfo;)V
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v4, 0x0

    const-string v8, "appWidgetId"

    .line 1004
    iget-object v0, p1, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1005
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    .line 1006
    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/CellLayout;->widgetFrameToCell(II)[I

    move-result-object v1

    .line 1009
    aget v2, v1, v4

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-direct {p0, v2, v1, v4}, Lcom/android/launcher2/Launcher;->findSlot(IIZ)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1010
    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 1048
    :goto_0
    return-void

    .line 1014
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1016
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v1, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 1024
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1025
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1026
    const-string v0, "appWidgetId"

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1027
    invoke-virtual {p0, v2, v7}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mErrorBar:Lcom/android/launcher2/ErrorBar;

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ErrorBar;->showError(I)V

    goto :goto_0

    .line 1030
    :cond_1
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1031
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 1033
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1034
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    const-string v5, "appWidgetId"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1037
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 1039
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v7, v0, v4}, Lcom/android/launcher2/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1042
    :cond_2
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method addEmptyFolder(Lcom/android/launcher2/UserFolderInfo;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 1110
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    .line 1111
    if-nez p1, :cond_2

    .line 1112
    invoke-direct {p0, v9}, Lcom/android/launcher2/Launcher;->findSingleSlot(Z)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v8

    .line 1113
    if-nez v8, :cond_1

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    new-instance v1, Lcom/android/launcher2/UserFolderInfo;

    invoke-direct {v1}, Lcom/android/launcher2/UserFolderInfo;-><init>()V

    .line 1116
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher2/UserFolderInfo;->title:Ljava/lang/CharSequence;

    .line 1119
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    iget v6, v8, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v7, v8, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FolderIcon;

    .line 1128
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v4, v8, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v5, v8, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v8

    move v6, v9

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    move-object v0, v1

    .line 1131
    :goto_1
    sget-object v1, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v2, v0, Lcom/android/launcher2/UserFolderInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method addGadget(Lcom/android/launcher2/gadget/GadgetInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    const/4 v4, -0x1

    .line 1052
    iget v1, p1, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    iget v2, p1, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->findSlot(IIZ)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v9

    .line 1053
    .local v9, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v9, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    iget v1, p1, Lcom/android/launcher2/gadget/GadgetInfo;->cellX:I

    if-eq v1, v4, :cond_2

    iget v1, p1, Lcom/android/launcher2/gadget/GadgetInfo;->cellY:I

    if-eq v1, v4, :cond_2

    .line 1056
    iget v1, p1, Lcom/android/launcher2/gadget/GadgetInfo;->cellX:I

    iput v1, v9, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 1057
    iget v1, p1, Lcom/android/launcher2/gadget/GadgetInfo;->cellY:I

    iput v1, v9, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 1061
    :cond_2
    const/16 v1, 0x65

    invoke-static {p0, p1, v1}, Lcom/android/launcher2/gadget/GadgetFactory;->createGadget(Landroid/app/Activity;Lcom/android/launcher2/gadget/GadgetInfo;I)Lcom/android/launcher2/gadget/Gadget;

    move-result-object v10

    .line 1062
    .local v10, gadget:Lcom/android/launcher2/gadget/Gadget;
    if-eqz v10, :cond_0

    .line 1065
    const-wide/16 v3, -0x64

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v5

    iget v7, v9, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v8, v9, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 1069
    invoke-interface {v10}, Lcom/android/launcher2/gadget/Gadget;->onCreate()V

    .line 1071
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v0, v10

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    iget v3, v9, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v4, v9, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    iget v5, p1, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    iget v6, p1, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    .line 1074
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    invoke-interface {v10}, Lcom/android/launcher2/gadget/Gadget;->onResume()V

    .line 1076
    iget v1, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 1077
    invoke-interface {v10}, Lcom/android/launcher2/gadget/Gadget;->onEditNormal()V

    goto :goto_0
.end method

.method addItem(Lcom/android/launcher2/ItemInfo;Z)V
    .locals 9
    .parameter "info"
    .parameter "insert"

    .prologue
    const/4 v6, 0x1

    .line 1976
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1977
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HotSeats;->pushItem(Lcom/android/launcher2/ItemInfo;)Z

    .line 1984
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1978
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 1979
    check-cast p1, Lcom/android/launcher2/ShortcutInfo;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Launcher;->addShortcut(Lcom/android/launcher2/ShortcutInfo;Z)V

    goto :goto_0

    .line 1980
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/android/launcher2/UserFolderInfo;

    if-eqz v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    iget v4, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    const/4 v8, 0x0

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    goto :goto_0
.end method

.method addLiveFolder(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    .line 1099
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1100
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1102
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->addEmptyFolder(Lcom/android/launcher2/UserFolderInfo;)V

    .line 1107
    :goto_0
    return-void

    .line 1105
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method addShortcut(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1948
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->addShortcut(Lcom/android/launcher2/ShortcutInfo;Z)V

    .line 1949
    return-void
.end method

.method addShortcut(Lcom/android/launcher2/ShortcutInfo;Z)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const-string v4, "Launcher"

    .line 1987
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->getParentFolderIcon(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1988
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->getParentFolderInfo(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderInfo;

    move-result-object v2

    .line 1989
    if-eqz v2, :cond_3

    instance-of v1, v2, Lcom/android/launcher2/UserFolderInfo;

    if-eqz v1, :cond_3

    .line 1990
    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    move-object v1, v0

    invoke-virtual {v1, p1}, Lcom/android/launcher2/UserFolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    .line 1991
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getFolderIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v1

    .line 1992
    if-eqz v1, :cond_2

    .line 1993
    invoke-virtual {v1}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 1997
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder;

    .line 1998
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v4

    if-ne v4, v2, :cond_0

    .line 1999
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    .line 2003
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ApplicationsMessage;->updateFolderMessage(Lcom/android/launcher2/FolderInfo;)V

    .line 2011
    :goto_1
    return-void

    .line 1995
    :cond_2
    const-string v1, "Launcher"

    const-string v1, "Can\'t find folder icon by tag"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2005
    :cond_3
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find user folder of id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher2/ShortcutInfo;->container:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2008
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/launcher2/ShortcutInfo;->screenId:J

    iget v5, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    iget v6, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    move v8, v7

    move v9, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    goto :goto_1
.end method

.method public bindAppMessage(Lcom/android/launcher2/ShortcutIcon;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "icon"
    .parameter "componentName"

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/ApplicationsMessage;->addApplication(Lcom/android/launcher2/ShortcutIcon;Landroid/content/ComponentName;)V

    .line 2029
    return-void
.end method

.method public bindAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .locals 12
    .parameter

    .prologue
    const-string v11, "Launcher"

    .line 1841
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1843
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAppWidget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 1847
    iget v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    .line 1848
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 1849
    if-nez v2, :cond_0

    .line 1851
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAppWidget: appWidgetId has not been bound to a provider yet,ignore it."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :goto_0
    return-void

    .line 1856
    :cond_0
    const-string v3, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindAppWidget: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " belongs to component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v3, p0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iput-object v3, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1861
    iget-object v3, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1862
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1864
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->screenId:J

    iget v4, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellX:I

    iget v5, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellY:I

    iget v6, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    iget v7, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 1867
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 1869
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1872
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bound widget id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1936
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeDialog(I)V

    .line 1937
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v1, Lcom/android/launcher2/Launcher$3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/Launcher$3;-><init>(Lcom/android/launcher2/Launcher;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1945
    return-void
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AllAppsList$RemoveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2019
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->removeDialog(I)V

    .line 2020
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V

    .line 2021
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/HotSeats;->removeItems(Ljava/util/ArrayList;)V

    .line 2022
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    .line 2023
    .local v1, ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    iget-object v3, v1, Lcom/android/launcher2/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/ApplicationsMessage;->removeApplication(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2025
    .end local v1           #ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    :cond_0
    return-void
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1831
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    sget-object v0, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1832
    sget-object v0, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1833
    return-void
.end method

.method public bindGadget(Lcom/android/launcher2/gadget/GadgetInfo;)V
    .locals 11
    .parameter "item"

    .prologue
    .line 1883
    const/16 v1, 0x65

    invoke-static {p0, p1, v1}, Lcom/android/launcher2/gadget/GadgetFactory;->createGadget(Landroid/app/Activity;Lcom/android/launcher2/gadget/GadgetInfo;I)Lcom/android/launcher2/gadget/Gadget;

    move-result-object v10

    .line 1884
    .local v10, gadget:Lcom/android/launcher2/gadget/Gadget;
    if-nez v10, :cond_1

    .line 1902
    :cond_0
    :goto_0
    return-void

    .line 1886
    :cond_1
    instance-of v1, v10, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1887
    move-object v0, v10

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 1889
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1890
    invoke-interface {v10}, Lcom/android/launcher2/gadget/Gadget;->onCreate()V

    .line 1892
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-wide v3, p1, Lcom/android/launcher2/gadget/GadgetInfo;->screenId:J

    iget v5, p1, Lcom/android/launcher2/gadget/GadgetInfo;->cellX:I

    iget v6, p1, Lcom/android/launcher2/gadget/GadgetInfo;->cellY:I

    iget v7, p1, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 1894
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 1896
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1898
    iget-wide v3, p1, Lcom/android/launcher2/gadget/GadgetInfo;->screenId:J

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 1899
    invoke-interface {v10}, Lcom/android/launcher2/gadget/Gadget;->onResume()V

    goto :goto_0
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1798
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v1, :cond_0

    .line 1825
    :goto_0
    return-void

    .line 1800
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move v10, p2

    .line 1802
    :goto_1
    if-ge v10, p3, :cond_2

    .line 1803
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    move-object v6, v0

    .line 1804
    iget-wide v2, v6, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1805
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1807
    :cond_1
    iget v2, v6, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 1802
    :goto_2
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_1

    .line 1811
    :pswitch_0
    invoke-virtual {p0, v6, v9}, Lcom/android/launcher2/Launcher;->addItem(Lcom/android/launcher2/ItemInfo;Z)V

    goto :goto_2

    .line 1814
    :pswitch_1
    const v2, 0x7f03001e

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    move-object v0, v6

    check-cast v0, Lcom/android/launcher2/LiveFolderInfo;

    move-object v8, v0

    invoke-static {v2, p0, v3, v8}, Lcom/android/launcher2/LiveFolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/LiveFolderInfo;)Lcom/android/launcher2/LiveFolderIcon;

    move-result-object v2

    .line 1818
    iget-wide v3, v6, Lcom/android/launcher2/ItemInfo;->screenId:J

    iget v5, v6, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->cellY:I

    move v8, v7

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    goto :goto_2

    .line 1824
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->requestLayout()V

    goto :goto_0

    .line 1807
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public closeAnyFolder()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1304
    const/4 v2, 0x0

    .line 1305
    .local v2, r:Z
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolders()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Folder;

    .line 1306
    .local v0, f:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1307
    if-nez v2, :cond_1

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    move v2, v3

    :goto_1
    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 1310
    .end local v0           #f:Lcom/android/launcher2/Folder;
    :cond_3
    return v2
.end method

.method closeFolder(Lcom/android/launcher2/Folder;)Z
    .locals 1
    .parameter "folder"

    .prologue
    .line 1284
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;Z)Z

    move-result v0

    return v0
.end method

.method closeFolder(Lcom/android/launcher2/Folder;Z)Z
    .locals 4
    .parameter "folder"
    .parameter "allowAnimation"

    .prologue
    const/4 v2, 0x0

    .line 1288
    if-nez p1, :cond_1

    .line 1300
    :cond_0
    :goto_0
    return v2

    .line 1291
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1292
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 1293
    instance-of v2, p1, Lcom/android/launcher2/DropTarget;

    if-eqz v2, :cond_2

    .line 1295
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/DropTarget;

    move-object v2, v0

    invoke-virtual {v3, v2}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 1297
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/launcher2/Folder;->onClose(Z)V

    .line 1298
    const/4 v2, 0x1

    goto :goto_0
.end method

.method closeSystemDialogs()V
    .locals 1

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 782
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 790
    return-void

    .line 784
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;
    .locals 2
    .parameter "parent"
    .parameter "info"

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, ii:Lcom/android/launcher2/ItemIcon;
    instance-of v1, p2, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v1, :cond_2

    .line 630
    check-cast p2, Lcom/android/launcher2/ShortcutInfo;

    .end local p2
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->createShortcutIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/ShortcutIcon;

    move-result-object v0

    .line 635
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {v0, p0}, Lcom/android/launcher2/ItemIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    :cond_1
    return-object v0

    .line 632
    .restart local p2
    :cond_2
    instance-of v1, p2, Lcom/android/launcher2/UserFolderInfo;

    if-eqz v1, :cond_0

    .line 633
    check-cast p2, Lcom/android/launcher2/UserFolderInfo;

    .end local p2
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->createUserFolderIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/UserFolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1248
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1249
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1266
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    move v0, v2

    .line 1251
    goto :goto_1

    .line 1253
    :sswitch_1
    const-string v0, "debug.launcher2.dumpstate"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->dumpState()V

    move v0, v2

    .line 1255
    goto :goto_1

    .line 1259
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1260
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 1262
    goto :goto_1

    .line 1249
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    .line 1260
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dumpState()V
    .locals 3

    .prologue
    const-string v2, "Launcher"

    .line 2060
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWorkspaceLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWaitingForResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavedInstanceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDesktopItems.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFolders.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->dumpState()V

    .line 2068
    const-string v0, "Launcher"

    const-string v0, "END launcher2 dump state"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    return-void
.end method

.method findGadget(J)Lcom/android/launcher2/gadget/Gadget;
    .locals 5
    .parameter "itemId"

    .prologue
    .line 1082
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/gadget/Gadget;

    .line 1083
    .local v1, g:Lcom/android/launcher2/gadget/Gadget;
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/gadget/GadgetInfo;

    iget-wide v3, p0, Lcom/android/launcher2/gadget/GadgetInfo;->id:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    move-object v3, v1

    .line 1088
    .end local v1           #g:Lcom/android/launcher2/gadget/Gadget;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finishBindingItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1910
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1911
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1912
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1915
    :cond_0
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 1918
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 1919
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v0}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1920
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1923
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 1925
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    invoke-virtual {v0}, Lcom/android/launcher2/ApplicationsMessage;->requareUpdateMessages()V

    .line 1927
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v0}, Lcom/android/launcher2/HotSeats;->finishBinding()V

    .line 1928
    return-void
.end method

.method public getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 1758
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getEditingState()I
    .locals 1

    .prologue
    .line 1513
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    return v0
.end method

.method public getFolderIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderIcon;
    .locals 5
    .parameter "fi"

    .prologue
    const/4 v4, 0x0

    .line 1960
    if-nez p1, :cond_0

    move-object v0, v4

    .line 1968
    .end local p0
    :goto_0
    return-object v0

    .line 1963
    .restart local p0
    :cond_0
    iget-wide v0, p1, Lcom/android/launcher2/FolderInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1964
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/FolderIcon;

    move-object v0, p0

    goto :goto_0

    .line 1965
    .restart local p0
    :cond_1
    iget-wide v0, p1, Lcom/android/launcher2/FolderInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1966
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HotSeats;->getItemIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/FolderIcon;

    move-object v0, p0

    goto :goto_0

    .restart local p0
    :cond_2
    move-object v0, v4

    .line 1968
    goto :goto_0
.end method

.method getIconCache()Lcom/android/launcher2/IconCache;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    return-object v0
.end method

.method public getParentFolderIcon(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderIcon;
    .locals 1
    .parameter "si"

    .prologue
    .line 1972
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->getParentFolderInfo(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getFolderIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v0

    return-object v0
.end method

.method public getParentFolderInfo(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderInfo;
    .locals 4
    .parameter "si"

    .prologue
    .line 1952
    iget-wide v0, p1, Lcom/android/launcher2/ShortcutInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher2/ShortcutInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1954
    sget-object v0, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/launcher2/ShortcutInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/FolderInfo;

    move-object v0, p0

    .line 1956
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTouchTranslator()Lcom/android/launcher2/DragController$TouchTranslator;
    .locals 2

    .prologue
    .line 1540
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1541
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentCellScreen()Lcom/android/launcher2/CellScreen;

    move-result-object v0

    .line 1543
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method public isInEditing()Z
    .locals 2

    .prologue
    .line 1509
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 363
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 371
    if-ne p2, v6, :cond_3

    .line 372
    sparse-switch p1, :sswitch_data_0

    .line 415
    :cond_0
    :goto_0
    :sswitch_0
    if-eq p1, v8, :cond_1

    const/4 v5, 0x7

    if-eq p1, v5, :cond_1

    if-eq p1, v7, :cond_1

    const/16 v5, 0x65

    if-eq p1, v5, :cond_1

    const/16 v5, 0xa

    if-ne p1, v5, :cond_2

    if-nez p2, :cond_2

    .line 420
    :cond_1
    iput-boolean v7, p0, Lcom/android/launcher2/Launcher;->mOnResumeExpectedForActivityResult:Z

    .line 422
    :cond_2
    return-void

    .line 374
    :sswitch_1
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v5}, Lcom/android/launcher2/DragController;->clearLastDragInfo()V

    .line 375
    invoke-virtual {p0, p3}, Lcom/android/launcher2/Launcher;->processShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 378
    :sswitch_2
    invoke-direct {p0, p3}, Lcom/android/launcher2/Launcher;->completeAddShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 381
    :sswitch_3
    invoke-virtual {p0, p3}, Lcom/android/launcher2/Launcher;->addLiveFolder(Landroid/content/Intent;)V

    goto :goto_0

    .line 384
    :sswitch_4
    invoke-direct {p0, p3}, Lcom/android/launcher2/Launcher;->completeAddLiveFolder(Landroid/content/Intent;)V

    goto :goto_0

    .line 387
    :sswitch_5
    invoke-direct {p0, p3}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 393
    :sswitch_6
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 394
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 395
    invoke-static {v1}, Lcom/android/launcher2/gadget/GadgetFactory;->getGadgetItemId(Landroid/os/Bundle;)J

    move-result-wide v3

    .line 396
    .local v3, itemId:J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 398
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/Launcher;->findGadget(J)Lcom/android/launcher2/gadget/Gadget;

    move-result-object v2

    .line 399
    .local v2, gadget:Lcom/android/launcher2/gadget/Gadget;
    if-eqz v2, :cond_0

    .line 400
    invoke-interface {v2, v1}, Lcom/android/launcher2/gadget/Gadget;->updateConfig(Landroid/os/Bundle;)V

    goto :goto_0

    .line 406
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #gadget:Lcom/android/launcher2/gadget/Gadget;
    .end local v3           #itemId:J
    :cond_3
    if-ne p1, v8, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 409
    const-string v5, "appWidgetId"

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 410
    .local v0, appWidgetId:I
    if-eq v0, v6, :cond_0

    .line 411
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v5, v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 372
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x7 -> :sswitch_1
        0x8 -> :sswitch_3
        0xa -> :sswitch_0
        0x65 -> :sswitch_6
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1272
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    .line 1281
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1280
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1336
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1337
    .local v4, tag:Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v5, :cond_2

    .line 1338
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1355
    .end local v4           #tag:Ljava/lang/Object;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1340
    .restart local v4       #tag:Ljava/lang/Object;
    .restart local p1
    :cond_1
    move-object v0, v4

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v1, v0

    .line 1341
    .local v1, info:Lcom/android/launcher2/ShortcutInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v5, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1342
    .local v2, intent:Landroid/content/Intent;
    new-array v3, v11, [I

    .line 1343
    .local v3, pos:[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1344
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v3, v8

    aget v7, v3, v10

    aget v8, v3, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v9, v3, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1346
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 1348
    iget v5, v1, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    if-ne v11, v5, :cond_0

    .line 1349
    invoke-virtual {v1, p0}, Lcom/android/launcher2/ShortcutInfo;->loadContactInfo(Landroid/content/Context;)V

    .line 1350
    check-cast p1, Lcom/android/launcher2/ShortcutIcon;

    .end local p1
    invoke-virtual {p1, p0, v1}, Lcom/android/launcher2/ShortcutIcon;->updateInfo(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_0

    .line 1352
    .end local v1           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pos:[I
    .restart local p1
    :cond_2
    instance-of v5, v4, Lcom/android/launcher2/FolderInfo;

    if-eqz v5, :cond_0

    .line 1353
    check-cast v4, Lcom/android/launcher2/FolderInfo;

    .end local v4           #tag:Ljava/lang/Object;
    invoke-direct {p0, v4, p1}, Lcom/android/launcher2/Launcher;->handleFolderClick(Lcom/android/launcher2/FolderInfo;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x100

    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 209
    const-string v3, "Launcher"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, -0x10001

    const/high16 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 216
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    invoke-virtual {v0, p0}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 219
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 220
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v3}, Lcom/android/launcher2/IconCache;->updateDefaultIcon()V

    .line 221
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v3}, Lcom/android/launcher2/IconCache;->flush()V

    .line 222
    new-instance v3, Lcom/android/launcher2/DragController;

    invoke-direct {v3, p0}, Lcom/android/launcher2/DragController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 224
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->registerContentObservers()V

    .line 226
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 227
    new-instance v3, Lcom/android/launcher2/LauncherAppWidgetHost;

    const/16 v4, 0x400

    invoke-direct {v3, p0, p0, v4}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Lcom/android/launcher2/Launcher;I)V

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 229
    new-instance v3, Lcom/android/launcher2/ApplicationsMessage;

    invoke-direct {v3, p0}, Lcom/android/launcher2/ApplicationsMessage;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    .line 235
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    .line 236
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setWallpaperDimension()V

    .line 238
    const v3, 0x7f03001b

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    .line 239
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setupViews()V

    .line 245
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 248
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 249
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 251
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    .local v2, screenIntentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1599
    packed-switch p1, :pswitch_data_0

    .line 1604
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1601
    :pswitch_0
    new-instance v0, Lcom/android/launcher2/Launcher$CreateShortcut;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$CreateShortcut;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher$CreateShortcut;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1599
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 867
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 896
    :goto_0
    return v0

    .line 871
    :cond_0
    const v0, 0x7f0a0020

    invoke-interface {p1, v1, v1, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 873
    const/4 v0, 0x3

    const v1, 0x7f0a0011

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x57

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 876
    const/4 v0, 0x4

    const v1, 0x7f0a0012

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 879
    const/4 v0, 0x5

    const v1, 0x7f0a0013

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 882
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 886
    const/4 v1, 0x6

    const v2, 0x7f0a0015

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x50

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 890
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher2/LauncherPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 892
    const v1, 0x7f0a0022

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x6020268

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x4c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move v0, v4

    .line 896
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 830
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 832
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 834
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 836
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->unbindDesktopItems()V

    .line 838
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 839
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mScreenChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 841
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    .line 843
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 844
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 845
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 846
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    invoke-virtual {v0}, Lcom/android/launcher2/ApplicationsMessage;->destory()V

    .line 847
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 526
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 527
    .local v1, handled:Z
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->acceptFilter()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    .line 528
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 530
    .local v0, gotKey:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move-result v2

    .line 546
    .end local v0           #gotKey:Z
    :goto_0
    return v2

    .line 542
    :cond_0
    const/16 v2, 0x52

    if-ne p1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 543
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 546
    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1455
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 1487
    :goto_0
    return v1

    .line 1459
    :cond_0
    instance-of v1, p1, Lcom/android/launcher2/CellLayout;

    if-nez v1, :cond_1

    .line 1460
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 1463
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellInfo;

    .line 1466
    .local v0, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v0, :cond_2

    move v1, v2

    .line 1467
    goto :goto_0

    .line 1470
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->allowLongPress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1471
    iget-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_5

    .line 1473
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    .line 1476
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    :cond_3
    :goto_2
    move v1, v2

    .line 1487
    goto :goto_0

    .line 1473
    :cond_4
    const/16 v1, 0x8

    goto :goto_1

    .line 1479
    :cond_5
    iget-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/Folder;

    if-nez v1, :cond_3

    .line 1481
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 1483
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v6, 0x40

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 794
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 797
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeSystemDialogs()V

    .line 808
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher2/Launcher;->mLastPausedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 812
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    goto :goto_0

    .line 814
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_3

    move v0, v5

    .line 818
    :goto_1
    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isDefaultScreenShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    goto :goto_0

    :cond_3
    move v0, v4

    .line 816
    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x7

    const/4 v1, 0x1

    .line 947
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 976
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 949
    :pswitch_0
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-ne v0, v3, :cond_1

    .line 950
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->addItems()V

    :cond_0
    :goto_1
    move v0, v1

    .line 958
    goto :goto_0

    .line 951
    :cond_1
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-ne v0, v2, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 953
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->sortDesktopItems()V

    goto :goto_1

    .line 955
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    goto :goto_1

    .line 960
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    move v0, v1

    .line 961
    goto :goto_0

    .line 963
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move v0, v1

    .line 964
    goto :goto_0

    .line 966
    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 967
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    :goto_2
    move v0, v1

    .line 973
    goto :goto_0

    .line 968
    :cond_3
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-eq v0, v2, :cond_4

    .line 969
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    goto :goto_2

    .line 971
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    goto :goto_2

    .line 947
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 446
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 447
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot;

    check-cast v0, Landroid/view/ViewRoot;

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewRoot;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 448
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    .line 449
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->notifyGadgetStateChanged(I)V

    .line 450
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/Launcher;->mLastPausedTime:J

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->enableTouchImprove(Z)V

    .line 452
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1609
    .line 1613
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x7

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 901
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 902
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    move v0, v3

    .line 903
    :goto_0
    iget v1, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v1}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    .line 905
    :goto_1
    iget v2, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v2}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 908
    :goto_2
    if-eqz v0, :cond_6

    .line 909
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 914
    invoke-direct {p0, v5}, Lcom/android/launcher2/Launcher;->findSingleSlot(Z)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuAddInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 915
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuAddInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v0, :cond_5

    move v0, v3

    :goto_3
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 929
    :cond_0
    :goto_4
    if-nez v2, :cond_8

    move v0, v3

    :goto_5
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 930
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-eq v0, v6, :cond_9

    .line 931
    :cond_1
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x42

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 934
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 942
    :goto_6
    return v3

    :cond_2
    move v0, v5

    .line 902
    goto :goto_0

    :cond_3
    move v1, v5

    .line 903
    goto :goto_1

    :cond_4
    move v2, v5

    .line 905
    goto :goto_2

    :cond_5
    move v0, v5

    .line 915
    goto :goto_3

    .line 916
    :cond_6
    if-eqz v1, :cond_7

    .line 917
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0020

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 921
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_4

    .line 922
    :cond_7
    if-eqz v2, :cond_0

    .line 923
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0021

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x53

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 927
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_4

    :cond_8
    move v0, v5

    .line 929
    goto :goto_5

    .line 936
    :cond_9
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 939
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_6
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 426
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 427
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeExpectedForActivityResult:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    .line 430
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeExpectedForActivityResult:Z

    .line 431
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->notifyGadgetStateChanged(I)V

    .line 432
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    invoke-virtual {v0}, Lcom/android/launcher2/ApplicationsMessage;->requareUpdateMessages()V

    .line 433
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->updateWallpaper()V

    .line 434
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->enableTouchImprove(Z)V

    .line 436
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 515
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 990
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/launcher2/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 991
    return v1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 505
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 506
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->onStart()V

    .line 507
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 508
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->notifyGadgetStateChanged(I)V

    .line 509
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 491
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 492
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->onStop()V

    .line 493
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher2/DragLayer;->updateWallpaperOffset()V

    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->notifyGadgetStateChanged(I)V

    .line 500
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 501
    return-void

    .line 496
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 497
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "Launcher"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onWorkspaceDropExternalComplate()V
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    if-eqz v0, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0}, Lmiui/widget/GuidePopupWindow;->dismiss()V

    .line 1589
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Lmiui/widget/GuidePopupWindow;

    .line 1591
    :cond_0
    return-void
.end method

.method processShortcut(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1092
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1093
    return-void
.end method

.method public reloadWidgetPreview()V
    .locals 2

    .prologue
    .line 767
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailViewAdapter:Lcom/android/launcher2/WidgetThumbnailViewAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->reloadWidgets()V

    .line 771
    return-void

    .line 768
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "launcherInfo"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 742
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 743
    return-void
.end method

.method removeFolder(Lcom/android/launcher2/FolderInfo;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 1135
    sget-object v0, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    return-void
.end method

.method public removeGadget(Lcom/android/launcher2/ItemInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 750
    iget v4, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 751
    const/4 v2, 0x0

    .line 752
    .local v2, gadget:Lcom/android/launcher2/gadget/Gadget;
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/gadget/Gadget;

    .line 753
    .local v1, g:Lcom/android/launcher2/gadget/Gadget;
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 754
    move-object v2, v1

    .line 758
    .end local v1           #g:Lcom/android/launcher2/gadget/Gadget;
    :cond_1
    if-eqz v2, :cond_2

    .line 759
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 760
    invoke-interface {v2}, Lcom/android/launcher2/gadget/Gadget;->onDestroy()V

    .line 763
    .end local v2           #gadget:Lcom/android/launcher2/gadget/Gadget;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public setEditingState(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1517
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-ne p1, v0, :cond_0

    .line 1537
    :goto_0
    return-void

    .line 1519
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1534
    :goto_1
    iput p1, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    .line 1535
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mErrorBar:Lcom/android/launcher2/ErrorBar;

    if-eq p1, v4, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/android/launcher2/ErrorBar;->setMargins(IIII)V

    goto :goto_0

    .line 1521
    :pswitch_0
    const/16 v0, 0x9

    iget v1, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-ne v0, v1, :cond_1

    move v0, v2

    :goto_3
    invoke-direct {p0, v3, v0}, Lcom/android/launcher2/Launcher;->showEditPanel(ZZ)V

    .line 1522
    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->notifyGadgetStateChanged(I)V

    .line 1523
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v3, v3}, Lcom/android/launcher2/Workspace;->setEditMode(ZZ)V

    goto :goto_1

    :cond_1
    move v0, v3

    .line 1521
    goto :goto_3

    .line 1526
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Launcher;->showEditPanel(ZZ)V

    .line 1527
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->notifyGadgetStateChanged(I)V

    .line 1528
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/Workspace;->setEditMode(ZZ)V

    goto :goto_1

    .line 1531
    :pswitch_2
    invoke-direct {p0, v2, v2}, Lcom/android/launcher2/Launcher;->showEditPanel(ZZ)V

    goto :goto_1

    .line 1535
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_2

    .line 1519
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method showError(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mErrorBar:Lcom/android/launcher2/ErrorBar;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ErrorBar;->showError(I)V

    .line 775
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v0}, Lcom/android/launcher2/DeleteZone;->onShowError()V

    .line 776
    return-void
.end method

.method public showPreview(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 1491
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    :goto_0
    return-void

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/launcher2/HotSeats;->setVisibility(I)V

    .line 1500
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/launcher2/HotSeats;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1501
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->showPreview(Z)V

    goto :goto_0

    .line 1499
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1500
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    goto :goto_2
.end method

.method startActivity(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1358
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1360
    :try_start_0
    instance-of v1, p2, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 1361
    move-object v0, p2

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v1, v0

    .line 1362
    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutInfo;->onLaunch()V

    .line 1363
    invoke-static {p0, v1}, Lcom/android/launcher2/LauncherModel;->updateItemFlagsInDatabaseDelayed(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    .line 1364
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/ApplicationsMessage;->onLaunchApplication(Landroid/content/ComponentName;)V

    .line 1365
    iget-wide v1, v1, Lcom/android/launcher2/ShortcutInfo;->container:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1366
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    .line 1369
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1374
    :goto_0
    return-void

    .line 1370
    :catch_0
    move-exception v1

    .line 1371
    const v2, 0x7f0a001e

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1372
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher cannot start this activity(app2sd?)tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0a0007

    const/4 v1, 0x0

    .line 1379
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1380
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1389
    :goto_0
    return-void

    .line 1381
    :catch_0
    move-exception v0

    .line 1382
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1383
    :catch_1
    move-exception v0

    .line 1384
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1385
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startBinding()V
    .locals 4

    .prologue
    .line 1768
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->notifyGadgetStateChanged(I)V

    .line 1769
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1771
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 1772
    .local v2, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    .line 1773
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1775
    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getCellLayout(I)Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 1773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1789
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v3}, Lcom/android/launcher2/HotSeats;->startBinding()V

    .line 1790
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 853
    if-nez p1, :cond_0

    .line 855
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object v0

    .line 856
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    move-object v1, v0

    .line 859
    :goto_0
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 861
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 863
    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method public updateFolderMessage(Lcom/android/launcher2/FolderInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ApplicationsMessage;->updateFolderMessage(Lcom/android/launcher2/FolderInfo;)V

    .line 2033
    return-void
.end method

.method public updateWallpaperOffset(FFFF)V
    .locals 1
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher2/DragLayer;->updateWallpaperOffset(FFFF)V

    .line 1749
    return-void
.end method
