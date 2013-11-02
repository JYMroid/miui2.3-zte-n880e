.class public Lcom/android/systemui/statusbar/StatusBarService;
.super Landroid/app/Service;
.source "StatusBarService.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarService$MyTicker;,
        Lcom/android/systemui/statusbar/StatusBarService$Launcher;,
        Lcom/android/systemui/statusbar/StatusBarService$H;,
        Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;
    }
.end annotation


# static fields
.field static final CAPTURED_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static sShowBatteryUnderKeyguard:Z

.field public static sShowCarrierUnderKeyguard:Z

.field public static sShowDateUnderKeyguard:Z

.field public static sShowNotificationUnderKeyguard:Z

.field public static sShowStatusUnderKeyguard:Z

.field public static sShowTimeUnderKeyguard:Z

.field public static sTogglesInListStyle:Z


# instance fields
.field mAbsPos:[I

.field mAnimAccel:F

.field mAnimLastTime:J

.field mAnimVel:F

.field mAnimY:F

.field mAnimating:Z

.field mAnimatingReveal:Z

.field private mAutoExitFullscreenRunnable:Ljava/lang/Runnable;

.field mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCarrierView:Lcom/android/systemui/statusbar/CarrierLabel;

.field mClearButton:Landroid/widget/ImageView;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

.field mCloseViewContent:Landroid/view/View;

.field mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field mCurAnimationTime:J

.field mDateView:Lcom/android/systemui/statusbar/DateView;

.field mDisabled:I

.field mDisplay:Landroid/view/Display;

.field mDisplayHeight:F

.field mEdgeBorder:I

.field private mEventDown:Landroid/view/MotionEvent;

.field private mExitingFullscreen:Z

.field private mExitingFullscreenRunnable:Ljava/lang/Runnable;

.field mExpanded:Z

.field mExpandedContentContentIndex:I

.field mExpandedContents:[Landroid/view/View;

.field mExpandedCurrentContent:Landroid/view/View;

.field mExpandedDialog:Landroid/app/Dialog;

.field mExpandedHeader:Landroid/view/View;

.field mExpandedNotifications:Landroid/view/View;

.field mExpandedParams:Landroid/view/WindowManager$LayoutParams;

.field mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

.field mExpandedVisible:Z

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mGuideCall:I

.field private mGuideNotification:I

.field private mGuideToggle:I

.field private mGuideToggleList:I

.field private mGuideWindow:Lmiui/widget/GuidePopupWindow;

.field mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

.field mIconPolicy:Lcom/android/systemui/statusbar/StatusBarPolicy;

.field mIconSize:I

.field mIcons:Landroid/widget/LinearLayout;

.field mLatest:Lcom/android/systemui/statusbar/NotificationData;

.field mLatestItems:Landroid/widget/LinearLayout;

.field mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

.field mNotificationScroll:Landroid/widget/ScrollView;

.field mOngoing:Lcom/android/systemui/statusbar/NotificationData;

.field mOngoingItems:Landroid/widget/LinearLayout;

.field private mPanelSlightlyVisible:Z

.field mPixelFormat:I

.field mPositionTmp:[I

.field mQueueLock:Ljava/lang/Object;

.field private mResolver:Landroid/content/ContentResolver;

.field mStartTracing:Ljava/lang/Runnable;

.field mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

.field mStatusBattery:Lcom/android/systemui/statusbar/BatteryStatus;

.field mStatusClock:Lcom/android/systemui/statusbar/Clock;

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTicker:Lcom/android/systemui/statusbar/Ticker;

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mToggleBar:Lmiui/widget/ScreenView;

.field mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

.field mToggleSettingsButton:Landroid/view/View;

.field mTracking:Z

.field mTrackingParams:Landroid/view/WindowManager$LayoutParams;

.field mTrackingPosition:I

.field mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

.field mUsbModeButton:Landroid/widget/CheckBox;

.field private mUsbModeButtonCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mUsbModeNotification:Landroid/view/View;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewDelta:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 116
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    .line 117
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sShowBatteryUnderKeyguard:Z

    .line 118
    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowCarrierUnderKeyguard:Z

    .line 119
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sShowDateUnderKeyguard:Z

    .line 120
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sShowNotificationUnderKeyguard:Z

    .line 121
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sShowStatusUnderKeyguard:Z

    .line 122
    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowTimeUnderKeyguard:Z

    .line 1837
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarService;->CAPTURED_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 105
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 128
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/CommandQueue;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 135
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Lcom/android/systemui/statusbar/StatusBarService$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQueueLock:Ljava/lang/Object;

    .line 150
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    .line 173
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    .line 207
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 209
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    .line 212
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 913
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$5;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAutoExitFullscreenRunnable:Ljava/lang/Runnable;

    .line 922
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$6;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExitingFullscreenRunnable:Ljava/lang/Runnable;

    .line 1036
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$7;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1787
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$9;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 1798
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$10;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2007
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$12;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStartTracing:Ljava/lang/Runnable;

    .line 2017
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$13;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStopTracing:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/StatusBarService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->playSound(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/StatusBarService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExitingFullscreen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateStatusBarBackground()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/StatusBarService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->captureScreen()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->unbindViews()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->bindViews()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->triggerCameraKey()V

    return-void
.end method

.method private bindViews()V
    .locals 10

    .prologue
    .line 266
    invoke-static {p0}, Lcom/android/systemui/toggles/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x60a0006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBarService;->sShowBatteryUnderKeyguard:Z

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x60a0007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBarService;->sShowCarrierUnderKeyguard:Z

    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x60a0008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBarService;->sShowNotificationUnderKeyguard:Z

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x60a0009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBarService;->sShowStatusUnderKeyguard:Z

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x60a000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBarService;->sShowTimeUnderKeyguard:Z

    .line 278
    new-instance v7, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    .line 279
    new-instance v7, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    .line 280
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeStatusBarView(Landroid/content/Context;)V

    .line 283
    new-instance v3, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v3}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 284
    .local v3, iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v4, notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v5, notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v7, p0, v3}, Lcom/android/systemui/statusbar/CommandQueue;->registerCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    .line 288
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface {v7, v8, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;)V

    .line 289
    iget v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/StatusBarService;->disable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v0

    .line 296
    .local v0, N:I
    const/4 v6, 0x0

    .line 297
    .local v6, viewIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 298
    invoke-virtual {v3, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    .line 299
    .local v2, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v2, :cond_0

    .line 300
    invoke-virtual {v3, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v1, v6, v2}, Lcom/android/systemui/statusbar/StatusBarService;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 301
    add-int/lit8 v6, v6, 0x1

    .line 297
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 306
    .end local v2           #icon:Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 307
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v0, v7, :cond_2

    .line 308
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 309
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/StatusBarService;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 312
    :cond_2
    const-string v7, "StatusBarService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notification list length mismatch: keys="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " notifications="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->addStatusBarView()V

    .line 318
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.miui.app.ExtraStatusBarManager.LOADED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/StatusBarService;->sendBroadcast(Landroid/content/Intent;)V

    .line 319
    return-void

    .line 290
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v6           #viewIndex:I
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private captureScreen()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1839
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1840
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lmiui/os/Environment;->isInternalStorageLow(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1841
    const v0, 0x609007c

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1887
    :goto_0
    return-void

    .line 1850
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/statusbar/StatusBarService;->CAPTURED_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1851
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getMIUIStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/screen_cap/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1852
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "/cache/"

    .line 1855
    :goto_1
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1ff

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 1856
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/screencap"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1857
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 1861
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    new-instance v4, Lcom/android/systemui/statusbar/StatusBarService$11;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/StatusBarService$11;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/StatusBarService$H;->post(Ljava/lang/Runnable;)Z

    .line 1868
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1869
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/xbin/mv2sd"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x2

    aput-object v1, v3, v2

    const/4 v2, 0x3

    aput-object v0, v3, v2

    .line 1870
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1882
    :goto_2
    new-array v2, v8, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v7

    const/4 v1, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto/16 :goto_0

    :cond_1
    move-object v2, v1

    .line 1852
    goto/16 :goto_1

    .line 1873
    :cond_2
    const v2, 0x609007d

    const/4 v3, 0x0

    :try_start_1
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1878
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1879
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private chooseIconIndex(ZI)I
    .locals 3
    .parameter "isOngoing"
    .parameter "viewIndex"

    .prologue
    const/4 v2, 0x1

    .line 689
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 690
    .local v0, latestSize:I
    if-eqz p1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 693
    :goto_0
    return v1

    :cond_0
    sub-int v1, v0, p2

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private dismissUserGuide()V
    .locals 1

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    if-eqz v0, :cond_0

    .line 1920
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0}, Lmiui/widget/GuidePopupWindow;->dismiss()V

    .line 1921
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    .line 1923
    :cond_0
    return-void
.end method

.method private enableAlternative(Z)V
    .locals 3
    .parameter

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusClock:Lcom/android/systemui/statusbar/Clock;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/Clock;->enableAlternative(Z)V

    .line 932
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 934
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->enableAlternative(Z)V

    .line 932
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 936
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateStatusBarBackground()V

    .line 938
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierView:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_1

    const v2, 0x7f070004

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CarrierLabel;->setTextColor(I)V

    .line 941
    return-void

    .line 938
    :cond_1
    const v2, 0x7f070003

    goto :goto_1
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1547
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1548
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 1549
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1551
    :cond_0
    return-object v0
.end method

.method private makeExpandedVisible()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1046
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    .line 1050
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    .line 1052
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 1054
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1055
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1058
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandedView;->requestFocus(I)Z

    .line 1059
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/TrackingView;->setVisibility(I)V

    .line 1060
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/DateView;->setUpdates(Z)V

    .line 1063
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-eqz v0, :cond_3

    .line 1064
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Ticker;->halt()V

    .line 1066
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateViewsInStatusBar()V

    .line 1068
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAutoExitFullscreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private makeStatusBarView(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const v12, 0x7f0c0028

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 357
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x60c0001

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    .line 359
    const v7, 0x7f030001

    invoke-static {p1, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandedView;

    .line 361
    .local v1, expanded:Lcom/android/systemui/statusbar/ExpandedView;
    iput-object p0, v1, Lcom/android/systemui/statusbar/ExpandedView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 363
    const/high16 v7, 0x7f03

    invoke-static {p1, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarView;

    .line 364
    .local v4, sb:Lcom/android/systemui/statusbar/StatusBarView;
    iput-object p0, v4, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 367
    const/4 v7, -0x3

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPixelFormat:I

    .line 368
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 369
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPixelFormat:I

    .line 373
    :cond_0
    iput-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    .line 374
    const v7, 0x7f0c0004

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 375
    const v7, 0x7f0c0003

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/IconMerger;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    .line 376
    const v7, 0x7f0c0001

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    .line 377
    const v7, 0x7f0c0005

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/Clock;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusClock:Lcom/android/systemui/statusbar/Clock;

    .line 378
    const v7, 0x7f0c0006

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    .line 379
    const v7, 0x7f0c0002

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/CarrierLabel;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierView:Lcom/android/systemui/statusbar/CarrierLabel;

    .line 380
    new-instance v7, Lcom/android/systemui/statusbar/BatteryStatus;

    const-string v8, "battery"

    invoke-direct {v7, p0, v8}, Lcom/android/systemui/statusbar/BatteryStatus;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBattery:Lcom/android/systemui/statusbar/BatteryStatus;

    .line 382
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    .line 383
    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    .line 384
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    .line 385
    const v7, 0x7f0c000c

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedHeader:Landroid/view/View;

    .line 386
    const v7, 0x7f0c000d

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/DateView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    .line 387
    const v7, 0x7f0c0012

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationScroll:Landroid/widget/ScrollView;

    .line 388
    const v7, 0x7f0c0015

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    .line 389
    const v7, 0x7f0c0016

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    .line 390
    const v7, 0x7f0c000e

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/ImageView;

    .line 391
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    const v7, 0x7f0c000f

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleSettingsButton:Landroid/view/View;

    .line 393
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleSettingsButton:Landroid/view/View;

    new-instance v8, Lcom/android/systemui/statusbar/StatusBarService$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/StatusBarService$1;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleSettingsButton:Landroid/view/View;

    new-instance v8, Lcom/android/systemui/statusbar/StatusBarService$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/StatusBarService$2;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 409
    const v7, 0x7f0c0010

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedNotifications:Landroid/view/View;

    .line 410
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedNotifications:Landroid/view/View;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedCurrentContent:Landroid/view/View;

    .line 411
    iput v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    .line 412
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedNotifications:Landroid/view/View;

    aput-object v8, v7, v10

    .line 413
    sget-boolean v7, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-nez v7, :cond_1

    .line 414
    const v7, 0x7f0c0011

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    .line 415
    .local v5, stub:Landroid/view/ViewStub;
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/StatusBarToggles;

    aput-object v7, v8, v11

    .line 421
    .end local v5           #stub:Landroid/view/ViewStub;
    :goto_0
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;

    invoke-direct {v7, p0, p1, v4}, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/content/Context;Lcom/android/systemui/statusbar/StatusBarView;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    .line 422
    const v7, 0x7f0c0008

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/TickerView;

    .line 423
    .local v6, tickerView:Lcom/android/systemui/statusbar/TickerView;
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    iput-object v7, v6, Lcom/android/systemui/statusbar/TickerView;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    .line 425
    const v7, 0x7f03000a

    invoke-static {p1, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/TrackingView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    .line 426
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    const v8, 0x7f0c0029

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/CloseDragHandle;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    .line 427
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    iput-object p0, v7, Lcom/android/systemui/statusbar/CloseDragHandle;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 428
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v7, v12}, Lcom/android/systemui/statusbar/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lmiui/widget/ScreenView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Lmiui/widget/ScreenView;

    .line 429
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-eqz v8, :cond_2

    move v8, v12

    :goto_1
    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseViewContent:Landroid/view/View;

    .line 430
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseViewContent:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 432
    const/high16 v7, 0x7f09

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    .line 435
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 436
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateViewsInStatusBar()V

    .line 439
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 440
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    const-string v7, "com.miui.app.ExtraStatusBarManager.CAPTURE_SCREEN"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string v7, "com.miui.app.ExtraStatusBarManager.EXPAND_TOGGLE_TAB"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    const-string v7, "com.miui.app.ExtraStatusBarManager.REQUEST_RESTART"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    const-string v7, "com.miui.app.ExtraStatusBarManager.TRIGGER_CAMERA_KEY"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 450
    return-void

    .line 418
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v6           #tickerView:Lcom/android/systemui/statusbar/TickerView;
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    aput-object v9, v7, v11

    goto/16 :goto_0

    .line 429
    .restart local v6       #tickerView:Lcom/android/systemui/statusbar/TickerView;
    :cond_2
    const v8, 0x7f0c002a

    goto :goto_1
.end method

.method private playSound(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1892
    if-eqz v0, :cond_0

    .line 1893
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 1894
    if-eqz v0, :cond_0

    .line 1895
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1896
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 1899
    :cond_0
    return-void
.end method

.method private setAreThereNotifications()V
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/ImageView;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 819
    :goto_0
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 820
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateViewsInStatusBar()V

    .line 821
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuideForNotification()Z

    .line 822
    return-void

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private showUserGuide(IILandroid/view/View;)V
    .locals 3
    .parameter "arrowMode"
    .parameter "resId"
    .parameter "anchor"

    .prologue
    const/4 v2, 0x0

    .line 1926
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->dismissUserGuide()V

    .line 1927
    new-instance v0, Lmiui/widget/GuidePopupWindow;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    .line 1928
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 1929
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0, p2}, Lmiui/widget/GuidePopupWindow;->setGuideText(I)V

    .line 1930
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Lmiui/widget/GuidePopupWindow;->setWindowLayoutType(I)V

    .line 1931
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v2, v2, v1}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 1932
    return-void
.end method

.method private showUserGuideForCall()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1935
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideCall:I

    if-nez v0, :cond_0

    .line 1936
    const v0, 0x7f0a001f

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuide(IILandroid/view/View;)V

    .line 1939
    const/4 v0, 0x1

    .line 1941
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private showUserGuideForNotification()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1945
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideNotification:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0}, Lmiui/widget/GuidePopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1948
    :cond_0
    const v0, 0x7f0a001c

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuide(IILandroid/view/View;)V

    .line 1951
    const/4 v0, 0x1

    .line 1953
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private showUserGuideForToggle()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1957
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideToggle:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v0}, Lmiui/widget/ScreenView;->getVisibleRange()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v1}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1958
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideToggle:I

    .line 1959
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "user_guide_status_bar_toggle"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1960
    const v0, 0x7f0a001d

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuide(IILandroid/view/View;)V

    move v0, v2

    .line 1965
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showUserGuideForToggleList()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1969
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideToggleList:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v0}, Lmiui/widget/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v1}, Lmiui/widget/ScreenView;->getVisibleRange()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v1}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1970
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideToggleList:I

    .line 1971
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "user_guide_status_bar_toggle_list"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1972
    const v0, 0x7f0a001e

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Lmiui/widget/ScreenView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lmiui/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuide(IILandroid/view/View;)V

    move v0, v3

    .line 1977
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tick(Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1487
    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1488
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/Ticker;->addEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 1494
    :cond_0
    return-void
.end method

.method private triggerCameraKey()V
    .locals 4

    .prologue
    .line 1902
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_key_preferred_action_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1906
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 1907
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_key_preferred_action_toggle_id"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1910
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/toggles/ToggleManager;->performToggle(I)Z

    .line 1916
    :goto_0
    return-void

    .line 1913
    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0
.end method

.method private unbindViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 322
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 323
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.miui.app.ExtraStatusBarManager.UNLOADED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/StatusBarService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 327
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, v3, v3}, Lcom/android/systemui/statusbar/CommandQueue;->registerCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    .line 329
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 330
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 332
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 333
    iput-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    .line 335
    iput-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    .line 336
    iput-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    .line 337
    iput-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    .line 338
    iput-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    .line 339
    iput-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    .line 340
    iput-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeNotification:Landroid/view/View;

    .line 341
    return-void
