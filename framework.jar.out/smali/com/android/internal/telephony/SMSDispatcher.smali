.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;
    }
.end annotation


# static fields
.field private static final DEFAULT_SMS_CHECK_PERIOD:I = 0x36ee80

.field private static final DEFAULT_SMS_MAX_COUNT:I = 0x64

.field private static final DEFAULT_SMS_TIMEOUT:I = 0x1770

.field protected static final EVENT_ALERT_TIMEOUT:I = 0x9

.field protected static final EVENT_GET_ICC_SMS_DONE:I = 0x13

.field protected static final EVENT_ICC_CHANGED:I = 0x10

.field protected static final EVENT_ICC_FULL:I = 0x6

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0xd

.field protected static final EVENT_IMS_STATE_DONE:I = 0xe

.field protected static final EVENT_NEW_BROADCAST_SMS:I = 0x14

.field protected static final EVENT_NEW_SMS:I = 0x1

.field protected static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x5

.field protected static final EVENT_POST_ALERT:I = 0x7

.field protected static final EVENT_PROCESS_SEND_RETRY:I = 0xf

.field protected static final EVENT_RADIO_ON:I = 0xc

.field protected static final EVENT_REPORT_MEMORY_STATUS_DONE:I = 0xb

.field protected static final EVENT_SEND_CONFIRMED_SMS:I = 0x8

.field protected static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field protected static final EVENT_SMS_ON_ICC:I = 0x12

.field protected static final EVENT_STOP_SENDING:I = 0xa

.field protected static final EVENT_UPDATE_ICC_MWI:I = 0x11

