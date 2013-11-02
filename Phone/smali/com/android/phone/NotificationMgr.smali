.class public Lcom/android/phone/NotificationMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$1;,
        Lcom/android/phone/NotificationMgr$QueryHandler;,
        Lcom/android/phone/NotificationMgr$StatusBarMgr;,
        Lcom/android/phone/NotificationMgr$OnDeletedReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_STATUSBAR_FORCE_STOP:Ljava/lang/String; = "com.android.action.statusbarforcestop"

.field static final CALL_FORWARD_NOTIFICATION:I = 0x6

.field static final CALL_FORWARD_NOTIFICATION_SUB2:I = 0x9

.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field private static final CALL_LOG_TOKEN:I = -0x1

.field private static final CONTACT_TOKEN:I = -0x2

.field static final DATA_DISCONNECTED_ROAMING_NOTIFICATION:I = 0x7

.field private static final DBG:Z = true

.field static final IN_CALL_NOTIFICATION:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "NotificationMgr"

.field private static final MAX_VM_NUMBER_RETRIES:I = 0x5

.field static final MISSED_CALL_NOTIFICATION:I = 0x1

.field static final MISSED_CALL_NOTIFICATION_SUB2:I = 0xb

.field static final MMI_NOTIFICATION:I = 0x3

.field static final NETWORK_SELECTION_NOTIFICATION:I = 0x4

.field private static final NOTIFICATION_DELETED_ACTION:Ljava/lang/String; = "com.android.call.NOTIFICATION_DELETED_ACTION"

.field static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_TOKEN:I = 0x35

.field static final SELECTED_OPERATOR_FAIL_NOTIFICATION:I = 0x8

.field private static final UPDATE_TOKEN:I = 0x36

.field private static final VM_NUMBER_RETRY_DELAY_MILLIS:I = 0x2710

.field static final VOICEMAIL_NOTIFICATION:I = 0x5

.field static final VOICEMAIL_NOTIFICATION_SUB2:I = 0xa

.field private static sMe:Lcom/android/phone/NotificationMgr;


# instance fields
.field private isStatusbarStop:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mInCallResId:I

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private mNumberMissedCalls:I

.field private mNumberMissedCallsSub2:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

.field private mSelectedUnavailableNotify:Z

.field private mShowingMuteIcon:Z

.field private mShowingRecordIcon:Z

.field private mShowingSpeakerphoneIcon:Z

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

.field private mToast:Landroid/widget/Toast;

.field private mVmNumberRetriesRemaining:I

.field private sNotificationDeletedReceiver:Lcom/android/phone/NotificationMgr$OnDeletedReceiver;

.field private sNotificationOnDeleteIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "number"

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v6, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    .line 316
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v6, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const-string v4, "com.android.call.NOTIFICATION_DELETED_ACTION"

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput v3, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 112
    iput v3, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCallsSub2:I

    .line 119
    iput-boolean v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 124
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    .line 127
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 141
    iput-boolean v3, p0, Lcom/android/phone/NotificationMgr;->isStatusbarStop:Z

    .line 174
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    .line 175
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 178
    const-string v2, "statusbar"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    .line 180
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 181
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 182
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 185
    new-instance v2, Lcom/android/phone/NotificationMgr$OnDeletedReceiver;

    invoke-direct {v2, p0}, Lcom/android/phone/NotificationMgr$OnDeletedReceiver;-><init>(Lcom/android/phone/NotificationMgr;)V

    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->sNotificationDeletedReceiver:Lcom/android/phone/NotificationMgr$OnDeletedReceiver;

    .line 188
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.call.NOTIFICATION_DELETED_ACTION"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v2, "com.android.action.statusbarforcestop"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->sNotificationDeletedReceiver:Lcom/android/phone/NotificationMgr$OnDeletedReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.call.NOTIFICATION_DELETED_ACTION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NotificationMgr;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->resetNewCallsFlag()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/NotificationMgr;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr;->isStatusbarStop:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    return-object v0
.end method

.method private cancelInCall()V
    .locals 2

    .prologue
    .line 1259
    const-string v0, "cancelInCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1260
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 1261
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 1262
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1263
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 1264
    return-void
.end method

.method private cancelMute()V
    .locals 2

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 616
    :cond_0
    return-void
.end method

.method private cancelNetworkSelection()V
    .locals 2

    .prologue
    .line 1561
    const-string v0, "cancelNetworkSelection()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1562
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1563
    return-void
.end method

.method private static configureLedNotification(Landroid/app/Notification;)V
    .locals 1
    .parameter "note"

    .prologue
    .line 450
    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 451
    iget v0, p0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 452
    return-void
.end method