.end method

.method private updateBatteryIndicator(Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicator:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicatorCharging:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->requestLayout()V

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->invalidate()V

    .line 507
    return-void
.end method

.method private updateStatusBarBackground()V
    .locals 2

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundResource(I)V

    .line 960
    :goto_0
    return-void

    .line 947
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExitingFullscreen:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundResource(I)V

    goto :goto_0

    .line 951
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 952
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundResource(I)V

    goto :goto_0

    .line 954
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 955
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundResource(I)V

    goto :goto_0

    .line 958
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateUsbModeNotification(Lcom/android/internal/statusbar/StatusBarNotification;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 643
    sget-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_DEFY:Z

    if-eqz v0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    if-eqz p1, :cond_0

    const-string v0, "com.android.systemui"

    iget-object v1, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    if-ne v0, v4, :cond_0

    .line 648
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeNotification:Landroid/view/View;

    if-nez v0, :cond_3

    .line 649
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedNotifications:Landroid/view/View;

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeNotification:Landroid/view/View;

    .line 650
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedNotifications:Landroid/view/View;

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButton:Landroid/widget/CheckBox;

    .line 651
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$3;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButtonCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeNotification:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarService$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarService$4;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    :cond_3
    if-nez p2, :cond_4

    .line 675
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeNotification:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 678
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeNotification:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 680
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButton:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 681
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButton:Landroid/widget/CheckBox;

    iget v1, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    if-ne v1, v4, :cond_5

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 683
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButton:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButtonCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 681
    goto :goto_1
.end method

.method private updateViewsInStatusBar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 826
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 827
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowBatteryUnderKeyguard:Z

    if-nez v1, :cond_0

    move v1, v5

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->hideBatteryIndicatorForKeyguard(Z)V

    .line 828
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBattery:Lcom/android/systemui/statusbar/BatteryStatus;

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowBatteryUnderKeyguard:Z

    if-nez v1, :cond_1

    move v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BatteryStatus;->disable(Z)V

    .line 829
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusClock:Lcom/android/systemui/statusbar/Clock;

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowTimeUnderKeyguard:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/Clock;->setVisibility(I)V

    .line 830
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierView:Lcom/android/systemui/statusbar/CarrierLabel;

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowCarrierUnderKeyguard:Z

    if-eqz v1, :cond_3

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    .line 831
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowNotificationUnderKeyguard:Z

    if-eqz v1, :cond_4

    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/IconMerger;->setVisibility(I)V

    .line 832
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowStatusUnderKeyguard:Z

    if-eqz v1, :cond_5

    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 851
    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->enableAlternative(Z)V

    .line 852
    return-void

    :cond_0
    move v1, v3

    .line 827
    goto :goto_0

    :cond_1
    move v1, v3

    .line 828
    goto :goto_1

    :cond_2
    move v1, v4

    .line 829
    goto :goto_2

    :cond_3
    move v1, v4

    .line 830
    goto :goto_3

    :cond_4
    move v1, v4

    .line 831
    goto :goto_4

    :cond_5
    move v1, v4

    .line 832
    goto :goto_5

    .line 835
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/StatusBarView;->hideBatteryIndicatorForKeyguard(Z)V

    .line 836
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBattery:Lcom/android/systemui/statusbar/BatteryStatus;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BatteryStatus;->disable(Z)V

    .line 837
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusClock:Lcom/android/systemui/statusbar/Clock;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/Clock;->setVisibility(I)V

    .line 840
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move v0, v5

    .line 842
    :goto_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierView:Lcom/android/systemui/statusbar/CarrierLabel;

    if-eqz v0, :cond_9

    move v2, v3

    :goto_8
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    .line 845
    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    move v0, v5

    .line 848
    :goto_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    if-eqz v0, :cond_b

    move v0, v3

    :goto_a
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/IconMerger;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    :cond_8
    move v0, v3

    .line 840
    goto :goto_7

    :cond_9
    move v2, v4

    .line 842
    goto :goto_8

    :cond_a
    move v0, v3

    .line 845
    goto :goto_9

    :cond_b
    move v0, v4

    .line 848
    goto :goto_a
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 6
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "icon"

    .prologue
    const-string v5, "battery"

    .line 476
    const-string v1, "battery"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBattery:Lcom/android/systemui/statusbar/BatteryStatus;

    move-object v0, v1

    .line 479
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    :goto_0
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 480
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->enableAlternative(Z)V

    .line 481
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 483
    const-string v1, "battery"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/StatusBarService;->updateBatteryIndicator(Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 486
    :cond_0
    return-void

    .line 476
    .end local v0           #view:Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 517
    .line 518
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 519
    const/4 v0, 0x0

    .line 520
    const-string v1, "StatusBarService"

    const-string v2, "Notification has fullScreenIntent; sending fullScreenIntent"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :try_start_0
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    .line 528
    if-nez v1, :cond_0

    .line 538
    :goto_1
    return-void

    .line 530
    :cond_0
    if-eqz v0, :cond_1

    .line 531
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/StatusBarService;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 535
    :cond_1
    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->updateUsbModeNotification(Lcom/android/internal/statusbar/StatusBarNotification;Z)V

    .line 536
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 537
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_1

    .line 523
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x0

    .line 756
    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v7

    .line 757
    if-eqz v7, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    .line 759
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    move-object v8, v1

    .line 765
    :goto_0
    invoke-virtual {p0, p2, v8}, Lcom/android/systemui/statusbar/StatusBarService;->makeNotificationView(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;

    move-result-object v1

    .line 766
    if-nez v1, :cond_1

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v0, v12

    .line 792
    :goto_1
    return-object v0

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    .line 762
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    move-object v8, v1

    goto :goto_0

    .line 771
    :cond_1
    const/4 v2, 0x0

    aget-object v3, v1, v2

    .line 772
    const/4 v2, 0x1

    aget-object v4, v1, v2

    .line 773
    const/4 v2, 0x2

    aget-object v5, v1, v2

    .line 775
    new-instance v6, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 777
    new-instance v1, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v9, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v9, v9, Landroid/app/Notification;->icon:I

    iget-object v10, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v10, v10, Landroid/app/Notification;->iconLevel:I

    iget-object v11, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v11, v11, Landroid/app/Notification;->number:I

    invoke-direct {v1, v2, v9, v10, v11}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;III)V

    .line 782
    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Coulding create icon: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v0, v12

    .line 784
    goto :goto_1

    :cond_2
    move-object v1, p1

    move-object v2, p2

    .line 787
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationData;->add(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/StatusBarIconView;)I

    move-result v0

    .line 788
    invoke-virtual {v8, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 790
    invoke-direct {p0, v7, v0}, Lcom/android/systemui/statusbar/StatusBarService;->chooseIconIndex(ZI)I

    move-result v0

    .line 791
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    invoke-virtual {v1, v6, v0}, Lcom/android/systemui/statusbar/IconMerger;->addView(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    move-object v0, v6

    .line 792
    goto :goto_1
.end method

.method protected addStatusBarView()V
    .locals 8

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 454
    .local v6, res:Landroid/content/res/Resources;
    const/high16 v1, 0x60c

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 456
    .local v2, height:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    .line 457
    .local v7, view:Lcom/android/systemui/statusbar/StatusBarView;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const/16 v4, 0x48

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 464
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 465
    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 466
    const v1, 0x60e0003

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 468
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    return-void
.end method

.method public animateCollapse()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1096
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_0

    .line 1111
    :goto_0
    return-void

    .line 1101
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_1

    .line 1102
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    .line 1108
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    .line 1109
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 1110
    const/high16 v1, -0x3b06

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto :goto_0

    .line 1104
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getTrackingViewHeight()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_1
.end method

.method public animateExpand()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1075
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    .line 1082
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 1083
    const/high16 v0, 0x44fa

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto :goto_0
.end method

.method public disable(I)V
    .locals 5
    .parameter

    .prologue
    const/high16 v2, 0x2000

    .line 858
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 859
    xor-int/2addr v0, p1

    .line 860
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 862
    and-int v1, v0, v2

    if-eqz v1, :cond_0

    .line 863
    and-int v1, p1, v2

    if-eqz v1, :cond_5

    .line 864
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAutoExitFullscreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 873
    :cond_0
    :goto_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 874
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_6

    .line 876
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 877
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->dismissUserGuide()V

    .line 889
    :cond_1
    :goto_1
    const/high16 v1, -0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 890
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateViewsInStatusBar()V

    .line 893
    :cond_2
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_8

    .line 894
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    .line 896
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-eqz v0, :cond_3

    .line 897
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Ticker;->halt()V

    .line 902
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateViewsInStatusBar()V

    .line 910
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateStatusBarBackground()V

    .line 911
    return-void

    .line 867
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExitingFullscreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x64

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 869
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    goto :goto_0

    .line 880
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_7

    .line 881
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuideForNotification()Z

    goto :goto_1

    .line 884
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuideForCall()Z

    goto :goto_1

    .line 903
    :cond_8
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 904
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-eqz v0, :cond_4

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    .line 906
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Ticker;->halt()V

    goto :goto_2
.end method

.method doAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1180
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 1183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->incrementAnim()V

    .line 1185
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getTrackingViewHeight()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 1187
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1188
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1189
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->performExpand()V

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 1193
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    goto :goto_0

    .line 1197
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1198
    iget-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1199
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method doRevealAnimation()V
    .locals 5

    .prologue
    .line 1224
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getPaddingBottom()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 1225
    .local v0, h:I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->incrementAnim()V

    .line 1227
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 1228
    int-to-float v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1229
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1232
    iget-wide v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1233
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v0, "  mDisplayHeight="

    .line 1560
    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1604
    :goto_0
    return-void

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1569
    :try_start_0
    const-string v1, "Current Status Bar state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTicking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTracking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAnimating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimVel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimAccel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurAnimationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimLastTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimatingReveal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mViewDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTrackingParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTrackingView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOngoingItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLatestItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCloseView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTickerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1592
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1596
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarService$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarService$8;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1592
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public expandTab(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 964
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-eqz v0, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    move v0, v2

    .line 970
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/TrackingView;->selectTab(II)V

    .line 971
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    .line 972
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 973
    const/high16 v0, 0x44fa

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto :goto_0

    :cond_2
    move v0, p1

    goto :goto_1
.end method

.method flingToNextTab()V
    .locals 3

    .prologue
    .line 984
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 985
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/TrackingView;->selectTab(II)V

    .line 987
    :cond_0
    return-void
.end method

.method flingToPreviousTab()V
    .locals 3

    .prologue
    .line 978
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    if-lez v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/TrackingView;->selectTab(II)V

    .line 981
    :cond_0
    return-void
.end method

.method getExpandedHeight()I
    .locals 3

    .prologue
    .line 1753
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Lmiui/widget/ScreenView;

    invoke-virtual {v1}, Lmiui/widget/ScreenView;->getHeight()I

    move-result v1

    move v0, v1

    .line 1754
    .local v0, delta:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getTrackingViewHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/CloseDragHandle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1

    .line 1753
    .end local v0           #delta:I
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method getTrackingViewHeight()I
    .locals 3

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    .locals 7
    .parameter "key"
    .parameter "n"
    .parameter "message"

    .prologue
    .line 1503
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotification(Landroid/os/IBinder;)V

    .line 1505
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1509
    :goto_0
    return-void

    .line 1506
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method incrementAnim()V
    .locals 7

    .prologue
    .line 1211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1212
    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    .line 1213
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1214
    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1215
    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1216
    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f00

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1217
    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1218
    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    .line 1221
    return-void
.end method

.method interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x2

    const/high16 v6, 0x4316

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1335
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExitingFullscreen:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    move v0, v8

    .line 1431
    :goto_0
    return v0

    .line 1339
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v0

    .line 1340
    mul-int/lit8 v1, v0, 0x2

    .line 1342
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarView;->isReturnToInCallScreenButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 1344
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 1345
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1347
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    move v0, v8

    .line 1348
    goto :goto_0

    .line 1350
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    if-eqz v2, :cond_16

    .line 1351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v7, :cond_4

    .line 1352
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    move v0, v8

    .line 1354
    goto :goto_0

    .line 1356
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    move v0, v8

    .line 1357
    goto :goto_0

    .line 1359
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    .line 1363
    :goto_1
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_f

    .line 1364
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    .line 1366
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v4, :cond_c

    .line 1367
    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    .line 1372
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_6

    if-lt v3, v1, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getTrackingViewHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    if-le v3, v0, :cond_a

    .line 1378
    :cond_7
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 1379
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    .line 1380
    if-lt v0, v1, :cond_a

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    sub-int v1, v4, v1

    if-ge v0, v1, :cond_a

    .line 1381
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-nez v0, :cond_9

    .line 1382
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_8
    move v1, v8

    :goto_3
    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/statusbar/TrackingView;->selectTab(II)V

    .line 1388
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_e

    move v0, v5

    :goto_4
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 1389
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1427
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    if-ne v0, v2, :cond_b

    .line 1428
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    :cond_b
    move v0, v8

    .line 1431
    goto/16 :goto_0

    .line 1369
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/TrackingView;->getLocationOnScreen([I)V

    .line 1370
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    aget v0, v0, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/TrackingView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    goto :goto_2

    :cond_d
    move v1, v5

    .line 1382
    goto :goto_3

    :cond_e
    move v0, v8

    .line 1388
    goto :goto_4

    .line 1392
    :cond_f
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    if-eqz v1, :cond_a

    .line 1393
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1394
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1395
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_11

    .line 1396
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 1397
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    if-eqz v3, :cond_10

    if-lt v1, v0, :cond_a

    .line 1400
    :cond_10
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 1401
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_5

    .line 1403
    :cond_11
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_a

    .line 1404
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1406
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 1407
    cmpg-float v1, v0, v4

    if-gez v1, :cond_15

    move v1, v5

    .line 1409
    :goto_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 1410
    cmpg-float v4, v3, v4

    if-gez v4, :cond_12

    .line 1411
    neg-float v3, v3

    .line 1413
    :cond_12
    cmpl-float v4, v3, v6

    if-lez v4, :cond_13

    move v3, v6

    .line 1417
    :cond_13
    float-to-double v4, v0

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v0, v3

    .line 1418
    if-eqz v1, :cond_14

    .line 1419
    neg-float v0, v0

    .line 1422
    :cond_14
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1, v0, v8}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto/16 :goto_5

    :cond_15
    move v1, v8

    .line 1407
    goto :goto_6

    :cond_16
    move-object v2, p1

    goto/16 :goto_1
.end method

.method makeNotificationView(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 698
    iget-object v1, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 699
    iget-object v6, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 700
    if-nez v6, :cond_0

    .line 701
    const/4 v0, 0x0

    .line 750
    :goto_0
    return-object v0

    .line 705
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 706
    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 707
    const-string v0, "com.android.systemui"

    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 710
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 714
    :cond_2
    const v0, 0x7f0c001e

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 715
    const/high16 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 716
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 717
    iget-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 718
    if-eqz v2, :cond_3

    .line 719
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$Launcher;

    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v5, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/StatusBarService$Launcher;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    :cond_3
    const/4 v0, 0x0

    .line 724
    const/4 v1, 0x0

    .line 726
    :try_start_0
    invoke-virtual {v6, p0, p2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 728
    :try_start_1
    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/ResourceMapper;->get(I)I

    move-result v2

    .line 729
    const v3, 0x6030021

    if-ne v3, v2, :cond_4

    .line 730
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 731
    if-eqz v2, :cond_4

    .line 732
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 736
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 741
    :goto_1
    if-nez v1, :cond_5

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 743
    const-string v2, "StatusBarService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t inflate view for notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 746
    :cond_5
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 747
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 750
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v7, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 738
    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1
.end method

.method onBarViewAttached()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1611
    const/4 v5, -0x3

    .line 1613
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7de

    const v4, 0x20300

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1622
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1623
    const-string v1, "TrackingView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1624
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1625
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    .line 1627
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1628
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "user_guide_status_bar_call"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideCall:I

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "user_guide_status_bar_notification"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideNotification:I

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "user_guide_status_bar_toggle"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideToggle:I

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "user_guide_status_bar_toggle_list"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideToggleList:I

    .line 251
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 252
    new-instance v0, Lcom/android/systemui/toggles/ToggleManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/toggles/ToggleManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Lcom/android/systemui/toggles/ToggleManager;

    .line 255
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 257
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    .line 260
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarPolicy;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconPolicy:Lcom/android/systemui/statusbar/StatusBarPolicy;

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->bindViews()V

    .line 263
    return-void
.end method

.method onTabClick(II)V
    .locals 8
    .parameter "tab_index"
    .parameter "animationDirection"

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x0

    .line 991
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    if-ne v3, p1, :cond_0

    .line 1013
    :goto_0
    return-void

    .line 993
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    array-length v3, v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 994
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    aget-object v3, v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 995
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 993
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 997
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    aget-object v3, v3, p1

    iput-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedCurrentContent:Landroid/view/View;

    .line 998
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedCurrentContent:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1000
    if-eqz p2, :cond_2

    .line 1001
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    neg-int v3, p2

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v2, v5, v3, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1003
    .local v2, outAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1004
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1006
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    mul-int/2addr v3, p2

    int-to-float v3, v3

    invoke-direct {v1, v3, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1008
    .local v1, inAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1009
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1012
    .end local v1           #inAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v2           #outAnimation:Landroid/view/animation/TranslateAnimation;
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    goto :goto_0
.end method

.method onTrackingViewAttached()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1635
    const/4 v0, -0x3

    .line 1637
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getTrackingViewHeight()I

    move-result v1

    .line 1638
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1639
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1640
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getExpandedHeight()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1641
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1642
    neg-int v1, v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1643
    const/16 v1, 0x7de

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1644
    const/16 v1, 0x1328

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1649
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1650
    const/16 v1, 0x37

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1651
    const-string v1, "StatusBarExpanded"

    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1652
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1653
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setFormat(I)V

    .line 1654
    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    .line 1656
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 1657
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1660
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1661
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1662
    return-void
.end method

.method performCollapse()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1153
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_1

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1158
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    .line 1159
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    .line 1160
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1161
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1162
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1163
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/TrackingView;->setVisibility(I)V

    .line 1164
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/DateView;->setUpdates(Z)V

    .line 1166
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateViewsInStatusBar()V

    .line 1168
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 1169
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAutoExitFullscreenRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1172
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v0, v3, v3}, Lcom/android/systemui/statusbar/TrackingView;->selectTab(II)V

    .line 1176
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    goto :goto_0
.end method

.method performExpand()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1115
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    .line 1122
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    .line 1123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeExpandedVisible()V

    .line 1126
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    if-nez v0, :cond_0

    .line 1127
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideNotification:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 1128
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideNotification:I

    .line 1129
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "user_guide_status_bar_notification"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1131
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideCall:I

    if-nez v0, :cond_3

    .line 1132
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1133
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideCall:I

    .line 1134
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "user_guide_status_bar_call"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1138
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-eqz v0, :cond_0

    .line 1139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuideForToggle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1140
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuideForToggleList()Z

    goto :goto_0
.end method

.method performFling(IFZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x44fa

    const/high16 v1, 0x4348

    const/high16 v5, -0x3b06

    const/high16 v4, -0x3cb8

    const/4 v3, 0x0

    .line 1270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 1271
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getTrackingViewHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    .line 1273
    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1274
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1278
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_3

    .line 1279
    if-nez p3, :cond_2

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_0

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/CloseDragHandle;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x41c8

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    cmpl-float v0, p2, v4

    if-lez v0, :cond_2

    .line 1284
    :cond_0
    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1285
    cmpg-float v0, p2, v3

    if-gez v0, :cond_1

    .line 1286
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1319
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1320
    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    .line 1321
    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1323
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1325
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1326
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->stopTracking()V

    .line 1327
    return-void

    .line 1291
    :cond_2
    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1292
    cmpl-float v0, p2, v3

    if-lez v0, :cond_1

    .line 1293
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0

    .line 1297
    :cond_3
    if-nez p3, :cond_4

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_4

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    cmpl-float v0, p2, v4

    if-lez v0, :cond_5

    .line 1302
    :cond_4
    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1303
    cmpg-float v0, p2, v3

    if-gez v0, :cond_1

    .line 1304
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0

    .line 1310
    :cond_5
    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1311
    cmpl-float v0, p2, v3

    if-lez v0, :cond_1

    .line 1312
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0
.end method

.method prepareTracking(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x3e9

    const/16 v1, 0x3e8

    const/4 v4, 0x1

    .line 1240
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->dismissUserGuide()V

    .line 1241
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    .line 1242
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1243
    if-eqz p2, :cond_0

    .line 1244
    const/high16 v0, 0x44fa

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1245
    const/high16 v0, 0x4348

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1246
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1247
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1248
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1249
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 1250
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1251
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1253
    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    .line 1254
    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1255
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1256
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1258
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeExpandedVisible()V

    .line 1267
    :goto_0
    return-void

    .line 1261
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_1

    .line 1262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1263
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1265
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 1
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 514
    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    move-result-object v0

    .line 630
    .local v0, old:Lcom/android/internal/statusbar/StatusBarNotification;
    if-eqz v0, :cond_0

    .line 632
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/Ticker;->removeEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 635
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateUsbModeNotification(Lcom/android/internal/statusbar/StatusBarNotification;Z)V

    .line 636
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 637
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 639
    :cond_0
    return-void
.end method

.method removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;
    .locals 3
    .parameter

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 797
    if-nez v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 799
    if-nez v0, :cond_0

    .line 800
    const-string v0, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeNotification for unknown key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v0, 0x0

    .line 809
    :goto_0
    return-object v0

    .line 805
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 807
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 809
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    goto :goto_0
.end method

.method stopTracking()V
    .locals 1

    .prologue
    .line 1205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    .line 1206
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1208
    return-void
.end method

.method updateExpandedHeight()V
    .locals 2

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getExpandedHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1760
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1762
    :cond_0
    return-void
.end method

.method updateExpandedViewPos(I)V
    .locals 13
    .parameter "expandedPosition"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/16 v10, -0x2710

    .line 1672
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v2

    .line 1673
    .local v2, h:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getTrackingViewHeight()I

    move-result v1

    .line 1677
    .local v1, disph:I
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v7, :cond_2

    .line 1678
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    if-eqz v7, :cond_0

    .line 1679
    neg-int v7, v1

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1680
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_0

    .line 1681
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1682
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8, v9}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1685
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_1

    .line 1686
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v8, v1

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1687
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1750
    :cond_1
    :goto_0
    return-void

    .line 1694
    :cond_2
    const/16 v7, -0x2711

    if-ne p1, v7, :cond_6

    .line 1695
    const/4 v5, 0x0

    .line 1709
    .local v5, pos:I
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1710
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1711
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8, v9}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1713
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_1

    .line 1714
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/CloseDragHandle;->getLocationInWindow([I)V

    .line 1715
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    aget v7, v7, v12

    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseViewContent:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    :goto_2
    sub-int v0, v7, v8

    .line 1717
    .local v0, closePos:I
    if-eq p1, v10, :cond_1

    .line 1718
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    add-int v8, v5, v0

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedCurrentContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1721
    move v3, v2

    .line 1722
    .local v3, max:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    if-le v7, v3, :cond_3

    .line 1723
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1725
    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1726
    .local v4, min:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v7, v4, :cond_4

    .line 1727
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1730
    :cond_4
    iget v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/TrackingView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    if-le v7, v2, :cond_a

    move v6, v12

    .line 1731
    .local v6, visible:Z
    :goto_3
    if-nez v6, :cond_5

    .line 1734
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v8, v1

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1736
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1739
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    goto/16 :goto_0

    .line 1697
    .end local v0           #closePos:I
    .end local v3           #max:I
    .end local v4           #min:I
    .end local v5           #pos:I
    .end local v6           #visible:Z
    :cond_6
    if-ne p1, v10, :cond_7

    .line 1698
    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .restart local v5       #pos:I
    goto/16 :goto_1

    .line 1701
    .end local v5           #pos:I
    :cond_7
    if-gt p1, v1, :cond_8

    .line 1702
    move v5, p1

    .line 1706
    .restart local v5       #pos:I
    :goto_4
    sub-int/2addr v5, v1

    goto/16 :goto_1

    .line 1704
    .end local v5           #pos:I
    :cond_8
    move v5, v1

    .restart local v5       #pos:I
    goto :goto_4

    :cond_9
    move v8, v11

    .line 1715
    goto :goto_2

    .restart local v0       #closePos:I
    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_a
    move v6, v11

    .line 1730
    goto :goto_3
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "old"
    .parameter "icon"

    .prologue
    .line 494
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 495
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 497
    const-string v1, "battery"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    invoke-direct {p0, p5}, Lcom/android/systemui/statusbar/StatusBarService;->updateBatteryIndicator(Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 500
    :cond_0
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-string v9, "StatusBarService"

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->findEntry(Landroid/os/IBinder;)I

    move-result v0

    .line 543
    if-ltz v0, :cond_1

    .line 544
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    .line 553
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getEntryAt(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v6

    .line 554
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 555
    iget-object v1, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 557
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 571
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v4, v4, Landroid/app/Notification;->when:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v0

    if-ne v2, v0, :cond_5

    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v0, :cond_5

    if-eqz v7, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 580
    iput-object p2, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 583
    :try_start_0
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v7, p0, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 585
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 586
    if-eqz v2, :cond_0

    .line 587
    iget-object v8, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$Launcher;

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/StatusBarService$Launcher;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    :cond_0
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->iconLevel:I

    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->number:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;III)V

    .line 596
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t update icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_1
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->findEntry(Landroid/os/IBinder;)I

    move-result v0

    .line 547
    if-gez v0, :cond_2

    .line 548
    const-string v0, "StatusBarService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNotification for unknown key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 551
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    goto/16 :goto_0

    .line 601
    :catch_0
    move-exception v0

    .line 603
    const-string v1, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t reapply views for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 605
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 614
    :cond_3
    :goto_2
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 617
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/StatusBarService;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 621
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateUsbModeNotification(Lcom/android/internal/statusbar/StatusBarNotification;Z)V

    .line 622
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 623
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_1

    .line 609
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 610
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    goto :goto_2
.end method

.method updateResources()V
    .locals 2

    .prologue
    .line 1988
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1989
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    .line 1992
    return-void
.end method

.method vibrate()V
    .locals 2

    .prologue
    .line 2003
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 2004
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2005
    return-void
.end method

.method public viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const-string v2, ","

    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method visibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1777
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_0

    .line 1778
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPanelSlightlyVisible:Z

    .line 1780
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1785
    :cond_0
    :goto_0
    return-void

    .line 1781
    :catch_0
    move-exception v0

    goto :goto_0
.end method