.field private static final MAX_SEND_RETRIES:I = 0x3

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field protected static final RAW_PROJECTION:[Ljava/lang/String; = null

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEND_RETRY_DELAY:I = 0x7d0

.field private static final SINGLE_PART_SMS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SMS"

.field protected static mIms:Z

.field protected static mImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

.field protected static mRemainingMessages:I

.field protected static mReportMemoryStatusPending:Z

.field protected static mStorageAvailable:Z

.field private static sConcatenatedRef:I


# instance fields
.field private final WAKE_LOCK_TIMEOUT:I

.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mApplication:Lcom/android/internal/telephony/UiccCardApplication;

.field protected mCm:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field private mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPendingMessagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field protected final mRawUri:Landroid/net/Uri;

.field protected mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

.field protected mResolver:Landroid/content/ContentResolver;

.field private mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mSTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncronousSending:Z

.field protected mUiccManager:Lcom/android/internal/telephony/UiccManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockFull:Landroid/os/PowerManager$WakeLock;

.field protected final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v3

    const-string v1, "sequence"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->mIms:Z

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .parameter "phone"
    .parameter "cm"

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iput-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    iput-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "raw"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    const/16 v3, 0x1388

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->WAKE_LOCK_TIMEOUT:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v3, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->createWakelock()V

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "sms_outgoing_check_interval_ms"

    const v5, 0x36ee80

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, check_period:I
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "sms_outgoing_check_max_count"

    const/16 v5, 0x64

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, max_count:I
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;-><init>(Lcom/android/internal/telephony/SMSDispatcher;II)V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    const-string v3, "persist.radio.sms_sync_sending"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/16 v4, 0x10

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private createWakelock()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, "SMSDispatcher"

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const v1, 0x1000001a

    const-string v2, "SMSDispatcher"

    invoke-virtual {v0, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLockFull:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLockFull:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method private enqueueMessageForSending(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 4
    .parameter "tracker"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added message to the pending queue. Queue size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method private handleIccFull()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1388

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLockFull:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLockFull:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static isIms()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->mIms:Z

    return v0
.end method

.method public static isImsSmsEncodingCdma()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isCdma()Z

    move-result v0

    return v0
.end method

.method private isMultipartTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 2
    .parameter "tracker"

    .prologue
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v0, map:Ljava/util/HashMap;
    const-string v1, "parts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    return-void
.end method

.method private processNextPendingMessage()V
    .locals 4

    .prologue
    const-string v0, "SMS"

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v0, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed message from pending queue. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " left"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const-string v0, "SMS"

    const-string v2, "Pending messages list consistency failure detected!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 6
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "encoding"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;Lcom/android/internal/telephony/SMSDispatcher$1;)V

    return-object v0
.end method

.method protected SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "pdu"

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "destPort"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "smsc"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pdu"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "pdu"

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "smsc"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pdu"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "data"
    .parameter "pdu"

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "smsc"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pdu"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method dispatch(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .parameter "intent"
    .parameter "permission"

    .prologue
    const-wide/16 v2, 0x1388

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v0, "needWakeLock"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLockFull:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLockFull:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected dispatchBroadcastPdus(Ljava/lang/String;[[B)V
    .locals 4
    .parameter "intent"
    .parameter "pdus"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, broadcastIntent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "sub_id"

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method protected dispatchBroadcastPdus([[BZ)V
    .locals 6
    .parameter "pdus"
    .parameter "isEmergencyMessage"

    .prologue
    const-string v5, "sub_id"

    const-string v2, "pdus"

    const-string v4, "SMS"

    const-string v3, "Dispatching "

    if-eqz p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "sub_id"

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " emergency SMS CB pdus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "sub_id"

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SMS CB pdus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchPdus([[B)V
    .locals 3
    .parameter "pdus"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "encoding"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getEncoding()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "sub_id"

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method protected dispatchPdusExtra([[BZ)V
    .locals 3
    .parameter "pdus"
    .parameter "isSelfRegMessage"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "encoding"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getEncoding()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "sub_id"

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "needWakeLock"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SELF_REG_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .locals 4
    .parameter "pdus"
    .parameter "port"

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "encoding"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getEncoding()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "sub_id"

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v0, "SMS"

    const-string v1, "SMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x104035c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract getEncoding()I
.end method

.method getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract handleBroadcastSms(Landroid/os/AsyncResult;)V
.end method

.method protected abstract handleGetIccSmsDone(Landroid/os/AsyncResult;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v8, "SMS"

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v6, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_NEW_SMS phone id :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "SMS"

    const-string v6, "New SMS Message Received"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    const-string v6, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception processing incoming SMS. Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/SmsMessage;

    .local v5, sms:Landroid/telephony/SmsMessage;
    :try_start_0
    iget-object v6, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v3

    .local v3, result:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    if-ne v3, v9, :cond_2

    move v2, v9

    .local v2, handled:Z
    :goto_1
    const/4 v6, 0x0

    invoke-direct {p0, v2, v3, v6}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2           #handled:Z
    .end local v3           #result:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v6, "SMS"

    const-string v6, "Exception dispatching message"

    invoke-static {v8, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x2

    invoke-direct {p0, v10, v6, v11}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    .end local v1           #ex:Ljava/lang/RuntimeException;
    .restart local v3       #result:I
    :cond_2
    move v2, v10

    goto :goto_1

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #result:I
    .end local v5           #sms:Landroid/telephony/SmsMessage;
    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_3
    const-string v6, "SMS"

    const-string v6, "SMS retry.."

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleIccFull()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/AlertDialog;

    check-cast v6, Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .local v4, sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v6, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    :goto_2
    const-string v6, "SMS"

    const-string v6, "EVENT_ALERT_TIMEOUT, message stop sending"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v6

    move-object v1, v6

    .local v1, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v6, "SMS"

    const-string v6, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1           #ex:Landroid/app/PendingIntent$CanceledException;
    :pswitch_8
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .restart local v4       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->isMultipartTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :goto_3
    const/16 v6, 0x9

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_3

    .end local v4           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_9
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .restart local v4       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v6, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v4           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_4
    const/16 v6, 0x9

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    :catch_2
    move-exception v6

    move-object v1, v6

    .restart local v1       #ex:Landroid/app/PendingIntent$CanceledException;
    const-string v6, "SMS"

    const-string v6, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v1           #ex:Landroid/app/PendingIntent$CanceledException;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_5

    sput-boolean v9, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    const-string v6, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Memory status report to modem pending : mStorageAvailable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    sput-boolean v10, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    goto/16 :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_b
    sget-boolean v6, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    if-eqz v6, :cond_0

    const-string v6, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending pending memory status report : mStorageAvailable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    sget-boolean v7, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    const/16 v8, 0xb

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleBroadcastSms(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->updateIccAvailability()V

    goto/16 :goto_0

    :pswitch_e
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsOnIcc(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleGetIccSmsDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    const-string v6, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " MWI update on card failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->storeVoiceMailCount()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_10
        :pswitch_e
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method protected handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "ss"
    .parameter "tracker"

    .prologue
    iget-object v0, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :try_start_0
    iget-object v0, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .parameter "tracker"

    .prologue
    const/4 v5, 0x5

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_0

    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMS"

    const-string v5, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, r:Landroid/content/res/Resources;
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .local v0, appName:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x104035d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x104035e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104035f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040360

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x9

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1770

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, -0x1

    const-string v8, "SendNextMsg"

    const-string v13, "SMS"

    iget-object v7, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v5, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .local v5, sentIntent:Landroid/app/PendingIntent;
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_5

    const-string v8, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMS send complete. Broadcasting intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_0

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SmsResponse;

    iget v2, v8, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    .local v2, messageRef:I
    iput v2, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2           #messageRef:I
    :cond_0
    if-eqz v5, :cond_2

    :try_start_0
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-le v8, v10, :cond_1

    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    sub-int/2addr v8, v11

    sput v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    :cond_1
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v8, :cond_4

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .local v4, sendNext:Landroid/content/Intent;
    const-string v8, "SendNextMsg"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #sendNext:Landroid/content/Intent;
    :cond_2
    :goto_0
    iget-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    if-eqz v8, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->processNextPendingMessage()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v8, -0x1

    :try_start_1
    invoke-virtual {v5, v8}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_0

    :cond_5
    const-string v8, "SMS"

    const-string v8, "SMS send failed"

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getVoiceServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .local v6, ss:I
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    :cond_6
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_7

    iget v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v8, v12, :cond_7

    iget v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {p0, v12, v7}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .local v3, retryMsg:Landroid/os/Message;
    const-wide/16 v8, 0x7d0

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .end local v3           #retryMsg:Landroid/os/Message;
    :cond_7
    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_3

    const/4 v0, 0x1

    .local v0, error:I
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_8

    const/4 v0, 0x6

    :cond_8
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, fillIn:Landroid/content/Intent;
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_9

    const-string v9, "errorCode"

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/SmsResponse;

    iget v8, v8, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_9
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-le v8, v10, :cond_a

    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    sub-int/2addr v8, v11

    sput v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    :cond_a
    sget v8, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v8, :cond_b

    const-string v8, "SendNextMsg"

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_b
    iget-object v8, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v0, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v1           #fillIn:Landroid/content/Intent;
    :goto_2
    iget-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    if-eqz v8, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->processNextPendingMessage()V

    goto/16 :goto_1

    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method protected abstract handleSmsOnIcc(Landroid/os/AsyncResult;)V
.end method

.method protected abstract handleStatusReport(Landroid/os/AsyncResult;)V
.end method

.method protected isCdmaMo()Z
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isImsSmsEncodingCdma()Z

    move-result v0

    goto :goto_0
.end method

.method protected processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I
    .locals 24
    .parameter "sms"
    .parameter "concatRef"
    .parameter "portAddrs"

    .prologue
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v4, "reference_number ="

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v23, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move v4, v0

    move-object/from16 v0, v23

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " AND address = ?"

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .local v8, whereArgs:[Ljava/lang/String;
    const/16 v20, 0x0

    check-cast v20, [[B

    .local v20, pdus:[[B
    const/4 v10, 0x0

    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .local v11, cursorCount:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v11, v4, :cond_2

    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .local v22, values:Landroid/content/ContentValues;
    const-string v4, "date"

    new-instance v5, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "pdu"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "reference_number"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "count"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "sequence"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p3, :cond_0

    const-string v4, "destination_port"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-eqz v10, :cond_1

    .end local v11           #cursorCount:I
    .end local v22           #values:Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return v4

    .restart local v11       #cursorCount:I
    :cond_2
    :try_start_1
    const-string v4, "pdu"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .local v19, pduColumn:I
    const-string v4, "sequence"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .local v21, sequenceColumn:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    move v0, v4

    new-array v0, v0, [[B

    move-object/from16 v20, v0

    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    move v1, v11

    if-ge v0, v1, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-object v0, v10

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v12, v4

    .local v12, cursorSequence:I
    const/4 v4, 0x1

    sub-int v4, v12, v4

    move-object v0, v10

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v20, v4

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .end local v12           #cursorSequence:I
    :cond_3
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v5

    aput-object v5, v20, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz p3, :cond_a

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v4, v0

    const/16 v5, 0xb84

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v4, v0

    const/16 v5, 0x3e80

    if-ne v4, v5, :cond_9

    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;

    move v4, v0

    if-eqz v4, :cond_7

    const/4 v4, 0x2

    move v15, v4

    .local v15, encoding:I
    :goto_3
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v18, output:Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x0

    :goto_4
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    move/from16 v0, v16

    move v1, v4

    if-ge v0, v1, :cond_8

    aget-object v4, v20, v16

    invoke-static {v4, v15}, Landroid/telephony/SmsMessage;->createFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v17

    .local v17, msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v13

    .local v13, data:[B
    const/4 v4, 0x0

    array-length v5, v13

    move-object/from16 v0, v18

    move-object v1, v13

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .end local v11           #cursorCount:I
    .end local v13           #data:[B
    .end local v15           #encoding:I
    .end local v16           #i:I
    .end local v17           #msg:Landroid/telephony/SmsMessage;
    .end local v18           #output:Ljava/io/ByteArrayOutputStream;
    .end local v19           #pduColumn:I
    .end local v21           #sequenceColumn:I
    :catch_0
    move-exception v4

    move-object v14, v4

    .local v14, e:Landroid/database/SQLException;
    :try_start_2
    const-string v4, "SMS"

    const-string v5, "Can\'t access multipart SMS database"

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x2

    if-eqz v10, :cond_1

    goto/16 :goto_0

    .end local v14           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4

    .restart local v11       #cursorCount:I
    .restart local v16       #i:I
    .restart local v19       #pduColumn:I
    .restart local v21       #sequenceColumn:I
    :cond_7
    const/4 v4, 0x1

    move v15, v4

    goto :goto_3

    .restart local v15       #encoding:I
    .restart local v18       #output:Ljava/io/ByteArrayOutputStream;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v4, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v4

    goto/16 :goto_1

    .end local v15           #encoding:I
    .end local v18           #output:Ljava/io/ByteArrayOutputStream;
    :cond_9
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    :goto_5
    const/4 v4, -0x1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_5
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method protected sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .parameter "tracker"

    .prologue
    iget-object v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v2, map:Ljava/util/HashMap;
    const-string v6, "pdu"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v3, v0

    .local v3, pdu:[B
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .local v4, sentIntent:Landroid/app/PendingIntent;
    if-nez v3, :cond_1

    if-eqz v4, :cond_0

    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v4, v6}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .local v5, ss:I
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    .local v1, appName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->check(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    if-eqz v6, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->enqueueMessageForSending(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    :cond_4
    const/4 v6, 0x7

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v1           #appName:Ljava/lang/String;
    .end local v5           #ss:I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method protected sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "smsc"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "pdu"

    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {v3, v1, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .local v3, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .local v2, ss:I
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .local v0, appName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->check(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    if-eqz v4, :cond_3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->enqueueMessageForSending(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    :cond_4
    const/4 v4, 0x7

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v0           #appName:Ljava/lang/String;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #ss:I
    .end local v3           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected abstract sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendRgData(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
.end method

.method protected abstract sendVPMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation
.end method

.method protected abstract sendVPText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
.end method

.method protected storeVoiceMailCount()V
    .locals 10

    .prologue
    const-string v9, "SMS"

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .local v1, imsi:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v2

    .local v2, mwi:I
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    .local v4, sub:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    const-string v7, "vm_count_key"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, vmCountForSub:Ljava/lang/String;
    const-string v7, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Storing Voice Mail Count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for imsi = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for sub = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in preferences."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/PhoneBase;

    const-string v8, "vm_id_key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, vmId:Ljava/lang/String;
    const-string v7, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vmId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected abstract updateIccAvailability()V
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v1, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    const-string v1, "CDMA"

    move-object v0, v1

    .local v0, phoneType:Ljava/lang/String;
    :goto_0
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active phone changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v0           #phoneType:Ljava/lang/String;
    :cond_0
    const-string v1, "GSM"

    move-object v0, v1

    goto :goto_0
.end method
