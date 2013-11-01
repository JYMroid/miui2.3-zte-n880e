.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$1;,
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field static final PHONE_STATE_PERMISSION_MASK:I = 0xec

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"


# instance fields
.field private final SUBSCRIPTION:Ljava/lang/String;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCallForwarding:[Z

.field private mCallIncomingNumber:[Ljava/lang/String;

.field private mCallState:[I

.field private mCellLocation:[Landroid/os/Bundle;

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDataConnectionNetworkType:I

.field private mDataConnectionPossible:Z

.field private mDataConnectionReason:Ljava/lang/String;

.field private mDataConnectionState:I

.field private mDataNationRoaming:Z

.field private mDefaultSubscription:I

.field private mMessageWaiting:[Z

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const-string v6, ""

    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    const-string v3, "SUBSCRIPTION"

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->SUBSCRIPTION:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    iput v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    iput v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iput-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mDataNationRoaming:Z

    iput-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    const-string v3, ""

    iput-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    iput v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    iput v5, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubscription:I

    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v1

    .local v1, location:Landroid/telephony/CellLocation;
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v3

    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubscription:I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .local v2, numPhones:I
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    new-array v3, v2, [Landroid/telephony/ServiceState;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-array v3, v2, [Landroid/telephony/SignalStrength;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    new-array v3, v2, [Landroid/os/Bundle;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput v5, v3, v0

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v4, ""

    aput-object v6, v3, v0

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v5, v3, v0

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v5, v3, v0

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "subscription"

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, ident:J
    if-nez p1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v3, "SUBSCRIPTION"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SUBSCRIPTION"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getPreferredDataSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastDataConnectionStateChanged(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .parameter "anyDataConnectionState"
    .parameter "apnType"
    .parameter "ipVersion"
    .parameter "state"
    .parameter "apn"
    .parameter "interfaceName"
    .parameter "ipAddress"
    .parameter "gwAddress"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"

    .prologue
    const-string v4, "apnType"

    const-string v3, "TelephonyRegistry"

    const-string v1, "TelephonyRegistry"

    const-string v1, "+++broadcastDataConnectionStateChanged() entered."

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "TelephonyRegistry"

    const-string v1, "+++Caution+++Do not add flag: FLAG_RECEIVER_REPLACE_PENDING."

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p9, :cond_0

    const-string v1, "networkUnvailable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    if-eqz p10, :cond_1

    const-string v1, "reason"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v1, "apnType"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ipVersion"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "apnTypeState"

    invoke-static {p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "iface"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "apn"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ipaddress"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "igwaddress"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SUBSCRIPTION"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getPreferredDataSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TelephonyRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++apnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TelephonyRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++intent.getStringExtra(Phone.DATA_APN_TYPES_KEY) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "apnType"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TelephonyRegistry"

    const-string v1, "+++call sendStickyBroadcast() in broadcastDataConnectionStateChanged()."

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 6
    .parameter "state"
    .parameter "subscription"

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "SUBSCRIPTION"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .locals 5
    .parameter "signalStrength"
    .parameter "subscription"

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "SUBSCRIPTION"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private checkListenerPermission(I)V
    .locals 3
    .parameter "events"

    .prologue
    const/4 v2, 0x0

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    and-int/lit16 v0, p1, 0xec

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "method"

    .prologue
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, msg:Ljava/lang/String;
    const-string v1, "TelephonyRegistry"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .parameter "binder"

    .prologue
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, recordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v3

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #recordCount:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V
    .locals 3
    .parameter "r"
    .parameter "cellLocation"

    .prologue
    :try_start_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendSignalStrength(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;)V
    .locals 3
    .parameter "r"
    .parameter "signalStrength"

    .prologue
    :try_start_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, recordCount:I
    const-string v4, "last known state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallIncomingNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mServiceState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSignalStrength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMessageWaiting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallForwarding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCellLocation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionPossible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registrations: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_2
    monitor-exit v3

    goto/16 :goto_0

    .end local v0           #i:I
    .end local v2           #recordCount:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 6
    .parameter "pkgForDebug"
    .parameter "callback"
    .parameter "events"
    .parameter "notifyNow"

    .prologue
    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubscription:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listenOnSubscription(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V

    return-void
.end method

.method public listenOnSubscription(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    .locals 14
    .parameter "pkgForDebug"
    .parameter "callback"
    .parameter "events"
    .parameter "notifyNow"
    .parameter "subscription"

    .prologue
    if-eqz p3, :cond_d

    move-object v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    iget-object v10, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v10

    const/4 v7, 0x0

    .local v7, r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .local v3, b:Landroid/os/IBinder;
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .local v2, N:I
    const/4 v6, 0x0

    .local v6, i:I
    move-object v8, v7

    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .local v8, r:Lcom/android/server/TelephonyRegistry$Record;
    :goto_0
    if-ge v6, v2, :cond_b

    :try_start_1
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v8           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v7       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_2
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v3, v11, :cond_a

    :goto_1
    iget v11, v7, Lcom/android/server/TelephonyRegistry$Record;->events:I

    xor-int v11, v11, p3

    and-int v9, p3, v11

    .local v9, send:I
    move/from16 v0, p3

    move-object v1, v7

    iput v0, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    if-eqz p4, :cond_9

    and-int/lit8 v11, p3, 0x1

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v11, v11, p5

    invoke-virtual {p0, v7, v11}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    and-int/lit8 v11, p3, 0x2

    if-eqz v11, :cond_1

    :try_start_3
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v11, v11, p5

    invoke-virtual {v11}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v5

    .local v5, gsmSignalStrength:I
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v12, 0x63

    if-ne v5, v12, :cond_c

    const/4 v12, -0x1

    :goto_2
    invoke-interface {v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v5           #gsmSignalStrength:I
    :cond_1
    :goto_3
    and-int/lit8 v11, p3, 0x4

    if-eqz v11, :cond_2

    :try_start_4
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v12, v12, p5

    invoke-interface {v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_4
    and-int/lit8 v11, p3, 0x8

    if-eqz v11, :cond_3

    :try_start_5
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v12, v12, p5

    invoke-interface {v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_5
    and-int/lit8 v11, p3, 0x10

    if-eqz v11, :cond_4

    :try_start_6
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v11, v11, p5

    invoke-direct {p0, v7, v11}, Lcom/android/server/TelephonyRegistry;->sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    and-int/lit8 v11, p3, 0x20

    if-eqz v11, :cond_5

    :try_start_7
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v12, v12, p5

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v13, v13, p5

    invoke-interface {v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_6
    and-int/lit8 v11, p3, 0x40

    if-eqz v11, :cond_6

    :try_start_8
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v11, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_6
    :goto_7
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x80

    move v11, v0

    if-eqz v11, :cond_7

    :try_start_9
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-interface {v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_7
    :goto_8
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x200

    move v11, v0

    if-eqz v11, :cond_8

    :try_start_a
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v12, p0, Lcom/android/server/TelephonyRegistry;->mDataNationRoaming:Z

    invoke-interface {v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataNationRoaming(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    :cond_8
    :goto_9
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x100

    move v11, v0

    if-eqz v11, :cond_9

    :try_start_b
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v12, v12, p5

    invoke-interface {v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    :cond_9
    :goto_a
    :try_start_c
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .end local v2           #N:I
    .end local v3           #b:Landroid/os/IBinder;
    .end local v6           #i:I
    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v9           #send:I
    :goto_b
    return-void

    .restart local v2       #N:I
    .restart local v3       #b:Landroid/os/IBinder;
    .restart local v6       #i:I
    .restart local v7       #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    move-object v8, v7

    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v8       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_0

    :cond_b
    :try_start_d
    new-instance v7, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .end local v8           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v7       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_e
    iput-object v3, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p2

    move-object v1, v7

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iput-object p1, v7, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    move/from16 v0, p5

    move-object v1, v7

    iput v0, v1, Lcom/android/server/TelephonyRegistry$Record;->subscription:I

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v2           #N:I
    .end local v3           #b:Landroid/os/IBinder;
    .end local v6           #i:I
    :catchall_0
    move-exception v11

    :goto_c
    monitor-exit v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw v11

    .restart local v2       #N:I
    .restart local v3       #b:Landroid/os/IBinder;
    .restart local v5       #gsmSignalStrength:I
    .restart local v6       #i:I
    .restart local v9       #send:I
    :cond_c
    move v12, v5

    goto/16 :goto_2

    .end local v5           #gsmSignalStrength:I
    :catch_0
    move-exception v11

    move-object v4, v11

    .local v4, ex:Landroid/os/RemoteException;
    :try_start_f
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_3

    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    move-object v4, v11

    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_4

    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_2
    move-exception v11

    move-object v4, v11

    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_5

    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_3
    move-exception v11

    move-object v4, v11

    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_6

    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_4
    move-exception v11

    move-object v4, v11

    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_7

    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_5
    move-exception v11

    move-object v4, v11

    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_8

    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_6
    move-exception v11

    move-object v4, v11

    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_9

    .end local v4           #ex:Landroid/os/RemoteException;
    :catch_7
    move-exception v11

    move-object v4, v11

    .restart local v4       #ex:Landroid/os/RemoteException;
    iget-object v11, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_a

    .end local v2           #N:I
    .end local v3           #b:Landroid/os/IBinder;
    .end local v4           #ex:Landroid/os/RemoteException;
    .end local v6           #i:I
    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v9           #send:I
    :cond_d
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_b

    .restart local v2       #N:I
    .restart local v3       #b:Landroid/os/IBinder;
    .restart local v6       #i:I
    .restart local v8       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v7       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto :goto_c
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 1
    .parameter "cfi"

    .prologue
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubscription:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyCallForwardingChangedOnSubscription(ZI)V

    return-void
.end method

.method public notifyCallForwardingChangedOnSubscription(ZI)V
    .locals 6
    .parameter "cfi"
    .parameter "subscription"

    .prologue
    const-string v3, "notifyCallForwardingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallForwardingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean p1, v4, p2

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p2, :cond_1

    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1       #i:I
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubscription:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->notifyCallStateOnSubscription(ILjava/lang/String;I)V

    return-void
.end method

.method public notifyCallStateOnSubscription(ILjava/lang/String;I)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "subscription"

    .prologue
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput p1, v4, p3

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p2, v4, p3

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_1

    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p3, :cond_1

    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1       #i:I
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .locals 1
    .parameter "cellLocation"

    .prologue
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubscription:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationOnSubscription(Landroid/os/Bundle;I)V

    return-void
.end method

.method public notifyCellLocationOnSubscription(Landroid/os/Bundle;I)V
    .locals 5
    .parameter "cellLocation"
    .parameter "subscription"

    .prologue
    const-string v2, "notifyCellLocation()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aput-object p1, v3, p2

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/android/server/TelephonyRegistry$Record;->subscription:I

    if-ne v3, p2, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/android/server/TelephonyRegistry;->sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public notifyDataActivity(I)V
    .locals 6
    .parameter "state"

    .prologue
    const-string v3, "notifyDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1       #i:I
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDataConnection(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 18
    .parameter "anyDataConnectionState"
    .parameter "apnType"
    .parameter "ipVersion"
    .parameter "state"
    .parameter "apn"
    .parameter "interfaceName"
    .parameter "ipAddress"
    .parameter "gwAddress"
    .parameter "isDataConnectivityPossible"
    .parameter "networkType"
    .parameter "reason"

    .prologue
    const-string v3, "TelephonyRegistry"

    const-string v4, "+++TelephonyRegistry.notifyDataConnection() entered."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "notifyDataConnection()"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .local v17, sb:Ljava/lang/StringBuilder;
    const-string v3, "notifyDataConnection: anyState="

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",apnTypeState="

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",ip="

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",gw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",isDataConnectivityPossible="

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",networkType="

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",reason="

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TelephonyRegistry"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object v3, v0

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move v4, v0

    move v0, v4

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move v4, v0

    move v0, v4

    move/from16 v1, p10

    if-eq v0, v1, :cond_3

    :cond_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    move/from16 v0, p10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v15, v4, v5

    .local v15, i:I
    :goto_1
    if-ltz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/TelephonyRegistry$Record;

    .local v16, r:Lcom/android/server/TelephonyRegistry$Record;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/TelephonyRegistry$Record;->events:I

    move v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2

    :try_start_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    move/from16 v2, p10

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v14, v4

    .local v14, ex:Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .end local v14           #ex:Landroid/os/RemoteException;
    .end local v15           #i:I
    .end local v16           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "TelephonyRegistry"

    const-string v4, "+++begin to call broadcastDataConnectionStateChanged()."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p11

    invoke-direct/range {v3 .. v13}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDataNationRoaming(Z)V
    .locals 6
    .parameter "hasRoaming"

    .prologue
    const-string v3, "notifyDataNationRoaming()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mDataNationRoaming:Z

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_1

    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataNationRoaming(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1       #i:I
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyMessageWaitingChanged(Z)V
    .locals 1
    .parameter "mwi"

    .prologue
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubscription:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyMessageWaitingChangedOnSubscription(ZI)V

    return-void
.end method

.method public notifyMessageWaitingChangedOnSubscription(ZI)V
    .locals 6
    .parameter "mwi"
    .parameter "subscription"

    .prologue
    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyMessageWaitingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean p1, v4, p2

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p2, :cond_1

    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1       #i:I
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubscription:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyServiceStateOnSubscription(Landroid/telephony/ServiceState;I)V

    return-void
.end method

.method public notifyServiceStateOnSubscription(Landroid/telephony/ServiceState;I)V
    .locals 5
    .parameter "state"
    .parameter "subscription"

    .prologue
    const-string v2, "notifyServiceState()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "TelephonyRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyServiceState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p1, v3, p2

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/android/server/TelephonyRegistry$Record;->subscription:I

    if-ne v3, p2, :cond_1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubscription:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifySignalStrengthOnSubscription(Landroid/telephony/SignalStrength;I)V

    return-void
.end method

.method public notifySignalStrengthOnSubscription(Landroid/telephony/SignalStrength;I)V
    .locals 7
    .parameter "signalStrength"
    .parameter "subscription"

    .prologue
    const-string v4, "notifySignalStrength()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p1, v5, p2

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v2, v5, v6

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .local v3, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_1

    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->subscription:I

    if-ne v5, p2, :cond_1

    invoke-direct {p0, v3, p1}, Lcom/android/server/TelephonyRegistry;->sendSignalStrength(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;)V

    :cond_1
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, p2, :cond_2

    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .local v1, gsmSignalStrength:I
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_3

    const/4 v6, -0x1

    :goto_2
    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1           #gsmSignalStrength:I
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .restart local v1       #gsmSignalStrength:I
    :cond_3
    move v6, v1

    goto :goto_2

    .end local v1           #gsmSignalStrength:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #i:I
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v2       #i:I
    :cond_4
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    goto :goto_0
.end method

.method public sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "r"
    .parameter "state"

    .prologue
    :try_start_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method
