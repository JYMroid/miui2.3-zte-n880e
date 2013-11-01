.class final Landroid/net/LinkProperties$1;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/LinkProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;
    .locals 7
    .parameter "in"

    .prologue
    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    .local v4, netProp:Landroid/net/LinkProperties;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, iface:Ljava/lang/String;
    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {v3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->setInterface(Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, addressCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->addAddress(Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #addressCount:I
    .end local v2           #i:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    .end local v1           #e:Ljava/lang/Exception;
    :goto_2
    return-object v5

    .restart local v0       #addressCount:I
    .restart local v2       #i:I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_2

    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->setGateway(Ljava/net/InetAddress;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_5
    move-object v5, v4

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_5

    :catch_2
    move-exception v5

    goto :goto_4

    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkProperties;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/net/LinkProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->newArray(I)[Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method
