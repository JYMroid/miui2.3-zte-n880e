.class Landroid/net/wifi/UwStateTracker$WagConfig;
.super Ljava/lang/Object;
.source "UwStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/UwStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WagConfig"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/UwStateTracker;

.field private wagDomain:Ljava/lang/String;

.field private wagIp:Ljava/lang/String;

.field private wagPort:I


# direct methods
.method public constructor <init>(Landroid/net/wifi/UwStateTracker;)V
    .locals 2
    .parameter

    .prologue
    const-string v1, ""

    iput-object p1, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->this$0:Landroid/net/wifi/UwStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v1, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->wagPort:I

    const-string v0, ""

    iput-object v1, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->wagDomain:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/UwStateTracker;Landroid/net/wifi/UwStateTracker$WagConfig;)V
    .locals 1
    .parameter
    .parameter "config"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->this$0:Landroid/net/wifi/UwStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;

    iget v0, p2, Landroid/net/wifi/UwStateTracker$WagConfig;->wagPort:I

    iput v0, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->wagPort:I

    iget-object v0, p2, Landroid/net/wifi/UwStateTracker$WagConfig;->wagDomain:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->wagDomain:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/UwStateTracker$WagConfig;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/wifi/UwStateTracker$WagConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Landroid/net/wifi/UwStateTracker$WagConfig;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->wagDomain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Landroid/net/wifi/UwStateTracker$WagConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->wagDomain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Landroid/net/wifi/UwStateTracker$WagConfig;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->wagPort:I

    return v0
.end method

.method static synthetic access$702(Landroid/net/wifi/UwStateTracker$WagConfig;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->wagPort:I

    return p1
.end method


# virtual methods
.method public equals(Landroid/net/wifi/UwStateTracker$WagConfig;)Z
    .locals 2
    .parameter "config"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/UwStateTracker$WagConfig;->wagIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->wagPort:I

    iget v1, p1, Landroid/net/wifi/UwStateTracker$WagConfig;->wagPort:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/UwStateTracker$WagConfig;->wagDomain:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/UwStateTracker$WagConfig;->wagDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
