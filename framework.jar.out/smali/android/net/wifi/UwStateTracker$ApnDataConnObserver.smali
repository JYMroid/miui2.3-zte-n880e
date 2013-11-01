.class Landroid/net/wifi/UwStateTracker$ApnDataConnObserver;
.super Landroid/database/ContentObserver;
.source "UwStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/UwStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnDataConnObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/UwStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/UwStateTracker;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Landroid/net/wifi/UwStateTracker$ApnDataConnObserver;->this$0:Landroid/net/wifi/UwStateTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v1, "ApnDataConnObserver REGISTER CALLBACK"

    #calls: Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    invoke-static {p1, v1}, Landroid/net/wifi/UwStateTracker;->access$000(Landroid/net/wifi/UwStateTracker;Ljava/lang/String;)V

    #getter for: Landroid/net/wifi/UwStateTracker;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/wifi/UwStateTracker;->access$1200(Landroid/net/wifi/UwStateTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$ApnDataConnObserver;->this$0:Landroid/net/wifi/UwStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApnDataConnObserver selfChange is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/UwStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/UwStateTracker;->access$000(Landroid/net/wifi/UwStateTracker;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$ApnDataConnObserver;->this$0:Landroid/net/wifi/UwStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/UwStateTracker;->setPPPflag()V

    return-void
.end method
