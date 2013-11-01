.class Landroid/net/wifi/WifiStateTracker$WpsEventComing;
.super Ljava/lang/Object;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WpsEventComing"
.end annotation


# instance fields
.field state:Landroid/net/NetworkInfo$SpecDetailedState;

.field wpsEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/net/NetworkInfo$SpecDetailedState;Ljava/lang/String;)V
    .locals 0
    .parameter "state"
    .parameter "wpsEvent"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$WpsEventComing;->state:Landroid/net/NetworkInfo$SpecDetailedState;

    iput-object p2, p0, Landroid/net/wifi/WifiStateTracker$WpsEventComing;->wpsEvent:Ljava/lang/String;

    return-void
.end method