.method static getDefault()Lcom/android/phone/NotificationMgr;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 199
    new-instance v0, Lcom/android/phone/NotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    .line 202
    sget-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    invoke-direct {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 203
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1612
    const-string v0, "NotificationMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    return-void
.end method

.method private notifyMute()V
    .locals 4

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    const v2, 0x1080076

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 609
    :cond_0
    return-void
.end method

.method private resetNewCallsFlag()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .local v7, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    const-string v0, " AND new=1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 150
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    const/16 v1, 0x36

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/NotificationMgr$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private showNetworkSelection(Ljava/lang/String;)V
    .locals 9
    .parameter "operator"

    .prologue
    const/4 v8, 0x0

    .line 1530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showNetworkSelection("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1532
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0c01ee

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1534
    .local v4, titleText:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0c01ef

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1537
    .local v0, expandedText:Ljava/lang/String;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1538
    .local v2, notification:Landroid/app/Notification;
    const v5, 0x108008a

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 1539
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 1540
    const/4 v5, 0x2

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 1541
    const/4 v5, 0x0

    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1544
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1545
    .local v1, intent:Landroid/content/Intent;
    const/high16 v5, 0x1020

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1548
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.NetworkSetting"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1550
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1552
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v4, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1554
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v6, 0x8

    invoke-virtual {v5, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1555
    return-void
.end method

.method private updateNotificationsAtStartup()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 291
    const-string v0, "updateNotificationsAtStartup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 294
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;-><init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 297
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .local v8, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    const-string v0, " AND new=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v0, "- start call log query..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    const/4 v1, -0x1

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "- updating in-call notification at startup..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 313
    return-void
.end method


# virtual methods
.method cancelCallInProgressNotification()V
    .locals 2

    .prologue
    .line 1267
    const-string v0, "cancelCallInProgressNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1268
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    if-nez v0, :cond_0

    .line 1274
    :goto_0
    return-void

    .line 1272
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCallInProgressNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1273
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    goto :goto_0
.end method

.method cancelMissedCallNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 553
    iput v2, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 554
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 556
    iput v2, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCallsSub2:I

    .line 557
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 559
    return-void
.end method

.method public cancelNoServiceNotification()V
    .locals 2

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1628
    return-void
.end method

.method cancelRecord()V
    .locals 2

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingRecordIcon:Z

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "record"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingRecordIcon:Z

    .line 587
    :cond_0
    return-void
.end method

.method cancelSpeakerphone()V
    .locals 2

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 573
    :cond_0
    return-void
.end method

.method getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/android/phone/NotificationMgr$StatusBarMgr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$StatusBarMgr;-><init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

    return-object v0
.end method

.method hideDataDisconnectedRoaming()V
    .locals 2

    .prologue
    .line 1521
    const-string v0, "hideDataDisconnectedRoaming()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1522
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1523
    return-void
.end method

.method public noServiceNotification()V
    .locals 3

    .prologue
    .line 1617
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1618
    .local v0, notification:Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1619
    const/high16 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 1620
    const/16 v1, 0x1f4

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 1621
    const/16 v1, 0x7d0

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 1623
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1624
    return-void
.end method

.method notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 13
    .parameter "name"
    .parameter "number"
    .parameter "label"
    .parameter "date"
    .parameter "subscription"

    .prologue
    .line 464
    const/4 v12, 0x0

    .line 466
    .local v12, titleResId:I
    const-string v9, ""

    .line 468
    .local v9, expandedText:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMissedCall subscription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 472
    if-nez p6, :cond_4

    .line 473
    iget v3, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 482
    :cond_0
    :goto_0
    if-eqz p1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 483
    move-object v11, p1

    .line 495
    .local v11, callName:Ljava/lang/String;
    :goto_1
    if-nez p6, :cond_8

    .line 496
    iget v3, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 497
    const v12, 0x7f0c01e2

    .line 498
    move-object v9, v11

    .line 514
    :cond_1
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 515
    const-string v3, "notifyMissedCall dualSub is enable"

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p6 .. p6}, Lcom/android/phone/PhoneUtils;->getNotificationCardNameOnSub(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 518
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMissedCall expandedText is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 522
    invoke-static/range {p6 .. p6}, Lcom/android/phone/PhoneApp;->createCallLogIntent(I)Landroid/content/Intent;

    move-result-object v10

    .line 525
    .local v10, intent:Landroid/content/Intent;
    new-instance v2, Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x108007f

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0c01e5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v11, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    move-wide/from16 v6, p4

    invoke-direct/range {v2 .. v10}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 536
    .local v2, note:Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 540
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 542
    if-nez p6, :cond_a

    .line 543
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 549
    :cond_3
    :goto_3
    return-void

    .line 474
    .end local v2           #note:Landroid/app/Notification;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #callName:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x1

    move/from16 v0, p6

    move v1, v3

    if-ne v0, v1, :cond_0

    .line 475
    iget v3, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCallsSub2:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCallsSub2:I

    goto/16 :goto_0

    .line 484
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 485
    move-object v11, p2

    .restart local v11       #callName:Ljava/lang/String;
    goto/16 :goto_1

    .line 488
    .end local v11           #callName:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0c000d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #callName:Ljava/lang/String;
    goto/16 :goto_1

    .line 500
    :cond_7
    const v12, 0x7f0c01e3

    .line 501
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0c01e4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 504
    :cond_8
    const/4 v3, 0x1

    move/from16 v0, p6

    move v1, v3

    if-ne v0, v1, :cond_1

    .line 505
    iget v3, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCallsSub2:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 506
    const v12, 0x7f0c01e2

    .line 507
    move-object v9, v11

    goto/16 :goto_2

    .line 509
    :cond_9
    const v12, 0x7f0c01e3

    .line 510
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0c01e4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCallsSub2:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 544
    .restart local v2       #note:Landroid/app/Notification;
    .restart local v10       #intent:Landroid/content/Intent;
    :cond_a
    const/4 v3, 0x1

    move/from16 v0, p6

    move v1, v3

    if-ne v0, v1, :cond_3

    .line 545
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_3
.end method

.method notifyRecord()V
    .locals 4

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingRecordIcon:Z

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "record"

    const v2, 0x108007e

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingRecordIcon:Z

    .line 580
    :cond_0
    return-void
.end method

.method notifySpeakerphone()V
    .locals 4

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    const v2, 0x1080087

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 566
    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 1234
    const-string v0, "CallerInfo query complete (for NotificationMgr), updating in-call notification.."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- ci: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1239
    if-ne p2, p0, :cond_0

    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- compactName is now: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {p3, v1}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1250
    const-string v0, "- updating notification after query complete..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1256
    :goto_0
    return-void

    .line 1253
    :cond_0
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: caller-id query from unknown source! cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method postTransientNotification(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "notifyId"
    .parameter "msg"

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    .line 1608
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1609
    return-void
.end method

.method showDataDisconnectedRoaming()V
    .locals 10

    .prologue
    .line 1469
    const-string v1, "showDataDisconnectedRoaming()..."

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1471
    new-instance v8, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v2, Landroid/provider/Settings;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1474
    .local v8, intent:Landroid/content/Intent;
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x108008a

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0c00f1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0c00f6

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1483
    .local v0, notification:Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1486
    return-void
.end method

.method showDataDisconnectedRoaming(I)V
    .locals 10
    .parameter "resid"

    .prologue
    .line 1490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDataDisconnectedRoaming()...id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1492
    new-instance v8, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {v8, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1495
    .local v8, intent:Landroid/content/Intent;
    const v2, 0x7f02010e

    .line 1496
    .local v2, iconid:I
    const v9, 0x7f0c00f3

    .line 1497
    .local v9, mTitleResid:I
    const v1, 0x7f0c03db

    if-eq p1, v1, :cond_0

    .line 1498
    const v2, 0x7f02010f

    .line 1499
    const v9, 0x7f0c00f2

    .line 1502
    :cond_0
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1511
    .local v0, notification:Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1514
    return-void
.end method

.method updateCfi(ZI)V
    .locals 12
    .parameter "visible"
    .parameter "subscription"

    .prologue
    .line 1400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCfi(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1401
    const/4 v10, 0x0

    .line 1402
    .local v10, notificationId:I
    const/4 v1, 0x2

    new-array v9, v1, [I

    fill-array-data v9, :array_0

    .line 1404
    .local v9, callfwdIcon:[I
    if-eqz p1, :cond_3

    .line 1416
    const v2, 0x7f020106

    .line 1417
    .local v2, resId:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1418
    aget v2, v9, p2

    .line 1421
    :cond_0
    const/4 v11, 0x1

    .line 1423
    .local v11, showExpandedNotification:Z
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1424
    .local v8, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v8, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1425
    const-string v1, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1429
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1430
    const-string v1, "SUBSCRIPTION_ID"

    invoke-virtual {v8, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1434
    :cond_1
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0c00af

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0c00b2

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local v9           #callfwdIcon:[I
    move-result-object v7

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1453
    .local v0, notification:Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1455
    if-nez p2, :cond_2

    const/4 v1, 0x6

    move v10, v1

    .line 1456
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v1, v10, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1461
    .end local v0           #notification:Landroid/app/Notification;
    .end local v2           #resId:I
    .end local v8           #intent:Landroid/content/Intent;
    .end local v11           #showExpandedNotification:Z
    :goto_1
    return-void

    .line 1455
    .restart local v0       #notification:Landroid/app/Notification;
    .restart local v2       #resId:I
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v11       #showExpandedNotification:Z
    :cond_2
    const/16 v1, 0x9

    move v10, v1

    goto :goto_0

    .line 1458
    .end local v0           #notification:Landroid/app/Notification;
    .end local v2           #resId:I
    .end local v8           #intent:Landroid/content/Intent;
    .end local v11           #showExpandedNotification:Z
    .restart local v9       #callfwdIcon:[I
    :cond_3
    if-nez p2, :cond_4

    const/4 v1, 0x6

    move v10, v1

    .line 1459
    :goto_2
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v1, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 1458
    :cond_4
    const/16 v1, 0x9

    move v10, v1

    goto :goto_2

    .line 1402
    nop

    :array_0
    .array-data 0x4
        0x7t 0x1t 0x2t 0x7ft
        0x8t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method updateInCallNotification()V
    .locals 31

    .prologue
    .line 943
    const-string v5, "updateInCallNotification()..."

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_0

    .line 946
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 1227
    :goto_0
    return-void

    .line 950
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    .line 951
    .local v10, app:Lcom/android/phone/PhoneApp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v22

    .line 952
    .local v22, hasRingingCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v20

    .line 953
    .local v20, hasActiveCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v21

    .line 955
    .local v21, hasHoldingCall:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - hasRingingCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 956
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - hasActiveCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 957
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - hasHoldingCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 963
    iget-object v5, v10, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->getCdmaVoicePrivacyState()Z

    move-result v17

    .line 964
    .local v17, enhancedVoicePrivacy:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateInCallNotification: enhancedVoicePrivacy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 966
    if-eqz v22, :cond_6

    .line 968
    const v26, 0x7f02010a

    .line 997
    .local v26, resId:I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- Updating status bar icon: resId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 998
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 1001
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    move/from16 v18, v0

    .line 1012
    .local v18, expandedViewIcon:I
    if-eqz v22, :cond_c

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    .line 1019
    .local v15, currentCall:Lcom/android/internal/telephony/Call;
    :goto_2
    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v16

    .line 1021
    .local v16, currentConn:Lcom/android/internal/telephony/Connection;
    new-instance v25, Landroid/app/Notification;

    invoke-direct/range {v25 .. v25}, Landroid/app/Notification;-><init>()V

    .line 1022
    .local v25, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v25

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 1023
    move-object/from16 v0, v25

    iget v0, v0, Landroid/app/Notification;->flags:I

    move v5, v0

    or-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, v25

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1026
    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v28

    .line 1027
    .local v28, sub:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateInCallNotification()... Subscription is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v7

    invoke-static {v7}, Lcom/android/phone/PhoneApp;->createInCallIntent(I)Landroid/content/Intent;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v23

    .line 1039
    .local v23, inCallPendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1048
    new-instance v4, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f03001b

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1050
    .local v4, contentView:Landroid/widget/RemoteViews;
    const v5, 0x7f0700a8

    move-object v0, v4

    move v1, v5

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1055
    if-eqz v16, :cond_15

    .line 1065
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v11

    .line 1066
    .local v11, callDurationMsec:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v6, v29, v11

    .line 1069
    .local v6, chronometerBaseTime:J
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 1070
    .local v14, connNumber:Ljava/lang/String;
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v24

    .line 1071
    .local v24, isEmergencyNumber:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateInCallNotification()... connNumber is:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1072
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateInCallNotification()... isEmergencyNumber is:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1077
    if-eqz v22, :cond_f

    .line 1085
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    if-nez v24, :cond_e

    .line 1086
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneUtils;->getNotificationCardNameOnSub(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v8, v0

    const v9, 0x7f0c01e8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1125
    .local v8, expandedViewLine1:Ljava/lang/String;
    :goto_3
    const-string v5, "- Updating expanded view: line 1 \'xxxxxxx\'"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1130
    const v5, 0x7f0700a9

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 1143
    .end local v6           #chronometerBaseTime:J
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    .end local v11           #callDurationMsec:J
    .end local v14           #connNumber:Ljava/lang/String;
    .end local v24           #isEmergencyNumber:Z
    :goto_4
    const-string v19, ""

    .line 1148
    .local v19, expandedViewLine2:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x7f0c01da

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1163
    :goto_5
    const-string v5, "- Updating expanded view: line 2 \'xxxxxxx\'"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1164
    const v5, 0x7f0700aa

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1165
    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1175
    if-nez v22, :cond_1

    if-eqz v20, :cond_2

    .line 1180
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- Setting fullScreenIntent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1181
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    .line 1204
    .local v27, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1205
    const-string v5, "NotificationMgr"

    const-string v6, "updateInCallNotification: call-waiting! force relaunch..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1213
    .end local v27           #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object v5, v0

    const/4 v6, 0x2

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1217
    if-eqz v22, :cond_3

    if-nez v20, :cond_4

    if-nez v21, :cond_4

    :cond_3
    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/NotificationMgr;->isStatusbarStop:Z

    move v5, v0

    if-eqz v5, :cond_5

    .line 1219
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtils;->showIncomingCallUi()V

    .line 1225
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification()V

    .line 1226
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    goto/16 :goto_0

    .line 969
    .end local v4           #contentView:Landroid/widget/RemoteViews;
    .end local v15           #currentCall:Lcom/android/internal/telephony/Call;
    .end local v16           #currentConn:Lcom/android/internal/telephony/Connection;
    .end local v18           #expandedViewIcon:I
    .end local v19           #expandedViewLine2:Ljava/lang/String;
    .end local v23           #inCallPendingIntent:Landroid/app/PendingIntent;
    .end local v25           #notification:Landroid/app/Notification;
    .end local v26           #resId:I
    .end local v28           #sub:I
    :cond_6
    if-nez v20, :cond_8

    if-eqz v21, :cond_8

    .line 971
    if-eqz v17, :cond_7

    .line 972
    const v26, 0x7f02010d

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 974
    .end local v26           #resId:I
    :cond_7
    const v26, 0x7f020109

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 976
    .end local v26           #resId:I
    :cond_8
    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 978
    if-eqz v17, :cond_9

    .line 979
    const v26, 0x7f02010c

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 981
    .end local v26           #resId:I
    :cond_9
    const v26, 0x7f020105

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 984
    .end local v26           #resId:I
    :cond_a
    if-eqz v17, :cond_b

    .line 985
    const v26, 0x7f02010b

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 987
    .end local v26           #resId:I
    :cond_b
    const v26, 0x7f020104

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 1014
    .restart local v18       #expandedViewIcon:I
    :cond_c
    if-eqz v20, :cond_d

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    .restart local v15       #currentCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_2

    .line 1017
    .end local v15           #currentCall:Lcom/android/internal/telephony/Call;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    .restart local v15       #currentCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_2

    .line 1088
    .restart local v4       #contentView:Landroid/widget/RemoteViews;
    .restart local v6       #chronometerBaseTime:J
    .restart local v11       #callDurationMsec:J
    .restart local v14       #connNumber:Ljava/lang/String;
    .restart local v16       #currentConn:Lcom/android/internal/telephony/Connection;
    .restart local v23       #inCallPendingIntent:Landroid/app/PendingIntent;
    .restart local v24       #isEmergencyNumber:Z
    .restart local v25       #notification:Landroid/app/Notification;
    .restart local v28       #sub:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v8, 0x7f0c01e8

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_3

    .line 1091
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    :cond_f
    if-eqz v21, :cond_11

    if-nez v20, :cond_11

    .line 1096
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v24, :cond_10

    .line 1097
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneUtils;->getNotificationCardNameOnSub(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v8, v0

    const v9, 0x7f0c01e7

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_3

    .line 1099
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v8, 0x7f0c01e7

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_3

    .line 1108
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    :cond_11
    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v5

    if-nez v5, :cond_13

    .line 1109
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_12

    if-nez v24, :cond_12

    .line 1110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneUtils;->getNotificationCardNameOnSub(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v8, v0

    const v9, 0x7f0c01e6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_3

    .line 1112
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v8, 0x7f0c01e6

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_3

    .line 1115
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    :cond_13
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_14

    if-nez v24, :cond_14

    .line 1116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneUtils;->getNotificationCardNameOnSub(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v8, v0

    const v9, 0x7f0c01d9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_3

    .line 1118
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v8, 0x7f0c01d9

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_3

    .line 1135
    .end local v6           #chronometerBaseTime:J
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    .end local v11           #callDurationMsec:J
    .end local v14           #connNumber:Ljava/lang/String;
    .end local v24           #isEmergencyNumber:Z
    :cond_15
    const-string v5, "NotificationMgr"

    const-string v6, "updateInCallNotification: null connection, can\'t set exp view line 1."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1153
    .restart local v19       #expandedViewLine2:Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v13

    .line 1155
    .local v13, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v5, v13, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_5
.end method

.method updateInCallNotification(I)V
    .locals 31
    .parameter "onHold"

    .prologue
    .line 639
    const-string v5, "updateInCallNotification()..."

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 640
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zhangmin...onHold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_0

    .line 642
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 933
    :goto_0
    return-void

    .line 646
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    .line 647
    .local v10, app:Lcom/android/phone/PhoneApp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v22

    .line 648
    .local v22, hasRingingCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v20

    .line 649
    .local v20, hasActiveCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v21

    .line 651
    .local v21, hasHoldingCall:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - hasRingingCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 652
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - hasActiveCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 653
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - hasHoldingCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 659
    iget-object v5, v10, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->getCdmaVoicePrivacyState()Z

    move-result v17

    .line 660
    .local v17, enhancedVoicePrivacy:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateInCallNotification: enhancedVoicePrivacy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 662
    if-eqz v22, :cond_6

    .line 664
    const v26, 0x7f02010a

    .line 703
    .local v26, resId:I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- Updating status bar icon: resId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 704
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 707
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    move/from16 v18, v0

    .line 718
    .local v18, expandedViewIcon:I
    if-eqz v22, :cond_e

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    .line 725
    .local v15, currentCall:Lcom/android/internal/telephony/Call;
    :goto_2
    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v16

    .line 727
    .local v16, currentConn:Lcom/android/internal/telephony/Connection;
    new-instance v25, Landroid/app/Notification;

    invoke-direct/range {v25 .. v25}, Landroid/app/Notification;-><init>()V

    .line 728
    .local v25, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v25

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 729
    move-object/from16 v0, v25

    iget v0, v0, Landroid/app/Notification;->flags:I

    move v5, v0

    or-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, v25

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 732
    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v28

    .line 733
    .local v28, sub:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateInCallNotification(int onHold)... Subscription is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v7

    invoke-static {v7}, Lcom/android/phone/PhoneApp;->createInCallIntent(I)Landroid/content/Intent;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v23

    .line 745
    .local v23, inCallPendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 754
    new-instance v4, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f03001b

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 756
    .local v4, contentView:Landroid/widget/RemoteViews;
    const v5, 0x7f0700a8

    move-object v0, v4

    move v1, v5

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 761
    if-eqz v16, :cond_17

    .line 771
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v11

    .line 772
    .local v11, callDurationMsec:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v6, v29, v11

    .line 775
    .local v6, chronometerBaseTime:J
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 776
    .local v14, connNumber:Ljava/lang/String;
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v24

    .line 777
    .local v24, isEmergencyNumber:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateInCallNotification(int onHold)... connNumber is:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 778
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateInCallNotification(int onHold)... isEmergencyNumber is:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 783
    if-eqz v22, :cond_11

    .line 791
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v24, :cond_10

    .line 792
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneUtils;->getNotificationCardNameOnSub(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v8, v0

    const v9, 0x7f0c01e8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 831
    .local v8, expandedViewLine1:Ljava/lang/String;
    :goto_3
    const-string v5, "- Updating expanded view: line 1 \'xxxxxxx\'"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 836
    const v5, 0x7f0700a9

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 849
    .end local v6           #chronometerBaseTime:J
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    .end local v11           #callDurationMsec:J
    .end local v14           #connNumber:Ljava/lang/String;
    .end local v24           #isEmergencyNumber:Z
    :goto_4
    const-string v19, ""

    .line 854
    .local v19, expandedViewLine2:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x7f0c01da

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 869
    :goto_5
    const-string v5, "- Updating expanded view: line 2 \'xxxxxxx\'"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 870
    const v5, 0x7f0700aa

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 871
    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 881
    if-nez v22, :cond_1

    if-eqz v20, :cond_2

    .line 886
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- Setting fullScreenIntent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 887
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    .line 910
    .local v27, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_2

    .line 911
    const-string v5, "NotificationMgr"

    const-string v6, "updateInCallNotification: call-waiting! force relaunch..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 919
    .end local v27           #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object v5, v0

    const/4 v6, 0x2

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 923
    if-eqz v22, :cond_3

    if-nez v20, :cond_4

    if-nez v21, :cond_4

    :cond_3
    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/NotificationMgr;->isStatusbarStop:Z

    move v5, v0

    if-eqz v5, :cond_5

    .line 925
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtils;->showIncomingCallUi()V

    .line 931
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification()V

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    goto/16 :goto_0

    .line 665
    .end local v4           #contentView:Landroid/widget/RemoteViews;
    .end local v15           #currentCall:Lcom/android/internal/telephony/Call;
    .end local v16           #currentConn:Lcom/android/internal/telephony/Connection;
    .end local v18           #expandedViewIcon:I
    .end local v19           #expandedViewLine2:Ljava/lang/String;
    .end local v23           #inCallPendingIntent:Landroid/app/PendingIntent;
    .end local v25           #notification:Landroid/app/Notification;
    .end local v26           #resId:I
    .end local v28           #sub:I
    :cond_6
    if-nez v20, :cond_8

    if-eqz v21, :cond_8

    .line 667
    if-eqz v17, :cond_7

    .line 668
    const v26, 0x7f02010d

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 670
    .end local v26           #resId:I
    :cond_7
    const v26, 0x7f020109

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 672
    .end local v26           #resId:I
    :cond_8
    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 674
    if-eqz v17, :cond_9

    .line 675
    const v26, 0x7f02010c

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 677
    .end local v26           #resId:I
    :cond_9
    const v26, 0x7f020105

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 681
    .end local v26           #resId:I
    :cond_a
    if-eqz v17, :cond_c

    .line 682
    const/4 v5, 0x1

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_b

    .line 683
    const v26, 0x7f02010d

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 685
    .end local v26           #resId:I
    :cond_b
    const v26, 0x7f02010b

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 688
    .end local v26           #resId:I
    :cond_c
    const/4 v5, 0x1

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_d

    .line 689
    const v26, 0x7f020109

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 691
    .end local v26           #resId:I
    :cond_d
    const v26, 0x7f020104

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 720
    .restart local v18       #expandedViewIcon:I
    :cond_e
    if-eqz v20, :cond_f

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    .restart local v15       #currentCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_2

    .line 723
    .end local v15           #currentCall:Lcom/android/internal/telephony/Call;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    .restart local v15       #currentCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_2

    .line 794
    .restart local v4       #contentView:Landroid/widget/RemoteViews;
    .restart local v6       #chronometerBaseTime:J
    .restart local v11       #callDurationMsec:J
    .restart local v14       #connNumber:Ljava/lang/String;
    .restart local v16       #currentConn:Lcom/android/internal/telephony/Connection;
    .restart local v23       #inCallPendingIntent:Landroid/app/PendingIntent;
    .restart local v24       #isEmergencyNumber:Z
    .restart local v25       #notification:Landroid/app/Notification;
    .restart local v28       #sub:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v8, 0x7f0c01e8

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_3

    .line 797
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    :cond_11
    if-eqz v21, :cond_13

    if-nez v20, :cond_13

    .line 802
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_12

    if-nez v24, :cond_12

    .line 803
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneUtils;->getNotificationCardNameOnSub(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v8, v0

    const v9, 0x7f0c01e7

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_3

    .line 805
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v8, 0x7f0c01e7

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_3

    .line 814
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    :cond_13
    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v5

    if-nez v5, :cond_15

    .line 815
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_14

    if-nez v24, :cond_14

    .line 816
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneUtils;->getNotificationCardNameOnSub(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v8, v0

    const v9, 0x7f0c01e6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_3

    .line 818
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v8, 0x7f0c01e6

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_3

    .line 821
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    :cond_15
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_16

    if-nez v24, :cond_16

    .line 822
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v28 .. v28}, Lcom/android/phone/PhoneUtils;->getNotificationCardNameOnSub(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v8, v0

    const v9, 0x7f0c01d9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_3

    .line 824
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v8, 0x7f0c01d9

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_3

    .line 841
    .end local v6           #chronometerBaseTime:J
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    .end local v11           #callDurationMsec:J
    .end local v14           #connNumber:Ljava/lang/String;
    .end local v24           #isEmergencyNumber:Z
    :cond_17
    const-string v5, "NotificationMgr"

    const-string v6, "updateInCallNotification: null connection, can\'t set exp view line 1."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 859
    .restart local v19       #expandedViewLine2:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v13

    .line 861
    .local v13, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v5, v13, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_5
.end method

.method updateMuteNotification()V
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    const-string v0, "updateMuteNotification: MUTED"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 625
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifyMute()V

    .line 630
    :goto_0
    return-void

    .line 627
    :cond_0
    const-string v0, "updateMuteNotification: not muted (or not offhook)"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 628
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto :goto_0
.end method

.method updateMwi(ZLcom/android/internal/telephony/Phone;)V
    .locals 21
    .parameter "visible"
    .parameter "phone"

    .prologue
    .line 1282
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateMwi(): "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1283
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v13

    .line 1284
    .local v13, subscription:I
    if-eqz p1, :cond_6

    .line 1285
    const v12, 0x108007e

    .line 1286
    .local v12, resId:I
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object v5, v0

    fill-array-data v5, :array_0

    .line 1299
    .local v5, iconId:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c01e9

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1300
    .local v10, notificationTitle:Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v16

    .line 1301
    .local v16, vmNumber:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "- got vm number: \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " on Subscription: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1302
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1303
    aget v12, v5, v13

    .line 1321
    :cond_0
    if-nez v16, :cond_2

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v17

    if-nez v17, :cond_2

    .line 1322
    const-string v17, "- Null vm number: SIM records not loaded (yet)..."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1335
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v18, v17, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    if-lez v17, :cond_1

    .line 1336
    const-string v17, "  - Retrying in 10000 msec..."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1337
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x2710

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->sendMwiChangedDelayed(JLcom/android/internal/telephony/Phone;)V

    .line 1392
    .end local v5           #iconId:[I
    .end local v10           #notificationTitle:Ljava/lang/String;
    .end local v12           #resId:I
    .end local v16           #vmNumber:Ljava/lang/String;
    :goto_0
    return-void

    .line 1341
    .restart local v5       #iconId:[I
    .restart local v10       #notificationTitle:Ljava/lang/String;
    .restart local v12       #resId:I
    .restart local v16       #vmNumber:Ljava/lang/String;
    :cond_1
    const-string v17, "NotificationMgr"

    const-string v18, "NotificationMgr.updateMwi: getVoiceMailNumber() failed after 5 retries; giving up."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/android/phone/TelephonyCapabilities;->supportsVoiceMessageCount(Lcom/android/internal/telephony/Phone;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1349
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v15

    .line 1350
    .local v15, vmCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c01ea

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1351
    .local v14, titleFormat:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1355
    .end local v14           #titleFormat:Ljava/lang/String;
    .end local v15           #vmCount:I
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c01ed

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1364
    .local v9, notificationText:Ljava/lang/String;
    :goto_1
    new-instance v6, Landroid/content/Intent;

    const-string v17, "android.intent.action.CALL"

    const-string v18, "voicemail"

    const-string v19, ""

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object v0, v6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1366
    .local v6, intent:Landroid/content/Intent;
    const-string v17, "subId"

    move-object v0, v6

    move-object/from16 v1, v17

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v6

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1369
    .local v11, pendingIntent:Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification;

    const/16 v17, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object v0, v7

    move v1, v12

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1376
    .local v7, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object v0, v7

    move-object/from16 v1, v17

    move-object v2, v10

    move-object v3, v9

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1382
    move-object v0, v7

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object v1, v7

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1383
    move-object v0, v7

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    move-object v1, v7

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1384
    invoke-static {v7}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 1386
    if-nez v13, :cond_5

    const/16 v17, 0x5

    move/from16 v8, v17

    .line 1387
    .local v8, notificationId:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v8

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1359
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #notification:Landroid/app/Notification;
    .end local v8           #notificationId:I
    .end local v9           #notificationText:Ljava/lang/String;
    .end local v11           #pendingIntent:Landroid/app/PendingIntent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c01ec

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #notificationText:Ljava/lang/String;
    goto/16 :goto_1

    .line 1386
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v7       #notification:Landroid/app/Notification;
    .restart local v11       #pendingIntent:Landroid/app/PendingIntent;
    :cond_5
    const/16 v17, 0xa

    move/from16 v8, v17

    goto :goto_2

    .line 1389
    .end local v5           #iconId:[I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #notification:Landroid/app/Notification;
    .end local v9           #notificationText:Ljava/lang/String;
    .end local v10           #notificationTitle:Ljava/lang/String;
    .end local v11           #pendingIntent:Landroid/app/PendingIntent;
    .end local v12           #resId:I
    .end local v16           #vmNumber:Ljava/lang/String;
    :cond_6
    if-nez v13, :cond_7

    const/16 v17, 0x5

    move/from16 v8, v17

    .line 1390
    .restart local v8       #notificationId:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 1389
    .end local v8           #notificationId:I
    :cond_7
    const/16 v17, 0xa

    move/from16 v8, v17

    goto :goto_3

    .line 1286
    :array_0
    .array-data 0x4
        0xb2t 0x0t 0x8t 0x1t
        0xb3t 0x0t 0x8t 0x1t
    .end array-data
.end method

.method updateNetworkSelection(ILcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter "serviceState"
    .parameter "phone"

    .prologue
    const/4 v4, 0x1

    const-string v5, ""

    .line 1571
    invoke-static {p2}, Lcom/android/phone/TelephonyCapabilities;->supportsNetworkSelection(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1575
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1577
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "network_selection_name_key"

    const-string v3, ""

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1579
    .local v0, networkSelection:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1580
    const-string v2, "network_selection_key"

    const-string v3, ""

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1584
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkSelection()...state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1587
    if-ne p1, v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1589
    iget-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-nez v2, :cond_1

    .line 1590
    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->showNetworkSelection(Ljava/lang/String;)V

    .line 1591
    iput-boolean v4, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 1600
    .end local v0           #networkSelection:Ljava/lang/String;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 1594
    .restart local v0       #networkSelection:Ljava/lang/String;
    .restart local v1       #sp:Landroid/content/SharedPreferences;
    :cond_2
    iget-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-eqz v2, :cond_1

    .line 1595
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection()V

    .line 1596
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    goto :goto_0
.end method

.method updateSpeakerNotification()V
    .locals 3

    .prologue
    .line 593
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 595
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    const-string v1, "updateSpeakerNotification: speaker ON"

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->notifySpeakerphone()V

    .line 602
    :goto_0
    return-void

    .line 599
    :cond_0
    const-string v1, "updateSpeakerNotification: speaker OFF (or not offhook)"

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0
.end method
