.class Lcom/android/server/CNE$1;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 42
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    .local v21, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "level"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    int-to-double v0, v0

    move-wide/from16 v26, v0

    .local v26, level:D
    const-string v4, "scale"

    const/4 v5, 0x1

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    int-to-double v0, v0

    move-wide/from16 v33, v0

    .local v33, scale:D
    const-string v4, "plugged"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .local v32, pluginType:I
    const-string v4, "status"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .local v35, status:I
    div-double v4, v26, v33

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    move-wide v0, v4

    double-to-int v0, v0

    move/from16 v31, v0

    .local v31, normalizedLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v35

    move/from16 v2, v32

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/CNE;->updateBatteryStatus(III)Z

    .end local v26           #level:D
    .end local v31           #normalizedLevel:I
    .end local v32           #pluginType:I
    .end local v33           #scale:D
    .end local v35           #status:I
    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local p1
    :cond_1
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/CNE;->stopFmc(Landroid/os/IBinder;)Z

    goto :goto_0

    :cond_2
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/CNE;->access$000(Lcom/android/server/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v9, 0x0

    .local v9, ipV4Addr:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, iface:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/CNE;->access$100(Lcom/android/server/CNE;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/ConnectivityManager;

    .local v23, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    move-object/from16 v0, v23

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v29

    .local v29, networkInfo:Landroid/net/NetworkInfo;
    if-nez v29, :cond_4

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    move-object/from16 v30, v4

    .local v30, networkState:Landroid/net/NetworkInfo$State;
    :goto_1
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v30

    move-object v1, v4

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v4, v5}, Lcom/android/server/CNE;->getWlanAddrInfo(Lcom/android/internal/net/IPVersion;)Lcom/android/server/CNE$AddressInfo;

    move-result-object v20

    .local v20, aInfo:Lcom/android/server/CNE$AddressInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ifName:Ljava/lang/String;

    move-object v10, v0

    .end local v20           #aInfo:Lcom/android/server/CNE$AddressInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/CNE;->access$000(Lcom/android/server/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v38

    .local v38, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    .local v8, ssid:Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    .local v7, rssi:I
    new-instance v37, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v37

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .local v37, ts:Ljava/sql/Timestamp;
    invoke-virtual/range {v37 .. v37}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, tsStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const/16 v5, 0x15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v30

    #calls: Lcom/android/server/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    invoke-static {v0, v1}, Lcom/android/server/CNE;->access$200(Lcom/android/server/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v6

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/CNE;->updateWlanStatus(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .end local v7           #rssi:I
    .end local v8           #ssid:Ljava/lang/String;
    .end local v11           #tsStr:Ljava/lang/String;
    .end local v30           #networkState:Landroid/net/NetworkInfo$State;
    .end local v37           #ts:Ljava/sql/Timestamp;
    .end local v38           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_4
    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    move-object/from16 v30, v4

    goto :goto_1

    .end local v9           #ipV4Addr:Ljava/lang/String;
    .end local v10           #iface:Ljava/lang/String;
    .end local v23           #cm:Landroid/net/ConnectivityManager;
    .end local v29           #networkInfo:Landroid/net/NetworkInfo;
    :cond_5
    const-string v4, "CNE"

    const-string v5, "CNE received action RSSI Changed events, null WifiManager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v4, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.net.wifi.NO_MORE_WIFI_LOCKS"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/CNE;->access$000(Lcom/android/server/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v4, v5}, Lcom/android/server/CNE;->getWlanAddrInfo(Lcom/android/internal/net/IPVersion;)Lcom/android/server/CNE$AddressInfo;

    move-result-object v39

    .local v39, wlanV4Addr:Lcom/android/server/CNE$AddressInfo;
    sget-object v30, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .restart local v30       #networkState:Landroid/net/NetworkInfo$State;
    const-string v4, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "android.net.wifi.NO_MORE_WIFI_LOCKS"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    const-string v4, "networkInfo"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v29

    check-cast v29, Landroid/net/NetworkInfo;

    .restart local v29       #networkInfo:Landroid/net/NetworkInfo;
    if-nez v29, :cond_c

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    move-object/from16 v30, v4

    .end local v29           #networkInfo:Landroid/net/NetworkInfo;
    :cond_9
    :goto_2
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "wifi_state"

    const/4 v5, 0x4

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_d

    const/4 v4, 0x1

    move/from16 v24, v4

    .local v24, enabled:Z
    :goto_3
    if-nez v24, :cond_e

    sget-object v30, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .end local v24           #enabled:Z
    :cond_a
    :goto_4
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v30

    move-object v1, v4

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ifName:Ljava/lang/String;

    move-object v5, v0

    #setter for: Lcom/android/server/CNE;->activeWlanIfName:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/CNE;->access$302(Lcom/android/server/CNE;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->gatewayAddr:Ljava/lang/String;

    move-object v5, v0

    #setter for: Lcom/android/server/CNE;->activeWlanGatewayAddr:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/CNE;->access$402(Lcom/android/server/CNE;Ljava/lang/String;)Ljava/lang/String;

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/CNE;->access$000(Lcom/android/server/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v38

    .restart local v38       #wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ssid:Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    .restart local v7       #rssi:I
    new-instance v37, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v37

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .restart local v37       #ts:Ljava/sql/Timestamp;
    invoke-virtual/range {v37 .. v37}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11       #tsStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v12, v0

    const/16 v13, 0x15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v30

    #calls: Lcom/android/server/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    invoke-static {v0, v1}, Lcom/android/server/CNE;->access$200(Lcom/android/server/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v14

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ifName:Ljava/lang/String;

    move-object/from16 v18, v0

    move v15, v7

    move-object/from16 v16, v8

    move-object/from16 v19, v11

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/CNE;->updateWlanStatus(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v30

    #calls: Lcom/android/server/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    invoke-static {v0, v1}, Lcom/android/server/CNE;->access$200(Lcom/android/server/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v6

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    move-object v7, v0

    .end local v7           #rssi:I
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/CNE;->notifyRatConnectStatus(IILjava/lang/String;)Z

    goto/16 :goto_0

    .end local v8           #ssid:Ljava/lang/String;
    .end local v11           #tsStr:Ljava/lang/String;
    .end local v37           #ts:Ljava/sql/Timestamp;
    .end local v38           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .restart local v29       #networkInfo:Landroid/net/NetworkInfo;
    :cond_c
    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    move-object/from16 v30, v4

    goto/16 :goto_2

    .end local v29           #networkInfo:Landroid/net/NetworkInfo;
    :cond_d
    const/4 v4, 0x0

    move/from16 v24, v4

    goto/16 :goto_3

    .restart local v24       #enabled:Z
    :cond_e
    sget-object v30, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    goto/16 :goto_4

    .end local v24           #enabled:Z
    .end local v30           #networkState:Landroid/net/NetworkInfo$State;
    .end local v39           #wlanV4Addr:Lcom/android/server/CNE$AddressInfo;
    :cond_f
    const-string v4, "CNE"

    const-string v5, "CNE received action Network State Changed, null WifiManager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/CNE;->access$000(Lcom/android/server/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    :cond_11
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "apnType"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, apnType:Ljava/lang/String;
    const-string v4, "default"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const-string v5, "default"

    sget-object v6, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/CNE;->getWwanAddrInfo(Ljava/lang/String;Lcom/android/internal/net/IPVersion;)Lcom/android/server/CNE$AddressInfo;

    move-result-object v41

    .local v41, wwanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    sget-object v25, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    .local v25, ipv:Lcom/android/internal/net/IPVersion;
    const-string v4, "ipVersion"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .local v36, str:Ljava/lang/String;
    if-eqz v36, :cond_12

    const-class v4, Lcom/android/internal/net/IPVersion;

    move-object v0, v4

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v25

    .end local v25           #ipv:Lcom/android/internal/net/IPVersion;
    check-cast v25, Lcom/android/internal/net/IPVersion;

    .restart local v25       #ipv:Lcom/android/internal/net/IPVersion;
    :cond_12
    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    move-object/from16 v0, v25

    move-object v1, v4

    if-ne v0, v1, :cond_15

    move-object/from16 v40, v41

    .local v40, wwanAddrInfo:Lcom/android/server/CNE$AddressInfo;
    const-string v4, "apnTypeState"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    sget-object v28, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .local v28, netState:Landroid/net/NetworkInfo$State;
    if-eqz v36, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const-class v5, Lcom/android/internal/telephony/Phone$DataState;

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/Phone$DataState;

    move-object v0, v4

    move-object/from16 v1, p1

    #calls: Lcom/android/server/CNE;->convertToNetworkState(Lcom/android/internal/telephony/Phone$DataState;)Landroid/net/NetworkInfo$State;
    invoke-static {v0, v1}, Lcom/android/server/CNE;->access$500(Lcom/android/server/CNE;Lcom/android/internal/telephony/Phone$DataState;)Landroid/net/NetworkInfo$State;

    move-result-object v28

    :cond_13
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v28

    move-object v1, v4

    if-ne v0, v1, :cond_14

    sget-object v4, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    move-object/from16 v0, v25

    move-object v1, v4

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ifName:Ljava/lang/String;

    move-object v5, v0

    #setter for: Lcom/android/server/CNE;->activeWwanV4IfName:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/CNE;->access$602(Lcom/android/server/CNE;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->gatewayAddr:Ljava/lang/String;

    move-object v5, v0

    #setter for: Lcom/android/server/CNE;->activeWwanV4GatewayAddr:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/CNE;->access$702(Lcom/android/server/CNE;Ljava/lang/String;)Ljava/lang/String;

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/CNE;->access$800(Lcom/android/server/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    move/from16 v16, v4

    .local v16, roaming:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/CNE;->access$800(Lcom/android/server/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v13

    .local v13, networkType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #calls: Lcom/android/server/CNE;->getSignalStrength(I)I
    invoke-static {v4, v13}, Lcom/android/server/CNE;->access$900(Lcom/android/server/CNE;I)I

    move-result v15

    .local v15, signalStrength:I
    new-instance v37, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v37

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .restart local v37       #ts:Ljava/sql/Timestamp;
    invoke-virtual/range {v37 .. v37}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11       #tsStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v28

    #calls: Lcom/android/server/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    invoke-static {v0, v1}, Lcom/android/server/CNE;->access$200(Lcom/android/server/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v14

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ifName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v19, v11

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/CNE;->updateWwanStatus(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v28

    #calls: Lcom/android/server/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    invoke-static {v0, v1}, Lcom/android/server/CNE;->access$200(Lcom/android/server/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v6

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/CNE;->notifyRatConnectStatus(IILjava/lang/String;)Z

    goto/16 :goto_0

    .end local v11           #tsStr:Ljava/lang/String;
    .end local v13           #networkType:I
    .end local v15           #signalStrength:I
    .end local v16           #roaming:I
    .end local v28           #netState:Landroid/net/NetworkInfo$State;
    .end local v37           #ts:Ljava/sql/Timestamp;
    .end local v40           #wwanAddrInfo:Lcom/android/server/CNE$AddressInfo;
    .restart local p1
    :cond_15
    const-string v4, "CNE"

    const-string v5, "IPV6 is not supported by CNE"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local p1
    .restart local v28       #netState:Landroid/net/NetworkInfo$State;
    .restart local v40       #wwanAddrInfo:Lcom/android/server/CNE$AddressInfo;
    :cond_16
    const/4 v4, 0x0

    move/from16 v16, v4

    goto :goto_5

    .end local v25           #ipv:Lcom/android/internal/net/IPVersion;
    .end local v28           #netState:Landroid/net/NetworkInfo$State;
    .end local v36           #str:Ljava/lang/String;
    .end local v40           #wwanAddrInfo:Lcom/android/server/CNE$AddressInfo;
    .end local v41           #wwanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    .restart local p1
    :cond_17
    const-string v4, "CNE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CNE currently does not support this apnType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v22           #apnType:Ljava/lang/String;
    :cond_18
    const-string v4, "CNE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CNE received unexpected action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
