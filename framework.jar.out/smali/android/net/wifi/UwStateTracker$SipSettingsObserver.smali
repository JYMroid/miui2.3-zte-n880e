.class Landroid/net/wifi/UwStateTracker$SipSettingsObserver;
.super Landroid/database/ContentObserver;
.source "UwStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/UwStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/UwStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/UwStateTracker;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "handler"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/UwStateTracker$SipSettingsObserver;->this$0:Landroid/net/wifi/UwStateTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v1, "SettingsObserver REGISTER CALLBACK"

    #calls: Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    invoke-static {p1, v1}, Landroid/net/wifi/UwStateTracker;->access$000(Landroid/net/wifi/UwStateTracker;Ljava/lang/String;)V

    #getter for: Landroid/net/wifi/UwStateTracker;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/wifi/UwStateTracker;->access$1200(Landroid/net/wifi/UwStateTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$UwSipSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v3, p0, Landroid/net/wifi/UwStateTracker$SipSettingsObserver;->this$0:Landroid/net/wifi/UwStateTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingsObserver selfChange is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/UwStateTracker;->access$000(Landroid/net/wifi/UwStateTracker;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/UwStateTracker$SipSettingsObserver;->this$0:Landroid/net/wifi/UwStateTracker;

    #getter for: Landroid/net/wifi/UwStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/UwStateTracker;->access$1200(Landroid/net/wifi/UwStateTracker;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    invoke-static {v3}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    .local v0, localIp:Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/UwStateTracker$SipSettingsObserver;->this$0:Landroid/net/wifi/UwStateTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SipSettingsObserver onChange local ip is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/UwStateTracker;->access$000(Landroid/net/wifi/UwStateTracker;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/UwStateTracker$SipSettingsObserver;->this$0:Landroid/net/wifi/UwStateTracker;

    invoke-virtual {v3, v0}, Landroid/net/wifi/UwStateTracker;->updateConfig(Ljava/lang/String;)Z

    return-void
.end method
