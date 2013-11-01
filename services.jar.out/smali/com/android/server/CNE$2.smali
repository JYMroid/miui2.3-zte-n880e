.class Lcom/android/server/CNE$2;
.super Landroid/telephony/PhoneStateListener;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CNE;


# direct methods
.method constructor <init>(Lcom/android/server/CNE;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataActivity(I)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/server/CNE;->access$2000()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/android/server/CNE;->access$2002(Z)Z

    iget-object v0, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    #calls: Lcom/android/server/CNE;->updateWwanDormancyStatus()Z
    invoke-static {v0}, Lcom/android/server/CNE;->access$2100(Lcom/android/server/CNE;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/CNE;->access$2000()Z

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/CNE;->access$2002(Z)Z

    iget-object v0, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    #calls: Lcom/android/server/CNE;->updateWwanDormancyStatus()Z
    invoke-static {v0}, Lcom/android/server/CNE;->access$2100(Lcom/android/server/CNE;)Z

    goto :goto_0
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 13
    .parameter "signalStrength"

    .prologue
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    #setter for: Lcom/android/server/CNE;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v0, p1}, Lcom/android/server/CNE;->access$1902(Lcom/android/server/CNE;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    iget-object v0, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    #getter for: Lcom/android/server/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/server/CNE;->access$800(Lcom/android/server/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    #getter for: Lcom/android/server/CNE;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/CNE;->access$100(Lcom/android/server/CNE;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .local v8, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v8, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    .local v9, networkInfo:Landroid/net/NetworkInfo;
    if-nez v9, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    move-object v10, v0

    .local v10, networkState:Landroid/net/NetworkInfo$State;
    :goto_0
    iget-object v0, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    const-string v2, "default"

    sget-object v5, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v0, v2, v5}, Lcom/android/server/CNE;->getWwanAddrInfo(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Lcom/android/server/CNE$AddressInfo;

    move-result-object v12

    .local v12, wwanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    iget-object v0, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    #getter for: Lcom/android/server/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/server/CNE;->access$800(Lcom/android/server/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v4, v0

    .local v4, roaming:I
    :goto_1
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .local v1, type:I
    iget-object v0, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    #calls: Lcom/android/server/CNE;->getSignalStrength(I)I
    invoke-static {v0, v1}, Lcom/android/server/CNE;->access$900(Lcom/android/server/CNE;I)I

    move-result v3

    .local v3, rssi:I
    new-instance v11, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v11, v5, v6}, Ljava/sql/Timestamp;-><init>(J)V

    .local v11, ts:Ljava/sql/Timestamp;
    invoke-virtual {v11}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, tsStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    iget-object v2, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    #calls: Lcom/android/server/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    invoke-static {v2, v10}, Lcom/android/server/CNE;->access$200(Lcom/android/server/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v2

    iget-object v5, v12, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    iget-object v6, v12, Lcom/android/server/CNE$AddressInfo;->ifName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/CNE;->updateWwanStatus(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .end local v1           #type:I
    .end local v3           #rssi:I
    .end local v4           #roaming:I
    .end local v7           #tsStr:Ljava/lang/String;
    .end local v8           #cm:Landroid/net/ConnectivityManager;
    .end local v9           #networkInfo:Landroid/net/NetworkInfo;
    .end local v10           #networkState:Landroid/net/NetworkInfo$State;
    .end local v11           #ts:Ljava/sql/Timestamp;
    .end local v12           #wwanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    :goto_2
    return-void

    .restart local v8       #cm:Landroid/net/ConnectivityManager;
    .restart local v9       #networkInfo:Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .restart local v10       #networkState:Landroid/net/NetworkInfo$State;
    .restart local v12       #wwanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    :cond_1
    move v4, v6

    goto :goto_1

    .end local v8           #cm:Landroid/net/ConnectivityManager;
    .end local v9           #networkInfo:Landroid/net/NetworkInfo;
    .end local v10           #networkState:Landroid/net/NetworkInfo$State;
    .end local v12           #wwanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    :cond_2
    const-string v0, "CNE"

    const-string v2, "onSignalStrengthsChanged null TelephonyManager"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
