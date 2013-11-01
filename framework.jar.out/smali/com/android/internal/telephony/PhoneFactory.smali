.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field static final SUBSCRIPTION_KEY:Ljava/lang/String; = "phone_subscription"

.field private static mProxyManager:Lcom/android/internal/telephony/ProxyManager; = null

.field private static mUiccManager:Lcom/android/internal/telephony/UiccManager; = null

.field static final preferredCdmaSubscription:I = 0x0

.field static final preferredNetworkMode:I = 0x4

.field private static sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sLooper:Landroid/os/Looper;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->mProxyManager:Lcom/android/internal/telephony/ProxyManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone(Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/Phone;
    .locals 3
    .parameter "dct"

    .prologue
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone(Lcom/android/internal/telephony/DataConnectionTracker;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v1

    return-object v0

    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getCdmaPhone(Lcom/android/internal/telephony/DataConnectionTracker;I)Lcom/android/internal/telephony/Phone;
    .locals 8
    .parameter "dct"
    .parameter "subscription"

    .prologue
    sget-object v7, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v4, 0x0

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZLcom/android/internal/telephony/DataConnectionTracker;I)V

    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v7

    return-object v0

    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getDataSubscription()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, subscription:I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_data_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PHONE"

    const-string v3, "Settings Exception Reading Dual Sim Data Call Values"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDefaultSubscription()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, subscription:I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_subscription"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PHONE"

    const-string v3, "Settings Exception Reading Default Subscription"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getGsmPhone(Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/Phone;
    .locals 3
    .parameter "dct"

    .prologue
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone(Lcom/android/internal/telephony/DataConnectionTracker;I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v1

    return-object v0

    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getGsmPhone(Lcom/android/internal/telephony/DataConnectionTracker;I)Lcom/android/internal/telephony/Phone;
    .locals 8
    .parameter "dct"
    .parameter "subscription"

    .prologue
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGsmPhone on sub :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v4, 0x0

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZLcom/android/internal/telephony/DataConnectionTracker;I)V

    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v7

    return-object v0

    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .parameter "subscription"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getPhoneType(I)I
    .locals 2
    .parameter "networkMode"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getPhones()[Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getPhones must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getSMSSubscription()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, subscription:I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_sms"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PHONE"

    const-string v3, "Settings Exception Reading Dual Sim SMS Values"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getVoiceSubscription()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, subscription:I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_voice_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PHONE"

    const-string v3, "Settings Exception Reading Dual Sim Voice Call Values"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isPromptEnabled()Z
    .locals 6

    .prologue
    const-string v5, "PHONE"

    const/4 v0, 0x0

    .local v0, prompt:Z
    const/4 v2, 0x0

    .local v2, value:I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_voice_prompt"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-nez v2, :cond_0

    const/4 v3, 0x0

    move v0, v3

    :goto_1
    const-string v3, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prompt option:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "PHONE"

    const-string v3, "Settings Exception Reading Dual Sim Voice Prompt Values"

    invoke-static {v5, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const-class v9, Lcom/android/internal/telephony/Phone;

    monitor-enter v9

    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_8

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0
    const-string v0, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    .local v0, retryCount:I
    move v1, v0

    .end local v0           #retryCount:I
    .local v1, retryCount:I
    :goto_0
    const/4 v0, 0x0

    .local v0, hasException:Z
    add-int/lit8 v1, v1, 0x1

    :try_start_1
    new-instance v2, Landroid/net/LocalServerSocket;

    const-string v3, "com.android.internal.telephony"

    invoke-direct {v2, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-nez v0, :cond_1

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    .local v8, numPhones:I
    new-instance v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    .end local v0           #hasException:Z
    invoke-direct {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "subscription_mode"

    .end local v1           #retryCount:I
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, cdmaSubscription:I
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cdma Subscription set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v8, [Lcom/android/internal/telephony/PhoneProxy;

    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    new-array v1, v8, [Lcom/android/internal/telephony/RIL;

    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    new-array v7, v8, [I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v7, networkMode:[I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v8, :cond_3

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    aput v1, v7, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Mode set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v7, v6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v2, Lcom/android/internal/telephony/RIL;

    aget v3, v7, v6

    invoke-direct {v2, p0, v3, v0, v6}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    aput-object v2, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v6           #i:I
    .end local v7           #networkMode:[I
    .end local v8           #numPhones:I
    .local v0, hasException:Z
    .restart local v1       #retryCount:I
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    const/4 v0, 0x1

    .local v0, hasException:Z
    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-le v1, v0, :cond_2

    .end local v0           #hasException:Z
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0
    const-string v0, "PhoneFactory probably already running"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local p0
    :cond_2
    const-wide/16 v2, 0x7d0

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    .end local v1           #retryCount:I
    .local v0, cdmaSubscription:I
    .restart local v6       #i:I
    .restart local v7       #networkMode:[I
    .restart local v8       #numPhones:I
    :catch_2
    move-exception v1

    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    :try_start_6
    const-string v2, "PHONE"

    const-string v3, "Settings Exception Reading Value At Index"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "preferred_network_mode"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    aput v1, v7, v6

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .end local v0           #cdmaSubscription:I
    invoke-static {p0, v0}, Lcom/android/internal/telephony/UiccManager;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccManager;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDataSubscription()I

    move-result v0

    .local v0, dataSub:I
    if-eqz v0, :cond_4

    const-string v0, "PHONE"

    .end local v0           #dataSub:I
    const-string v1, "set dataSub to 0 if dataSub != 0."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->setDataSubscription(I)V

    const/4 v0, 0x0

    .restart local v0       #dataSub:I
    :cond_4
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating MMDataConnectionTracker for dataSub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/internal/telephony/MMDataConnectionTracker;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v2, v0

    .end local v0           #dataSub:I
    invoke-direct {v5, p0, v1, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V

    .local v5, dct:Lcom/android/internal/telephony/DataConnectionTracker;
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v8, :cond_7

    aget v0, v7, v6

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v0

    .local v0, phoneType:I
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Phone Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    new-instance v11, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v0           #phoneType:I
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v1, v6

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZLcom/android/internal/telephony/DataConnectionTracker;I)V

    invoke-direct {v11, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    aput-object v11, v10, v6

    const-string v0, "PHONE"

    const-string v1, "Creating GSMPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .restart local v0       #phoneType:I
    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    new-instance v11, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v0           #phoneType:I
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v1, v6

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZLcom/android/internal/telephony/DataConnectionTracker;I)V

    invoke-direct {v11, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    aput-object v11, v10, v6

    const-string v0, "PHONE"

    const-string v1, "Creating CDMAPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/telephony/ProxyManager;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ProxyManager;

    move-result-object p0

    .end local p0
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->mProxyManager:Lcom/android/internal/telephony/ProxyManager;

    .end local v5           #dct:Lcom/android/internal/telephony/DataConnectionTracker;
    .end local v6           #i:I
    .end local v7           #networkMode:[I
    .end local v8           #numPhones:I
    :cond_8
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .parameter "sipUri"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method

.method public static setDataSubscription(I)V
    .locals 3
    .parameter "subscription"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_data_call"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setDefaultSubscription(I)V
    .locals 4
    .parameter "subscription"

    .prologue
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_subscription"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "phone_subscription"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultSubscription : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Broadcasting Default Subscription Changed..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setPromptEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .local v0, value:I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_voice_prompt"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoicePromptOption to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v0           #value:I
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public static setSMSSubscription(I)V
    .locals 4
    .parameter "subscription"

    .prologue
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_sms"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.SEND_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSMSSubscription : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setVoiceSubscription(I)V
    .locals 3
    .parameter "subscription"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_voice_call"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceSubscription : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
